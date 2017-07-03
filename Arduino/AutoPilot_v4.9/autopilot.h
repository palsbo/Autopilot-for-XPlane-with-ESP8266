#ifndef AUTOPILOT_H
#define AUTOPILOT_H
/*
   Functions and commands for Autopilot objects
*/
#include "utils.h"
#include "lcd.h"
#include "xplane.h"
#include "fields.h"
#include "switches.h"

enum DISPMODE {
  
};

#define ISMACH !FldIsMach.isNull()

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
//  encoder switches
BUTTON EncIAStop;
BUTTON EncHDGtop;
BUTTON EncALTtop;
BUTTON EncVStop;
//  Fields
RFIELD FldIsMach("sim/cockpit2/autopilot/airspeed_is_mach[0]");
RFIELD FldVnav("sim/cockpit2/autopilot/fms_vnav");
RFIELD FldVde("sim/cockpit/radios/nav1_vdef_dot");
RFIELD FldHde("sim/cockpit/radios/nav1_hdef_dot");
//RFIELD FldGsArmed("sim/cockpit2/autopilot/glideslope_status");  //  0=off,1=armed,2=captured
//RFIELD FldHnavArmed("sim/cockpit2/autopilot/vnav_status");    //  0=off,1=armed,2=captured
//RFIELD FldGsOk("sim/cockpit/radios/nav1_CDI");  //  int n bool  Are we receiving an expected glide slope for nav1
RFIELD FldHorOk("sim/cockpit2/radios/indicators/nav1_display_horizontal");  //  int n boolean Is there some kind of horizontal signal on nav1
RFIELD FldVerOk("sim/cockpit2/radios/indicators/nav1_display_vertical");  //  int n boolean Is there some kind of vertical signal on nav1
DFIELD FldActMach(4, 0);
DFIELD FldActIas(3, 0);
DFIELD FldActTas(3, 2);
DFIELD FldActGs(3, 3);
DFIELD FldActVs(4, 2);
DFIELD FldFlaps(13, 3);
DFIELD FldGear(14, 0);
DFIELD FldBreaks(14, 1);
DFIELD FldActHdg(17, 3);
DFIELD FldActAlt(20, 5);
DFIELD FldNav1(97, 0);
DFIELD FldNav2(97, 4);
DFIELD FldDme1(99, 4);
DFIELD FldDme2(100, 4);
DFIELD FldNavSel(107, 3);
DFIELD FldModeFdir(108, 1);
DFIELD FldArmNav(116, 0);
DFIELD FldArmAlt(116, 1);
DFIELD FldArmApp(116, 2);
DFIELD FldArmVnav(116, 3);
DFIELD FldModeAthr(117, 0);
DFIELD FldModeHdg(117, 1);
DFIELD FldModeAlt(117, 2);
DFIELD FldIas(118, 0);
DFIELD FldHdg(118, 1);
DFIELD FldAlt(118, 3);
DFIELD FldVs(118, 2);
//  for KML server
DFIELD GpsLat(20, 0);
DFIELD GpsLon(20, 1);
DFIELD FldPitch(17, 0);
DFIELD FldRoll(17, 1);

//  Encoders
ENCODER encIas;
ENCODER encHdg;
ENCODER encAlt;
ENCODER encVs;
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

uint8_t dispMode = 0;
char buf[22];
long factor;
int cnt;

//enum IASMODE { IAS, MACH } iasMode = IAS;
//bool autoThrottle;

void initActValues() {
  FldActIas.init();
  FldActHdg.init();
  FldActAlt.init();
  FldActVs.init();
}

void initApValues() {
  FldIas.init();
  FldHdg.init();
  FldAlt.init();
  FldVs.init();
}

void initSpeedValues() {
  FldActIas.init();
  lcd.print(0, 2, " IAS TAS   GS  MACH ");
}

void initBreakingValues() {
  FldFlaps.init();
  FldGear.init();
  FldBreaks.init();
}

void autopilotOpen() {
  xplane.onRREF([](long idx, float val) {
    if (idx < rfieldlist.count) {
      rfieldlist.list[idx]->value = val;
    }
    return false;
  });
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
  initApValues();
  initActValues();
  initSpeedValues();
}

void autopilotClose() {
  dispMode = 0;
}

