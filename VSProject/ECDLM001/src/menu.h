/*
 * menu.h
 *
 * Created: 2017-07-22 20:52:42
 *  Author: Kevin
 */ 

#include "asf.h"

#ifndef MENU_H_
#define MENU_H_



// Menu level 1

#define MENU_L1_COLORS		103
#define MENU_L1_ACTIVATION	104
#define MENU_L1_SETUP		105
#define MENU_L1_UPRESETS	106
#define MENU_L1_FPRESETS    107
#define MENU_L1_MONITOR		108

#define MENU_TITLE_L1_IDLE			 "LITDLM1 - v3.1  "
#define MENU_TITLE_L1_MODE			 "Mode            " // DMX, Manual
#define MENU_TITLE_L1_ADDRESS		 "DMX Address     "
#define MENU_TITLE_L1_COLORS		 "Colors config..."
#define MENU_TITLE_L1_ANIMATION		 "Anim config...  "
#define MENU_TITLE_L1_SETUP			 "General setup..."
#define MENU_TITLE_L1_USER_PRESET	 "User presets    "
#define MENU_TITLE_L1_FACTORY_PRESET "Factory presets "
#define MENU_TITLE_L1_MONITOR		 "Monitoring...   "

#define MENU_ACTION_BACK	"Back...         "		

// Menu definitions

#define MENU_TITLE_COLOR_R1			 "Red   1         "
#define MENU_TITLE_COLOR_G1			 "Green 1         "
#define MENU_TITLE_COLOR_B1			 "Blue  1         "
#define MENU_TITLE_COLOR_R2			 "Red   2         "
#define MENU_TITLE_COLOR_G2			 "Green 2         "
#define MENU_TITLE_COLOR_B2			 "Blue  2         "
#define MENU_TITLE_DIMMER			 "Dimmer          "

#define MENU_TITLE_RELEASE			 "Release time    " // 0 - 100
#define MENU_TITLE_ANIM				 "Animation       " // Pulse, Fill L, Fill R, Fill C, Fill CB, Point L, Point R, Point C, CycleColors 
#define MENU_TITLE_ANIM_TRIG		 "Anim trigger    " // Trigger, Auto single, Auto all, Random single, Random all, On, Off
#define MENU_TITLE_CURVE			 "Anim curve      " // Linear, Exponential, Logarithmic

#define MENU_TITLE_SENS1			 "Input sens 1    "
#define MENU_TITLE_SENS2			 "Input sens 2    "
#define MENU_TITLE_SENS3			 "Input sens 3    "
#define MENU_TITLE_SENS4			 "Input sens 4    "
#define MENU_TITLE_SENS5			 "Input sens 5    "
#define MENU_TITLE_SENS6			 "Input sens 6    "
#define MENU_TITLE_NBLIGHTS1		 "Nb lights  1    "
#define MENU_TITLE_NBLIGHTS2		 "Nb lights  2    "
#define MENU_TITLE_NBLIGHTS3	 	 "Nb lights  3    "
#define MENU_TITLE_NBLIGHTS4		 "Nb lights  4    "
#define MENU_TITLE_NBLIGHTS5		 "Nb lights  5    "
#define MENU_TITLE_NBLIGHTS6	 	 "Nb lights  6    "
#define MENU_TITLE_BOXLIGHT			 "Enclo. Light    " // On - Off
#define MENU_TITLE_LCDLIGHT			 "LCD Light       " // On - Off

#define MENU_TITLE_SHOW_ACTIVITY	 "Animation 1 to 3"
#define MENU_TITLE_SHOW_ACTIVITY_2	 "Animation 4 to 6"


#define MENU_TITLE_USE_USER_PRESET	"Use user set..."
#define MENU_TITLE_SAVE_USERPRESET	"Save preset... "

#define MENU_ITEM_MODE_MANUAL	"Manual"
#define MENU_ITEM_MODE_DMX		"DMX   "

#define MENU_ITEM_ANIMATION_PULSE		"Pulse          "
#define MENU_ITEM_ANIMATION_FILL		"Fill           "
#define MENU_ITEM_ANIMATION_CFILL		"Center fill    "
#define MENU_ITEM_ANIMATION_EQMOV		"EQ Moving      "
#define MENU_ITEM_ANIMATION_EQFIXED		"EQ Fixed       "
#define MENU_ITEM_ANIMATION_CEQMOV		"Double Point   "
#define MENU_ITEM_ANIMATION_CEQFIXED	"Center EQ Fixed"
#define MENU_ITEM_ANIMATION_PULSE_S		"Constellation  "
#define MENU_ITEM_ANIMATION_PULSE_C		"Pulse center   "

#define	ANIMATION_PULSE		0
#define ANIMATION_FILL		1
#define ANIMATION_CFILL		2
#define ANIMATION_EQMOV		3
#define ANIMATION_EQFIXED	4
#define ANIMATION_CEQMOV	5
#define ANIMATION_CEQFIXED	6
#define ANIMATION_PULSE_S	7
#define ANIMATION_PULSE_C	8

// Trigger, Auto single, Auto all, Random single, Random all, On, Off
#define ANIM_TRIG_TRIGGER		0
#define ANIM_TRIG_AUTOSINGLE	1
#define ANIM_TRIG_AUTOALL		2
#define	ANIM_TRIG_RNDSINGLE		3
#define ANIM_TRIG_RNDALL		4
#define ANIM_TRIG_ON			5
#define ANIM_TRIG_OFF			6

#define MENU_ITEM_ANIM_TRIG_TRIGGER		"Trigger      "
#define MENU_ITEM_ANIM_TRIG_AUTOSINGLE	"Auto single  "
#define MENU_ITEM_ANIM_TRIG_AUTOALL		"Auto all     "
#define	MENU_ITEM_ANIM_TRIG_RNDSINGLE	"Random single"
#define MENU_ITEM_ANIM_TRIG_RNDALL		"Random all   "
#define MENU_ITEM_ANIM_TRIG_ON			"On           "
#define MENU_ITEM_ANIM_TRIG_OFF			"Off          "

// Linear, Exponential, Logarithmic
#define CURVE_LINEAR	1
#define CURVE_EXP		2
#define CURVE_LOG	    3
#define CURVE_SINFADE	4

#define MENU_ITEM_CURVE_LINEAR	"Linear     "
#define MENU_ITEM_CURVE_EXP		"Exponential"
#define MENU_ITEM_CURVE_LOG		"Logaritmic "
#define MENU_ITEM_CURVE_SIN		"Sinus Fade "

#define MODE_MANUAL 0
#define MODE_DMX	1

// Menu states
#define MENU_STATE_IDLE					0
#define MENU_STATE_MODE					1
#define MENU_STATE_ADDRESS				2
#define MENU_STATE_COLOR_R1				3
#define MENU_STATE_COLOR_G1				4
#define MENU_STATE_COLOR_B1				5
#define MENU_STATE_COLOR_R2				6
#define MENU_STATE_COLOR_G2				7
#define MENU_STATE_COLOR_B2				8
#define MENU_STATE_DIMMER				9
#define MENU_STATE_RELEASE				10
#define MENU_STATE_ANIMATION			11
#define MENU_STATE_ANIM_TRIG			12
#define MENU_STATE_CURVE				13
#define MENU_STATE_INPUT_SENS_1			14
#define MENU_STATE_INPUT_SENS_2			15
#define MENU_STATE_INPUT_SENS_3			16
#define MENU_STATE_INPUT_SENS_4			17
#define MENU_STATE_INPUT_SENS_5			18
#define MENU_STATE_INPUT_SENS_6			19
#define MENU_STATE_NBLIGHTS_1			20
#define MENU_STATE_NBLIGHTS_2			21
#define MENU_STATE_NBLIGHTS_3			22
#define MENU_STATE_NBLIGHTS_4			23
#define MENU_STATE_NBLIGHTS_5			24
#define MENU_STATE_NBLIGHTS_6			25
#define MENU_STATE_LCD_LIGHT			26
#define MENU_STATE_BOX_LIGHT			27
#define MENU_STATE_MONITOR				28
#define MENU_STATE_MONITOR_2			29
#define MENU_STATE_SAVE_USER_PRESET		30
#define MENU_STATE_USE_USER_PRESET		31
#define MENU_STATE_USE_FACTORY_PRESET	32
#define MENU_STATE_BACK					33
#define MENU_STATE_FACTORY_PRESET		34
#define MENU_STATE_USER_PRESET			35

#define MENU_SIZE 30

// Memory configuration
#define CONFIG_PAGE					0
#define CONFIG_ADDR					0x00
#define USER_PRESETS_PAGE_OFFSET	1
#define FACTORY_PRESETS_PAGE_OFFSET 31

// Operation parameters
extern uint8_t operationMode;
extern uint8_t dmxAddress;
extern uint8_t animation;
extern uint8_t animationTrigger;
extern uint8_t release;
extern uint8_t releaseCurve;
extern uint8_t colorR1;
extern uint8_t colorG1;
extern uint8_t colorB1;
extern uint8_t colorR2;
extern uint8_t colorG2;
extern uint8_t colorB2;
extern uint8_t dimmer;
extern uint8_t inputSens1;
extern uint8_t inputSens2;
extern uint8_t inputSens3;
extern uint8_t inputSens4;
extern uint8_t inputSens5;
extern uint8_t inputSens6;
extern uint8_t nbPixels1;
extern uint8_t nbPixels2;
extern uint8_t nbPixels3;
extern uint8_t nbPixels4;
extern uint8_t nbPixels5;
extern uint8_t nbPixels6;
extern uint8_t boxLight;
extern uint8_t lcdLight;

extern int menuLevel;
extern int menuState;
extern int menuStates[];
extern uint8_t editingValue;

// EEPROM variables
extern uint8_t write_page[];
extern uint8_t read_page[];
extern uint8_t preset_page[];

extern char* titleLCD;
extern char* valueLCD;

extern unsigned long countTCF0;

 // operation global variables
extern long TRIGGER_STATES[];

void refreshLCDDisplay(void);
void WriteConfigToNVM(void);
void ReadConfigFromNVM(void);
int  capValue(int value, int min, int max);
void updateMenuState(int val);

#endif /* MENU_H_ */