#include <Arduino.h>
#include "xplane.h"


void XPLANE::begin(unsigned int x_pagePort, unsigned int x_drefPort, float x_udprate) {
  drefPort = x_drefPort;
  pagePort = x_pagePort;
  udprate = x_udprate;
}

void XPLANE::restart() {
  udp.begin(pagePort);
  comTimer = -5000;
}

void XPLANE::stop() {
  for (uint16_t i = 0; i < sizeof(buffer); i++) buffer[i] = 0;
}

bool XPLANE::scan() {
  if ((millis() - comTimer) > CONNECTTIMEOUT) {
    if (comFlag) {
      comFlag = false;
      initFlag = 2;
      if (cb) cb(comFlag);
    } else {
      comTimer = millis();
      udp.begin(pagePort);
      udp.write("@");
      udp.endPacket();
    }
  }
  if (initFlag == 1) {
    initFlag = 0;
    DREF("sim/network/dataout/network_data_rate[0]", 25);
    for (uint8_t i = 0; i < pagecount; i++) {
      DSEL(pages[i]);
      //Serial.println(pages[i]);
    }
  }
  bl = udp.parsePacket();
  if (bl) {
    if (!comFlag) {
      comFlag = true;
      if (cb) cb(comFlag);
    }
    comTimer = millis();
    if (bl >= BUFFERSIZE) Serial.println("OBS!.Buffer to small!");
    udp.read(tmpbuffer, bl);
    xpServer = udp.remoteIP();
    if (tmpbuffer[0] != 'D') {
      Serial.printf("received %d bytes \n", bl);
      Serial.println((char*)tmpbuffer);
      return false;
    }
    bufLen = bl;
    //if (!onhold()) 
    memcpy(&buffer, &tmpbuffer, bufLen);
    if (initFlag) initFlag--;
    return true;
  }
  return false;
}

float XPLANE::value(uint8_t page, uint8_t idx) {
  union {
    uint8_t val[4];
    float fval;
  } fconv;
  uint16_t pix = getIndexOf(page, idx);
  if (pix < 0) return 0;
  memcpy(&fconv.val, &buffer[pix], 4);
  return fconv.fval;
}

void XPLANE::value(uint8_t page, uint8_t idx, float val) {
  union {
    uint8_t val[4];
    float fval;
  } fconv;
  uint16_t pix = getIndexOf(page, idx);
  if (pix < 0) return;
  fconv.fval = val;
  memcpy(&buffer[getIndexOf(page, idx)], &fconv.val, 4);
}

void XPLANE::update(uint8_t page, uint8_t idx) {
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
  udp.beginPacket(xpServer, drefPort);
  udp.write(pbuf, sizeof(pbuf));
  udp.endPacket();
}

void XPLANE::sendPage(uint8_t page) {
  uint16_t pix = getIndexOf(page);
  if (pix < 0) return;
  uint8_t pbuf[50] = "DATA@";
  memcpy(&pbuf[5], &buffer[pix], 36);
  memcpy(&pbuf[41], "\0\0\0\0\0\0\0\0", 8);
  udp.beginPacket(xpServer, drefPort);
  udp.write(pbuf, 49);
  udp.endPacket();
}

void XPLANE::DSEL(uint8_t page) {
  union  {
    char bytes[4];
    long val;
  } ui;
  ui.val = (long)page;
  udp.beginPacket(xpServer, drefPort);
  udp.write("DSEL0");
  udp.write(ui.bytes, 4);
  udp.endPacket();
  delay(5);
}

#define drefbuflen 509

void XPLANE::DREF(char * dref, float Data) {
  Serial.println("Float");
  Serial.println(xpServer);
  char id[] = "DREF@";
  float val = Data;
  byte buf[drefbuflen];
  memcpy(&buf[0], &id, 5);
  memcpy(&buf[5], &val, 4);
  uint i = 0;
  while (dref[i]) {
    buf[i + 9] = dref[i];
    i++;
  }
  while (i < drefbuflen) {
    buf[i + 9] = ' ';
    i++;
  }
  udp.beginPacket(xpServer, drefPort);
  udp.write(buf, drefbuflen) ;
  udp.endPacket();
  /*
    for (int i = 0; i < 50; i++) {
      Serial.write(buf[i]);
      Serial.printf(" (%d)\n", buf[i] * 1);
      //if ((i%32)==31) Serial.println();
    }
  */
}

void XPLANE::DREF(char * dref, long Data) {
  DREF(dref, (float)Data);
}

void XPLANE::DREF(char * dref, int32_t Data) {
  DREF(dref, (float)Data);
}

void XPLANE::CMND(char cmnd[]) {
  udp.beginPacket(xpServer, drefPort);
  if (cmnd[1] == 0)  udp.write("CHAR0");
  else udp.write("CMND0");
  udp.write("sim/");
  udp.write(cmnd) ;
  udp.endPacket();
}

uint16_t XPLANE::getIndexOf(uint16_t page) {
  uint16_t i = 5;
  while (i < bufLen) {
    if (buffer[i] == page) return i;
    i += 36;
  }
  //DSEL(page);
  return -1;
}

uint16_t XPLANE::getIndexOf(uint8_t page, uint8_t idx) {
  uint16_t i = getIndexOf(page);
  if (i == -1) return -1;
  return i + 4 + idx * 4;
}

bool XPLANE::changed(uint8_t page, uint8_t idx, float &val) {
  if (val != value(page, idx)) {
    val = value(page, idx);
    return true;
  }
  return false;
}

