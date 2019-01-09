/*
 * ws2812b.h
 *
 * Created: 2017-07-22 22:02:14
 *  Author: Kevin
 */ 

#ifndef WS2812B_H_
#define WS2812B_H_

#include "appbl.h"

#define T1H  15    // Width of a 1 bit in us
#define T1L  8  // Width of a 1 bit in us

#define T0H  7    // Width of a 0 bit in us
#define T0L  16    // Width of a 0 bit in us

void sendPixel( unsigned char r, unsigned char g , unsigned char b, int channel );
void sendByte( unsigned char byte, int channel );

#endif /* WS2812B_H_ */