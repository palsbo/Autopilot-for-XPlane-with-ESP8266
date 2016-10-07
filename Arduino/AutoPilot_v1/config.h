/*
 * Object for maintaining percistent configuration data.
 */
#ifndef MYEEPROM_H_
#define MYEEPROM_H_

#include <EEPROM.h>
typedef void (*callback0)();

struct CFG {  //  must be defined before #include "config.h"
  uint id;
  uint rxPort;
  uint txPort;
  uint udprate;
};

class CONFIG {
  private:
    CFG temp;
    byte buf[sizeof(CFG) + 1];
    callback0 cb;
  public:
    CFG * eeprom;
    bool read() {
      for (int i = 0; i < sizeof(CFG); i++) buf[i] = EEPROM.read(i);
      memcpy(&temp, &buf, sizeof(CFG));
      if (temp.id == eeprom->id) {
        memcpy(eeprom, &buf, sizeof(CFG));
      } else {
        write();
        return false;
      }
      return true;
    }
    void write() {
      memcpy(&buf, eeprom, sizeof(CFG));
      for (int i = 0; i < sizeof(CFG); i++) EEPROM.write(i, buf[i]);
      EEPROM.commit();
      if (cb) cb();
      read();
    }
    void update(CFG * x_eeprom){
      memcpy(eeprom, x_eeprom, sizeof(CFG));
      write();
    }
    CONFIG(CFG * x_eeprom) {
      eeprom = x_eeprom;
      EEPROM.begin(512);
      read();
    }
    CONFIG(CFG * x_eeprom, callback0 x_cb) {
      cb = x_cb;
      eeprom = x_eeprom;
      EEPROM.begin(512);
      read();
    }
};

#endif
