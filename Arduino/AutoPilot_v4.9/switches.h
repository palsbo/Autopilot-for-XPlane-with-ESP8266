#ifndef SWITCHES_H
#define SWITCHES_H

#include <Adafruit_MCP23017.h>
#include "utils.h"

class BUTTON {
  private:
    int pin;
    unsigned long timer;
    Adafruit_MCP23017 mcp;
  public:
    bool laststate;
    int value;
    void begin(int _pin, Adafruit_MCP23017 &_mcp) {
      pin = _pin;
      mcp = _mcp;
      mcp.pinMode(pin, INPUT);
      mcp.pullUp(pin, HIGH);
      laststate = mcp.digitalRead(pin);
    }
    bool pressed() {
      bool ret = false;
      bool state = mcp.digitalRead(pin);
      if ( laststate > state) ret = true;
      laststate = state;
      return ret;
    }
    bool isdown() {
      return !mcp.digitalRead(pin);
    }
};

//------------------------

class LED {
#define TIMESTATE (millis() / 500) % 2
  private:
    char val;
    int pin;
    Adafruit_MCP23017 mcp;
    long lastTime = TIMESTATE;
  public:
    int laststate;
    void begin(int _pin, Adafruit_MCP23017 &_mcp);
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

class {
  private:
    LED * list[15];
    int ledCount = 0;
  public:
    void add(LED * obj) {
      list[ledCount++] = obj;
    }
    void init() {
      for (int i = 0; i < ledCount; i++) list[i]->value(0);
    }
    void check() {
      for (int i = 0; i < ledCount; i++) list[i]->check();
    }
} leds;

void LED::begin(int _pin, Adafruit_MCP23017 &_mcp) {
  pin = _pin;
  mcp = _mcp;
  mcp.pinMode(pin, OUTPUT);
  mcp.digitalWrite(pin, HIGH);
  leds.add(this);
}

//----------------------------------------------

class ENCODER {
  private:
    Adafruit_MCP23017 mcp;
    unsigned long lastTime;
    uint8_t pinA;
    uint8_t pinB;
    uint8_t LastA;
    uint8_t encA;
    int initFactor;
    int myFactor;
    int maxFactor;
    unsigned long accTimer;
  public:
    long factor;
    float lastvalue;
    void begin(uint8_t _pinA, uint8_t _pinB, Adafruit_MCP23017 &_mcp, int _initFactor, int _maxFactor) {
      pinA = _pinA;
      pinB = _pinB;
      mcp = _mcp;
      initFactor = _initFactor;
      myFactor = initFactor;
      maxFactor = _maxFactor;
      mcp.pinMode(pinA, INPUT);
      mcp.pullUp(pinA, HIGH);
      mcp.pinMode(pinB, INPUT);
      mcp.pullUp(pinB, HIGH);
    }
    int change() {
      int res = 0;
      uint8_t encA = mcp.digitalRead(pinA);
      if ((LastA == HIGH) && (encA == LOW)) {
        myFactor = (millis() < accTimer) ? min(myFactor * 2, maxFactor) : initFactor;
        accTimer = millis() + 100;
        if (mcp.digitalRead(pinB) == HIGH) res = -myFactor;
        else res = myFactor;
      }
      LastA = encA;
      return res;
    }
    bool changed(float &_val, int divisor) {
      int x = change();
      if (!x) return false;
      _val = (float(x * 1.0 / divisor) + _val);
      return true;
    }
    void value(int val) {
      lastvalue = val;
    }
    float value() {
      return lastvalue;
    }
};

#endif

