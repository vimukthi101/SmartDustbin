#include<htc.h>
#define _XTAL_FREQ 4000000
__CONFIG(0X3F39);

void main()
{ 
  TRISC = 0b00000000;	
  PORTC = 0b00000000;
  int a;
  TRISB = 0b00010000;         //RB4 as Input PIN (ECHO)
  T1CON = 0x00010000;         //Initialize Timer Module
  while(1)
  { 
    TMR1H = 0;                //Sets the Initial Value of Timer
    TMR1L = 0;                //Sets the Initial Value of Timer
    RB0 = 1;                  //TRIGGER HIGH
    __delay_us(10);           //10uS Delay 
    RB0 = 0;                  //TRIGGER LOW
    while(!RB4);              //Waiting for Echo
    TMR1ON = 1;               //Timer Starts
    while(RB4);               //Waiting for Echo goes LOW
    TMR1ON = 0;               //Timer Stops
    a = (TMR1L | (TMR1H<<8)); //Reads Timer Value
    a = a/(29.41);            //Converts Time to Distance
    a = a + 1;                //Distance Calibration
    if(a >= 2 && a <= 10){
		PORTC = 0b00000001;
	} else if(a >= 11 && a <= 20){
		PORTC = 0b00000011;
	}else if(a >= 21 && a <= 30){
		PORTC = 0b00000111;
	}else {
		PORTC = 0b00000000;
	}
    __delay_ms(400);
  }
}