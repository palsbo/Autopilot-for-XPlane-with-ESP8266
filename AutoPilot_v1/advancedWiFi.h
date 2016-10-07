/*
 * Functions for simplifying WiFi configuration
 */
String ip2string(IPAddress ip){
  char buf[20];
  return (String(ip[0]) + "." + String(ip[1]) + "." +String(ip[2]) + "." +String(ip[3]));
}

typedef void (*wcallback0)();
typedef void (*wcallback2)(WiFiManager * x_myWiFiManager);
wcallback0 cb0;
wcallback0 cb1;
wcallback2 cb2;
void onWiFiOk(wcallback0 x_cb) {
  cb0 = x_cb;
};
void onWiFiFailed(wcallback0 x_cb) {
  cb1 = x_cb;
}
void onWiFiAPmode(wcallback2 x_cb) {
  cb2 = x_cb;
}
void configModeCallback (WiFiManager *myWiFiManager) {
  if (cb2) cb2(myWiFiManager);
}

void initWiFi(bool resetFlag) {
  WiFiManager wifiManager;
  if (resetFlag) {
    wifiManager.resetSettings();  //  for testing of access point
  }
  wifiManager.setAPCallback(configModeCallback);
  if (!wifiManager.autoConnect("Autopilot")) {
    if (cb1) cb1();
    ESP.reset();
    delay(1000);
  }
  if (cb0) cb0();
  delay(5000);
}