void autopilotInit() {
  //  init buttons
  butMode.begin(8, mcp1);
  butON.begin(10, mcp1);
  butAUTO.begin(12, mcp1);
  butFLCH.begin(14, mcp1);
  butATHR.begin(8, mcp0);
  butLOC.begin(10, mcp0);
  butALT.begin(2, mcp1);
  butGs.begin(0, mcp1);
  butHDG.begin(6, mcp1);
  butVNAV.begin(4, mcp1);
  butVs.begin(6, mcp0);
  butBc.begin(4, mcp0);
  //  init LEDs
  ledMode.begin(9, mcp1);
  ledOn.begin(11, mcp1);
  ledAuto.begin(13, mcp1);
  ledFlch.begin(15, mcp1);
  ledAthr.begin(9, mcp0);
  ledLoc.begin(11, mcp0);
  ledAlt.begin(3, mcp1);
  ledGs.begin(1, mcp1);
  ledHdg.begin(7, mcp1);
  ledVnav.begin(5, mcp1);
  ledVs.begin(7, mcp0);
  ledBc.begin(5, mcp0);
  //  init encoders
  encIas.begin(13, 12, mcp0, 1, 16);
  encHdg.begin(15, 14, mcp0, 1, 8);
  encAlt.begin(1, 0, mcp0, 100, 800);
  encVs.begin(3, 2, mcp0, 100, 200);
  //  init switch on encoders
  EncIAStop.begin(0, mcp2);
  EncHDGtop.begin(3, mcp2);
  EncALTtop.begin(1, mcp2);
  EncVStop.begin(2, mcp2);
}

void showActValues(uint8_t line) {
  if (FldActIas.changed() || FldActMach.changed() || FldIsMach.changed()) {
    if (ISMACH) lcd.printf(0, line, "%4s", FldActMach.adjust(4, true).c_str());
    else lcd.printf(0, line, "%4s", FldActIas.adjust(4, false).c_str());
  }
  if (FldActHdg.changed()) {
    lcd.print(5, line, "%03d", (long)round(FldActHdg.get()));
  }
  if (FldActAlt.changed()) {
    lcd.print(9, line, "%5d", (long) round(FldActAlt.get()));
  }
  if (FldActVs.changed()) {
    if (round(FldActVs.get()) == 0) lcd.print(15, line, "     ");
    else lcd.print(15, line, "%5d", (long) round(FldActVs.get()));
  }
}

void showApValues() {
  if (gs.changed(FldVde.get(), FldHde.get(), FldVerOk.get(), FldHorOk.get())) {
    lcd.print(14, 0, gs.pointer);
  }
  if (FldIsMach.changed()) {
    lcd.print(0, 0, (ISMACH ? "MACH" : " IAS"));
    lcd.printf(0, 1, "%4s", FldIas.adjust(4, ISMACH).c_str());
    if (FldModeFdir.get() == 1) lcd.printf(0, 1, "%4s", FldActIas.adjust(4, ISMACH).c_str());
  }
  if (FldIas.changed(ISMACH ? 3 : 0)) {
    lcd.printf(0, 1, "%4s", FldIas.adjust(4, ISMACH).c_str());
  }
  if (FldHdg.changed()) {
    lcd.print(5, 1, "%03d", (long(round(FldHdg.get()))));
  }
  if (FldAlt.changed()) {
    lcd.print(9, 1, "%5d", (long)round(FldAlt.get()));
  }
  if (FldVs.changed()) {
    int val = round(FldVs.get());
    if (val == 0) lcd.print(15, 1, "     ");
    else lcd.print(15, 1, "%5d", val);
  }
}

void showSpeedValues() {
  if (xplane.online) {
    if (FldActIas.changed()) {
      //float tas = FldActTas.get()*1.94384449244;
      lcd.printf(0, 3, "%4d", round(FldActIas.get()));
      lcd.printf(4, 3, "%4d", round(FldActTas.get()));
      lcd.printf(9, 3, "%4d", round(FldActGs.get()));
      lcd.printf(15, 3, "%4s", FldActMach.adjust(4, true).c_str());
    }
  }
}

void showBreakingValues(uint8_t line) {        //  Show Flaps, Gear, Breaks in Line 3
  if (FldFlaps.changed(3)) {
    lcd.print(0, line, "F:%3d\%", (uint8_t)(FldFlaps.get() * 100));
  }
  if (FldGear.changed()) {
    sprintf(buf, "G:%3s", (uint8_t)FldGear.get() == 1 ? "DWN" : " UP");
    lcd.print(7, line, buf);
  }
  if (FldBreaks.changed()) {
    sprintf(buf, "B:%3s", FldBreaks.get() == 0 ? "OFF" : " ON");
    lcd.print(13, line, buf);
  }
}

