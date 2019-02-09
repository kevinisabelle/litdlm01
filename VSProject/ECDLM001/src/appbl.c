/*
 * appbl.c
 *
 * Created: 2017-07-22 21:58:02
 *  Author: Kevin
 */ 

#include "appbl.h"
#include "ws2812b.h"
#include "menu.h"
#include "asf.h"
#include "i2c_lcd.h"
#include <math.h>
#include <util/delay.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>

long ANIMATION_VALUES[NB_TRIGGERS] = {0};
int trig[NB_TRIGGERS] = {0};
unsigned char DISPLAY_PIXELS[NB_PIXELS] = {0};
	
const  unsigned char CURVE_LINEAR_ARR[256] =	{
	0,
	1,
	2,
	3,
	4,
	5,
	6,
	7,
	8,
	9,
	10,
	11,
	12,
	13,
	14,
	15,
	16,
	17,
	18,
	19,
	20,
	21,
	22,
	23,
	24,
	25,
	26,
	27,
	28,
	29,
	30,
	31,
	32,
	33,
	34,
	35,
	36,
	37,
	38,
	39,
	40,
	41,
	42,
	43,
	44,
	45,
	46,
	47,
	48,
	49,
	50,
	51,
	52,
	53,
	54,
	55,
	56,
	57,
	58,
	59,
	60,
	61,
	62,
	63,
	64,
	65,
	66,
	67,
	68,
	69,
	70,
	71,
	72,
	73,
	74,
	75,
	76,
	77,
	78,
	79,
	80,
	81,
	82,
	83,
	84,
	85,
	86,
	87,
	88,
	89,
	90,
	91,
	92,
	93,
	94,
	95,
	96,
	97,
	98,
	99,
	100,
	101,
	102,
	103,
	104,
	105,
	106,
	107,
	108,
	109,
	110,
	111,
	112,
	113,
	114,
	115,
	116,
	117,
	118,
	119,
	120,
	121,
	122,
	123,
	124,
	125,
	126,
	127,
	128,
	129,
	130,
	131,
	132,
	133,
	134,
	135,
	136,
	137,
	138,
	139,
	140,
	141,
	142,
	143,
	144,
	145,
	146,
	147,
	148,
	149,
	150,
	151,
	152,
	153,
	154,
	155,
	156,
	157,
	158,
	159,
	160,
	161,
	162,
	163,
	164,
	165,
	166,
	167,
	168,
	169,
	170,
	171,
	172,
	173,
	174,
	175,
	176,
	177,
	178,
	179,
	180,
	181,
	182,
	183,
	184,
	185,
	186,
	187,
	188,
	189,
	190,
	191,
	192,
	193,
	194,
	195,
	196,
	197,
	198,
	199,
	200,
	201,
	202,
	203,
	204,
	205,
	206,
	207,
	208,
	209,
	210,
	211,
	212,
	213,
	214,
	215,
	216,
	217,
	218,
	219,
	220,
	221,
	222,
	223,
	224,
	225,
	226,
	227,
	228,
	229,
	230,
	231,
	232,
	233,
	234,
	235,
	236,
	237,
	238,
	239,
	240,
	241,
	242,
	243,
	244,
	245,
	246,
	247,
	248,
	249,
	250,
	251,
	252,
	253,
	254,
	255

};
const unsigned char CURVE_EXP_ARR[256] =		{
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	3,
	3,
	3,
	3,
	3,
	3,
	3,
	4,
	4,
	4,
	4,
	4,
	4,
	5,
	5,
	5,
	5,
	5,
	6,
	6,
	6,
	6,
	7,
	7,
	7,
	8,
	8,
	8,
	8,
	9,
	9,
	9,
	10,
	10,
	10,
	11,
	11,
	12,
	12,
	12,
	13,
	13,
	14,
	14,
	15,
	15,
	16,
	16,
	17,
	17,
	18,
	18,
	19,
	19,
	20,
	20,
	21,
	22,
	22,
	23,
	24,
	24,
	25,
	26,
	26,
	27,
	28,
	29,
	29,
	30,
	31,
	32,
	33,
	34,
	34,
	35,
	36,
	37,
	38,
	39,
	40,
	41,
	42,
	43,
	44,
	45,
	46,
	47,
	49,
	50,
	51,
	52,
	53,
	55,
	56,
	57,
	59,
	60,
	61,
	63,
	64,
	65,
	67,
	68,
	70,
	71,
	73,
	74,
	76,
	78,
	79,
	81,
	83,
	84,
	86,
	88,
	90,
	92,
	93,
	95,
	97,
	99,
	101,
	103,
	105,
	107,
	109,
	112,
	114,
	116,
	118,
	120,
	123,
	125,
	127,
	130,
	132,
	135,
	137,
	140,
	142,
	145,
	147,
	150,
	153,
	155,
	158,
	161,
	164,
	167,
	170,
	173,
	176,
	179,
	182,
	185,
	188,
	191,
	194,
	198,
	201,
	204,
	208,
	211,
	215,
	218,
	222,
	225,
	229,
	233,
	237,
	245,
	249,
	255,
	255

};
const unsigned char CURVE_LOG_ARR[256] =		{
	0,
	0,
	32,
	51,
	64,
	74,
	82,
	90,
	96,
	101,
	106,
	110,
	114,
	118,
	121,
	125,
	128,
	130,
	133,
	136,
	138,
	140,
	142,
	144,
	146,
	148,
	150,
	152,
	153,
	155,
	157,
	158,
	160,
	161,
	162,
	164,
	165,
	166,
	167,
	169,
	170,
	171,
	172,
	173,
	174,
	175,
	176,
	177,
	178,
	179,
	180,
	181,
	182,
	183,
	184,
	184,
	185,
	186,
	187,
	188,
	188,
	189,
	190,
	191,
	191,
	192,
	193,
	194,
	194,
	195,
	196,
	196,
	197,
	198,
	198,
	199,
	199,
	200,
	201,
	201,
	202,
	202,
	203,
	203,
	204,
	205,
	205,
	206,
	206,
	207,
	207,
	208,
	208,
	209,
	209,
	210,
	210,
	211,
	211,
	212,
	212,
	212,
	213,
	213,
	214,
	214,
	215,
	215,
	216,
	216,
	216,
	217,
	217,
	218,
	218,
	218,
	219,
	219,
	220,
	220,
	220,
	221,
	221,
	222,
	222,
	222,
	223,
	223,
	223,
	224,
	224,
	224,
	225,
	225,
	225,
	226,
	226,
	226,
	227,
	227,
	227,
	228,
	228,
	228,
	229,
	229,
	229,
	230,
	230,
	230,
	231,
	231,
	231,
	232,
	232,
	232,
	232,
	233,
	233,
	233,
	234,
	234,
	234,
	234,
	235,
	235,
	235,
	236,
	236,
	236,
	236,
	237,
	237,
	237,
	237,
	238,
	238,
	238,
	239,
	239,
	239,
	239,
	240,
	240,
	240,
	240,
	241,
	241,
	241,
	241,
	242,
	242,
	242,
	242,
	243,
	243,
	243,
	243,
	243,
	244,
	244,
	244,
	244,
	245,
	245,
	245,
	245,
	245,
	246,
	246,
	246,
	246,
	247,
	247,
	247,
	247,
	247,
	248,
	248,
	248,
	248,
	249,
	249,
	249,
	249,
	249,
	250,
	250,
	250,
	250,
	250,
	251,
	251,
	251,
	251,
	251,
	252,
	252,
	252,
	252,
	252,
	252,
	253,
	253,
	253,
	253,
	253,
	254,
	254,
	254,
	254,
	254,
	255,
	255,
	255,
	255

};
const unsigned char CURVE_SINFADE_ARR[256]  =	{
	0,
	0,
	1,
	1,
	1,
	1,
	1,
	2,
	3,
	4,
	5,
	7,
	8,
	10,
	11,
	12,
	13,
	13,
	12,
	11,
	10,
	9,
	7,
	6,
	5,
	5,
	6,
	7,
	9,
	12,
	15,
	18,
	22,
	25,
	27,
	28,
	28,
	27,
	26,
	23,
	20,
	17,
	14,
	11,
	9,
	9,
	10,
	12,
	16,
	20,
	25,
	30,
	35,
	39,
	42,
	44,
	44,
	42,
	39,
	35,
	30,
	25,
	20,
	16,
	14,
	13,
	14,
	17,
	22,
	28,
	35,
	42,
	49,
	54,
	58,
	60,
	60,
	57,
	53,
	47,
	40,
	33,
	27,
	21,
	18,
	17,
	18,
	22,
	28,
	36,
	45,
	54,
	62,
	69,
	74,
	76,
	75,
	72,
	66,
	59,
	50,
	41,
	33,
	27,
	22,
	21,
	23,
	28,
	35,
	44,
	55,
	66,
	76,
	84,
	90,
	92,
	91,
	87,
	80,
	71,
	60,
	49,
	39,
	32,
	27,
	25,
	27,
	33,
	41,
	53,
	65,
	78,
	89,
	99,
	105,
	108,
	107,
	102,
	93,
	82,
	70,
	57,
	46,
	37,
	31,
	29,
	31,
	38,
	48,
	61,
	75,
	89,
	103,
	114,
	121,
	124,
	123,
	117,
	107,
	94,
	80,
	66,
	52,
	42,
	35,
	33,
	36,
	43,
	54,
	69,
	85,
	101,
	116,
	128,
	137,
	140,
	138,
	131,
	120,
	106,
	90,
	74,
	59,
	47,
	40,
	37,
	40,
	48,
	61,
	77,
	95,
	113,
	130,
	143,
	152,
	156,
	154,
	146,
	134,
	118,
	100,
	82,
	65,
	52,
	44,
	41,
	44,
	53,
	67,
	85,
	105,
	125,
	143,
	158,
	168,
	172,
	170,
	161,
	147,
	130,
	110,
	90,
	72,
	57,
	48,
	45,
	49,
	58,
	74,
	93,
	115,
	137,
	157,
	173,
	184,
	188,
	185,
	176,
	161,
	142,
	120,
	98,
	78,
	63,
	52,
	49,
	53,
	64,
	80,
	101,
	125,
	149,
	188,
	199,
	220,
	255

	};

