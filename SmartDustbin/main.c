#include<htc.h>
#define _XTAL_FREQ 4000000
__CONFIG(0X3F39);

void main(){
  int a;
  TRISC = 0b00000000; 			//C as Output PINs (LED)
  TRISB = 0b00010000;           //RB4 as Input PIN (ECHO)
  T1CON = 0b00010000;           //Initialize Timer Module

  while(1){   
	TMR1H = 0;                  //Sets the Initial Value of Timer
    TMR1L = 0;                  //Sets the Initial Value of Timer
	PORTC = 0b00000000;
    PORTB = 0b00000001;               //TRIGGER HIGH
    __delay_us(10);               //10uS Delay
    PORTB = 0b00000000;               //TRIGGER LOW
	while(PORTB == 0b00000000){           
	    T1CON = 0b00000001;
	}               
    while(PORTB  == 0b00001000){            
	    T1CON = 0b00000000;               
	}
	a = (TMR1L | (TMR1H<<8));   //Reads Timer Value
    a = a/58.82;                	//Converts Time to Distance
	if(a >= 2 && a <= 50){
		PORTC = 0b00000001;
	} else if(a >= 51 && a <= 100) {
		PORTC = 0b00000010;
	} else if(a >= 101 && a <= 150) {
		PORTC = 0b00000100;
	} else if(a >= 151 && a <= 200) {
		PORTC = 0b00001000;
	} else if(a >= 201 && a <= 250) {
		PORTC = 0b00010000;
	} else if(a >= 251 && a <= 300) {
		PORTC = 0b00100000;
	} else if(a >= 301 && a <= 350) {
		PORTC = 0b01000000;
	} else if(a >= 351 && a <= 400) {
		PORTC = 0b10000000;
	} else {
		PORTC = 0b00000000;
	}
    __delay_ms(400);
  }
}