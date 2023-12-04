#include <Arduino.h>

extern uint8_t hours, minutes, seconds;

extern uint32_t timeImage[8];

//Initialize the clock
void initializeClock(int timerNumber, int currentHours, int currentMins, bool currentDayState);

//Set whether the clock is visible or not
void displayClock(bool value);

//Returns whether clock should be displayed or not
bool isClockDisplayed();

//Clock interrupt handler
void IRAM_ATTR onClockUpdate();

//Update and print the clock face
void updateClockFace();

void staticTimePrint(const char* string);

void staticTimeChar(char currentCharMatrix[8], int timePosition);
