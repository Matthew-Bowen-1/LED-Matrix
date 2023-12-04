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

int currentHours;
void setup(){
    //All output pins are adjacent
    for(int i = STR; i <= (rowBus + 2); i++){
        pinMode(i, OUTPUT);
    }
    setPin(EO, 1);
    initializeImage();
    initializeDisplay(0, 800, 200, 1);
    initializeClock(1, 1, 37, true);
    displayClock(true);
    currentHours = hours;
}

void loop(){
    updateClockFace();
}