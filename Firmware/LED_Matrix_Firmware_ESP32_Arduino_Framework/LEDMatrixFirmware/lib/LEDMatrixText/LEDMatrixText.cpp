#include <Arduino.h>
#include "LEDMatrixText.h"
#include "LEDMatrix.h"

const char emptyMatrix[8] = {0,0,0,0,0,0,0,0};

//Basic display parameters. Default values set here but can be changed.
int frameDelay = 0;

bool blankBetweenPrints = false;

bool blankLEDState = false;

bool flashingCharacters = false;

void setTextFrameDelay(int newFrameDelay){
    frameDelay = newFrameDelay;
}

void setBlankBetweenPrints(bool newBlankBetweenPrints, bool newLEDState){
    blankBetweenPrints = newBlankBetweenPrints;
    blankLEDState = newLEDState;
}

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
        shiftChar(frameDelay, currentCharMatrix);
        if(flashingCharacters){
            toggleInverted();
        }

    }
    if(blankBetweenPrints){
        shiftBlank(frameDelay, blankLEDState);
    }
}
