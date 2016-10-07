/*
   Autopilot Project by:
   erik@palsbo.com

*/
//----------------------------
#define TITLE "X-Plane KML Server"
#define eepromID 2347
#define RCVPORT 49003 //  Receive from X Plane
#define SNDPORT 49000 //  Send to X Plane
#define refresh 10
//----------------------------

#include <ESP8266WiFi.h>
#include <Wire.h>
#include <ESP8266WebServer.h>
#include <WiFiManager.h>         //https://github.com/tzapu/WiFiManager
#include "lcd.h"
#include "xplane.h"
XPLANE  xplane;
#include "obj.h"
#include "autopilot.h"
#include "advancedWiFi.h"
#include "config.h"
CFG eeprom = {eepromID, RCVPORT, SNDPORT, refresh};
CONFIG config(&eeprom, []() {
  Serial.print("EEprom writeback, IP: ");
});

#include "web.h"

long butTimer;
bool online = false;

void setup() {
  Serial.begin(115200);
  Wire.begin();
  Wire.pins(0, 2);
  initAutopilot();
  initLCD();
  onWiFiOk([]() {
    lcdClear();
    lcdUpdate(0, 0, "WiFi connected to:  ");
    lcdUpdate(0, 1, WiFi.SSID());
    lcdUpdate(0, 2, "IP address: ");
    lcdUpdate(0, 3, WiFi.localIP());
  });
  onWiFiFailed([]() {
    lcdClear();
    lcdUpdate(0, 0, "Failed to connect ");
    lcdUpdate(0, 1, "and hit timeout");
  });
  onWiFiAPmode([](WiFiManager * myWiFiManager) {
    lcdClear();
    lcdUpdate(0, 0, "Entered config mode:");
    lcdUpdate(0, 1, "Go to WiFi setup.");
    lcdUpdate(0, 2, "Select '" + myWiFiManager->getConfigPortalSSID() + "'");
    lcdUpdate(0, 3, "Browse 192.168.4.1");
  });
  lcdUpdate(0, 0, "Connecting to WiFi: ");
  initWiFi(butMode.isdown());
  ThisIP = ip2string(WiFi.localIP());
  initWeb();
  xplane.begin(eeprom.rxPort, eeprom.txPort, eeprom.udprate);
  xplane.onCommunication([](bool status) {
    lcdClear();
    if (status) {
      online = true;
      lcdUpdate(0, 0, "IAS HDG   ALT   V/S");
    } else {
      initFields();
      online = false;
      sysMode = 0;
      lcdClear();
      lcdUpdate(0, 0, "Waiting for X Plane");
    }
  });
  Wire.setClock(1700000L);
  Wire.setClockStretchLimit(1500);    // in µs
}

void loop() {
  checkWeb();
  if (online) checkEncoders();
  if (xplane.scan()) {
    if (online) {
      checkFields();
      checkModes();
      if ((millis() - butTimer) > 100) {
        checkButtons();
        checkLed();
        checkSysMode();
        butTimer = millis();
        delay(1);
      }
    }
  }
}

