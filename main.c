#include <htc.h>
#include <math.h>
#include "system.h"
#include "adc.h"
#include "lcd.h"

// This configuration bits are for PIC16F877A using 20MHz Crystal or HS for OSC
#if((_HTC_VER_MAJOR_ == 9) && (_HTC_VER_MINOR_ <= 80)) //if Hi-Tech V9.80 or lower version of compiler is being used
__CONFIG(HS &			// High Speed Crystal.
		 WDTDIS &		// Disable Watchdog Timer.
		 PWRTEN &		// Enable Power Up Timer.
		 BORDIS &		// Disable Brown Out Reset.
		 LVPDIS);		// Disable Low Voltage Programming.

#elif((_HTC_VER_MAJOR_ == 9) && (_HTC_VER_MINOR_ > 80)) //else if Hi-Tech greater than V9.80 compiler is being used
__CONFIG(FOSC_HS &			// High Speed Crystal.
		 WDTE_OFF &		// Disable Watchdog Timer.
		 PWRTE_ON &		// Enable Power Up Timer.
		 BOREN_OFF &		// Disable Brown Out Reset.
		 LVP_OFF);		// Disable Low Voltage Programming.
#endif	//end of pre-processor if condition

void delay_ms(unsigned int ui_value);

 int main(void)
{
	TRISA = 0b00000100;
	TRISB = 0b00000111;
	TRISC = 0;
	TRISD = 0;
	TRISE = 0;

	unsigned int temperature = 0;
	unsigned int D[4];
	unsigned char i = 0;

	adc_initialize();
	adc_on();
	lcd_initialize();
	lcd_putstr("Current Temp");
	lcd_2ndline();

	while(1) 	// create an infinite loop
	{
		//push button to turn ON HEATER (For Demo)
		if (SW3 == 0){
			HEATER = 1;
		}else{
			HEATER = 0;
		}

		temperature = 0;
		for( i = 0 ; i < 10 ; i++)
		{
			temperature = temperature + ui_adc_read();
		}
		temperature = temperature / 10;
		temperature = temperature / 2 ;
		D[3] = temperature;
		for(i=3; i>0; i--){
			D[i-1] = D[i]%((int)pow(10, i));
			D[i] = D[i]/((int)pow(10, i));
		}
		lcd_goto(0x41);
		for(i=4; i>0; i--){
			lcd_putchar(D[i-1]+0x30);
		}
		lcd_putchar(0xdf);
		lcd_putchar('C');

		//turn ON LED, BUZZER and FAN automatically when temperature >= 75
		if(temperature >= 75){
			LED = 1;
			BUZZER = 1;
			FAN = 1;
		} else if(temperature < 35){  
			//turn OFF FAN automatically when temperature < 35
			FAN = 0;
			//push button to turn OFF LED, BUZZER
			//only can turn OFF while temperature<35
			if (SW1 == 0){
				LED = 0;
				BUZZER = 0;
			}
		} else {
			//in case the temperature increases again
			if (SW2 == 0){
				FAN = 1;
			}
		}
	}	
	
	while(1) continue;	// infinite loop to prevent PIC from reset if there is no more program	
}



void delay_ms(unsigned int ui_value)
{
	while (ui_value-- > 0) {
		__delay_ms(1);		// macro from HI-TECH compiler which will generate 1ms delay base on value of _XTAL_FREQ in system.h
	}	
}

