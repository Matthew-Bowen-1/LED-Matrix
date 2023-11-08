#define STR 12
#define DATA 13
#define CLK 14
#define EO 15

#define rowBus 16

#define PATTERN_1 0b11111111
#define PATTERN_2 0b10011001
#define PATTERN_3 0b10011001
#define PATTERN_4 0b11111111
#define PATTERN_5 0b11100111
#define PATTERN_6 0b10111101
#define PATTERN_7 0b11000011
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

void initializeDisplay(Display *d);
void initializeDisplay(Display *d){
  for(int i=0; i<8; i++){
    for(int j=0; j<32; j++){
      d->image[i][j] = 0;
    }
  }
}



void setup() {
  pinMode(STR, OUTPUT);
  pinMode(DATA, OUTPUT);
  pinMode(CLK, OUTPUT);
  pinMode(EO, OUTPUT);
  digitalWrite(EO, 1);

  REG_WRITE(GPIO_ENABLE_W1TS_REG, 3 << rowBus); //set pins 16-18 output

}

void updateLEDRegister(uint8_t numRegisters, uint32_t value){
  uint32_t tempValue = value;
  //digitalWrite(CLK, LOW);
  //GPIO.out_w1tc |= ((uint32_t) 1 << CLK);
  setPinLow(CLK);
  //digitalWrite(STR, LOW);
  //GPIO.out_w1tc |= ((uint32_t) 1 << STR);
  setPinLow(STR);
  for(int i=0; i<(numRegisters * 8); i++){
    if((tempValue & 1) == 1){
      //GPIO.out_w1ts |= ((uint32_t) 1 << DATA);
      setPinHigh(DATA);
    }
    else {
      //GPIO.out_w1tc |= ((uint32_t) 1 << DATA);
      setPinLow(DATA);
    }
    tempValue = tempValue >> 1;

    delayMicroseconds(1);
    //digitalWrite(CLK, HIGH);
    //GPIO.out_w1ts |= ((uint32_t) 1 << CLK);
    setPinHigh(CLK);
    delayMicroseconds(1);
    //digitalWrite(CLK, LOW);
    //GPIO.out_w1tc |= ((uint32_t) 1 << CLK);
    setPinLow(CLK);
  }
  delayMicroseconds(1);
  //digitalWrite(STR, HIGH);
  //GPIO.out_w1ts |= ((uint32_t) 1 << STR);
  setPinHigh(STR);
  delayMicroseconds(1);
  setPinLow(STR);
}

void loop() {
  Display display;
  Display *displayPointer = &display;
  initializeDisplay(displayPointer);

  delay(2);
  updateLEDRegister(1, PATTERN_1);
  delay(2);
  updateLEDRegister(1, PATTERN_2);
  delay(2);
  updateLEDRegister(1, PATTERN_3);
  delay(2);
  updateLEDRegister(1, PATTERN_4);
  delay(2);
  updateLEDRegister(1, PATTERN_5);
  delay(2);
  updateLEDRegister(1, PATTERN_6);
  delay(2);
  updateLEDRegister(1, PATTERN_7);
  delay(2);
  updateLEDRegister(1, PATTERN_8);

}
