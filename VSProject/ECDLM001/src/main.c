#define F_CPU 32000000

#include <asf.h>
#include <avr/io.h>
#include <avr/sfr_defs.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "menu.h"
#include "appbl.h"
#include "ws2812b.h"
#include "i2c_lcd.h"

#define BSCALE250K 2
#define BSEL250K 1

int dmxData = 0;
int dmxCount = 0;
int status = 0;
int ferrCount = 0;
int perr = 0;

inline void setClockTo32MHz(void) {
	CCP = CCP_IOREG_gc;              // disable register security for oscillator update
	OSC.CTRL = OSC_RC32MEN_bm;       // enable 32MHz oscillator
	while(!(OSC.STATUS & OSC_RC32MRDY_bm)); // wait for oscillator to be ready
	CCP = CCP_IOREG_gc;              // disable register security for clock update
	CLK.CTRL = CLK_SCLKSEL_RC32M_gc; // switch to 32MHz clock
}

static uint8_t ReADCBlibrationByte( uint8_t index ){
	uint8_t reg = (SREG);
	cli();
	/* Load the NVM Command register to read the calibration row. */
	NVM.CMD = NVM_CMD_READ_CALIB_ROW_gc;
	uint8_t result = pgm_read_byte(index);
	/* Clean up NVM Command register. */
	NVM.CMD = NVM_CMD_NO_OPERATION_gc;
	(SREG) = reg;
	return (result);
}

static void init_RotaryEncoder(void) {
	
	ENCODER_PORT.DIRCLR |= ENCODER_PIN1|ENCODER_PIN2; // DT, CLK
	ENCODER_PORT2.DIRCLR |= ENCODER_BUTTON_PIN;
	ENCODER_PORT_CTRL1 = PORT_ISC_LEVEL_gc;
	ENCODER_PORT_CTRL2 = PORT_ISC_LEVEL_gc;
	ENCODER_PORT_CTRLB = PORT_ISC_FALLING_gc;
	
	ENCODER_PORT2.INT0MASK |= ENCODER_BUTTON_PIN;
	ENCODER_PORT2.INTCTRL = PORT_INT0LVL_LO_gc;
	
	BUTTON_12_PORT.DIRCLR |= BUTTON_1_PIN | BUTTON_2_PIN;
	BUTTON_1_PORTCTRL = PORT_ISC_RISING_gc | PORT_OPC_PULLDOWN_gc;
	BUTTON_2_PORTCTRL = PORT_ISC_RISING_gc | PORT_OPC_PULLDOWN_gc;
	BUTTON_12_PORT.INT0MASK |= BUTTON_1_PIN | BUTTON_2_PIN;
	BUTTON_12_PORT.INTCTRL = PORT_INT0LVL_LO_gc;
	
	EVSYS.CH0CTRL = EVSYS_QDIRM_10_gc | EVSYS_QDEN_bm | EVSYS_DIGFILT_8SAMPLES_gc;
	EVSYS.CH0MUX = EVSYS_CHMUX_PORTE_PIN2_gc;

	TCE0.CTRLD =  (TC_EVSEL_CH0_gc | TC_EVACT_QDEC_gc);
	TCE0.PER = 2;
	TCE0.CTRLA  = TC_CLKSEL_DIV4_gc;
	TCE0.CNT = 0;
	TCE0.INTCTRLA = TC_OVFINTLVL_HI_gc;
}

static void init_Triggers(void) {
	
	TRIGGER_PORT.DIRCLR =  PIN0_bm | PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm | PIN5_bm | PIN6_bm | PIN7_bm;
	// TRIGGER_PORT.DIRSET = PIN6_bm | PIN7_bm;
	TRIGGER_PORT.PIN0CTRL = PORT_OPC_PULLDOWN_gc;
	TRIGGER_PORT.PIN1CTRL = PORT_OPC_PULLDOWN_gc;
	TRIGGER_PORT.PIN2CTRL = PORT_OPC_PULLDOWN_gc;
	TRIGGER_PORT.PIN3CTRL = PORT_OPC_PULLDOWN_gc;
	TRIGGER_PORT.PIN4CTRL = PORT_OPC_PULLDOWN_gc;
	TRIGGER_PORT.PIN5CTRL = PORT_OPC_PULLDOWN_gc;
	
	TRIGGER_PORT.PIN6CTRL  =  PORT_OPC_PULLDOWN_gc;
	TRIGGER_PORT.PIN7CTRL  =  PORT_OPC_PULLDOWN_gc;
	// TRIGGER_PORT.OUTCLR =  PIN6_bm;
	// TRIGGER_PORT.OUTCLR =  PIN7_bm;
	
	ADCB.CALL = ReADCBlibrationByte(PRODSIGNATURES_ADCBCAL0);
	ADCB.CALH = ReADCBlibrationByte(PRODSIGNATURES_ADCBCAL1);

	ADCB.CTRLA = ADC_ENABLE_bm;

	ADCB.CTRLB = ( ADC_CURRLIMIT_NO_gc | ADC_RESOLUTION_8BIT_gc);//ADC_RESOLUTION_12BIT_gc | ADC_CURRLIMIT_LOW_gc;
	ADCB.CTRLB &= ~ADC_CONMODE_bm;
	ADCB.PRESCALER = ADC_PRESCALER_DIV128_gc;
	ADCB.REFCTRL = ADC_REFSEL_INT1V_gc;
	ADCB.EVCTRL = ADC_EVACT_NONE_gc;
	ADCB.CH0.INTCTRL = 0;
	ADCB.CH0.CTRL = ADC_CH_INPUTMODE_SINGLEENDED_gc;
	
	_delay_us(2000); // Wait at least 25 clocks
	
	
}

