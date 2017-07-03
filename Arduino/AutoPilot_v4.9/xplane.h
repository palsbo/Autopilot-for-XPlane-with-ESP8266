#ifndef XPLANE_H
#define XPLANE_H

#include <WiFiUDP.h>

#define UDPRATE 12.0F
#define UDPSPORT 49000
#define UDPRPORT 49003
#define MAXPAGES 30
#define MAXRREFS 20
#define DATASIZE 5 + MAXPAGES * 36

typedef void (*cbXplane0)(bool status);
typedef bool (*cbXplane2)(long a, float b);

class XPLANE {
  private:
    uint8_t pages[MAXPAGES];
    uint8_t pageCount = 0;
    String * rrefs[MAXRREFS];
    uint8_t rrefCount = 0;
    char data[DATASIZE];
    int datalen = 0;
    unsigned long toTimer;  //  time-out timer
    bool oldStatus;
    IPAddress ipMC = IPAddress(239, 255, 1, 1);
    long portMC = 49707;
    WiFiUDP udp;
    int len;
    cbXplane0 cb0;
    cbXplane2 cb2;
    String ip2str(IPAddress ip) {
      char buf[20];
      return (String(ip[0]) + "." + String(ip[1]) + "." + String(ip[2]) + "." + String(ip[3]));
    }
    void printbuf(char * buf, int len) {
      for (int i = 0; i < len; i++) Serial.printf("%02x ", buf[i]);
      Serial.print("  ");
      for (int i = 0; i < len; i++) Serial.print(((buf[i] > 0x20) && (buf[i] < 0x80)) ? (char)buf[i] : '.');
      Serial.println();
    }
  public:
    bool online = true;
    IPAddress ip;
    bool onhold = false;
    void hold() {
      onhold = true;
    }
    void begin() {
      online = true;
      oldStatus = true;
    }
    void onStatusChanged(cbXplane0 _cb) {
      cb0 = _cb;
    }
    void onRREF(cbXplane2 _cb) {
      cb2 = _cb;
    }

    void addPage(uint8_t _page) {
      for (int i = 0; i < pageCount; i++) if (pages[i] == _page) return;
      pages[pageCount++] = _page;
    }
    void addRREF(char * rref) {
      rrefs[rrefCount++] = (String*)rref;
    }
    void sendUDP(char * buf, int len) {
      udp.beginPacket(ip, UDPSPORT);
      udp.write(buf, len);
      udp.endPacket();
    }
    void DSEL(char page) {
      char buf[] = {"DSEL0\0\0\0\0"};
      buf[5] = page;
      sendUDP(buf, sizeof(buf));
      delay(100);
    }
    void USEL(char page) {
      char buf[] = {"USEL0\0\0\0\0"};
      buf[5] = page;
      sendUDP(buf, sizeof(buf));
    }
    void DSELall(uint8_t * list, int count) {
      union  {
        char bytes[4];
        long val;
      } ui;
      udp.beginPacket(ip, UDPSPORT);
      udp.write("DSEL0");
      for (int i = 0; i < count; i++) {
        ui.val = (long)list[i];
        udp.write(ui.bytes, 4);
      }
      udp.endPacket();
      delay(5);
    }
    void USELall() {
      union  {
        char bytes[4];
        long val;
      } ui;
      udp.beginPacket(ip, UDPSPORT);
      udp.write("USEL0");
      for (int i = 0; i < 133; i++) {
        ui.val = (long)i;
        udp.write(ui.bytes, 4);
      }
      udp.endPacket();
      delay(5);
    }
    void DREF(char * dref, byte bv[4]) {
      int msglen = 500;
      udp.beginPacket(ip, UDPSPORT);
      udp.write("DREF0", 5);
      udp.write(bv, 4);
      uint i = 0;
      while (dref[i]) {
        udp.write(dref[i]);
        i++;
      }
      while (i < msglen) {
        udp.write((byte)0x00);
        i++;
      }
      udp.endPacket();
    }
    void DREF(char * dref, float Data) {
      union {
        byte bv[4];
        float fv;
      } bf;
      bf.fv = Data;
      DREF(dref, bf.bv);
    }
    void RREF(char * dref, uint8_t idx) {
      union {
        char b[4];
        float f;
      } u_val;
      u_val.f = UDPRATE;
      int buflen = 413;
      char buf[buflen];
      memset(buf, 0x00, buflen);
      memcpy(&buf[0], "RREF", 4);
      memcpy(&buf[5], &u_val.b[0], 4);
      buf[9] = (int8_t)idx;
      int i = 0;
      while (dref[i]) {
        buf[i + 13] = dref[i];
        i++;
      }
      while (i < buflen) {
        buf[i + 13] = (byte)0x00;
        i++;
      }
      sendUDP((char*)buf, buflen);
    }
    void CMND(char cmnd[]) {
      udp.beginPacket(ip, UDPSPORT);
      if (cmnd[1] == 0)  udp.write("CHAR0");
      else udp.write("CMND0");
      //udp.write("sim/");
      udp.write(cmnd) ;
      udp.endPacket();
    }

