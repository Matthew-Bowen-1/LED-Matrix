#include <Arduino.h>


#define STR 12
#define DATA 13
#define CLK 14
#define EO 15
#define rowBus 16

#define PATTERN_1 0b1111111100000000000000000000000
#define PATTERN_2 0b0000000000000000000000010100101
#define PATTERN_3 0b0000000000000000000000010100101
#define PATTERN_4 0b0000000000000000000000010000001
#define PATTERN_5 0b0000000000000000000000010011001
#define PATTERN_6 0b0000000000000000000000011000011
#define PATTERN_7 0b0000000000000000000000010111101
#define PATTERN_8 0b0000000000000000000000011111111

uint32_t image[8];

inline void setPin() __attribute__ ((always_inline));
inline void setPin(int pin, bool val){
  if(val){
    GPIO.out_w1ts |= ((uint32_t) 1 << pin);
  }else{
    GPIO.out_w1tc |= ((uint32_t) 1 << pin);
  }
}

inline void updateRowBus() __attribute__ ((always_inline));
inline void updateRowBus(int rowVal){
  setPin(STR, 0);
  uint32_t newRowVal = (GPIO.out & ~(7 << rowBus)) | (((uint32_t) rowVal) << rowBus);
  newRowVal = (newRowVal & ~(1 << STR)) | (1 << STR);
  GPIO.out = newRowVal;
  setPin(STR, 0);
}


void initializeImage(){
  for(int i=0; i<8; i++){
    for(int j=0; j<32; j++){
      image[i] = 0;
    }
  }
}

void updateLEDRegisters(uint32_t value, int row){
  uint32_t tempValue = value;
  setPin(CLK, 0);
  for(int i=0; i<32; i++){
    if((tempValue & 1) == 1){
      setPin(DATA, 1);
    } else {
      setPin(DATA, 0);
    }
    setPin(CLK, 1);
    tempValue = tempValue >> 1;
    setPin(CLK, 0);
  }
  updateRowBus(row);
}

void drawFrame(){
  for(int i=0; i<8; i++){
    updateLEDRegisters(image[i], i);
  }
}

void shift(int dx, int dy){
  uint32_t newImage[8];
  for(int i=0; i<8; i++){
    for(int j=0; j<32; j++){
      newImage[(i + dx) % 8][(j + dy) % 32] = image[i];
    }
  }
  for(int i=0; i<8; i++){
    for(int j=0; j<32; j++){
      image[i] = newImage[i];
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

  image[0] = PATTERN_1;
  image[1] = PATTERN_2;
  image[2] = PATTERN_3;
  image[3] = PATTERN_4;
  image[4] = PATTERN_5;
  image[5] = PATTERN_6;
  image[6] = PATTERN_7;
  image[7] = PATTERN_8;

}
int loopCount = 0;
void loop() {

  if(loopCount >= 2000){
    shift(0,0);
    loopCount = 0;
  }
  
  drawFrame();
  // updateLEDRegisters(image[0], 0);

  // updateLEDRegisters(image[1], 1);

  // updateLEDRegisters(image[2], 2);

  // updateLEDRegisters(image[3], 3);

  // updateLEDRegisters(image[4], 4);

  // updateLEDRegisters(image[5], 5);

  // updateLEDRegisters(image[6], 6);

  // updateLEDRegisters(image[7], 7);
  loopCount++;
}

// put function definitions here:
