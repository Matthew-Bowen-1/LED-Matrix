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

// #define PATTERN_1 0b00110000000000000111100000000000
// #define PATTERN_2 0b01001111111111111000010000000000
// #define PATTERN_3 0b10001001100000001000010000000000
// #define PATTERN_4 0b10000100011100000111100000000000
// #define PATTERN_5 0b01100100000111100001111000000000
// #define PATTERN_6 0b10000100000000110010000100000000
// #define PATTERN_7 0b01000111111111111110000100000000
// #define PATTERN_8 0b00111000000000000001111000000000

#define PATTERN_1 0b10001011111010000010000001110000
#define PATTERN_2 0b10001010000010000010000010001000
#define PATTERN_3 0b10001010000010000010000010001000
#define PATTERN_4 0b11111011111010000010000010001000
#define PATTERN_5 0b10001010000010000010000010001000
#define PATTERN_6 0b10001010000010000010000010001000
#define PATTERN_7 0b10001011111011111011111001110000
#define PATTERN_8 0b00000000000000000000000000000000

// #define PATTERN_1 0b111
// #define PATTERN_2 0b111
// #define PATTERN_3 0b111
// #define PATTERN_4 0b111
// #define PATTERN_5 0b111
// #define PATTERN_6 0b111
// #define PATTERN_7 0b111
// #define PATTERN_8 0b111


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

  shift(0,1,4);

  if(loopCount >= 800000){
    
    loopCount = 0;
  }
  
  loopCount++;
}