// Animation definition: Fill left
uint8_t	A_FILLL_SMOOTH = 1;
unsigned int A_FILLL_STATE_SIZE = 10;
char	A_FILLL_ARR[11][10] = {
	
	{2, 2, 2, 2, 2, 2, 2, 2, 2, 2}, //  0
	{1, 2, 2, 2, 2, 2, 2, 2, 2, 2}, //  1
	{1, 1, 2, 2, 2, 2, 2, 2, 2, 2}, //  2
	{1, 1, 1, 2, 2, 2, 2, 2, 2, 2}, //  3
	{1, 1, 1, 1, 2, 2, 2, 2, 2, 2}, //  4
	{1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, //  5
	{1, 1, 1, 1, 1, 1, 2, 2, 2, 2}, //  6
	{1, 1, 1, 1, 1, 1, 1, 2, 2, 2}, //  7
	{1, 1, 1, 1, 1, 1, 1, 1, 2, 2}, //  8
	{1, 1, 1, 1, 1, 1, 1, 1, 1, 2}, //  9
	{1, 1, 1, 1, 1, 1, 1, 1, 1, 1}  // 10
		
};

// Animation definition: Pulse
uint8_t	A_PULSE_SMOOTH = 1;
unsigned int A_PULSE_STATE_SIZE = 1;
char	A_PULSE_ARR[2][10] = {
	
	{2, 2, 2, 2, 2, 2, 2, 2, 2, 2}, //  0
	{1, 1, 1, 1, 1, 1, 1, 1, 1, 1}  // 10
};

// Animation definition: Pulse
uint8_t		A_PULSEC_SMOOTH = 1;
unsigned int 	A_PULSEC_STATE_SIZE = 1;
char	A_PULSEC_ARR[2][10] = {
	
	{0, 0, 0, 2, 2, 2, 2, 0, 0, 0}, //  0
	{1, 1, 1, 0, 0, 0, 0, 1, 1, 1}  // 10
};

// Animation definition: Pulse
uint8_t		A_PULSES_SMOOTH = 1;
unsigned int 	A_PULSES_STATE_SIZE = 10;
char	A_PULSES_ARR[11][10] = {
	
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, //  0
	{1, 0, 0, 0, 0, 0, 0, 0, 0, 1}, //  0
	{1, 0, 0, 2, 0, 0, 2, 0, 0, 0}, //  0
	{1, 0, 2, 0, 0, 0, 1, 2, 0, 0}, //  0
	{0, 2, 0, 1, 1, 0, 0, 0, 1, 2}, //  0
	{0, 1, 2, 2, 0, 2, 0, 1, 2, 0}, //  0
	{0, 1, 0, 2, 1, 0, 1, 1, 2, 2}, //  0
	{0, 2, 1, 2, 1, 0, 1, 1, 2, 2}, //  0
	{0, 2, 1, 1, 1, 1, 2, 2, 2, 0}, //  0
	{0, 2, 0, 0, 2, 1, 2, 0, 2, 2}, //  0
	{1, 2, 1, 2, 1, 2, 1, 2, 1, 2}  // 10
};

// Animation definition: Moving EQ
uint8_t		A_MOVINGEQ_SMOOTH = 1;
unsigned int 	A_MOVINGEQ_STATE_SIZE = 10;
char	A_MOVINGEQ_ARR[11][10] = {
	
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, //  0
	{2, 0, 0, 0, 0, 0, 0, 0, 0, 0}, //  1
	{1, 2, 0, 0, 0, 0, 0, 0, 0, 0}, //  2
	{1, 1, 2, 0, 0, 0, 0, 0, 0, 0}, //  3
	{1, 1, 1, 2, 0, 0, 0, 0, 0, 0}, //  4
	{1, 1, 1, 1, 2, 0, 0, 0, 0, 0}, //  5
	{1, 1, 1, 1, 1, 2, 0, 0, 0, 0}, //  6
	{1, 1, 1, 1, 1, 1, 2, 0, 0, 0}, //  7
	{1, 1, 1, 1, 1, 1, 1, 2, 0, 0}, //  8
	{1, 1, 1, 1, 1, 1, 1, 1, 2, 0}, //  9
	{1, 1, 1, 1, 1, 1, 1, 1, 1, 2},  // 10
};

// Animation definition: Fixed EQ
uint8_t		A_FIXEDEQ_SMOOTH = 1;
unsigned int 	A_FIXEDEQ_STATE_SIZE = 10;
char	A_FIXEDEQ_ARR[11][10] = {
	
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, //  0
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0}, //  1
    {1, 1, 0, 0, 0, 0, 0, 0, 0, 0}, //  2
    {1, 1, 1, 0, 0, 0, 0, 0, 0, 0}, //  3
    {1, 1, 1, 1, 0, 0, 0, 0, 0, 0}, //  4
    {1, 1, 1, 1, 1, 0, 0, 0, 0, 0}, //  5
    {1, 1, 1, 1, 1, 1, 0, 0, 0, 0}, //  6
    {1, 1, 1, 1, 1, 1, 2, 0, 0, 0}, //  7
    {1, 1, 1, 1, 1, 1, 2, 2, 0, 0}, //  8
    {1, 1, 1, 1, 1, 1, 2, 2, 2, 0}, //  9
    {1, 1, 1, 1, 1, 1, 2, 2, 2, 2},  // 10


};

// Animation definition: Center Fill
uint8_t		A_FILLCENTER_SMOOTH = 1;
unsigned int 	A_FILLCENTER_STATE_SIZE = 6;
char	A_FILLCENTER_ARR[7][10] = {
	
	{2, 2, 2, 2, 2, 2, 2, 2, 2, 2}, //  0
	{2, 2, 2, 2, 1, 2, 2, 2, 2, 2}, //  1
	{2, 2, 2, 2, 1, 1, 2, 2, 2, 2}, //  2
	{2, 2, 2, 1, 1, 1, 1, 2, 2, 2}, //  3
	{2, 2, 1, 1, 1, 1, 1, 1, 2, 2}, //  4
	{1, 1, 1, 1, 1, 1, 1, 1, 1, 2}, //  5
	{1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //  6
};

// Animation definition: Center Moving EQ
uint8_t		A_CMOVINGEQ_SMOOTH = 1;
unsigned int 	A_CMOVINGEQ_STATE_SIZE = 10;
char	A_CMOVINGEQR_ARR[11][10] = {
	
	{0,0,0,0,0,0,0,0,0,0},
	{1,0,0,0,0,0,0,0,0,2},
	{0,1,0,0,0,0,0,0,2,0},
	{0,0,1,0,0,0,0,2,0,0},
	{0,0,0,1,0,0,2,0,0,0},
	{0,0,0,0,1,2,0,0,0,0},
	{0,0,0,0,2,1,0,0,0,0},
	{0,0,0,2,0,0,1,0,0,0},
	{0,0,2,0,0,0,0,1,0,0},
	{0,2,0,0,0,0,0,0,1,0},
	{2,0,0,0,0,0,0,0,0,1}
};

// Animation definition: Center Fixed EQ
uint8_t		A_CFIXEDEQ_SMOOTH = 1;
unsigned int 	A_CFIXEDEQ_STATE_SIZE = 6;
char	A_CFIXEDEQ_ARR[7][10] = {
	
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, //  0
	{0, 0, 0, 0, 1, 0, 0, 0, 0, 0}, //  1
	{0, 0, 0, 1, 1, 1, 0, 0, 0, 0}, //  2
	{0, 0, 1, 1, 1, 1, 1, 0, 0, 0}, //  3
	{0, 2, 1, 1, 1, 1, 1, 2, 0, 0}, //  4
	{2, 2, 1, 1, 1, 1, 1, 2, 2, 0}, //  5
	{2, 2, 1, 1, 1, 1, 1, 2, 2, 2}, //  6
};


inline int getOffset(int triggerIndex){

	switch (triggerIndex){

		case 0:
			return 0;
		case 1:
			return nbPixels1;
		case 2:
			return nbPixels1 + nbPixels2;
		case 3:
			return nbPixels1 + nbPixels2 + nbPixels3;
		case 4:
			return nbPixels1 + nbPixels2 + nbPixels3 + nbPixels4;
		case 5:
			return nbPixels1 + nbPixels2 + nbPixels3 + nbPixels4 + nbPixels5;

	}

	return 0;

}

inline int getNbPixels(int triggerIndex){

	switch (triggerIndex){

		case 0:
			return nbPixels1;
		case 1:
			return nbPixels2;
		case 2:
			return nbPixels3;
		case 3:
			return nbPixels4;
		case 4:
			return nbPixels5;
		case 5:
			return nbPixels6;
	}

	return 0;
}

inline unsigned int clipValue(long value, int index){
	
	unsigned int inputSens = 0;
	
	switch(index){
		case 0:
			inputSens = inputSens1;
			break;
			
		case 1:
			inputSens = inputSens2;
			break;
			
		case 2:
			inputSens = inputSens3;
			break;
			
		case 3:
			inputSens = inputSens4;
			break;
			
		case 4:
			inputSens = inputSens5;
			break;
			
		case 5:
			inputSens = inputSens6;
			break;
	}
	
	value = value + inputSens;
	
	/*if (value > 30) {
		value = value - 30;
	}*/
	
	if (value < 100){
		value = 0;
	} 
	
	
	
	if (value > 255){
		value = 255;
	}
	
	unsigned long retValue = value << 8; // Max at this stage is 65535
	
	if (retValue < 0){
		retValue = 0;
	}
	
	if (retValue > 65535){
		retValue = 65535;
	}
	
	return retValue;
}

inline unsigned int getAnimationValue(unsigned int trigValue, unsigned int currentAnimationValue, int i){
	
	unsigned int releaseValue = (101 - release) << 6;
		
	if (currentAnimationValue <= releaseValue){
		currentAnimationValue = 0;
	} else {
		currentAnimationValue -= releaseValue;
	}

	if (currentAnimationValue < 0){
		currentAnimationValue = 0;
	}
	
	return currentAnimationValue;
}

inline void updateSinglePixel(int offset, int r, int g, int b){
	DISPLAY_PIXELS[offset] = r;
	DISPLAY_PIXELS[offset+1] = g;
	DISPLAY_PIXELS[offset+2] = b;
}

void updatePixels(unsigned int animationValue, int triggerIndex){
	
	unsigned int displayValue = 0;

	unsigned int animPosition = animationValue >> SCALE_FACTOR_BITS;
	unsigned int indexCurve = animPosition; // 0-4096 => 0 - 255
	unsigned int value1 = 0;
		
	switch (releaseCurve){
		
		case 0:
			value1 =  ((CURVE_LINEAR_ARR[indexCurve]));
			break;
			
		case 1:
			value1 = ((CURVE_EXP_ARR[indexCurve]));
			break;
			
		case 2:
			value1 = ((CURVE_LOG_ARR[indexCurve]));
			break;
			
		case 3:
			value1 = (CURVE_SINFADE_ARR[indexCurve]);
			break;
	} 
	
	displayValue = value1;
	
	if (animationTrigger == ANIM_TRIG_OFF){
		displayValue = 0;
	}

	if (animationTrigger == ANIM_TRIG_ON){
		displayValue = 255;
	}
	
	int offset = getOffset(triggerIndex) * 3;

	unsigned int  numberOfFrames = 1;
	uint8_t smooth = 0;
	char (*animData)[10]  = NULL;
	
	switch (animation){
	
			case ANIMATION_PULSE:
				numberOfFrames = A_PULSE_STATE_SIZE;
				smooth = A_PULSE_SMOOTH;
				animData = A_PULSE_ARR;
				break;
				
			case ANIMATION_PULSE_S:
				numberOfFrames = A_PULSES_STATE_SIZE;
				smooth = A_PULSES_SMOOTH;
				animData = A_PULSES_ARR;
				break;
				
			case ANIMATION_PULSE_C:
				numberOfFrames = A_PULSEC_STATE_SIZE;
				smooth = A_PULSEC_SMOOTH;
				animData = A_PULSEC_ARR;
				break;
				
			case ANIMATION_FILL:
				numberOfFrames = A_FILLL_STATE_SIZE;
				smooth = A_FILLL_SMOOTH;
				animData = A_FILLL_ARR;
				break;
				
			case ANIMATION_CFILL:
				numberOfFrames = A_FILLCENTER_STATE_SIZE;
				smooth = A_FILLCENTER_SMOOTH;
				animData = A_FILLCENTER_ARR;
				break;
				
			case ANIMATION_EQMOV:
				numberOfFrames = A_MOVINGEQ_STATE_SIZE;
				smooth = A_MOVINGEQ_SMOOTH;
				animData = A_MOVINGEQ_ARR;
				break;
				
			case ANIMATION_EQFIXED:
				numberOfFrames = A_FIXEDEQ_STATE_SIZE;
				smooth = A_FIXEDEQ_SMOOTH;
				animData = A_FIXEDEQ_ARR;
				break;
				
			case ANIMATION_CEQMOV:
				numberOfFrames = A_CMOVINGEQ_STATE_SIZE;
				smooth = A_CMOVINGEQ_SMOOTH;
				animData = A_CMOVINGEQR_ARR;
				break;
				
			case ANIMATION_CEQFIXED:
				numberOfFrames = A_CFIXEDEQ_STATE_SIZE;
				smooth = A_CFIXEDEQ_SMOOTH;
				animData = A_CFIXEDEQ_ARR;
				break;
	}
	
	// Choose the 2 rows of data from animation that match
	unsigned int frameValue8Bits = (SCALE_FACTOR) / numberOfFrames;
	unsigned int position8Bits = (displayValue);
	unsigned int frameIndex = position8Bits / frameValue8Bits; //
	unsigned int frameRatio8bits = (position8Bits % frameValue8Bits) * SCALE_FACTOR / frameValue8Bits;

	char* animFrame1 = &(animData[frameIndex]);//&(animData[frameIndex == 0 ? frameIndex : frameIndex -1]);
	char* animFrame2 = &(animData[frameIndex == numberOfFrames ? frameIndex : frameIndex + 1]);
	
	int colorsR[3] = {0, (int)colorR1, (int)colorR2};
	int colorsG[3] = {0, (int)colorG1, (int)colorG2};
	int colorsB[3] = {0, (int)colorB1, (int)colorB2};
	
	for (int i=0; i<getNbPixels(triggerIndex); i++){
			
		// TODO: Remove float
		float indexPixelComplete = ((float)i * ((9.0f/getNbPixels((triggerIndex)))));
		int indexPixel = floor(indexPixelComplete);
		
		int color1 = animFrame1[indexPixel];
		int color2 = animFrame2[indexPixel];
		
		unsigned int r = 0;
		unsigned int g = 0;
		unsigned int b = 0;
		
		if (smooth == 1){

			r = (((frameRatio8bits * colorsR[color2]) >> SCALE_FACTOR_BITS) + (((SCALE_FACTOR - frameRatio8bits) * colorsR[color1]) >> SCALE_FACTOR_BITS));
			g = (((frameRatio8bits * colorsG[color2]) >> SCALE_FACTOR_BITS) + (((SCALE_FACTOR - frameRatio8bits) * colorsG[color1]) >> SCALE_FACTOR_BITS));
			b = (((frameRatio8bits * colorsB[color2]) >> SCALE_FACTOR_BITS) + (((SCALE_FACTOR - frameRatio8bits) * colorsB[color1]) >> SCALE_FACTOR_BITS));
			
		} else {

			r = colorsR[color2];
			g = colorsG[color2];
			b = colorsB[color2];
		}
		
		updateSinglePixel(offset+i*3, (r * dimmer) >> SCALE_FACTOR_BITS, (g * dimmer) >> SCALE_FACTOR_BITS, (b * dimmer) >> SCALE_FACTOR_BITS);		
	}		
}


int counterEdit = 0;

ISR(LED_REFRESH) {
	
	for (uint8_t strip=0; strip<NB_TRIGGERS; strip++){
		
		uint8_t stripPin = 1 << strip;
		//cli();
		for (uint8_t i=0; i<getNbPixels(strip); i++){
			int pos = getOffset(strip) * 3;
			
			sendPixel(
				DISPLAY_PIXELS[pos+(i*3)], 
				DISPLAY_PIXELS[pos+(i*3)+1], 
				DISPLAY_PIXELS[pos+(i*3)+2], 
				stripPin);
		}
		//sei();
	}
}

short direction[6]  = {0, 0, 0, 0, 0, 0};

int speedCoeficient = (1 << 8);

ISR(ANIM_REFRESH) {
	
	if (editingValue){
		return;
	}
	
	for (int i=0; i<NB_TRIGGERS;i++) {

		switch (animationTrigger) {

			case ANIM_TRIG_ON:
				TRIGGER_STATES[i] = 65535;
				break;

			case ANIM_TRIG_OFF:
				TRIGGER_STATES[i] = 0;
				break;

			case ANIM_TRIG_AUTOALL:
			case ANIM_TRIG_AUTOSINGLE:
				
				if (direction[i] == 0){
					ANIMATION_VALUES[i] += (speedCoeficient * (101-release));

					if (ANIMATION_VALUES[i] >= 65535){
						direction[i] = 1;
						ANIMATION_VALUES[i] = 65535;
					}

					} else {
						
						ANIMATION_VALUES[i] -= (speedCoeficient * (101-release));

					if (ANIMATION_VALUES[i] <= 0){
						direction[i] = 0;
						ANIMATION_VALUES[i] = 0;
					}
				}
			
				break;

			case ANIM_TRIG_RNDSINGLE:
			case ANIM_TRIG_RNDALL:
				ANIMATION_VALUES[i] = rand();
				break;

			case ANIM_TRIG_TRIGGER:
				ANIMATION_VALUES[i] = getAnimationValue(TRIGGER_STATES[i] , ANIMATION_VALUES[i], i); //Get the conversion result
				break;
		}

		
		updatePixels(ANIMATION_VALUES[i], i);
	}
}




