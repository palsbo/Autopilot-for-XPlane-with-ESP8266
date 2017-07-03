#ifndef LCD_CLASS_H
#define LCD_CLASS_H
/*
   Provide functions for displaying messaages on LCD2004 driven by MCP25017
*/
#include <LiquidTWI2.h>
#include "utils.h"
LiquidTWI2 lcdHW(2);

#define N '\x00'
#define NE '\x01'
#define E '\x02'
#define SE '\x03'
#define S '\x04'
#define SW '\x05'
#define W '\x06'
#define NW '\x07'

class LCD {
  private:
    uint8_t rows;
    uint8_t cols;
    char buff[25];

    byte charN[8] = {
      B00000,
      B00100,
      B01110,
      B11111,
      B00100,
      B00100,
      B00100,
      B00100
    };
    byte charNE[8] = {
      B00000,
      B00000,
      B11111,
      B00011,
      B00101,
      B01001,
      B10001,
      B00000
    };
    byte charE[8] = {
      B01000,
      B00100,
      B00010,
      B11111,
      B00010,
      B00100,
      B01000,
      B00000
    };
    byte charSE[8] = {
      B00000,
      B00000,
      B10001,
      B01001,
      B00101,
      B00011,
      B11111,
      B00000
    };
    byte charS[8] = {
      B00000,
      B00000,
      B00100,
      B00100,
      B11111,
      B01110,
      B00100,
      B00000
    };
    byte charSW[8] = {
      B00000,
      B00000,
      B10001,
      B10010,
      B10100,
      B11000,
      B11111,
      B00000
    };
    byte charW[8] = {
      B00000,
      B00010,
      B00100,
      B01000,
      B11111,
      B01000,
      B00100,
      B00010
    };
    byte charNW[8] = {
      B00000,
      B00000,
      B11111,
      B11000,
      B10100,
      B10010,
      B10001,
      B00000
    };
    
  public:
    void begin(uint8_t _rows, uint8_t _cols) {
      rows = _rows;
      cols = _cols;
      lcdHW.setMCPType(LTI_TYPE_MCP23017);
      lcdHW.begin(rows, cols);
      lcdHW.setBacklight(HIGH);
      lcdHW.createChar(N, charN);
      lcdHW.createChar(NE, charNE);
      lcdHW.createChar(E, charE);
      lcdHW.createChar(SE, charSE);
      lcdHW.createChar(S, charS);
      lcdHW.createChar(SW, charSW);
      lcdHW.createChar(W, charW);
      lcdHW.createChar(NW, charNW);
    }
    void clear() {
      lcdHW.clear();
    }
    void printf(uint8_t col, uint8_t row, char *format, ...) {
      va_list args;
      va_start (args, format);
      vsnprintf(buff, sizeof(buff), format, args);
      va_end (args);
      buff[sizeof(buff) / sizeof(buff[0]) - 1] = '\0';
      lcdHW.setCursor(col, row);
      lcdHW.print(buff);
    }
    void print(uint8_t col, uint8_t row, char * fmt, long val) {
      char lcdbuf[22];
      sprintf(lcdbuf, fmt, val);
      lcdHW.setCursor(col, row);
      lcdHW.print(lcdbuf);
    }
    void print(uint8_t col, uint8_t row, char * str) {
      lcdHW.setCursor(col, row);
      lcdHW.print(str);
    }
    void print(uint8_t col, uint8_t row, IPAddress ip) {
      lcdHW.setCursor(col, row);
      lcdHW.printf("%d.%d.%d.%d", ip[0], ip[1], ip[2], ip[3]);
    }
    void print(uint8_t col, uint8_t row, String str) {
      lcdHW.setCursor(col, row);
      lcdHW.print(str);
    }
    void print(uint8_t col, uint8_t row, char x) {
      lcdHW.setCursor(col, row);
      lcdHW.print(x);
    }
} lcd;
#endif

