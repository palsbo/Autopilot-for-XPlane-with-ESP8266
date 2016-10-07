/*
   Oject definition of Autopilot ojects:
    Fields from X Plane
    Encoder rotation
    Push buttons
    Led's
*/
#include <Adafruit_MCP23017.h>

class FIELD {
  private:
    uint8_t page;
    uint8_t idx;
  public:
    float lastvalue = -99999;
    FIELD(uint8_t x_page, uint8_t x_idx) {
      page = x_page;
      idx = x_idx;
      bool flag = true;
      for (uint8_t i = 0; i < xplane.pagecount; i++) if (page == xplane.pages[i]) flag = false;
      if (flag) xplane.pages[xplane.pagecount++] = page;
    }
    void init() {
      lastvalue = -999;
    }
    float value() {
      return xplane.value(page, idx);
    }
    void value(float val) {
      xplane.value(page, idx, val);
      xplane.update(page, idx);
    }
    void used() {
      lastvalue = value();
    }
    float get() {
      return xplane.value(page, idx);
    }
    void set(float val) {
      xplane.value(page, idx, val);
    }
    bool changed(float &val) {
      if (xplane.onhold()) return false;
      if (val != get()) {
        val = value();
        return true;
      }
      return false;
    }
    bool changed() {
      return (changed(lastvalue));
    }
};

class BUTTON {
  private:
    int pin;
    Adafruit_MCP23017 mcp;
  public:
    bool laststate;
    int value;
    void begin(int x_pin, Adafruit_MCP23017 &x_mcp) {
      pin = x_pin;
      mcp = x_mcp;
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
    bool isdown() {
      return !mcp.digitalRead(pin);
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

class LED {
#define TIMESTATE (millis() / 500) % 2
  private:
    char val;
    int pin;
    Adafruit_MCP23017 mcp;
    long lastTime = TIMESTATE;
  public:
    int laststate;
    void begin(int x_pin, Adafruit_MCP23017 &x_mcp) {
      pin = x_pin;
      mcp = x_mcp;
      mcp.pinMode(pin, OUTPUT);
      mcp.digitalWrite(pin, HIGH);
    }
    void value(char x_val) { //  set value state: 0=off, 1=on, 2=blink
      val = x_val;
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
        if ((millis() - timer) < 160) myFactor *= 2;
        else myFactor = 1;
        if (myFactor > maxfactor) myFactor = maxfactor;
        if (result == DIR_CW) res = -myFactor;
        else res = myFactor;
        Serial.println(res);
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


