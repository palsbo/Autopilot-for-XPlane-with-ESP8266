#ifndef UTILS_H
#define UTILS_H

#include <Wire.h>
#include <Adafruit_MCP23017.h>
#include<stdlib.h>

Adafruit_MCP23017 mcp0;
Adafruit_MCP23017 mcp1;
Adafruit_MCP23017 mcp2;

unsigned long globalTimer;

bool compareF(float a, float b, int dec = 0) {
   return (round(a*pow(10,dec))==round(b*pow(10,dec)));
}

void printbuf(byte * buf, int len) {
  for (int i = 0; i < len; i++) Serial.printf("%02x ", buf[i]);
  Serial.print("  ");
  for (int i = 0; i < len; i++) Serial.print(((buf[i] > 0x20) && (buf[i] < 0x80)) ? (char)buf[i] : '.');
  Serial.println();
}

String ip2string(IPAddress ip) {
  char buf[20];
  return (String(ip[0]) + "." + String(ip[1]) + "." + String(ip[2]) + "." + String(ip[3]));
}

class SPEED {
  private:
    float oldSpeed;
    float oldOAT;
    float oldAlt;
    bool oldIsMach;
  public:
    float spd;
    float alt;
    float oat;
    bool isMach;
    bool changed(bool _isMach, float _spd, float _alt, float _oat) {
      if ((oldIsMach == _isMach) && (oldSpeed == _spd) && (oldOAT == _oat) && (oldAlt == _alt)) return false;
      spd = _spd;
      oat = _oat;
      alt = _alt;
      isMach = _isMach;
      oldSpeed = spd;
      oldOAT = oat;
      oldAlt = alt;
      oldIsMach = isMach;
      return true;
    }
    float TAS() {
      if (!isMach) return ((0.02 * (alt / 1000) + 1) * spd);
      Serial.println("isMach");
      float V = oat + 35.0F;
      return (6.0 * spd) - V;
    }
    float MACH() {
      if (isMach) return spd;
      float V = oat + 35.0F;
      return (TAS() + V) / 6;
    }
};

char * ias2strX(float val, float isMach) {
  bool mach = (isMach != 0.0F);
  if (val < 0) val = 0.0F;
  char c[10];
  if (!mach) {
    dtostrf(round(val), 4, 0, c);
    c[4] = '\0';
    return c;
  } else {
    if (val >= 7.0F) val = 0.0F;
    dtostrf(val, 3, 3, c);
    uint8_t i = 0;
    while ((c[i] == ' ') || (c[i] == '0')) i++;
    c[i + 4] = 0x00;
    return &c[i];
  }
}

bool isIn(int r, ...) {
  int x;
  bool res = false;
  va_list argList;
  va_start(argList, r);
  while (true) {
    x = va_arg(argList, int);
    if ((x < 0) || (x > 255)) break;
    if (x == r)  return true;
  };
  va_end(argList);
  return false;
}

float IAS2TAS(float IAS, float ALT) {
  return ((0.02 * (ALT / 1000) + 1) * IAS);
}

float TAS2IAS(float TAS, float ALT) {
  return TAS / (0.02 * (ALT / 1000) + 1);
}

float MACH2TAS(float MACH, float OAT) {
  float V = OAT + 35.0F;
  return (6.0 * MACH) - V;
}

float TAS2MACH(float TAS, float OAT) {
  float V = OAT + 35.0F;
  return (TAS + V) / 6;
}

float MACH2IAS(float MACH, float OAT, float ALT) {
  return TAS2IAS(MACH2TAS(MACH, OAT), ALT);
}

float IAS2MACH(float IAS, float OAT, float ALT) {
  return TAS2MACH(IAS2TAS(IAS, ALT), OAT);
}

int min(int a, int b) {
  if (a < b) return a;
  return b;
}


#endif

