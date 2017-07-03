#ifndef FIELDS_H
#define FIELDS_H

#include "utils.h"
#include "xplane.h"


class DFIELD {
  private:
    uint8_t page;
    uint8_t idx;
    char buf[10];
    float oldValue;
  public:
    void init() {
      oldValue = 999999999.0;
    }
    float get() {
      return xplane.value(page, idx);
    }
    char * toString(int dec) {
      char buf[10];
      dtostrf(get(), 1, dec, buf);
      return buf;
    }
    bool isNull() {
      return (get() == 0.0F);
    }
    String adjust(int maxlen, bool flag = false) {
      float val = get();
      String s = "";
      int d = 0;
      if (!flag) {
        return String(val, 0);
      }
      if (val > 8.0F) val = 0.0F;
      if (val < 1.0F) {
        return String(val, 3).substring(1);
      }
      return String(val, 1);
    }
    void set(float val) {
      xplane.value(page, idx, val);
      xplane.updateIdx(page, idx);
    }
    bool changed(int dec = 0) {
      float val = get();
      if (compareF(val, oldValue, dec)) return false;
      //if (round(val*pow(10,dec))==round(oldValue*pow(10,dec))) return false;
      //if (!memcmp(&val, &oldValue, 4)) return false;
      oldValue = val;
      return true;
    }
    DFIELD(uint8_t _page, uint8_t _idx);
};

struct upd_struct {
  uint8_t page;
  uint8_t idx;
  float val;
};

DFIELD::DFIELD(uint8_t _page, uint8_t _idx) {
  page = _page;
  idx = _idx;
  xplane.addPage(page);
  init();
}

//------------------------------------------------

class RFIELD {
  private:
    int idx;
    float oldValue = -9999999999999.0;
  public:
    float value;
    char * dref;
    RFIELD(char * _dref);
    float get() {
      return value;
    }
    bool isNull() {
      return (value == 0.0F);
    }
    char * toString(int dec) {
      char buf[10];
      dtostrf(get(), 1, dec, buf);
      return buf;
    }
    String adjust(int maxlen, bool flag = false) {
      float val = get();
      String s = "";
      int d = 0;
      if (!flag) {
        return String(val, 0);
      }
      if (val > 8.0F) val = 0.0F;
      if (val < 1.0F) {
        return String(val, 3).substring(1);
      }
      return String(val, 1);
    }
    bool changed(int dec = 0) {
      if (compareF(value, oldValue, dec)) return false;
      //if (round(value*pow(10,dec))==round(oldValue*pow(10,dec))) return false;
      //bool ret = (value != oldValue);
      oldValue = value;
      return true;
    }
};

class RFIELDLIST {
  private:
  public:
    RFIELD * list[MAXRREFS];
    int count;
    int add(RFIELD * obj) {
      list[count] = obj;
      xplane.addRREF(list[count]->dref);
      return count++;
    }
    RFIELDLIST() {
    }
} rfieldlist;

RFIELD::RFIELD(char * _dref) {
  dref = _dref;
  //strcpy(dref, _dref);
  idx = rfieldlist.add(this);
}

//------------------------------------------------
#define ISTRUE(fld) (fld!=0)
#define ISFALSE(fld) (fld==0)

class {       //  calculate pointer for ILS
  private:
    int h;
    int v;
    int oldIdx;
    char pList[10] = {NE, E, SE, N, '+', S, NW, W, SW, ' '};
    char oldPointer;
    int idx;
  public:
    char pointer;
    bool changed(float vDef, float hDef, float vOk, float hOk) {
      h = round(hDef * 4);
      v = round(vDef * 4);
      int hVal = (h > 0 ? 0 : h < 0 ? 6 : 3);
      int vVal = (v > 0 ? 2 : v < 0 ? 0 : 1);
      if (compareF(vOk,0.0F) && compareF(hOk,0.0F)) idx = 9;
      else if (compareF(vOk,0)) idx = hVal;
      else if (compareF(hOk,0)) idx = vVal;
      else idx = hVal + vVal;
      //if (!((h <= 10) && (h >= -10) && (v <= 10) && (v >= -10))) idx = 9;
      //else idx = (v > 0 ? 2 : v < 0 ? 0 : 1) + (h > 0 ? 0 : h < 0 ? 6 : 3);
      pointer = pList[idx];
      if (pointer == oldPointer) return false;
      oldPointer = pointer;
      //Serial.print(pointer);
      //Serial.printf(" Vdef: %d, Hdef %d\n", v, h);
      return true;
    }
} gs;

#endif