void showNavValues(uint8_t line) {       //  Show NAV1, DME in line 3
  float val;
  float dme;
  uint8_t cnst[] = "NAV1:NAV2:GPS: DME:";
  uint8_t dist[] = "-----";
  uint8_t frq[] = "      ";
  switch ((int)FldNavSel.get()) {
    case 0:
      memcpy(&buf, &cnst, 5);
      val = FldNav1.get() / 100;
      dme = FldDme1.get();
      break;
    case 1:
      memcpy(&buf, &cnst[5], 5);
      val = FldNav2.get() / 100;
      dme = FldDme2.get();
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
  lcd.print(0, line, buf);
}

void autopilotCheck() {
  if (xplane.online) showApValues();
  //  checkEncoders
  int divisor;
  float  val = FldIas.get();
  divisor = !FldIsMach.get() ? 1 : 100;
  if (encIas.changed(val, divisor)) {
    if (val < 0.0F) val = 0.0F;
    FldIas.set(val);
    globalTimer = millis();
  }
  val = FldHdg.get();
  divisor = 1;
  if (encHdg.changed(val, divisor)) {
    if (val > 360.0) val = val - 360.0;
    if (val < 0.0) val = val + 360.0;
    FldHdg.set(val);
    globalTimer = millis();
  }
  val = FldAlt.get();
  if (encAlt.changed(val, divisor)) {
    val = round(val / 100) * 100.0F;
    FldAlt.set(val < 0.0 ? 0.0 : val);
    globalTimer = millis();
  }
  val = FldVs.get();
  if (encVs.changed(val, divisor)) {
    FldVs.set(val);
    globalTimer = millis();
  }
  //  checkButtons
  if (EncIAStop.pressed()) {
    xplane.CMND("sim/autopilot/knots_mach_toggle");
    //if (FldIsMach.value == 0.0F) FldIas.set(220);
    //else FldIas.set(.333F);
    //return;
  }
  if (EncHDGtop.pressed()) {
    FldHdg.set(FldActHdg.get());
  }
  if (EncALTtop.pressed()) {
  }
  if (EncVStop.pressed()) {
  }
  if (butON.pressed()) {
    if (FldModeFdir.get() == 1) FldModeFdir.set(0);
    else FldModeFdir.set(1);
  }
  if (butAUTO.pressed()) {
    if (FldModeFdir.get() == 2) FldModeFdir.set(1);
    else FldModeFdir.set(2);
    //xplane.DREF("sim/cockpit2/autopilot/flight_director_mode[0]",FldModeFdir.get());
  }
  if (butFLCH.pressed()) {
    xplane.CMND("sim/autopilot/level_change");
  }
  if (butATHR.pressed()) {
    if (FldModeFdir.get() > 0)
      xplane.CMND("sim/autopilot/autothrottle_toggle");
  }
  if (butLOC.pressed()) {
    xplane.CMND("sim/autopilot/NAV");
  }
  if (butHDG.pressed()) {
    xplane.CMND("sim/autopilot/heading");
  }
  if (butVNAV.pressed()) {
    if (ledOn.get() != 0.0F)
      xplane.CMND("sim/autopilot/FMS");
  }
  if (butALT.pressed()) {
    xplane.CMND("sim/autopilot/altitude_hold");
  }
  if (butVs.pressed()) {
    xplane.CMND("sim/autopilot/vertical_speed");
  }
  if (butGs.pressed()) {
    xplane.CMND("sim/autopilot/approach");
  }
  if (butBc.pressed()) {
    //xplane.CMND("sim/autopilot/knots_mach_toggle");
  }
  //  check LEDs for blink
  leds.check();
  /*
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
  */
  //check extra info lines
  if (!xplane.onhold) {
    switch (dispMode) {
      case 0: showSpeedValues(); break;
      case 1: showActValues(2); showNavValues(3); break;
      case 2: showActValues(2); showBreakingValues(3); break;
    }
  }
  if (butMode.pressed()) {
    if (butBc.isdown()) {
      WiFiManager wifiManager;
      wifiManager.resetSettings();    //  for resetting saved SSID and Password
      lcd.clear();
      lcd.print(0,1,"Reset as Accesspoint");
      delay(3000);
      ESP.reset();
      delay(5000);
    } else {
      if  (xplane.online) {
        lcd.print(0, 2, "                    ");
        lcd.print(0, 3, "                    ");
        switch (((++dispMode) %= 3)) {
          case 0: initSpeedValues(); break;
          case 1: initActValues(); break;
          case 2: initActValues(); initBreakingValues(); break;
        }
      }
    }
  }
}

void checkFdMode() {
  uint16_t mode = FldModeFdir.get();
  mode = FldModeFdir.get();
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
  mode = FldModeAthr.get();
  if (FldModeFdir.get() == 0) mode = 0;
  switch (mode) {
    case 0:
      ledAthr.value(0);
      break;
    default:
      ledAthr.value(1);
      break;
  }
  mode = FldModeHdg.get() + (FldArmNav.get() * 10);
  if (FldModeFdir.get() == 0) mode = 0;
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
  mode = FldModeAlt.get() + FldArmAlt.get() * 100 + FldArmApp.get() * 10;
  if (FldModeFdir.get() == 0) mode = 0;
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

#endif

