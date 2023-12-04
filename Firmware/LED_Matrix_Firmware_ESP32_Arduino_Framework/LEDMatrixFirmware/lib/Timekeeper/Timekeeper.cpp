#include <Arduino.h>
#include "Timekeeper.h"
#include "LEDMatrix.h"
#include "LEDMatrixText.h"

#define AM false
#define PM true

hw_timer_t* clockTimer = NULL;
uint8_t hours = 1, minutes = 0, seconds = 0, halfSeconds = 0;
uint32_t timeImage[8];
char currentTime[5];
bool dayState = AM;
bool clockIsDisplayed = false;
int prevHours;
void initializeClock(int timerNumber, int currentHours, int currentMins, bool currentDayState){
    hours = currentHours;
    minutes = currentMins;
    dayState = currentDayState;
    prevHours = hours;
    clockTimer = timerBegin(timerNumber, 800, true);
    timerAttachInterrupt(clockTimer, &onClockUpdate, true);
    timerAlarmWrite(clockTimer, 50000, true);
    timerAlarmEnable(clockTimer);
    currentTime[2] = ':';
}

void initializeTimeImage(){
    for(int i = 0; i < 8; i++){
        for(int j = 0; j < 32; j++){
            timeImage[i] = 0;
        }
    }
}

void displayClock(bool value){
    clockIsDisplayed = value;
}

bool isClockDisplayed(){
    return clockIsDisplayed;
}

void IRAM_ATTR onClockUpdate(){
    if(halfSeconds < 1){
        halfSeconds++;
    }
    else{
        halfSeconds = 0;
        if(seconds < 59){
            seconds++;
        }
        else{
            seconds = 0;
            if(minutes < 59){
                minutes++;
            }
            else{
                minutes = 0;
                if(hours < 11){
                    hours++;
                }
                else if(hours == 11){
                    hours = 12;
                    if(dayState){
                        dayState = false;
                    }
                    else{
                        dayState = true;
                    }
                }
                else if(hours == 12){
                    hours = 1;
                }

            }
        }
    }

}



void updateClockFace(){
    while(currentLine != 8){}
    char currentCharMatrix[8];
    char* timeString = (char*)calloc(6, sizeof(char));
    if(hours > 9){
        currentTime[0] = '1';
        currentTime[1] = (hours % 10) + '0';
    }
    else{
        currentTime[0] = ' ';
        currentTime[1] = hours + '0';
    }
    if(minutes > 9){
        currentTime[3] = (minutes / 10) + '0';
        currentTime[4] = (minutes % 10) + '0';
    }
    else{
        currentTime[3] = '0';
        currentTime[4] = minutes + '0';
    }
    for(int i = 0; i < 5; i++){
        timeString[i] = currentTime[i];
    }
    timeString[5] = 0;
    staticTimePrint(timeString);
    int doubleSeconds = (seconds / 2) + 1;
    
    timeImage[7] &= ~1 << doubleSeconds;
    
    if(halfSeconds == 0){
        timeImage[7] |= (1 << doubleSeconds) | ((1 << doubleSeconds) - 1);
    }
    else{
        timeImage[7] &= ~1 << doubleSeconds;
        timeImage[7] |= (1 << doubleSeconds) - 1; 
    }
    
    if(dayState == PM){
        for(int i = 0; i < 8; i++){
            timeImage[i] |= 1;
            timeImage[i] |= 1 << 31;
        }
    }
    else if(dayState == AM){
        for(int i = 0; i < 8; i++){
            timeImage[i] &= ~(uint32_t)1;
            timeImage[i] &= ~((uint32_t)1 << 31);
        }
    }
    if(prevHours != hours){
        shiftBlank();
        scrollPrint("It's ");
        scrollPrintUint(hours);
        scrollPrint(" O'clock");
        shiftBlank();
        shiftIn(timeImage);
        prevHours = hours;
    }
    for(int i = 0; i < 8; i++){
        image[i] = timeImage[i];
    }
    free(timeString);
    while(currentLine != 0){}
}

int timePosition = 4;
void staticTimePrint(const char* string){
    int stringLength = strlen(string);
    char currentCharMatrix[8];
    char currentCharValue = 0;
    //8x32 display means only 5 5x7 characters possible with 1 space in between
    if(stringLength < 6){
        for(int i = 0; i < (stringLength); i++){
            currentCharValue = string[i];
            for(int j = 0; j < 8; j++){
                currentCharMatrix[j] = characters[string[i]][j];
            }
            staticTimeChar(currentCharMatrix, timePosition);
            timePosition--;
            if(timePosition < 0){
                timePosition = 4;
            }
        }
    }
    else{
        for(int i = 0; i < 5; i++){
            currentCharValue = string[i];
            for(int j = 0; j < 8; j++){
                currentCharMatrix[j] = characters[currentCharValue][j];
            }
            staticTimeChar(currentCharMatrix, timePosition);
            timePosition--;
            if(timePosition < 0){
                timePosition = 4;
            }
        }
    }
}

void staticTimeChar(char currentCharMatrix[8], int position){
    while(currentLine != 8){}
    uint32_t imageMask[8];
    uint32_t tempCharMatrix[8];
    for(int i = 0; i < 8; i++){
        imageMask[i] = 0x3F << (1 + (position * 6));
        timeImage[i] &= ~imageMask[i];
        tempCharMatrix[i] = (uint32_t)currentCharMatrix[i];
    }
    for(int i = 0; i < 8; i++){
        tempCharMatrix[i] = tempCharMatrix[i] << (1 + (position * 6));
        timeImage[i] |= tempCharMatrix[i];
    }
}