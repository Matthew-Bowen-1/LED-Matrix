#include <Arduino.h>
#include "LEDMatrix.h"

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
#define BLANK 0

uint32_t image[8]; //Global image array. 

hw_timer_t *displayTimer = NULL;
volatile int currentLine = 0;
void initializeDisplay(int prescaler, int intervalSize){
  displayTimer = timerBegin(0, prescaler, true);
  timerAttachInterrupt(displayTimer, &onTimer, true);
  timerAlarmWrite(displayTimer, intervalSize, true);
  timerAlarmEnable(displayTimer);

}

void IRAM_ATTR onTimer(){
  if(currentLine <= 7){
    updateLEDRegisters(image[currentLine], currentLine);
    currentLine++;
  }

  else {
    updateLEDRegisters(BLANK, 0);
    currentLine = 0;
  }
}

void setPin(int pin, bool val){
  if(val){
    GPIO.out_w1ts |= ((uint32_t) 1 << pin);
  }else{
    GPIO.out_w1tc |= ((uint32_t) 1 << pin);
  }
}


void updateRowBus(int rowVal){
  setPin(STR, 0);
  uint32_t newRowVal = (GPIO.out & ~(7 << rowBus)) | (((uint32_t) rowVal) << rowBus);
  //newRowVal = (newRowVal & ~(1 << STR)) | (1 << STR);
  GPIO.out = newRowVal;
  setPin(STR, 1);
  setPin(STR, 0);
}

void updateLEDRegisters(uint32_t value, int row){
  uint32_t tempValue = value;
  setPin(CLK, 0);
  for(int i=0; i<32; i++){
    if((tempValue & 1) == 1){
      setPin(DATA, 1);
    } else {
      setPin(DATA, 0);
    }
    setPin(CLK, 1);
    tempValue = tempValue >> 1;
    setPin(CLK, 0);
  }
  updateRowBus(row);
}

int frameCount = 0;

void shift(int offsetX, int offsetY, int frameDelay){
  //Wait until current frame finishes before executing
  while(currentLine != 8){}
  if(frameCount % frameDelay == 0){
    uint32_t newImage[8];
    for(int i=0; i<8; i++){
      newImage[(i + offsetX) % 8] = (image[i] << offsetY) | (image[i] >> 32 - offsetY);
    }
    for(int i=0; i<8; i++){
      for(int j=0; j<32; j++){
        image[i] = newImage[i];
      }
    }
  }
  frameCount++;
  while(currentLine != 0){}
}

void shiftChar(int frameDelay, char currentCharMatrix[8]){
  char tempCharMatrix[8];
  char tempCharMatrixMask = 1;
  for(int i=0; i<8; i++){
    //Char matrix only needs last 6 bits.
    tempCharMatrix[i] = currentCharMatrix[i];
  }
  int currentColumn = 5;
  char tempCharDataValue = 0;
  //Each character matrix consists of 5 data columns and a blank column
  for(int i=0; i<(6 * frameDelay); i++){
    while(currentLine != 8){}
    if(frameCount % frameDelay == 0){
      uint32_t newImage[8];
      for(int j=0; j<8; j++){
        tempCharDataValue = (tempCharMatrix[j] >> currentColumn) & tempCharMatrixMask;
        newImage[j] = (image[j] << 1) | tempCharDataValue;
      }
      currentColumn--;
      for(int j=0; j<8; j++){
        image[j] = newImage[j];
      }
    }
    frameCount++;
    while(currentLine != 0){}
  }
}