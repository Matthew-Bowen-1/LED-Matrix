#include <Arduino.h>

extern uint32_t image[8];
extern volatile int currentLine;
extern bool inverted;

//Starts the display timer running and starts display interrupts. 
void initializeDisplay(int timerNumber, int prescaler, int intervalSize, int newFrameDelay); //Clock speed: 80MHz.

//Initialize image array to all 0
void initializeImage();

//Sets new frame delay.
void setFrameDelay(int newFrameDelay);

//Timer interrupt service routine for updating the display
void IRAM_ATTR onTimer();

//Set a specified pin high or low. Probably faster than digitalWrite()
void setPin(int pin, bool val);

void updateLEDRegisters(uint32_t value, int row);

//When true, the display will invert on and off LEDs
void invertImage(bool value);

//Returns whether the display image is currently inverted
bool isImageInverted();

//Toggles display between normal and inverted modes
void toggleInverted();

//Shifts everything off the display. 
void shiftBlank();

//Circular shifts elements on the display in either X or Y direction.
void shift(int dx, int dy);
void shiftHelper(int dx, int dy);

//Shifts a new image onto the display
void shiftIn(uint32_t newImage[8]);

//Shifts an 8 row by 6 column character onto the display.
void shiftChar(char currentCharMatrix[8]);

//Prints a static character onto the display in one of 6 spots.
void staticChar(char currentCharMatrix[8], int position);
