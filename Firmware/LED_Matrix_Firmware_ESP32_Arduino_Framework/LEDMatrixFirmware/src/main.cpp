#include <Arduino.h>
#include "LEDMatrix.h"
#include "LEDMatrixText.h"

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
  initializeDisplay(800, 100);
  setTextFrameDelay(4);
  setBlankBetweenPrints(true, false);
  setFlashingCharacters(true);
}
uint32_t loopCount = 0;
void loop() {
  
  // scrollPrint("I");
  // toggleInverted();
  // scrollPrint(" ");
  // toggleInverted();
  // scrollPrint("L");
  // toggleInverted();
  // scrollPrint("O");
  // toggleInverted();
  // scrollPrint("V");
  // toggleInverted();
  // scrollPrint("E");
  // toggleInverted();
  // scrollPrint(" ");
  // toggleInverted();
  // scrollPrint("Y");
  // toggleInverted();
  // scrollPrint("O");
  // toggleInverted();
  // scrollPrint("U");
  // toggleInverted();
  // scrollPrint("!");
  // toggleInverted();
  scrollPrint("The quick brown fox jumped over the lazy dog. ");
}