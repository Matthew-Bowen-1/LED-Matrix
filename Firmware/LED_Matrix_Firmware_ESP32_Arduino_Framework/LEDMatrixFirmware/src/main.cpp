#include <Arduino.h>
#include "LEDMatrix.h"

#define STR 12
#define DATA 13
#define CLK 14
#define EO 15
#define rowBus 16

// #define PATTERN_1 0b10001011111010000010000001110000
// #define PATTERN_2 0b10001010000010000010000010001000
// #define PATTERN_3 0b10001010000010000010000010001000
// #define PATTERN_4 0b11111011111010000010000010001000
// #define PATTERN_5 0b10001010000010000010000010001000
// #define PATTERN_6 0b10001010000010000010000010001000
// #define PATTERN_7 0b10001011111011111011111001110000
// #define PATTERN_8 0b00000000000000000000000000000000

#define PATTERN_1 0b10101110100010000110010000000000
#define PATTERN_2 0b10101000100010001001010000000000
#define PATTERN_3 0b11101110100010001001010000000000
#define PATTERN_4 0b10101000100010001001000000000000
#define PATTERN_5 0b10101110111011100110010000000000
#define PATTERN_6 0b00000000000000000000000000000000
#define PATTERN_7 0b00000000000000000000000000000000
#define PATTERN_8 0b00000000000000000000000000000000


void initializeImage(){
  for(int i=0; i<8; i++){
    for(int j=0; j<32; j++){
      image[i] = 0;
    }
  }
}

void setup() {
  pinMode(STR, OUTPUT);
  pinMode(DATA, OUTPUT);
  pinMode(CLK, OUTPUT);
  pinMode(EO, OUTPUT);
  pinMode(rowBus, OUTPUT);
  pinMode(rowBus + 1, OUTPUT);
  pinMode(rowBus + 2, OUTPUT);
  setPin(EO, 1);

  initializeImage();
  initializeDisplay();

  image[0] = PATTERN_1;
  image[1] = PATTERN_2;
  image[2] = PATTERN_3;
  image[3] = PATTERN_4;
  image[4] = PATTERN_5;
  image[5] = PATTERN_6;
  image[6] = PATTERN_7;
  image[7] = PATTERN_8;

}
uint32_t loopCount = 0;
void loop() {

  if(loopCount >= 400000){
    shift(0,1);
    loopCount = 0;
  }
  
  loopCount++;
}

// put function definitions here:
