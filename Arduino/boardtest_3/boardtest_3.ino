#define adafruit 1
#include <Wire.h>
#include "MCP23017.h"
#include <LiquidTWI2.h>

LiquidTWI2 lcd(2);

Adafruit_MCP23017 PE0;
Adafruit_MCP23017 PE1;
Adafruit_MCP23017 PE2;

#define TIMESTATE (millis() / 500) % 2

//----------------------------
//--- LCD functions ----------

void initLCD() {
  lcd.setMCPType(LTI_TYPE_MCP23017);
  lcd.begin(20, 4);
  lcd.setBacklight(HIGH);
}
void lcdClear() {
  lcd.clear();
}

void lcdUpdate(uint8_t col, uint8_t row, char * fmt, long val) {
  char lcdbuf[22];
  sprintf(lcdbuf, fmt, val);
  lcd.setCursor(col, row);
  lcd.print(lcdbuf);
}

void lcdUpdate(uint8_t col, uint8_t row, char * str) {
  lcd.setCursor(col, row);
  lcd.print(str);
}

void lcdUpdate(uint8_t col, uint8_t row, String str) {
  lcd.setCursor(col, row);
  lcd.print(str);
}

class PIO {
  private:
    uint16_t data;
    Adafruit_MCP23017 mcp;
  public:
    void begin(Adafruit_MCP23017 &_mcp) {
      mcp = _mcp;
    }
    void setInput(uint8_t pin) {
      mcp.pinMode(pin, INPUT);
      mcp.pullUp(pin, HIGH);
      scan();
    }
    void scan() {
      data = mcp.readGPIOAB();
      Serial.println(data,HEX);
    }
};

//----------------------------
//---- BUTTON CLASS ----------

class BUTTON {
  private:
    int pin;
    bool laststate;
    Adafruit_MCP23017 mcp;
  public:
    void begin(int _pin, Adafruit_MCP23017 &_mcp) {
      pin = _pin;
      mcp = _mcp;
      mcp.pinMode(pin, INPUT);
      mcp.pullUp(pin, HIGH);
      laststate = mcp.digitalRead(pin);
    }
    bool changed(bool &newstate) {
      bool state = mcp.digitalRead(pin);;
      if ( laststate != state) {
        newstate = state;
        laststate = state;
        return true;
      }
      return false;
    }
    bool pressed() {
      bool state = mcp.digitalRead(pin);
      if ( laststate != state) {
        laststate = state;
        if (!state) return true;
      }
      return false;
    }
    bool released() {
      bool state = mcp.digitalRead(pin);
      if ( laststate != state) {
        laststate = state;
        if (state) return true;
      }
      return false;
    }
};

//----------------------------
//------- LED CLASS ----------

class LED {
  private:
    char val;
    int pin;
    Adafruit_MCP23017 mcp;
    long lastTime = TIMESTATE;
  public:
    void begin(int _pin, Adafruit_MCP23017 &_mcp) {
      pin = _pin;
      mcp = _mcp;
      mcp.pinMode(pin, OUTPUT);
      mcp.digitalWrite(pin, HIGH);
    }
    void value(char _val) { //  set value state: 0=off, 1=on, 2=blink
      val = _val;
      if (val == 2) check();
      else set(val == 1);
    }
    int value() { //  get value state
      return val;
    }
    void set(bool state) {  //  set actual led state
      mcp.digitalWrite(pin, state ? LOW : HIGH);
    }
    bool get() {  //  get actual led state
      return !mcp.digitalRead(pin);
    }
    void check() {
      int newTime = TIMESTATE;
      if ( newTime != lastTime) {
        lastTime = newTime;
        if (val == 2) set(lastTime != 0);
      }
    }
};


void testLcd() {
  long x = 0;
  long t = millis();
  while ((millis() - t) < 1000) {
    lcd.setCursor(0, 3);
    lcd.print("Line 3 printed");
    x++;
  }
  Serial.printf("Lines pr sec; % d\n", x);
}


void testProc() {
  long x = 0;
  long t = millis();
  while ((millis() - t) < 1000) x++;
  Serial.printf("Loops pr sec; % d\n", x);
}

void testI2Ca() {
  long x = 0;
  long t = millis();
  while ((millis() - t) < 1000) {
    uint8_t r = PE0.readGPIO(0);
    x++;
  }
  Serial.printf("I2C - a's pr sec; %d\n", x);
}

void testI2Cb() {
  long x = 0;
  long t = millis();
  while ((millis() - t) < 1000) {
    uint8_t r = PE1.readGPIO(0);
    x++;
  }
  Serial.printf("I2C-1's pr sec; % d\n", x);
}

void testI2Cc() {
  long x = 0;
  long t = millis();
  while ((millis() - t) < 1000) {
    uint8_t r = PE2.readGPIO(0);
    x++;
  }
  Serial.printf("I2C - 2's pr sec; %d\n", x);
}

//----------------------------
//--- ENCODER CLASS ----------

#define DIR_NONE 0x0  // No complete step yet.
#define DIR_CW 0x10 // Clockwise step.
#define DIR_CCW 0x20  // Counter-clockwise step.
#define R_START 0x0
#define R_CW_FINAL 0x1
#define R_CW_BEGIN 0x2
#define R_CW_NEXT 0x3
#define R_CCW_BEGIN 0x4
#define R_CCW_FINAL 0x5
#define R_CCW_NEXT 0x6

class ENCODER {
  private:
    Adafruit_MCP23017 mcp;
    unsigned long lastTime;
    uint8_t pinA;
    uint8_t pinB;
    uint8_t LastA;
    uint8_t encA;
    int myFactor;
    int maxfactor;
    unsigned char state;
    long timer = millis();
    const unsigned char ttable[7][4] = {
      {R_START,    R_CW_BEGIN,  R_CCW_BEGIN, R_START},  // R_START
      {R_CW_NEXT,  R_START,     R_CW_FINAL,  R_START | DIR_CW}, // R_CW_FINAL
      {R_CW_NEXT,  R_CW_BEGIN,  R_START,     R_START},  // R_CW_BEGIN
      {R_CW_NEXT,  R_CW_BEGIN,  R_CW_FINAL,  R_START},  // R_CW_NEXT
      {R_CCW_NEXT, R_START,     R_CCW_BEGIN, R_START},  // R_CCW_BEGIN
      {R_CCW_NEXT, R_CCW_FINAL, R_START,     R_START | DIR_CCW},  // R_CCW_FINAL
      {R_CCW_NEXT, R_CCW_FINAL, R_CCW_BEGIN, R_START},  // R_CCW_NEXT
    };
    unsigned char process() {
      uint8_t r = mcp.readGPIO(pinA < 7 ? 0 : 1);
      unsigned char pinstate = (r >> (pinB % 8)) & 3;
      state = ttable[state & 0xf][pinstate];
      return state & 0x30;
    }
    int change() {
      int res = 0;
      unsigned char result = process();
      if (result) {
        if ((millis() - timer) < 180) myFactor *= 3;
        else myFactor = 1;
        if (myFactor > maxfactor) myFactor = maxfactor;
        if (result == DIR_CW) res = -myFactor;
        else res = myFactor;
        Serial.println(myFactor);
        timer = millis();
      }
      return res;
    }
  public:
    long factor;
    float lastvalue;
    float value;
    void begin(uint8_t x_pinA, uint8_t x_pinB, Adafruit_MCP23017 &x_mcp, int step, int maxstep) {
      pinA = x_pinA;
      pinB = x_pinB;
      mcp = x_mcp;
      myFactor = 1;
      factor = step;
      maxfactor = maxstep;
      mcp.pinMode(pinA, INPUT);
      mcp.pullUp(pinA, HIGH);
      mcp.pinMode(pinB, INPUT);
      mcp.pullUp(pinB, HIGH);
    }

    bool changed(int &steps, long &x_factor) {
      steps = change();
      x_factor = factor;
      if (steps > 0) {
        x_factor = factor;
        return true;
      }
      if (steps < 0) {
        steps *= -1;
        x_factor = -factor;
        return true;
      }
      return (false);
    }
};

//----------------------------

//  Define buttons
BUTTON butOFF;
BUTTON butON;
BUTTON butAUTO;
BUTTON butFLCH;
BUTTON butATHR;
BUTTON butLOC;
BUTTON butHDG;
BUTTON butVNAV;
BUTTON butALT;
BUTTON butGS;
BUTTON butVS;
BUTTON butBC;
//  define encoder switches
BUTTON EncIAStop;
BUTTON EncHDGtop;
BUTTON EncALTtop;
BUTTON EncVStop;
//  Define leds
LED ledOFF;
LED ledON;
LED ledAUTO;
LED ledFLCH;
LED ledATHR;
LED ledLOC;
LED ledHDG;
LED ledVNAV;
LED ledALT;
LED ledGS;
LED ledVS;
LED ledBC;
//  Define encoders
ENCODER EncIAS;
ENCODER EncHDG;
ENCODER EncALT;
ENCODER EncVS;
//  Define counters
int cntIAS;
int cntHDG;
int cntALT;
int cntVS;
long factor;
int cnt;
bool but;
long globalTimer;

void checkEncoders() {

  if (EncIAS.changed(cnt, factor))
    for (uint8_t i = 0; i < cnt; i++) {
      long value = EncIAS.value + factor;
      EncIAS.value = (value < 0 ? 0 : value);
      globalTimer = millis();
      lcdUpdate(0, 1, "%3d", (long) EncIAS.value);
    }
  if (EncHDG.changed(cnt, factor))
    for (uint8_t i = 0; i < cnt; i++) {
      long value = EncHDG.value + factor + 359;
      value %= 360;
      EncHDG.value = (value + 1);
      globalTimer = millis();
      lcdUpdate(4, 1, "%03d", (long) EncHDG.value);
    }
  if (EncALT.changed(cnt, factor))
    for (uint8_t i = 0; i < cnt; i++) {
      long value = (long)(EncALT.value + factor) / 100 * 100;
      EncALT.value = (value < 0 ? 0 : value);
      globalTimer = millis();
      lcdUpdate(8, 1, "%5d", (long) EncALT.value);
    }
  if (EncVS.changed(cnt, factor))
    for (uint8_t i = 0; i < cnt; i++) {
      long value = (EncVS.value + factor) / 100 * 100;
      EncVS.value = (value);
      globalTimer = millis();
      if (EncVS.value == 0) lcdUpdate(15, 1, "     ");
      else lcdUpdate(15, 1, "%5d", (long) EncVS.value);
    }
}

void setup() {
  Serial.begin(115200);
  Serial.println("\nStarted");
  Wire.pins(0, 2);
  lcd.setMCPType(LTI_TYPE_MCP23017);
  PE1.begin(0);      // addr 0x20
  PE2.begin(1);      // addr 0x21
  PE0.begin(2);      // addr 0x22 - must init before lcd, or it will destroy lcd init
  lcd.begin(20, 4);
  lcd.setBacklight(HIGH);
  //  init BUTTONs
  butOFF.begin(8, PE2);
  butON.begin(10, PE2);
  butAUTO.begin(12, PE2);
  butFLCH.begin(14, PE2);
  butATHR.begin(8, PE1);
  butLOC.begin(10, PE1);
  butALT.begin(2, PE2);
  butGS.begin(0, PE2);
  butHDG.begin(6, PE2);
  butVNAV.begin(4, PE2);
  butVS.begin(6, PE1);
  butBC.begin(4, PE1);
  //  init switch on encoders
  EncIAStop.begin(0, PE0);
  EncHDGtop.begin(3, PE0);
  EncALTtop.begin(1, PE0);
  EncVStop.begin(2, PE0);
  //  init LEDs
  ledOFF.begin(9, PE2);
  ledON.begin(11, PE2);
  ledAUTO.begin(13, PE2);
  ledFLCH.begin(15, PE2);
  ledATHR.begin(9, PE1);
  ledLOC.begin(11, PE1);
  ledALT.begin(3, PE2);
  ledGS.begin(1, PE2);
  ledHDG.begin(7, PE2);
  ledVNAV.begin(5, PE2);
  ledVS.begin(7, PE1);
  ledBC.begin(5, PE1);
  //  init ENCODERS
  EncIAS.begin(13, 12, PE1, 1, 10);
  EncHDG.begin(15, 14, PE1, 1, 5);
  EncALT.begin(1, 0, PE1, 100, 20);
  EncVS.begin(3, 2, PE1, 100, 5);
  initLCD();
  lcdClear();
  lcdUpdate(0, 0, "IAS HDG  ALT    V/S ");
  Wire.setClock(1700000L);
}

long elaps;

void loop() {
  checkEncoders();
  //lcd.setCursor(0, 3);
  //lcd.printf(" Gt :%7d", (millis() - globalTimer));
  PE0.handle();
  PE1.handle();
  PE2.handle();
  if ((millis() - globalTimer) > 100) {
    if (butOFF.released()) {
      ledOFF.set(!ledOFF.get());
      testProc();
      ledOFF.set(!ledOFF.get());
    }
    if (butON.released()) {
      ledON.set(!ledON.get());
    }
    if (butAUTO.released()) {
      ledAUTO.set(!ledAUTO.get());
    }
    if (butFLCH.released()) {
      ledFLCH.set(!ledFLCH.get());
      testLcd();
      ledFLCH.set(!ledFLCH.get());
    }
    if (butATHR.released()) {
      ledATHR.set(!ledATHR.get());
      testI2Ca();
      ledATHR.set(!ledATHR.get());
    }
    if (butLOC.released()) {
      ledLOC.set(!ledLOC.get());
      testI2Cb();
      ledLOC.set(!ledLOC.get());
    }
    if (butHDG.released()) {
      ledHDG.set(!ledHDG.get());
      testI2Cc();
      ledHDG.set(!ledHDG.get());
    }
    if (butVNAV.released()) {
      ledVNAV.set(!ledVNAV.get());
    }
    if (butALT.released()) {
      ledALT.set(!ledALT.get());
    }
    if (butGS.released()) {
      ledGS.set(!ledGS.get());
    }
    if (butVS.released()) {
      ledVS.set(!ledVS.get());
    }
    if (butBC.released()) {
      ledBC.set(!ledBC.get());
    }
    if (EncIAStop.changed(but)) {
      lcd.setCursor(0, 3);
      lcd.print(but ? "   " : " ON");
    }
    if (EncHDGtop.changed(but)) {
      lcd.setCursor(4, 3);
      lcd.print(but ? "   " : " ON");
    }
    if (EncALTtop.changed(but)) {
      lcd.setCursor(9, 3);
      lcd.print(but ? "   " : " ON");
    }
    if (EncVStop.changed(but)) {
      lcd.setCursor(16, 3);
      lcd.print(but ? "   " : " ON");
    }
    globalTimer = millis();
  }
}
