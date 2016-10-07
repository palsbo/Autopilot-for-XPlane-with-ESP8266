/*
   Handle communication with X Plane.
*/
#ifndef XPLANE_H_
#define XPLANE_H_
#include <WiFiUdp.h>

typedef void (*callback1)(bool x_cb);

#define BUFFERSIZE (5+16*36) // assume 16 pages from X Plane
#define HOLDTIME 250
#define CONNECTTIMEOUT 3000

class XPLANE {
  private:
    long comTimer = -CONNECTTIMEOUT;
    bool comFlag = true;
    float udprate;
    long lastRcv;
    uint16_t bufLen;
    uint16_t bl;
    WiFiUDP udp;
    uint8_t buffer[BUFFERSIZE];
    uint8_t tmpbuffer[BUFFERSIZE];
    uint8_t pbuf[75];
    uint16_t getIndexOf(uint16_t page);
    uint16_t getIndexOf(uint8_t page, uint8_t idx);
    uint initFlag = 2;
  public:
    uint8_t pages[150];
    uint8_t pagecount = 0;
    callback1 cb;
    void onCommunication(callback1 x_cb) {
      cb = x_cb;
    }
    long timer;
    bool onhold() {
      return (millis() - timer) < HOLDTIME;
    }
    IPAddress xpServer;
    unsigned int drefPort;      // local port to send UDP packets to
    unsigned int pagePort;      // local port to listen for UDP packets
    void begin(unsigned int x_pagePort, unsigned int x_drefPort, float x_udprate);
    void stop();
    void restart();
    bool scan();
    float value(uint8_t page, uint8_t idx);
    void value(uint8_t page, uint8_t idx, float val);
    void update(uint8_t page, uint8_t idx);
    void sendPage(uint8_t page);
    void DSEL(uint8_t page);
    void DREF(char * dref, int32_t Data);
    void DREF(char * dref, float Data);
    void DREF(char * dref, long Data);
    void CMND(char cmnd[]);
    bool changed(uint8_t page, uint8_t idx, float &val);
};

#endif
