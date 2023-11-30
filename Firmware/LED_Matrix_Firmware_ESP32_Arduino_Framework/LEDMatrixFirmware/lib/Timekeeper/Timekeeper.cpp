#include <Arduino.h>
#include "Timekeeper.h"
#include "LEDMatrix.h"
#include "LEDMatrixText.h"

#define AM false
#define PM true

hw_timer_t *clockTimer = NULL;
uint8_t hours = 1, minutes = 0, seconds = 0;
char currentTime[5];
bool dayState = AM;
bool clockIsDisplayed = false;

void initializeClock(int timerNumber, int currentHours, int currentMins, bool currentDayState){
    hours  = currentHours;
    minutes = currentMins;
    dayState = currentDayState;
    clockTimer = timerBegin(timerNumber, 800, true);
    timerAttachInterrupt(clockTimer, &onClockUpdate, true);
    timerAlarmWrite(clockTimer, 100000, true);
    timerAlarmEnable(clockTimer);
    currentTime[2] = ':';
}

void displayClock(bool value){
    clockIsDisplayed = value;
}

bool isClockDisplayed(){
    return clockIsDisplayed;
}

void IRAM_ATTR onClockUpdate(){
    if(seconds <59){
        seconds++;
    }else{
        seconds = 0;
        if(minutes < 59){
            minutes++;
        }
        else{
            minutes = 0;
            if(hours <= 12){
                hours++;
            }
            else{
                hours = 1;
                dayState != dayState;
            }
        }
    }
}

void updateClockFace(){
    while(currentLine != 8){}
    char currentCharMatrix[8];
    char *timeString = (char*)calloc(6, sizeof(char));
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
    for(int i=0; i<5; i++){
        timeString[i] = currentTime[i];
    }
    timeString[5] = 0;
    staticPrint(timeString);
    
    int doubleSeconds = (seconds/2) + 1;
    if(seconds == 0){
        image[7] &= ~ 1 << doubleSeconds;
    }
    image[7] |= (1 << doubleSeconds) | ((1 << doubleSeconds) - 1);
    if(dayState == PM){
        for(int i=0; i<8; i++){
            image[i] |= 1;
            image[i] |= 1 << 31; 
        }
    }else if(dayState == AM){
        for(int i=0; i<8; i++){
            image[i] &= ~(uint32_t)1;
            image[i] &= ~((uint32_t)1 << 31); 
        }
    }
    free(timeString);
    while(currentLine != 0){}
}