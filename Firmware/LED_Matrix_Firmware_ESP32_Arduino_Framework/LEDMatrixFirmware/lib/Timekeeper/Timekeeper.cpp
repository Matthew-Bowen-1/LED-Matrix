#include <Arduino.h>
#include "Timekeeper.h"
#include "LEDMatrix.h"
#include "LEDMatrixText.h"

#define AM false
#define PM true

hw_timer_t* clockTimer = NULL;
uint8_t hours = 1, minutes = 0, seconds = 0, halfSeconds = 0;
uint32_t timeImage[8];

bool dayState = AM;
bool clockIsDisplayed = false;
int prevHours, prevMinutes;
void initializeClock(int timerNumber, int currentHours, int currentMins, bool currentDayState){
    hours = currentHours;
    minutes = currentMins;
    dayState = currentDayState;
    prevHours = hours;
    prevMinutes = minutes;
    clockTimer = timerBegin(timerNumber, 800, true);
    timerAttachInterrupt(clockTimer, &onClockUpdate, true);
    timerAlarmWrite(clockTimer, 50000, true);
    timerAlarmEnable(clockTimer);
    
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

void generateClockFaceString(char currentTimeArray[6]){
    if(hours > 9){
        currentTimeArray[0] = '1';
        currentTimeArray[1] = (hours % 10) + '0';
    }
    else{
        currentTimeArray[0] = ' ';
        currentTimeArray[1] = hours + '0';
    }
    if(minutes > 9){
        currentTimeArray[3] = (minutes / 10) + '0';
        currentTimeArray[4] = (minutes % 10) + '0';
    }
    else{
        currentTimeArray[3] = '0';
        currentTimeArray[4] = minutes + '0';
    }
    currentTimeArray[2] = ':';
    currentTimeArray[6] = 0;
}

//Responsible for updating the clock face when called.
void updateClockFace(){
    char currentTime[6];
    
    while(currentLine != 8){}
    char currentCharMatrix[8];
    generateClockFaceString(currentTime);
    staticTimePrint(currentTime);

    //Next 8 lines draw seconds count in binary on the bottom row of the clock.
    timeImage[7] = 0;
    int i = 0, j = 0;
    while(i < 30){
        if(((seconds >> j) & 1) == 1){
            timeImage[7] |= (14 << i + 1);
        }
        i += 5; j++;
    }

    if(dayState == PM){
        for(int i = 0; i < 8; i++){
            timeImage[i] |= 1 << 31;
            timeImage[i] |= 1;
        }
    }
    else if(dayState == AM){
        for(int i = 0; i < 8; i++){
            timeImage[i] &= ~((uint32_t)1 << 31);
            timeImage[i] &= ~((uint32_t)1);
        }
    }
    if(prevHours != hours){
        for(int i = 0; i < 2; i++){
            shiftBlank();
            setFlashingCharacters(true);
            scrollPrint("It's ");
            //scrollPrintUint(hours);
            char* hourString = getNumberString(hours);
            scrollPrint(hourString);
            free(hourString);
            scrollPrint(" O'Clock");
            setFlashingCharacters(false);
            invertImage(false);
        }
        shiftBlank();
        shiftIn(timeImage);
        prevHours = hours;
    }
    else if(prevMinutes != minutes){
        if(minutes == 30){
            for(int i = 0; i < 2; i++){
                shiftBlank();
                scrollPrint("It's ");
                char* hourString = getNumberString(hours);
                scrollPrint(hourString);
                free(hourString);
                scrollPrint(" Thirty");
            }
            shiftBlank();
            shiftIn(timeImage);
        }
        prevMinutes = minutes;
    }
    for(int i = 0; i < 8; i++){
        image[i] = timeImage[i];
    }
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

char* getNumberString(int number){
    char* word;

    switch(number){
    case 1:
        word = (char*)calloc(4, sizeof(char));
        word[0] = 'O';
        word[1] = 'n';
        word[2] = 'e';
        break;
    case 2:
        word = (char*)calloc(4, sizeof(char));
        word[0] = 'T';
        word[1] = 'w';
        word[2] = 'o';
        break;
    case 3:
        word = (char*)calloc(6, sizeof(char));
        word[0] = 'T';
        word[1] = 'h';
        word[2] = 'r';
        word[3] = 'e';
        word[4] = 'e';
        break;
    case 4:
        word = (char*)calloc(5, sizeof(char));
        word[0] = 'F';
        word[1] = 'o';
        word[2] = 'u';
        word[3] = 'r';
        break;
    case 5:
        word = (char*)calloc(5, sizeof(char));
        word[0] = 'F';
        word[1] = 'i';
        word[2] = 'v';
        word[3] = 'e';
        break;
    case 6:
        word = (char*)calloc(4, sizeof(char));
        word[0] = 'S';
        word[1] = 'i';
        word[2] = 'x';
        break;
    case 7:
        word = (char*)calloc(6, sizeof(char));
        word[0] = 'S';
        word[1] = 'e';
        word[2] = 'v';
        word[3] = 'e';
        word[4] = 'n';
        break;
    case 8:
        word = (char*)calloc(6, sizeof(char));
        word[0] = 'E';
        word[1] = 'i';
        word[2] = 'g';
        word[3] = 'h';
        word[4] = 't';
        break;
    case 9:
        word = (char*)calloc(5, sizeof(char));
        word[0] = 'N';
        word[1] = 'i';
        word[2] = 'n';
        word[3] = 'e';
        break;
    case 10:
        word = (char*)calloc(4, sizeof(char));
        word[0] = 'T';
        word[1] = 'e';
        word[2] = 'n';
        break;
    case 11:
        word = (char*)calloc(7, sizeof(char));
        word[0] = 'E';
        word[1] = 'l';
        word[2] = 'e';
        word[3] = 'v';
        word[4] = 'e';
        word[5] = 'n';
        break;
    case 12:
        word = (char*)calloc(7, sizeof(char));
        word[0] = 'T';
        word[1] = 'w';
        word[2] = 'e';
        word[3] = 'l';
        word[4] = 'v';
        word[5] = 'e';
        break;
    }
    return word;
}