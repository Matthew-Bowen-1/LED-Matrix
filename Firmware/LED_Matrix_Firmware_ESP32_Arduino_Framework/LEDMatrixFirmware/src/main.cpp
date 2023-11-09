#include <Arduino.h>


#define STR 12
#define DATA 13
#define CLK 14
#define EO 15
#define rowBus 16

#define PATTERN_1 0b11111111
#define PATTERN_2 0b10100101
#define PATTERN_3 0b10100101
#define PATTERN_4 0b10000001
#define PATTERN_5 0b10011001
#define PATTERN_6 0b11000011
#define PATTERN_7 0b10111101
#define PATTERN_8 0b11111111

struct display {
  char image[8][32]; 
};

typedef struct display Display;

inline void setPinHigh() __attribute__ ((always_inline)); 
inline void setPinHigh(int pin){
  GPIO.out_w1ts |= ((uint32_t) 1 << pin);
}

inline void setPinLow() __attribute__ ((always_inline)); 
inline void setPinLow(int pin){
  GPIO.out_w1tc |= ((uint32_t) 1 << pin);
}

inline void updateRowBus() __attribute__ ((always_inline));
inline void updateRowBus(int rowVal){
  setPinLow(STR);
  uint32_t newRowVal = (GPIO.out & ~(7 << rowBus)) | (((uint32_t) rowVal) << rowBus);
  newRowVal = (newRowVal & ~(1 << STR)) | (1 << STR);
  GPIO.out = newRowVal;
  setPinLow(STR);
}

void initializeDisplay(Display *d);
void initializeDisplay(Display *d){
  for(int i=0; i<8; i++){
    for(int j=0; j<32; j++){
      d->image[i][j] = 0;
    }
  }
}

void updateLEDRegisters(uint32_t value, int row){
  uint32_t tempValue = value;
  setPinLow(CLK);
  for(int i=0; i<32; i++){
    if((tempValue & 1) == 1){
      setPinHigh(DATA);
    } else {
      setPinLow(DATA);
    }
    setPinHigh(CLK);
    tempValue = tempValue >> 1;
    setPinLow(CLK);
  }
  updateRowBus(row);
}

void setup() {
  pinMode(STR, OUTPUT);
  pinMode(DATA, OUTPUT);
  pinMode(CLK, OUTPUT);
  pinMode(EO, OUTPUT);
  pinMode(rowBus, OUTPUT);
  pinMode(rowBus + 1, OUTPUT);
  pinMode(rowBus + 2, OUTPUT);
  setPinHigh(EO);
}

void loop() {
  Display display;
  Display *displayPointer = &display;
  initializeDisplay(displayPointer);

 
  updateLEDRegisters(PATTERN_1, 0);

  updateLEDRegisters(PATTERN_2, 1);

  updateLEDRegisters(PATTERN_3, 2);

  updateLEDRegisters(PATTERN_4, 3);

  updateLEDRegisters(PATTERN_5, 4);

  updateLEDRegisters(PATTERN_6, 5);

  updateLEDRegisters(PATTERN_7, 6);

  updateLEDRegisters(PATTERN_8, 7);
}

// put function definitions here:
