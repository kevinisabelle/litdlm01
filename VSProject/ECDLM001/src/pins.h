/*
 * pins.h
 *
 * Created: 08/01/2018 21:48:39
 *  Author: kevin
 */ 

#ifndef PINS_H_
#define PINS_H_

// Pin/Ports configurations
#define WS2812_PORT			PORTA
#define TRIGGER_PORT		PORTB
#define SCHMITT_TRIG_PORT	PORTC
#define RESET_TRIG_PORT		PORTF
#define RESET_PIN1			PIN5_bm
#define RESET_PIN2			PIN4_bm
#define RESET_PIN3			PIN3_bm
#define RESET_PIN4			PIN2_bm
#define RESET_PIN5			PIN1_bm
#define RESET_PIN6			PIN0_bm
#define RESET_PIN7			PIN6_bm
#define RESET_PIN8			PIN7_bm

#define BOX_LED_PORT		PORTD
#define BOX_LED1_PIN		PIN6_bm
#define BOX_LED2_PIN		PIN5_bm

#define DMX_PORT			PORTD
#define DMX_USART			USARTD0
#define DMX_USART_RX_PIN	PIN2_bm
#define DMX_USART_TX_PIN	PIN3_bm
#define DMX_USART_REDE_PIN	PIN1_bm

#define LCD_PORT			PORTE
#define LCD_SDA_PIN			PIN0_bm
#define LCD_SCL_PIN			PIN1_bm

#define ENCODER_PORT		PORTE

#define ENCODER_PIN1		PIN2_bm
#define ENCODER_PIN2		PIN3_bm
#define ENCODER_PORT_CTRL1	ENCODER_PORT.PIN2CTRL
#define ENCODER_PORT_CTRL2	ENCODER_PORT.PIN3CTRL
#define ENCODER_BUTTON_PIN	PIN4_bm
#define ENCODER_PORT2		PORTD
#define ENCODER_PORT_CTRLB	ENCODER_PORT2.PIN4CTRL

#define BUTTON_12_PORT		PORTR
#define BUTTON_34_PORT		PORTD
#define BUTTON_1_PIN		PIN0_bm
#define BUTTON_1_PORTCTRL	BUTTON_12_PORT.PIN0CTRL
#define BUTTON_2_PIN		PIN1_bm
#define BUTTON_2_PORTCTRL	BUTTON_12_PORT.PIN1CTRL
#define BUTTON_3_PIN		PIN7_bm
#define BUTTON_3_PORTCTRL	BUTTON_34_PORT.PIN7CTRL
#define BUTTON_4_PIN		PIN0_bm
#define BUTTON_4_PORTCTRL	BUTTON_34_PORT.PIN0CTRL


#define SD_CARD_PORT		PORTE
#define SD_CARD_SS			PIN4_bm
#define SD_CARD_MOSI		PIN5_bm
#define SD_CARD_MISO		PIN6_bm
#define SD_CARD_SCK			PIN7_bm

// Interrupt Vectors
#define BUTTON_PRESSED12	PORTR_INT0_vect
#define BUTTON_PRESSED34ENC PORTD_INT0_vect
#define ENCODER_TURNED		TCE0_OVF_vect
#define STRIGGER_TRIGGED	PORTC_INT0_vect
#define LCD_REFRESH			TCC0_OVF_vect
#define LED_REFRESH			TCC1_OVF_vect
#define ANIM_REFRESH		TCD0_OVF_vect
#define STRIG_STATE_CHECK	TCD1_OVF_vect


#endif /* PINS_H_ */