static void init_ADCConversionTimer(void){
	
	/*TCF0.CTRLA = 0;
	TCF0.CTRLFSET = 0x0C;
	TCF0.PER = 8;
	TCF0.INTCTRLA = TC_OVFINTLVL_MED_gc;
	TCF0.CTRLA = TC_CLKSEL_DIV1024_gc;
	TCF0.INTFLAGS |= TC1_OVFIF_bm;*/
	CLK.RTCCTRL = CLK_RTCSRC_RCOSC_gc | CLK_RTCEN_bm;
	RTC.CTRL = 0;
	while(RTC.STATUS & RTC_SYNCBUSY_bm);

	RTC.CNT = 0;
	while(RTC.STATUS & RTC_SYNCBUSY_bm);
	RTC.PER = 2;
	while(RTC.STATUS & RTC_SYNCBUSY_bm);
	
	RTC.INTFLAGS = RTC_OVFIF_bm;
	RTC.INTCTRL = RTC_OVFINTLVL_MED_gc;					//Enable overflow interrupt.
	RTC.CTRL = ( RTC.CTRL & ~RTC_PRESCALER_gm ) | RTC_PRESCALER_DIV1_gc;// (RTC.CTRL & ~RTC_PRESCALER_gm) | 0x07;	//Prescaler of 1024.
}

ISR(RTC_OVF_vect){
	
	for (int i=0; i<8; i++){
		
		ADCB.CH0.MUXCTRL = ((i)<<3);	//Analog Input: ADC1 Pin (on PORTA.0)
		ADCB.CH0.INTCTRL = 0 ;
		ADCB.CH0.CTRL |= ADC_CH_START_bm;		//Start conversion on ADCB1 (bm = bitmask)
		while(ADCB.CH0.INTFLAGS==0);			//Wait for conversion to complete
		
		long value = ADCB.CH0.RES;
		ADCB.CH0.INTFLAGS = ADCB.CH0.INTFLAGS;
		
		if (i < 6){
			TRIGGER_STATES[i] = clipValue(value,i) ; //Get the conversion result
		
			if (TRIGGER_STATES[i] > ANIMATION_VALUES[i]){
				ANIMATION_VALUES[i] = TRIGGER_STATES[i];
			}
		}
	}
}

static void init_generalTimer(void){
	
	TCE1.CTRLA = 0;
	TCE1.CTRLFSET = 0x0C;
	TCE1.PER = 8;
	TCE1.INTCTRLA = TC_OVFINTLVL_LO_gc;
	TCE1.CTRLA = TC_CLKSEL_DIV1024_gc;
	TCE1.INTFLAGS |= TC1_OVFIF_bm;
}

ISR(TCE1_OVF_vect){
	countTCF0++;
}

static void init_animRefreshTimer(void) {
	
	TCD0.CTRLA = 0;
	TCD0.CTRLFSET = 0x0C;
	TCD0.PER = F_CPU / 1024 / HZ_ANIMATION_REFRESH;
	TCD0.INTCTRLA = TC_OVFINTLVL_LO_gc;
	TCD0.CTRLA = TC_CLKSEL_DIV1024_gc;
	TCD0.INTFLAGS |= TC1_OVFIF_bm;
}

static void init_lcdRefreshTimer(void) {	
	
	TCC0.CTRLA = 0;
	TCC0.CTRLFSET = 0x0C;
	TCC0.PER = F_CPU / 1024 / HZ_LCD_REFRESH;
	TCC0.INTCTRLA = TC_OVFINTLVL_LO_gc;
	TCC0.CTRLA = TC_CLKSEL_DIV1024_gc;
	TCC0.INTFLAGS |= TC1_OVFIF_bm;
}

