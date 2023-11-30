#include <Arduino.h>
#include "LEDMatrix.h"
#include "LEDMatrixText.h"
#include "Timekeeper.h"

//"Store". Updates all shift register output pins to value in registers.
#define STR 12
//Data input pin of first shift register
#define DATA 13
//"Clock". Clock pin of every shift register.
#define CLK 14
//"Enable Output". All registers enabled when set to 1.
#define EO 15
//First pin of 3 pin bus. Each 3-bit value corresponds to one of 8 rows.
#define rowBus 16
//Blank line.


const uint32_t BLANK = 0;

const uint32_t ANTIBLANK = 0xFFFFFFFF;

uint32_t image[8]; //Global image array.
const uint32_t blankImage[8] = { 0,0,0,0,0,0,0,0 }; //Blank image array

int frameDelay = 1;

//Determines whether display image is inverted. Deault is false.
bool inverted = false;

hw_timer_t* displayTimer = NULL;
volatile int currentLine = 0;

void initializeDisplay(int timerNumber, int prescaler, int intervalSize, int newFrameDelay){
    displayTimer = timerBegin(timerNumber, prescaler, true);
    timerAttachInterrupt(displayTimer, &onTimer, true);
    timerAlarmWrite(displayTimer, intervalSize, true);
    timerAlarmEnable(displayTimer);
    frameDelay = newFrameDelay;
    inverted = false;
}

void initializeImage(){
    for(int i = 0; i < 8; i++){
        for(int j = 0; j < 32; j++){
            image[i] = 0;
        }
    }
}

void setFrameDelay(int newFrameDelay){
    frameDelay = newFrameDelay;
}
//Global variables and flags for updating the display
int frameCount = 0;
bool shiftNext = false;
int shiftOffsetX, shiftOffsetY;


void IRAM_ATTR onTimer(){

    if(currentLine <= 7){
        updateLEDRegisters(image[currentLine], currentLine);
        currentLine++;
    }
    else{
        if(!inverted){
            updateLEDRegisters(BLANK, 0);
            currentLine = 0;
        }
        if(inverted){
            updateLEDRegisters(ANTIBLANK, 0);
            currentLine = 0;
        }
        if(shiftNext){
            shiftHelper(shiftOffsetX, shiftOffsetY);
            shiftNext = false;
        }
    }
}


void setPin(int pin, bool val){
    if(val){
        GPIO.out_w1ts |= ((uint32_t)1 << pin);
    }
    else{
        GPIO.out_w1tc |= ((uint32_t)1 << pin);
    }
}

void invertImage(bool value){
    inverted = value;
}

bool isImageInverted(){
    return inverted;
}

void toggleInverted(){
    if(inverted == true){
        inverted = false;
    }
    else if(inverted == false){
        inverted = true;
    }
}

void updateRowBus(int rowVal){
    setPin(STR, 0);
    uint32_t newRowVal = (GPIO.out & ~(7 << rowBus)) | (((uint32_t)rowVal) << rowBus);
    //newRowVal = (newRowVal & ~(1 << STR)) | (1 << STR);
    GPIO.out = newRowVal;
    setPin(STR, 1);
    setPin(STR, 0);
}

/*
  The global variable 'inverted' is used to set the data pin so that the image
  can easily be inverted simply by setting the value of the 'inverted' boolean.
*/
void updateLEDRegisters(uint32_t value, int row){
    uint32_t tempValue = value;
    setPin(CLK, 0);
    if(inverted){
        for(int i = 0; i < 32; i++){
            if((tempValue & 1) == 1){
                setPin(DATA, 0);
            }
            else{
                setPin(DATA, 1);
            }
            setPin(CLK, 1);
            tempValue = tempValue >> 1;
            setPin(CLK, 0);
        }
    }
    else if(!inverted){
        for(int i = 0; i < 32; i++){
            if((tempValue & 1) == 1){
                setPin(DATA, 1);
            }
            else{
                setPin(DATA, 0);
            }
            setPin(CLK, 1);
            tempValue = tempValue >> 1;
            setPin(CLK, 0);
        }
    }
    updateRowBus(row);
}

void shiftBlank(){
    scrollPrint("      ");
}

void shift(int offsetX, int offsetY){
    if(!shiftNext){
        shiftOffsetX = offsetX;
        shiftOffsetY = offsetY;
        shiftNext = true;

    }
}

void shiftHelper(int offsetX, int offsetY){
    //Wait until current frame finishes before executing
    if(frameCount % frameDelay == 0){
        uint32_t newImage[8];
        for(int i = 0; i < 8; i++){
            newImage[(i + offsetX) % 8] = (image[i] << offsetY) | (image[i] >> 32 - offsetY);
        }
        for(int i = 0; i < 8; i++){
            for(int j = 0; j < 32; j++){
                image[i] = newImage[i];
            }
        }
    }
    frameCount++;
}

void shiftIn(uint32_t newImage[8]){
    int currentColumn = 31;
    char imageDataValue;
    char imageDataMask = 1;
    for(int i = 0; i < (32 * frameDelay); i++){
        while(currentLine != 8){}
        if(frameCount % frameDelay == 0){
            for(int j = 0; j < 8; j++){
                imageDataValue = (newImage[j] >> currentColumn) & imageDataMask;
                image[j] = (image[j] << 1) | imageDataValue;
            }
            currentColumn--;
        }
        frameCount++;
        while(currentLine != 0){}
    }
}

void shiftChar(char currentCharMatrix[8]){
    char tempCharMatrix[8];
    char tempCharMatrixMask = 1;
    for(int i = 0; i < 8; i++){
        //Char matrix only needs last 6 bits.
        tempCharMatrix[i] = currentCharMatrix[i];
    }
    int currentColumn = 5;
    char tempCharDataValue = 0;
    //Each character matrix consists of 5 data columns and a blank column
    for(int i = 0; i < (6 * frameDelay); i++){
        while(currentLine != 8){}
        if(frameCount % frameDelay == 0){
            uint32_t newImage[8];
            for(int j = 0; j < 8; j++){
                tempCharDataValue = (tempCharMatrix[j] >> currentColumn) & tempCharMatrixMask;
                newImage[j] = (image[j] << 1) | tempCharDataValue;
            }
            currentColumn--;
            for(int j = 0; j < 8; j++){
                image[j] = newImage[j];
            }
        }
        frameCount++;
        while(currentLine != 0){}
    }
}

void staticChar(char currentCharMatrix[8], int position){
    while(currentLine != 8){}
    uint32_t imageMask[8];
    uint32_t tempCharMatrix[8];
    for(int i = 0; i < 8; i++){
        imageMask[i] = 0x3F << (1 + (position * 6));
        image[i] &= ~imageMask[i];
        tempCharMatrix[i] = (uint32_t)currentCharMatrix[i];
    }
    for(int i = 0; i < 8; i++){
        tempCharMatrix[i] = tempCharMatrix[i] << (1 + (position * 6));
        image[i] |= tempCharMatrix[i];
    }
}

