#include <Arduino.h>
#include "LEDMatrixText.h"
#include "LEDMatrix.h"

void scrollPrint(const char *string, int frameDelay){
    int stringLength = strlen(string);
    char currentCharValue = 0;
    char currentCharMatrix[8];

    for(int i=0; i<stringLength; i++){
        currentCharValue = string[i];
        for(int j=0; j<8; j++){
            currentCharMatrix[j] = characters[currentCharValue][j];
        }
        

    }   
}
