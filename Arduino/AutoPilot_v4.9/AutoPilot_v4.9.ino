/*
 * ----------------------------------------------------------
 * The Autopilot project
 * by erik@palsbo.com
 * http://palsbo.com/xplane/Autopilot.html
 * ----------------------------------------------------------
*/
#include <ESP8266WiFi.h>
#include <DNSServer.h>
#include <WiFiManager.h>         //https://github.com/tzapu/WiFiManager
#include <ArduinoOTA.h>          //For OTA
#include "lcd.h"
#include "xplane.h"
#include "autopilot.h"

#define FIXEDSSID false  //  set true for fixed SSID configuration
#define STATICIP true    //  set true to use static IP for autopilot
#define XPIP false       //  set true for hardcoding of XPlane IP

#if FIXEDSSID
char ssid[] = ".....";   //  set to SSID for predefined WiFi network
char pass[] = ".....";   //  set to password for predefined WiFi network
#endif

#if STATICIP              //  details for static IP
IPAddress _ip = IPAddress(192, 168, 1, 20);
IPAddress _gw = IPAddress(192, 168, 1, 1);
IPAddress _sn = IPAddress(255, 255, 255, 0);
#endif

#if XPIP                  //  details for predefined X Plane IP
IPAddress xp_ip = IPAddress(192, 168, 1, 68);
#endif

// ----------------------------------------------------------

#define APNAME "AutopilotAP"
String file = __FILE__;
unsigned long butTimer;

enum CONMODE {
  isAP,
  isConnecting,
  isConnected,
  isWaiting,
  isOnline
} conMode;

void showConMode(CONMODE mode) {
  lcd.clear();
  switch (mode) {
    case isAP:
      lcd.print(0, 0, "WiFi Access point:  ");
      lcd.print(0, 1, APNAME);
      lcd.print(0, 2, "IP address: ");
      lcd.print(0, 3, "192.168.4.1");
      break;
    case isConnecting:
      lcd.print(3, 1, "WiFi connecting");
      break;
    case isConnected:
      lcd.print(0, 0, "WiFi connected to:  ");
      lcd.print(0, 1, WiFi.SSID());
      lcd.print(0, 2, "IP address: ");
      lcd.print(0, 3, WiFi.localIP());
      break;
    case isWaiting:
      lcd.print(0, 0, "Waiting for X Plane ");
      lcd.print(0, 1, "                    ");
      lcd.print(0, 2, file.substring(file.lastIndexOf("\\") + 1));
      lcd.print(0, 3, __DATE__ );
      lcd.print(12, 3, __TIME__);
      break;
    case isOnline:
      lcd.print(0, 0, " IAS HDG  ALT   V/S");
      break;
  }
}

void configModeCallback (WiFiManager *myWiFiManager) {
  showConMode(isAP);
}

void setup() {
  Wire.begin();
  Wire.pins(0, 2);
  mcp2.begin(2);      // addr 0x22
  mcp0.begin(0);      // addr 0x20
  mcp1.begin(1);      // addr 0x21
  lcd.begin(20, 4);
  showConMode(isConnecting);
  Serial.begin(115200);
  WiFiManager wifiManager;
#if STATICIP
  wifiManager.setSTAStaticIPConfig(_ip, _gw, _sn);
#endif
  //wifiManager.resetSettings();    //  for resetting saved SSID and Password
  wifiManager.setAPCallback(configModeCallback);
#if FIXEDSSID
  WiFi.begin(ssid, pass);
#else
  wifiManager.autoConnect(APNAME);
#endif
  ArduinoOTA.begin();
  showConMode(isConnected);
  delay(3000);      //  show ip-address
  xplane.onStatusChanged([](bool status) {
    leds.init();
    switch (status) {
      case true:
        showConMode(isOnline);
        autopilotOpen();
        break;
      default:
        showConMode(isWaiting);
        autopilotClose();
        break;
    }
  });
  autopilotInit();
  xplane.begin();
  Wire.setClock(1700000L);
  Wire.setClockStretchLimit(1500);    // in µs
}

void loop() {
  ArduinoOTA.handle();
  if (xplane.scan()) checkFdMode();
  else autopilotCheck();
  delay(1);
}

