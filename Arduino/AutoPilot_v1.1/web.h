/*
 * Web handler.
 * Handles:
 *  display main menu
 *  display configuration page
 *  update of configuration
 *  sending kml scripts to google earth
 */
#include "pages.h"

ESP8266WebServer server(80);

String content;
String ThisIP;

void handleUpdate() {
  IPAddress ip;
  uint tp, rp, fr;
  uint x = 0;
  for (uint8_t i = 0; i < server.args(); i++) {
    if (server.argName(i) == "rp") {
      rp = server.arg(i).toInt();
      if ((rp >= 40000)) x++;
    }
    if (server.argName(i) == "tp") {
      tp = server.arg(i).toInt();
      if ((tp >= 40000)) x++;
    }
    if (server.argName(i) == "fr") {
      fr = server.arg(i).toInt();
      if ((fr > 0) && (fr < 100)) x++;
    }
  }
  if (x == 3) {
    CFG tt = {eepromID, rp, tp, fr};
    config.update (&tt);
    xplane.begin(eeprom.rxPort, eeprom.txPort, eeprom.udprate);
    xplane.restart();
  }
}

void handlePage(String Page) {
  handleUpdate();
  content = Page;
  content.replace("%%LON%%", String(GpsLon.value(), 15));
  content.replace("%%LAT%%", String(GpsLat.value(), 15));
  content.replace("%%HDG%%", String(FldActHdg.value(), 12));
  content.replace("%%ALT%%", String((FldActAlt.value()+10) * .3048, 8));
  content.replace("%%ROL%%", String(FldRoll.value() * -1, 12));
  content.replace("%%TLT%%", String(FldPitch.value() * 1 + 75, 12));
  content.replace("%%URL%%", ThisIP);
  server.send(200, "", content);
  delay(25);
}

void handleConfig() {
  content = config_html;
  content.replace("%%RP%%", (String)eeprom.rxPort);
  content.replace("%%TP%%", (String)eeprom.txPort);
  content.replace("%%FR%%", (String)(long)eeprom.udprate);
  content.replace("%%URL%%", ThisIP);
  content.replace("%%TITLE%%", TITLE);
  server.send(200, "text/html", content);
}

void handleNotFound() {
  String message = "File Not Found\n\n";
  message += "URI: ";
  message += server.uri();
  message += "\nMethod: ";
  message += (server.method() == HTTP_GET) ? "GET" : "POST";
  message += "\nArguments: ";
  message += server.args();
  message += "\n";
  for (uint8_t i = 0; i < server.args(); i++) {
    message += " " + server.argName(i) + ": " + server.arg(i) + "\n";
  }
  server.send(404, "text/plain", message);
}

void initWeb() {
  server.on("/", [](){
    handleUpdate();
    content = index_html;
    content.replace("%%TITLE%%", TITLE);
    server.send(200, "text/html", content);
    });
  server.on("/config.html", handleConfig);
  server.on("/earth.kml",[](){
    server.sendHeader("Content-Type","application/vnd.google-earth.kml+xml");
    handlePage(earth_kml);
  });
  server.on("/xplane.kml",[](){ 
    handlePage(xplane_kml);
  });
  server.onNotFound(handleNotFound);
  server.begin();
  const char * headerkeys[] = { "Cookie" };
  size_t headerKeyCount = sizeof(headerkeys) / sizeof(char*);
}

void checkWeb() {
  server.handleClient();
}

