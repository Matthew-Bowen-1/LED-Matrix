#include <Arduino.h>
#include "LEDMatrixText.h"
#include "LEDMatrix.h"

void scrollPrint(){
    char currentCharValue = 0;

    
    char currentCharMatrix[8];
    for(int i=0; i<8; i++){
        currentCharMatrix[i] = characters[currentCharValue][i];
    }
}