    uint16_t getIndexOf(uint16_t page) {
      uint16_t i = 5;
      while (i < datalen) {
        if (data[i] == page) return i;
        i += 36;
      }
      return -1;
    }
    uint16_t getIndexOf(uint8_t page, uint8_t idx) {
      uint16_t i = getIndexOf(page);
      if (i == -1) return -1;
      return i + 4 + idx * 4;
    }

    float value(uint8_t page, uint8_t idx) {
      union {
        uint8_t val[4];
        float fval;
      } fconv;
      uint16_t pix = getIndexOf(page, idx);
      if (pix < 0) return 0;
      memcpy(&fconv.val, &data[pix], 4);
      return fconv.fval;
    }

    void value(uint8_t page, uint8_t idx, float val) {
      union {
        uint8_t val[4];
        float fval;
      } fconv;
      uint16_t pix = getIndexOf(page, idx);
      if (pix < 0) return;
      fconv.fval = val;
      memcpy(&data[getIndexOf(page, idx)], &fconv.val, 4);
    }

    void updateIdx(uint8_t page, uint8_t idx) {
      union {
        uint8_t val[4];
        float fval;
      } fconv;
      uint16_t pix = getIndexOf(page);
      if (pix < 0) return;
      uint8_t fix = 9 + (idx * 4);
      uint8_t pbuf[50] = "DATA0";
      pbuf[5] = page;
      for (int i = 6; i < 9; i++) pbuf[i] = 0;
      for (uint8_t i = 0; i < 8; i++) {
        if (i == idx) fconv.fval = value(page, idx);
        else fconv.fval = -999;
        memcpy(&pbuf[9 + 4 * i], &fconv.val, 4);
      }
      sendUDP((char*)pbuf, sizeof(pbuf));
    }
    void setOnline() {
      struct {
        char hdr[5];
        uint8_t code[4];
        char ip[16];
        char port[8];
        uint8_t set[4];
      } s_buf;
      udp.stopAll();
      udp.begin(UDPRPORT);
      USELall();
      DREF("sim/network/dataout/network_data_rate[0]", UDPRATE);
      DSELall(pages, pageCount);
      for (int i = 0; i < rrefCount; i++) RREF((char*)rrefs[i], i);
      memset(&s_buf, 0x00, sizeof(s_buf));
      strcpy(s_buf.hdr, "ISET");
      s_buf.code[0] = 64;
      strcpy(s_buf.ip, ip2str(WiFi.localIP()).c_str());
      strcpy(s_buf.port, String(UDPRPORT).c_str());
      s_buf.set[0] = 1;
      sendUDP(&s_buf.hdr[0], sizeof(s_buf));
      if (cb0 && !online) cb0(true);
      online = true;
    }
    void setOffline() {
      if (udp) udp.stopAll();
#if XPIP
      ip = xp_ip;
      udp.begin(UDPRPORT);
#else
      udp.beginMulticast(WiFi.localIP(),  ipMC, portMC);
#endif
      udp.beginPacket(ip, UDPSPORT);
      udp.write("DATA*");
      udp.endPacket();
      toTimer = millis() + 8000;
      if (cb0 && online) cb0(false);
      online = false;
    }
    bool scan() {
      if (millis() > toTimer) setOffline();
      len = udp.parsePacket();
      if (!len) return false;
      char buf[len];
      udp.read(buf, len);
      ip = udp.remoteIP();
      if (!online) setOnline();
      if (!memcmp(buf, "BECN", 4)) { }
      else if (!memcmp(buf, "DATA", 4)) {
        datalen = len;
        memcpy(&data, &buf, datalen);
      }
      else if (!memcmp(buf, "RREF", 4)) {
        int j = 5;
        while (j < len) {
          long a;
          float b;
          memcpy(&a, &buf[j], 4);
          memcpy(&b, &buf[j + 4], 4);
          if (cb2) cb2(a, b);
          j += 8;
        }
      } else if (!memcmp(buf, "DREF", 4)) {
        char cc[10];
        union {
          char b[4];
          float f;
        } u_f;
        memcpy(u_f.b, &buf[5], 4);
        printbuf(buf, 50);
      }
      toTimer = millis() + 2000;
      return true;
    }
} xplane;

#endif;

