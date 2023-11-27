#include <Arduino.h>
#include "LEDMatrixText.h"
#include "LEDMatrix.h"

const char emptyMatrix[8] = {0,0,0,0,0,0,0,0};

//Basic display parameters. Default values set here but can be changed.

bool blankLEDState = false;

bool flashingCharacters = false;

void setFlashingCharacters(bool isFlashing){
    flashingCharacters = isFlashing;
}

void scrollPrint(const char *string){
    int stringLength = strlen(string);
    char currentCharValue = 0;
    char currentCharMatrix[8];

    for(int i=0; i<stringLength; i++){
        currentCharValue = string[i];
        if(currentCharValue == 0){

        }
        for(int j=0; j<8; j++){
            currentCharMatrix[j] = characters[currentCharValue][j];
        }
        shiftChar(currentCharMatrix);
        if(flashingCharacters){
            toggleInverted();
        }

    }
}

void staticPrint(const char *string){
    
}

void scrollPrintInt(int64_t value){
    char currentCharMatrix[8];
    if(value == 0){
        for(int i=0; i<8; i++){
            currentCharMatrix[i] = characters['0'][i];
        }
        shiftChar(currentCharMatrix);
    }
    //If value is negative, convert it to positive.
    //The negation sign will be added at the end.
    //Assembles a string version of a given integer
    if(value < 0){
        int64_t tempValue = ~value;
        tempValue += 1;
        int decimalNumSize = log10(tempValue) + 1;
        char *numberArray = (char*)calloc(decimalNumSize + 2, sizeof(char));
        numberArray[0] = '-';
        for(int i = (decimalNumSize - 1); i >= 0; --i, tempValue /= 10){
            numberArray[i + 1] = (tempValue % 10) + '0';
        }
        numberArray[decimalNumSize + 1] = 0;//Append null charachter 
        scrollPrint(numberArray);
        free(numberArray);
    }
    else if (value > 0){
        int64_t tempValue = value;
        int decimalNumSize = log10(tempValue) + 1;
        char *numberArray = (char*)calloc(decimalNumSize + 1, sizeof(char));
        for(int i = (decimalNumSize - 1); i >= 0; --i, tempValue /= 10){
            numberArray[i] = (tempValue % 10) + '0';
        }
        numberArray[decimalNumSize] = 0;
        scrollPrint(numberArray);
        free(numberArray);
    }
}

void scrollPrintUint(uint64_t value){
    char currentCharMatrix[8];
    if(value == 0){
        for(int i=0; i<8; i++){
            currentCharMatrix[i] = characters['0'][i];
        }
        shiftChar(currentCharMatrix);
    }
    else
    {
        uint64_t tempValue = value;
        int decimalNumSize = log10(tempValue) + 1;
        char *numberArray = (char*)calloc(decimalNumSize + 1, sizeof(char));
        for(int i = (decimalNumSize - 1); i >= 0; --i, tempValue /= 10){
            numberArray[i] = (tempValue % 10) + '0';
        }
        numberArray[decimalNumSize] = 0;
        scrollPrint(numberArray);
        free(numberArray);
    }
}
