/*
 * appbl.h
 *
 * Created: 2017-07-22 20:58:48
 *  Author: Kevin
 */ 

#ifndef APPBL_H_
#define APPBL_H_

#include "asf.h"
#include "pins.h"
#include <math.h>

#define BAUD_100K	100000UL

// Operation parameters
#define HZ_LED_REFRESH				70
#define HZ_LCD_REFRESH				12
#define HZ_ANIMATION_REFRESH		60
#define NB_TRIGGERS					6
#define MAX_NB_LIGHTS_PER_STRIP		30
#define NB_PIXELS (NB_TRIGGERS * MAX_NB_LIGHTS_PER_STRIP * 3)
#define FLASH_RESET_PIN				1
#define PIXEL_SIZE  NB_LIGHTS_PER_STRIP_DBL / 10.0
#define SCALE_FACTOR_BITS 8
#define SCALE_FACTOR (1 << SCALE_FACTOR_BITS)


extern long ANIMATION_VALUES[];
extern int trig[];
extern unsigned char DISPLAY_PIXELS[];

unsigned int clipValue(long value, int index);
unsigned int getAnimationValue(unsigned int trigValue, unsigned int currentAnimationValue, int i);
void	updatePixels(unsigned int animationValue, int triggerIndex);
void	refreshLEDStrips(void);
void	refreshAnimations(void);

#endif /* APPBL_H_ */