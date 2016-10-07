/*
   Functions and commands for Autopilot objects
*/
#include <Adafruit_MCP23017.h>
//Adafruit_MCP23017 PE0;
Adafruit_MCP23017 PE1;
Adafruit_MCP23017 PE2;

#define ENC1 13,12
#define ENC2 15,14
#define ENC3 1, 0
#define ENC4 3, 2

uint8_t sysMode = 0;
char buf[22];
long factor;
int cnt;

//-------------------
//  Fields
FIELD FldActIas(3, 0);
FIELD FldActVs(4, 2);
FIELD FldFlaps(13, 3);
FIELD FldGear(14, 0);
FIELD FldBreaks(14, 1);
FIELD FldPitch(17, 0);
FIELD FldRoll(17, 1);
FIELD FldActHdg(17, 3);
FIELD GpsLat(20, 0);
FIELD GpsLon(20, 1);
FIELD FldActAlt(20, 5);
FIELD FldNav1(97, 0);
FIELD FldNav2(97, 4);
FIELD FldDme1(99, 4);
FIELD FldDme2(100, 4);
FIELD FldNavSel(107, 3);
FIELD FldModeFdir(108, 1);
FIELD FldArmNav(116, 0);
FIELD FldArmAlt(116, 1);
FIELD FldArmApp(116, 2);
FIELD FldArmVnav(116, 3);
FIELD FldModeAthr(117, 0);
FIELD FldModeHdg(117, 1);
FIELD FldModeAlt(117, 2);
FIELD FldIas(118, 0);
FIELD FldHdg(118, 1);
FIELD FldAlt(118, 3);
FIELD FldVs(118, 2);

//  Encoders
ENCODER encIas;
ENCODER encHdg;
ENCODER encAlt;
ENCODER encVs;

//  Buttons
BUTTON butMode;
BUTTON butON;
BUTTON butAUTO;
BUTTON butFLCH;
BUTTON butATHR;
BUTTON butLOC;
BUTTON butHDG;
BUTTON butVNAV;
BUTTON butALT;
BUTTON butGs;
BUTTON butVs;
BUTTON butBc;

//  Leds
LED ledMode;
LED ledOn;
LED ledAuto;
LED ledFlch;
LED ledAthr;
LED ledLoc;
LED ledHdg;
LED ledVnav;
LED ledAlt;
LED ledGs;
LED ledVs;
LED ledBc;
//-------------------

void initFields() {
  lcdClear();
  xplane.stop();
  FldIas.init();
  FldHdg.init();
  FldAlt.init();
  FldVs.init();
  FldActIas.init();
  FldActHdg.init();
  FldActAlt.init();
  FldActVs.init();
  GpsLon.init();
  GpsLat.init();
  FldModeFdir.init();
  FldModeAthr.init();
  FldModeHdg.init();
  FldArmNav.init();
  FldModeAlt.init();
  FldArmAlt.init();
  FldArmApp.init();
  FldGear.init();
  FldFlaps.init();
  FldBreaks.init();

  ledMode.value(0);
  ledOn.value(0);
  ledAuto.value(0);
  ledFlch.value(0);
  ledAthr.value(0);
  ledLoc.value(0);
  ledHdg.value(0);
  ledVnav.value(0);
  ledAlt.value(0);
  ledVs.value(0);
  ledGs.value(0);
  ledBc.value(0);
}

void initButtons() {
  //  init buttons
  butMode.begin(8, PE2);
  butON.begin(10, PE2);
  butAUTO.begin(12, PE2);
  butFLCH.begin(14, PE2);
  butATHR.begin(8, PE1);
  butLOC.begin(10, PE1);
  butALT.begin(2, PE2);
  butGs.begin(0, PE2);
  butHDG.begin(6, PE2);
  butVNAV.begin(4, PE2);
  butVs.begin(6, PE1);
  butBc.begin(4, PE1);
  //  init LEDs
  ledMode.begin(9, PE2);
  ledOn.begin(11, PE2);
  ledAuto.begin(13, PE2);
  ledFlch.begin(15, PE2);
  ledAthr.begin(9, PE1);
  ledLoc.begin(11, PE1);
  ledAlt.begin(3, PE2);
  ledGs.begin(1, PE2);
  ledHdg.begin(7, PE2);
  ledVnav.begin(5, PE2);
  ledVs.begin(7, PE1);
  ledBc.begin(5, PE1);
}

void initEncoders() {
  //  init ENCODERS
  encIas.begin(ENC1, PE1, 1, 16);
  encHdg.begin(ENC2, PE1, 1, 16);
  encAlt.begin(ENC3, PE1, 100, 8);
  encVs.begin(ENC4, PE1, 100, 2);
}

void checkFields() {
  if (FldIas.changed()) {
    //FldIas.used();
    encIas.value = FldIas.lastvalue;
    lcdUpdate(0, 1, "%3d", (long) FldIas.lastvalue);
  }
  if (FldHdg.changed()) {
    //FldHdg.used();
    encHdg.value = FldHdg.lastvalue;
    lcdUpdate(4, 1, "%03d", (long) FldHdg.lastvalue);
  }
  if (FldAlt.changed()) {
    //FldAlt.used();
    encAlt.value = FldAlt.lastvalue;
    lcdUpdate(9, 1, "%5d", (long) FldAlt.lastvalue);
  }
  if (FldVs.changed()) {
    //FldVs.used();
    encVs.value = FldVs.lastvalue;
    if (FldVs.value() == 0) lcdUpdate(15, 1, "     ");
    else lcdUpdate(15, 1, "%5d", (long) FldVs.lastvalue);
  }
}

void checkModes() {
  uint16_t mode;
  mode = FldModeFdir.value();
  switch (mode) {
    case 1:
      ledOn.value(1);
      ledAuto.value(0);
      break;
    case 2:
      ledOn.value(1);
      ledAuto.value(1);
      break;
    default:
      ledOn.value(0);
      ledAuto.value(0);
      break;
  }
  mode = FldModeAthr.value();
  if (FldModeFdir.value() == 0) mode = 0;
  switch (mode) {
    case 0:
      ledAthr.value(0);
      break;
    default:
      ledAthr.value(1);
      break;
  }
  mode = FldModeHdg.value() + (FldArmNav.value() * 10);
  if (FldModeFdir.value() == 0) mode = 0;
  switch (mode) {
    case 1 :  //  ok
      ledLoc.value(0);
      ledHdg.value(1);
      break;
    case 2 :  //  ok
      ledLoc.value(1);
      ledHdg.value(0);
      break;
    case 10 :  //  ok
      ledLoc.value(2);
      ledHdg.value(0);
      break;
    case 11 :  //  ok
      ledLoc.value(2);
      ledHdg.value(1);
      break;
    default:
      ledLoc.value(0);
      ledHdg.value(0);
      break;
  }
  mode = FldModeAlt.value() + FldArmAlt.value() * 100 + FldArmApp.value() * 10;
  if (FldModeFdir.value() == 0) mode = 0;
  switch (mode) {
    case 6 :    //  ok
      ledAlt.value(1);
      ledVs.value(0);
      ledGs.value(0);
      ledFlch.value(0);
      break;
    case 8 :    //  ok
      ledAlt.value(0);
      ledVs.value(0);
      ledGs.value(1);
      ledFlch.value(0);
      break;
    case 103: //  ok
      ledAlt.value(2);
      ledVs.value(0);
      ledGs.value(0);
      ledFlch.value(0);
      break;
    case 104: //  ok
      ledAlt.value(2);
      ledVs.value(1);
      ledGs.value(0);
      ledFlch.value(0);
      break;
    case 16 : //  ok
      ledAlt.value(1);
      ledVs.value(0);
      ledGs.value(2);
      ledFlch.value(0);
      break;
    case 105 : //  ok
      ledAlt.value(2);
      ledVs.value(0);
      ledGs.value(0);
      ledFlch.value(1);
      break;
    case 113: //  ok
      ledAlt.value(2);
      ledVs.value(0);
      ledGs.value(2);
      ledFlch.value(0);
      break;
    case 114: //  ok
      ledAlt.value(2);
      ledVs.value(1);
      ledGs.value(2);
      ledFlch.value(0);
      break;
    default:
      ledAlt.value(0);
      ledVnav.value(0);
      ledGs.value(0);
      ledVs.value(0);
  }
}

void checkSysMode() {
  switch (sysMode) {
    case 1:
      if (FldActIas.changed()) lcdUpdate(0, 3, "%3d", (long) FldActIas.lastvalue);
      if (FldActHdg.changed()) lcdUpdate(4, 3, "%03d", (long) FldActHdg.lastvalue);
      if (FldActAlt.changed()) lcdUpdate(9, 3, "%5d", (long) FldActAlt.lastvalue);
      if (FldActVs.changed()) {
        if (FldActVs.lastvalue == 0) lcdUpdate(15, 3, "     ");
        else lcdUpdate(15, 3, "%5d", (long) FldActVs.lastvalue);
      }
      break;
    case 2:
      if (FldFlaps.changed()) {
        lcdUpdate(0, 3, "F:%3d\%", (uint8_t)(FldFlaps.value() * 100));
      }
      if (FldGear.changed()) {
        sprintf(buf, "G:%3s", (uint8_t)FldGear.value() == 1 ? "DWN" : " UP");
        lcdUpdate(7, 3, buf);
      }
      if (FldBreaks.changed()) {
        sprintf(buf, "B:%3s", FldBreaks.value() == 0 ? "OFF" : " ON");
        lcdUpdate(13, 3, buf);
      }
      break;
    case 3:   float val;
      float dme;
      uint8_t cnst[] = "NAV1:NAV2:GPS: DME:";
      uint8_t dist[] = "-----";
      uint8_t frq[] = "      ";
      switch ((int)FldNavSel.value()) {
        case 0:
          memcpy(&buf, &cnst, 5);
          val = FldNav1.value() / 100;
          dme = FldDme1.value();
          break;
        case 1:
          memcpy(&buf, &cnst[5], 5);
          val = FldNav2.value() / 100;
          dme = FldDme2.value();
          break;
        case 4:
          memcpy(&buf, &cnst[10], 5);
          break;
      }
      dtostrf(val, 6, 2, (char *)frq);
      if (dme != 0) dtostrf(dme, 3, 3, (char *)dist);
      memcpy(&buf[5], &frq, 6);
      memcpy(&buf[11], &cnst[14], 6);
      memcpy(&buf[16], &dist, 4);
      buf[20] = 0;
      lcdUpdate(0, 3, buf);
      break;
  }
}

void checkEncoders() {
  if (encIas.changed(cnt, factor)) {
    for (uint8_t i = 0; i < cnt; i++) {
      long value = encIas.value + factor;
      encIas.value = (value < 0 ? 0 : value);
      xplane.timer = millis();
      lcdUpdate(0, 1, "%3d", (long) encIas.value);
    }
    FldIas.value(encIas.value);
  }
  if (encHdg.changed(cnt, factor)) {
    for (uint8_t i = 0; i < cnt; i++) {
      long value = encHdg.value + factor + 359;
      value %= 360;
      encHdg.value = (value + 1);
      xplane.timer = millis();
      lcdUpdate(4, 1, "%03d", (long) encHdg.value);
    }
    FldHdg.value(encHdg.value);
  }
  if (encAlt.changed(cnt, factor)) {
    for (uint8_t i = 0; i < cnt; i++) {
      long value = (long)(encAlt.value + factor) / 100 * 100;
      encAlt.value = (value < 0 ? 0 : value);
      xplane.timer = millis();
      lcdUpdate(9, 1, "%5d", (long) encAlt.value);
    }
    FldAlt.value(encAlt.value);
  }
  if (encVs.changed(cnt, factor)) {
    for (uint8_t i = 0; i < cnt; i++) {
      long value = (encVs.value + factor) / 100 * 100;
      if (value > 5000) value = 5000;
      if (value < -5000) value = -5000;
      encVs.value = (value);
      xplane.timer = millis();
      if (encVs.value == 0) lcdUpdate(15, 1, "     ");
      else lcdUpdate(15, 1, "%5d", (long) encVs.value);
    }
    FldVs.value(encVs.value);
  }
}

void initAutopilot() {
  PE1.begin(0);      // addr 0x20
  PE2.begin(1);      // addr 0x21
  //PE0.begin(2);      // addr 0x22 - must init before lcd, or it will destroy lcd init
  initFields();
  initButtons();
  initEncoders();
}

void checkButtons() {
  if (butMode.pressed()) {
    sysMode += 1;
    sysMode %= 4;
    lcdUpdate(0, 3, "                    ");
    switch (sysMode) {
      case 1:
        lcdUpdate(4, 3, "%03d", (long) FldActHdg.value());
        lcdUpdate(4, 3, "%03d", (long) FldActHdg.value());
        lcdUpdate(8, 3, "%5d", (long) FldActAlt.value());
        if (FldActVs.value() == 0) lcdUpdate(15, 3, "     ");
        else lcdUpdate(15, 3, "%5d", (long) FldActVs.value());
        break;
      case 2:
        lcdUpdate(0, 3, "F:%3d\%", (uint8_t)(FldFlaps.value() * 100));
        sprintf(buf, "G:%3s", (uint8_t)FldGear.value() == 1 ? "DWN" : " UP");
        lcdUpdate(7, 3, buf);
        sprintf(buf, "B:%3s", FldBreaks.value() == 0 ? "OFF" : " ON");
        lcdUpdate(13, 3, buf);
        break;
    }
  }
  if (butON.pressed()) {
    if (FldModeFdir.value() == 1) FldModeFdir.value(0);
    else FldModeFdir.value(1);
  }
  if (butAUTO.pressed()) {
    if (FldModeFdir.value() == 2) FldModeFdir.value(1);
    else FldModeFdir.value(2);
  }
  if (butFLCH.pressed()) {
    xplane.CMND("autopilot/level_change");
  }
  if (butATHR.pressed()) {
    xplane.CMND("autopilot/autothrottle_toggle");
  }
  if (butLOC.pressed()) {
    xplane.CMND("autopilot/NAV");
  }
  if (butHDG.pressed()) {
    xplane.CMND("autopilot/heading");
  }
  if (butVNAV.pressed()) {
    xplane.CMND("autopilot/FMS");
  }
  if (butALT.pressed()) {
    xplane.CMND("autopilot/altitude_hold");
  }
  if (butVs.pressed()) {
    xplane.CMND("autopilot/vertical_speed");
  }
  if (butGs.pressed()) {
    xplane.CMND("autopilot/approach");
  }
  if (butBc.pressed()) {
    //xplane.DREF("sim/network/dataout/network_data_rate[0]", (int32_t)20);
    xplane.CMND("autopilot/back_course");
  }
}

void checkLed() { //  check LEDs for blink
  ledMode.check();
  ledOn.check();
  ledAuto.check();
  ledFlch.check();
  ledAthr.check();
  ledLoc.check();
  ledAlt.check();
  ledGs.check();
  ledHdg.check();
  ledVnav.check();
  ledVs.check();
  ledBc.check();
}

