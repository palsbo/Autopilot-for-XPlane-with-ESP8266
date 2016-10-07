/*
 * Provide functions for displaying messaages on LCD2004 driven by MCP25017
 */
#include <LiquidTWI2.h>
LiquidTWI2 lcd(2);

void initLCD() {
  lcd.setMCPType(LTI_TYPE_MCP23017);
  lcd.begin(20, 4);
  lcd.setBacklight(HIGH);
}
void lcdClear() {
  lcd.clear();
}

void lcdUpdate(uint8_t col, uint8_t row, char * fmt, long val) {
  char lcdbuf[22];
  sprintf(lcdbuf, fmt, val);
  lcd.setCursor(col, row);
  lcd.print(lcdbuf);
}

void lcdUpdate(uint8_t col, uint8_t row, char * str) {
  lcd.setCursor(col, row);
  lcd.print(str);
}

void lcdUpdate(uint8_t col, uint8_t row, IPAddress ip) {
  lcd.setCursor(col, row);
  lcd.printf("%d.%d.%d.%d", ip[0], ip[1], ip[2], ip[3]);
}

void lcdUpdate(uint8_t col, uint8_t row, String str) {
  lcd.setCursor(col, row);
  lcd.print(str);
}

