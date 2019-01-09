/*
 * ws2812b.c
 *
 * Created: 2017-07-22 22:03:26
 *  Author: Kevin
 */ 

#include "ws2812b.h"
#include <asf.h>
#include <avr/io.h>
#include <avr/sfr_defs.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

inline void sendBit( bool bitVal, int channel ) {
  
	if (  bitVal ) {				// 0 bit

		WS2812_PORT.OUT |= channel;
		__builtin_avr_delay_cycles(T1H);
		//_delay_us(T1H);
		WS2812_PORT.OUT &= ~channel;
		__builtin_avr_delay_cycles(T1L);
		//_delay_us(T1L);

	} else {						// 1 bit

		WS2812_PORT.OUT |= channel;
		//_delay_us(T0H);
		__builtin_avr_delay_cycles(T0H);
		WS2812_PORT.OUT &= ~channel;
		//_delay_us(T0L);
		__builtin_avr_delay_cycles(T0L);
	}
}  

inline void sendByte( unsigned char byte, int channel ) {
    
    for( unsigned char bit = 0 ; bit < 8 ; bit++ ) {
      
      sendBit(  (byte>>7) & 0b1, channel  );                  // Neopixel wants bit in highest-to-lowest order
                                                     // so send highest bit (bit #7 in an 8-bit byte since they start at 0)
      byte <<= 1;                                    // and then shift left so bit 6 moves into 7, 5 moves into 6, etc      
    }         
} 

inline void sendPixel( unsigned char r, unsigned char g , unsigned char b, int channel )  {  
	
	cli();

	sendByte(g, channel);          // Neopixel wants colors in green then red then blue order
	sendByte(r, channel);
	sendByte(b, channel);

	sei();  
}