static void init_ws2812RefreshTimer(void) {
	    
	WS2812_PORT.DIRSET = PIN0_bm | PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm | PIN4_bm | PIN5_bm | PIN6_bm | PIN7_bm;
	
	TCC1.CTRLA = 0;
	TCC1.CTRLFSET = 0x0C; 
	TCC1.PER = F_CPU / 64 / HZ_LED_REFRESH;
	TCC1.INTCTRLA = TC_OVFINTLVL_HI_gc;
	TCC1.CTRLA = TC_CLKSEL_DIV64_gc;
	TCC1.INTFLAGS |= TC1_OVFIF_bm;
}

static void init_LCD(void) {
	
	LCD_PORT.DIRSET = LCD_SDA_PIN|LCD_SCL_PIN; //SDA 0 SCL 1 LCD
	i2c_init(&TWIE, TWI_BAUD(F_CPU, BAUD_100K));
	i2c_lcd_init();
	i2c_lcd_led_on();
	i2c_lcd_set_cursor(0,0);	
	i2c_lcd_clear();	
}

inline void init_DMX() {
	
	DMX_PORT.DIRSET |= DMX_USART_REDE_PIN | DMX_USART_TX_PIN;
	DMX_PORT.DIRCLR |= DMX_USART_RX_PIN;
	DMX_PORT.OUTCLR |= DMX_USART_REDE_PIN;

	DMX_PORT.DIRCLR |= DMX_USART_RX_PIN;
	PMIC.CTRL |= PMIC_MEDLVLEN_bm;
	DMX_USART.CTRLA = USART_RXCINTLVL_MED_gc;
	DMX_USART.CTRLC = USART_CHSIZE_8BIT_gc | USART_PMODE_DISABLED_gc | USART_CMODE_ASYNCHRONOUS_gc | USART_SBMODE_bm;
	DMX_USART.BAUDCTRLA = (uint8_t)BSEL250K;
	DMX_USART.BAUDCTRLB = (uint8_t)( (BSCALE250K << 4)|(BSEL250K>>8) );
	DMX_USART.CTRLB = USART_RXEN_bm;
}

ISR(USARTD0_RXC_vect)
{	
	status = DMX_USART.STATUS;
	dmxData = DMX_USART.DATA;
	
	if (operationMode != MODE_DMX){
		return;
	}
	
	if (status & USART_FERR_bm){
		ferrCount++;
		dmxCount = 0;
	} else {
		ferrCount = 0;
		dmxCount++;
	}

	if (dmxCount == dmxAddress + 1){ colorR1 = dmxData; }
	if (dmxCount == dmxAddress + 2){ colorG1 = dmxData; }
	if (dmxCount == dmxAddress + 3){ colorB1 = dmxData;	}
	if (dmxCount == dmxAddress + 4){ colorR2 = dmxData;	}
	if (dmxCount == dmxAddress + 5){ colorG2 = dmxData;	}
	if (dmxCount == dmxAddress + 6){ colorB2 = dmxData;	}
	if (dmxCount == dmxAddress + 7){ release = dmxData*100/255;	}
	if (dmxCount == dmxAddress + 8){ animation = dmxData*8/255;	}
	if (dmxCount == dmxAddress + 9){ animationTrigger = dmxData*6/255;	}
	if (dmxCount == dmxAddress + 10){ releaseCurve = dmxData*3/255;	}
}

//==============================================================================
int main(void)
//==============================================================================
{
	setClockTo32MHz();

	_delay_ms(100);
	
	memset(DISPLAY_PIXELS, 0, NB_PIXELS);
	memset(TRIGGER_STATES, 0, NB_TRIGGERS);	
	memset(ANIMATION_VALUES, 0, NB_TRIGGERS);
	memset(trig, 0, NB_TRIGGERS);	
	memset(read_page, 0, EEPROM_PAGE_SIZE);
	memset(preset_page, 0, EEPROM_PAGE_SIZE);
	
	
	
	init_LCD();
	i2c_lcd_set_cursor(0,0);
	i2c_lcd_write_text("Init start...");
	
	_delay_ms(500);
	
	PMIC.CTRL = PMIC_LOLVLEN_bm | PMIC_HILVLEN_bm | PMIC_MEDLVLEN_bm;
	
	ReadConfigFromNVM();
	
	init_Triggers();
	init_ADCConversionTimer();
	init_generalTimer();
	init_RotaryEncoder();
	init_lcdRefreshTimer();
	init_ws2812RefreshTimer();
	init_animRefreshTimer();
	init_DMX();

	sei();
	BOX_LED_PORT.DIR |= BOX_LED2_PIN | BOX_LED2_PIN;
	BOX_LED_PORT.OUTCLR |= BOX_LED2_PIN | BOX_LED1_PIN;
	
	while(1)
	{
		
		
		
	}	
}

