#include <Arduino.h>

extern uint32_t image[8];

void initializeDisplay(int prescaler, int intervalSize);

void IRAM_ATTR onTimer();

void setPin(int pin, bool val);

void updateLEDRegisters(uint32_t value, int row);

void shift(int dx, int dy, int frameDelay);