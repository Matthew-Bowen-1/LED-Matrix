#include <Arduino.h>

extern uint32_t image[8];

extern bool inverted;

void initializeDisplay(int prescaler, int intervalSize);

void IRAM_ATTR onTimer();

void setPin(int pin, bool val);

void invertImage(bool value);

bool isImageInverted();

void toggleInverted();

void updateLEDRegisters(uint32_t value, int row);

void shiftBlank(int frameDelay, bool high);

void shift(int dx, int dy, int frameDelay);

void shiftChar(int frameDelay, char currentCharMatrix[8]);