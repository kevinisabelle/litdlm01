/*
 * menu.c
 *
 * Created: 2017-07-22 20:54:13
 *  Author: Kevin
 */ 
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include "i2c.h"
 #include "i2c_lcd.h"
 #include "menu.h"
 #include "appbl.h"
 
 struct Preset {
	 uint8_t animation;
	 uint8_t animationTrigger;
	 uint8_t release;
	 uint8_t releaseCurve;
	 uint8_t colorR1;
	 uint8_t colorG1;
	 uint8_t colorB1;
	 uint8_t colorR2;
	 uint8_t colorG2;
	 uint8_t colorB2;
	 uint8_t dimmer;
 };

 int menuLastState = -1;

 // Menu state
 unsigned long countTCF0 = 0;
 int menuLevel = 0;
 int menuState = 0;
 int menuStates[] = {0, 0, 0, 0};
 uint8_t editingValue = 0;

 // Global variables
 char* titleLCD = "                ";
 char* valueLCD = "123             ";

 // Operation variables
uint8_t operationMode = MODE_MANUAL;
uint8_t dmxAddress = 1;
uint8_t animation = ANIMATION_FILL;
uint8_t animationTrigger = ANIM_TRIG_TRIGGER;
uint8_t release = 50;
uint8_t releaseCurve = 0;
uint8_t colorR1 = 255;
uint8_t colorG1 = 255;
uint8_t colorB1 = 255;
uint8_t colorR2 = 255;
uint8_t colorG2 = 255;
uint8_t colorB2 = 255;
uint8_t dimmer = 255;
uint8_t inputSens1 = 50;
uint8_t inputSens2 = 50;
uint8_t inputSens3 = 50;
uint8_t inputSens4 = 50;
uint8_t inputSens5 = 50;
uint8_t inputSens6 = 50;
uint8_t nbPixels1 = 30;
uint8_t nbPixels2 = 30;
uint8_t nbPixels3 = 30;
uint8_t nbPixels4 = 30;
uint8_t nbPixels5 = 30;
uint8_t nbPixels6 = 30;
uint8_t boxLight = 1;
uint8_t lcdLight = 1;

struct Preset FactoryPresets[20] = {
	{ANIMATION_PULSE,	ANIM_TRIG_TRIGGER,	5, CURVE_LINEAR,	0,128,255,		0,0,0,		255}, // 1
	{ANIMATION_PULSE,	ANIM_TRIG_TRIGGER,	80, CURVE_LINEAR,	0,0,255,		10,0,0,		255}, // 2
	{ANIMATION_PULSE,	ANIM_TRIG_TRIGGER,	90, CURVE_SINFADE,	0,255,0,		0,0,20,		255}, // 3
	{ANIMATION_PULSE,	ANIM_TRIG_TRIGGER,	0,	CURVE_LINEAR,	255,255,255,	0,0,0,		255}, // 4
	{ANIMATION_FILL,	ANIM_TRIG_TRIGGER,	70,	CURVE_EXP,		0,255,0,		0,0,0,		255}, // 5
	{ANIMATION_FILL,	ANIM_TRIG_TRIGGER,	5,	CURVE_LINEAR,	255,255,0,		0,0,0,		255}, // 6
	{ANIMATION_CFILL,	ANIM_TRIG_TRIGGER,	10,	CURVE_LINEAR,	0,0,255,		255,0,0,	255}, // 7
	{ANIMATION_CFILL,	ANIM_TRIG_TRIGGER,	70,	CURVE_LINEAR,	0,255,255,		0,0,0,		255}, // 8
	{ANIMATION_EQFIXED,	ANIM_TRIG_TRIGGER,	95, CURVE_SINFADE,	255,0,0,		0,255,0,	255}, // 9
	{ANIMATION_EQFIXED,	ANIM_TRIG_TRIGGER,	20,	CURVE_LINEAR,	255,255,255,	0,0,255,	255}, // 10
	{ANIMATION_EQFIXED,	ANIM_TRIG_TRIGGER,	5,	CURVE_LINEAR,	255,0,0,		0,255,0,	255}, // 11
	{ANIMATION_CEQFIXED,ANIM_TRIG_TRIGGER,	60,	CURVE_LINEAR,	255,255,0,		0,0,255,	255}, // 12
	{ANIMATION_CEQFIXED,ANIM_TRIG_TRIGGER,	30,	CURVE_LINEAR,	255,128,0,		255,0,0,	255}, // 13
	{ANIMATION_EQMOV,	ANIM_TRIG_TRIGGER,	70,	CURVE_LINEAR,	255,255,255,	0,0,255,	255}, // 14
	{ANIMATION_EQMOV,	ANIM_TRIG_TRIGGER,	60,	CURVE_LINEAR,	255,0,0,		0,255,0,	255}, // 15
	{ANIMATION_PULSE,	ANIM_TRIG_AUTOALL,	100,CURVE_LINEAR,	255,0,0,		0,0,255,	255}, // 16
	{ANIMATION_FILL,	ANIM_TRIG_AUTOALL,	80,	CURVE_LINEAR,	0,0,255,		0,0,0,		255}, // 17
	{ANIMATION_EQMOV,	ANIM_TRIG_AUTOALL,	85,	CURVE_LINEAR,	255,0,0,		0,255,0,	255}, // 18
	{ANIMATION_EQMOV,	ANIM_TRIG_AUTOALL,	100,CURVE_SINFADE,	0,0,255,		0,255,0,	255}, // 19
	{ANIMATION_PULSE_S,	ANIM_TRIG_AUTOALL,	100,CURVE_LINEAR,	255,0,255,		0,255,255,	255}, // 20
	
};


// Menu variables
const int MENU_L1[] = {
	MENU_STATE_IDLE,
	MENU_STATE_MODE,
	MENU_STATE_ADDRESS,
	MENU_L1_COLORS,
	MENU_L1_ACTIVATION,
	MENU_L1_SETUP,
	MENU_L1_FPRESETS,
	MENU_L1_UPRESETS

};

const int MENU_L2_COLORS[] = {
	MENU_STATE_COLOR_R1,
	MENU_STATE_COLOR_G1,
	MENU_STATE_COLOR_B1,
	MENU_STATE_COLOR_R2,
	MENU_STATE_COLOR_G2,
	MENU_STATE_COLOR_B2,
	MENU_STATE_DIMMER,
	MENU_STATE_BACK
};

const int MENU_L2_ACTIVATION[] = {
	MENU_STATE_RELEASE,
	MENU_STATE_CURVE, 
	MENU_STATE_ANIM_TRIG,
	MENU_STATE_ANIMATION,
	MENU_STATE_BACK
};

const int MENU_L2_SETUP[] = {
	MENU_STATE_INPUT_SENS_1,
	MENU_STATE_INPUT_SENS_2,
	MENU_STATE_INPUT_SENS_3,
	MENU_STATE_INPUT_SENS_4,
	MENU_STATE_INPUT_SENS_5,
	MENU_STATE_INPUT_SENS_6,
	MENU_STATE_NBLIGHTS_1,
	MENU_STATE_NBLIGHTS_2,
	MENU_STATE_NBLIGHTS_3,
	MENU_STATE_NBLIGHTS_4,
	MENU_STATE_NBLIGHTS_5,
	MENU_STATE_NBLIGHTS_6,
	MENU_STATE_BOX_LIGHT,
	MENU_STATE_LCD_LIGHT,
	MENU_STATE_BACK
};

const int MENU_L3_FACTORYPRESETS[] = {
	MENU_STATE_BACK,
	201, 202, 203, 204, 205, 206, 207, 208, 209, 210,
	211, 212, 213, 214, 215, 216, 217, 218, 219, 220
};

const int MENU_L3_USERPRESETS[] = {
	MENU_STATE_USE_USER_PRESET,
	MENU_STATE_SAVE_USER_PRESET,
	MENU_STATE_BACK
};

const int MENU_L4_USERPRESETS[] = {
	MENU_STATE_BACK,
	301, 302, 303, 304,  305,  306,  307,  308,  309, 310,
	311, 312, 313, 314, 315, 316, 317, 318, 319, 320
};
 
char * const animationNames[] PROGMEM = {
	 
	 MENU_ITEM_ANIMATION_PULSE,
	 MENU_ITEM_ANIMATION_FILL,
	 MENU_ITEM_ANIMATION_CFILL,
	 MENU_ITEM_ANIMATION_EQMOV,
	 MENU_ITEM_ANIMATION_EQFIXED,
	 MENU_ITEM_ANIMATION_CEQMOV,
	 MENU_ITEM_ANIMATION_CEQFIXED,
	 MENU_ITEM_ANIMATION_PULSE_S,
	 MENU_ITEM_ANIMATION_PULSE_C	 
};
	  
char* const animationTriggerNames[7] PROGMEM = {

	 MENU_ITEM_ANIM_TRIG_TRIGGER,
	 MENU_ITEM_ANIM_TRIG_AUTOSINGLE,
	 MENU_ITEM_ANIM_TRIG_AUTOALL,
	 MENU_ITEM_ANIM_TRIG_RNDSINGLE,
	 MENU_ITEM_ANIM_TRIG_RNDALL,
	 MENU_ITEM_ANIM_TRIG_ON,
	 MENU_ITEM_ANIM_TRIG_OFF
	
};

char* const curveNames[4] PROGMEM = {
	
	MENU_ITEM_CURVE_LINEAR,
	MENU_ITEM_CURVE_EXP,
	MENU_ITEM_CURVE_LOG,
	MENU_ITEM_CURVE_SIN
	
};
 
char* const modeNames[2] PROGMEM = { 
	"Manual mode", 
	"DMX mode   " 
};
 
// Global variables
long TRIGGER_STATES[NB_TRIGGERS] = {0};
	 
// EEPROM Variables
uint8_t write_page[EEPROM_PAGE_SIZE];
uint8_t read_page[EEPROM_PAGE_SIZE];
uint8_t preset_page[16];

char emptyString[16] = {0};
char ledCount = 0;

ISR(LCD_REFRESH)
{
	if (!editingValue) {
				
		/*if (boxLight == 1){
			BOX_LED_PORT.OUTSET = BOX_LED2_PIN | BOX_LED1_PIN;
			} else {
			BOX_LED_PORT.OUTCLR = BOX_LED2_PIN | BOX_LED1_PIN;
		}*/
	}
	
	 if (menuLastState == menuState && !editingValue && menuState != MENU_STATE_MONITOR && menuState != MENU_STATE_MONITOR_2){
		 return;
	 }
	 
	 menuLastState = menuState;
	 
	 if (!editingValue && menuState != MENU_STATE_MONITOR && menuState != MENU_STATE_MONITOR_2){
		 i2c_lcd_clear();
	 }
	 
	 if (editingValue){
		 ledCount++;
		 if (ledCount == 4) { ledCount = 0;}
	 
		if (ledCount == 0){
			BOX_LED_PORT.OUTTGL |= BOX_LED1_PIN;
		}
		
		if (ledCount == 2) {
			BOX_LED_PORT.OUTTGL |= BOX_LED2_PIN;
		}
	 } 
	 
	 switch (menuState){

		 case MENU_STATE_IDLE:
			 strcpy(titleLCD, MENU_TITLE_L1_IDLE);
			 char dmxStr[16] = {0};
			 snprintf(dmxStr, 16, "DMX Ch: %03d", dmxAddress);
			 
			 strcpy(valueLCD,  operationMode == MODE_DMX ? dmxStr : pgm_read_ptr(&(modeNames[operationMode])) );
			 break;

		 case MENU_STATE_MODE:
			 strcpy(titleLCD, MENU_TITLE_L1_MODE);
			 strcpy(valueLCD, pgm_read_ptr(&(modeNames[operationMode])));
			 break;

		 case MENU_STATE_ADDRESS:
			 strcpy(titleLCD, MENU_TITLE_L1_ADDRESS);
			 snprintf(valueLCD, 16, "%03d", dmxAddress);
			 break;

		 case MENU_STATE_COLOR_R1:
			 strcpy(titleLCD, MENU_TITLE_COLOR_R1);
			 snprintf(valueLCD, 16, "%03d", colorR1);
			 break;
		 
		 case MENU_STATE_COLOR_G1:
			 strcpy(titleLCD, MENU_TITLE_COLOR_G1);
			 snprintf(valueLCD, 16, "%03d", colorG1);
			 break;
		 
		 case MENU_STATE_COLOR_B1:
			 strcpy(titleLCD, MENU_TITLE_COLOR_B1);
			 snprintf(valueLCD, 16, "%03d", colorB1);
			 break;
			 
		 case MENU_STATE_COLOR_R2:
			 strcpy(titleLCD, MENU_TITLE_COLOR_R2);
			 snprintf(valueLCD, 16, "%03d", colorR2);
			 break;
			 
		 case MENU_STATE_COLOR_G2:
			 strcpy(titleLCD, MENU_TITLE_COLOR_G2);
			 snprintf(valueLCD, 16, "%03d", colorG2);
			 break;
			 
		 case MENU_STATE_COLOR_B2:
			 strcpy(titleLCD, MENU_TITLE_COLOR_B2);
			 snprintf(valueLCD, 16, "%03d", colorB2);
			 break;

		 case MENU_STATE_RELEASE:
			 strcpy(titleLCD, MENU_TITLE_RELEASE);
			 snprintf(valueLCD, 16, "%03d", release);
			 break;

		 case MENU_STATE_ANIMATION:
			 animation = capValue((animation), 0, 8);	
			 
			 strcpy(titleLCD, MENU_TITLE_ANIM);
			 strcpy(valueLCD,  pgm_read_ptr(&(animationNames[animation])));
			 break;
			 
		case MENU_STATE_ANIM_TRIG:
			 strcpy(titleLCD, MENU_TITLE_ANIM_TRIG);
			 strcpy(valueLCD, pgm_read_ptr(&(animationTriggerNames[animationTrigger])));
			 break;
			 
		case MENU_STATE_CURVE:
			 strcpy(titleLCD, MENU_TITLE_CURVE);
			 strcpy(valueLCD, pgm_read_ptr(&(curveNames[releaseCurve])));
			 break;

		 case MENU_STATE_DIMMER:
			 strcpy(titleLCD,MENU_TITLE_DIMMER);
			 snprintf(valueLCD, 16, "%03d", dimmer);
			 break;

		 case MENU_STATE_INPUT_SENS_1:
			 strcpy(titleLCD,MENU_TITLE_SENS1);
			 snprintf(valueLCD, 16, "%03d", inputSens1);
			 break;
			 
		 case MENU_STATE_INPUT_SENS_2:
			 strcpy(titleLCD,MENU_TITLE_SENS2);
			 snprintf(valueLCD, 16, "%03d", inputSens2);
			 break;
			 
		 case MENU_STATE_INPUT_SENS_3:
			 strcpy(titleLCD,MENU_TITLE_SENS3);
			 snprintf(valueLCD, 16, "%03d", inputSens3);
			 break;
			 
		 case MENU_STATE_INPUT_SENS_4:
			 strcpy(titleLCD,MENU_TITLE_SENS4);
			 snprintf(valueLCD, 16, "%03d", inputSens4);
			 break;
			 
		 case MENU_STATE_INPUT_SENS_5:
			 strcpy(titleLCD,MENU_TITLE_SENS5);
			 snprintf(valueLCD, 16, "%03d", inputSens5);
			 break;
			 
		 case MENU_STATE_INPUT_SENS_6:
			 strcpy(titleLCD,MENU_TITLE_SENS6);
			 snprintf(valueLCD, 16, "%03d", inputSens6);
			 break;

		case MENU_STATE_NBLIGHTS_1:
			 strcpy(titleLCD,MENU_TITLE_NBLIGHTS1);
			 snprintf(valueLCD, 16, "%03d", nbPixels1);
			 break;

		case MENU_STATE_NBLIGHTS_2:
			strcpy(titleLCD,MENU_TITLE_NBLIGHTS2);
			snprintf(valueLCD, 16, "%03d", nbPixels2);
			break;

		case MENU_STATE_NBLIGHTS_3:
			strcpy(titleLCD,MENU_TITLE_NBLIGHTS3);
			snprintf(valueLCD, 16, "%03d", nbPixels3);
			break;

		case MENU_STATE_NBLIGHTS_4:
			strcpy(titleLCD,MENU_TITLE_NBLIGHTS4);
			snprintf(valueLCD, 16, "%03d", nbPixels4);
			break;

		case MENU_STATE_NBLIGHTS_5:
			strcpy(titleLCD,MENU_TITLE_NBLIGHTS5);
			snprintf(valueLCD, 16, "%03d", nbPixels5);
			break;

		case MENU_STATE_NBLIGHTS_6:
			strcpy(titleLCD,MENU_TITLE_NBLIGHTS6);
			snprintf(valueLCD, 16, "%03d", nbPixels6);
			break;
			 
		 case MENU_STATE_BOX_LIGHT:
			 strcpy(titleLCD,MENU_TITLE_BOXLIGHT);
			 snprintf(valueLCD, 16, "%01d", boxLight);
			 break;
			 
	     case MENU_STATE_LCD_LIGHT:
			 strcpy(titleLCD,MENU_TITLE_LCDLIGHT);
			 snprintf(valueLCD, 16, "%01d", lcdLight);
			 break;

		 case MENU_STATE_MONITOR:
			 strcpy(titleLCD,MENU_TITLE_SHOW_ACTIVITY);
			 snprintf(valueLCD, 16, "%03d  %03d  %03d", TRIGGER_STATES[0], TRIGGER_STATES[1], TRIGGER_STATES[2]);
			 break;
			 
		case MENU_STATE_MONITOR_2:
			 strcpy(titleLCD,MENU_TITLE_SHOW_ACTIVITY_2);
			 snprintf(valueLCD, 16, "%03d  %03d  %03d", TRIGGER_STATES[3], TRIGGER_STATES[4], TRIGGER_STATES[5]);
			 break;

		case MENU_L1_COLORS:
			strcpy(titleLCD,MENU_TITLE_L1_COLORS);
			strcpy(valueLCD,emptyString);
			 break;

		case MENU_L1_ACTIVATION:
			strcpy(titleLCD,MENU_TITLE_L1_ANIMATION);
			strcpy(valueLCD,emptyString);
			 break;

		case MENU_L1_SETUP:
			strcpy(titleLCD,MENU_TITLE_L1_SETUP);
			strcpy(valueLCD,emptyString);
			 break;

		case MENU_L1_UPRESETS:
			strcpy(titleLCD,MENU_TITLE_L1_USER_PRESET);
			strcpy(valueLCD,emptyString);
			 break;
			 
		case MENU_L1_FPRESETS:
			 strcpy(titleLCD,MENU_TITLE_L1_FACTORY_PRESET);
			 strcpy(valueLCD,emptyString);
			 break;

		case MENU_STATE_BACK:
			strcpy(titleLCD,MENU_ACTION_BACK);
			strcpy(valueLCD,emptyString);
			break;

		case MENU_STATE_FACTORY_PRESET:
			strcpy(titleLCD,MENU_TITLE_L1_FACTORY_PRESET);
			strcpy(valueLCD,emptyString);
			break;

		case MENU_STATE_USER_PRESET:
			strcpy(titleLCD,MENU_TITLE_L1_USER_PRESET);
			strcpy(valueLCD,emptyString);
			break;

		case MENU_STATE_USE_USER_PRESET:
			strcpy(titleLCD,MENU_TITLE_USE_USER_PRESET);
			strcpy(valueLCD,emptyString);
			break;

		case MENU_STATE_SAVE_USER_PRESET:
			strcpy(titleLCD,MENU_TITLE_SAVE_USERPRESET);
			strcpy(valueLCD,emptyString);
			break;

		case 201:
		case 202:
		case 203:
		case 204:
		case 205:
		case 206:
		case 207:
		case 208:
		case 209:
		case 210:
		case 211:
		case 212:
		case 213:
		case 214:
		case 215:
		case 216:
		case 217:
		case 218:
		case 219:
		case 220:

			strcpy(titleLCD,"Select f. preset");
			snprintf(valueLCD, 16, "Preset #%03d", menuState-200);
			break;

		case 301:
		case 302:
		case 303:
		case 304:
		case 305:
		case 306:
		case 307:
		case 308:
		case 309:
		case 310:
		case 311:
		case 312:
		case 313:
		case 314:
		case 315:
		case 316:
		case 317:
		case 318:
		case 319:
		case 320:

			strcpy(titleLCD,"Select u. preset");
			snprintf(valueLCD, 16, "Preset #%03d", menuState-300);
			break;
	 }

	 i2c_lcd_set_cursor(0,0);
	 i2c_lcd_write_text(titleLCD);

	 i2c_lcd_set_cursor(0,1);
	 i2c_lcd_write_text(valueLCD);
 }

void WriteConfigToNVM(void){
	   
	   write_page[MENU_STATE_MODE] = operationMode;
	   write_page[MENU_STATE_ADDRESS] = dmxAddress;
	   write_page[MENU_STATE_COLOR_R1] = colorR1;
	   write_page[MENU_STATE_COLOR_G1] = colorG1;
	   write_page[MENU_STATE_COLOR_B1] = colorB1;
	   write_page[MENU_STATE_COLOR_R2] = colorR2;
	   write_page[MENU_STATE_COLOR_G2] = colorG2;
	   write_page[MENU_STATE_COLOR_B2] = colorB2;
	   write_page[MENU_STATE_RELEASE] = release;
	   write_page[MENU_STATE_CURVE] = releaseCurve;
	   write_page[MENU_STATE_DIMMER] = dimmer;
	   write_page[MENU_STATE_INPUT_SENS_1] = inputSens1;
	   write_page[MENU_STATE_INPUT_SENS_2] = inputSens2;
	   write_page[MENU_STATE_INPUT_SENS_3] = inputSens3;
	   write_page[MENU_STATE_INPUT_SENS_4] = inputSens4;
	   write_page[MENU_STATE_INPUT_SENS_5] = inputSens5;
	   write_page[MENU_STATE_INPUT_SENS_6] = inputSens6;
	   write_page[MENU_STATE_NBLIGHTS_1] = nbPixels1;
	   write_page[MENU_STATE_NBLIGHTS_2] = nbPixels2;
	   write_page[MENU_STATE_NBLIGHTS_3] = nbPixels3;
	   write_page[MENU_STATE_NBLIGHTS_4] = nbPixels4;
	   write_page[MENU_STATE_NBLIGHTS_5] = nbPixels5;
	   write_page[MENU_STATE_NBLIGHTS_6] = nbPixels6;
	   write_page[MENU_STATE_LCD_LIGHT] = lcdLight;
	   write_page[MENU_STATE_BOX_LIGHT] = boxLight;
	   write_page[MENU_STATE_ANIMATION] = animation;
	   write_page[MENU_STATE_ANIM_TRIG] = animationTrigger;
	   
	   nvm_eeprom_load_page_to_buffer(write_page);
	   nvm_eeprom_atomic_write_page(CONFIG_PAGE);
	   
   }

   void ReadConfigFromNVM(void) {

	   nvm_eeprom_read_buffer(CONFIG_ADDR,	read_page, EEPROM_PAGE_SIZE);
	   
	   if (read_page[MENU_STATE_MODE] != 255){
		   operationMode = read_page[MENU_STATE_MODE];
	   }
	   
	   if (read_page[MENU_STATE_ADDRESS] != 255){
		   dmxAddress = read_page[MENU_STATE_ADDRESS];
	   }
	   
	   if (read_page[MENU_STATE_COLOR_R1] != 255){
		   colorR1 = read_page[MENU_STATE_COLOR_R1];
	   }
	   
	   if (read_page[MENU_STATE_COLOR_G1] != 255){
		   colorG1 = read_page[MENU_STATE_COLOR_G1];
	   }
	   
	   if (read_page[MENU_STATE_COLOR_B1] != 255){
		   colorB1 = read_page[MENU_STATE_COLOR_B1];
	   }
	   
	   if (read_page[MENU_STATE_COLOR_R2] != 255){
		   colorR2 = read_page[MENU_STATE_COLOR_R2];
	   }
	   
	   if (read_page[MENU_STATE_COLOR_G2] != 255){
		   colorG2 = read_page[MENU_STATE_COLOR_G2];
	   }
	   
	   if (read_page[MENU_STATE_COLOR_B2] != 255){
		   colorB2 = read_page[MENU_STATE_COLOR_B2];
	   }
	   
	   if (read_page[MENU_STATE_RELEASE] != 255){
		   release = read_page[MENU_STATE_RELEASE];
	   }
	   
	   if (read_page[MENU_STATE_ANIM_TRIG] != 255){
		   animationTrigger = read_page[MENU_STATE_ANIM_TRIG];
	   }
	   
	   if (read_page[MENU_STATE_ANIMATION] != 255){
		   animation = read_page[MENU_STATE_ANIMATION];
	   }
	   
	   if (read_page[MENU_STATE_CURVE] != 255){
		   releaseCurve = read_page[MENU_STATE_CURVE];
	   }

	   if (read_page[MENU_STATE_DIMMER] != 255){
		   dimmer = read_page[MENU_STATE_DIMMER];
	   }
	   
	   if (read_page[MENU_STATE_INPUT_SENS_1] != 255){
		   inputSens1 = read_page[MENU_STATE_INPUT_SENS_1];
	   }
	   
	   if (read_page[MENU_STATE_INPUT_SENS_2] != 255){
		   inputSens2 = read_page[MENU_STATE_INPUT_SENS_2];
	   }
	   
	   if (read_page[MENU_STATE_INPUT_SENS_3] != 255){
		   inputSens3 = read_page[MENU_STATE_INPUT_SENS_3];
	   }
	   
	   if (read_page[MENU_STATE_INPUT_SENS_4] != 255){
		   inputSens4 = read_page[MENU_STATE_INPUT_SENS_4];
	   }
	   
	   if (read_page[MENU_STATE_INPUT_SENS_5] != 255){
		   inputSens5 = read_page[MENU_STATE_INPUT_SENS_5];
	   }
	   
	   if (read_page[MENU_STATE_INPUT_SENS_1] != 255){
		   inputSens6 = read_page[MENU_STATE_INPUT_SENS_6];
	   }

	   if (read_page[MENU_STATE_NBLIGHTS_1] != 255){
		   nbPixels1 = read_page[MENU_STATE_NBLIGHTS_1];
	   }

	   if (read_page[MENU_STATE_NBLIGHTS_2] != 255){
		   nbPixels2 = read_page[MENU_STATE_NBLIGHTS_2];
	   }

	   if (read_page[MENU_STATE_NBLIGHTS_3] != 255){
		   nbPixels3 = read_page[MENU_STATE_NBLIGHTS_3];
	   }

	   if (read_page[MENU_STATE_NBLIGHTS_4] != 255){
		   nbPixels4 = read_page[MENU_STATE_NBLIGHTS_4];
	   }

	   if (read_page[MENU_STATE_NBLIGHTS_5] != 255){
		   nbPixels5 = read_page[MENU_STATE_NBLIGHTS_5];
	   }

	   if (read_page[MENU_STATE_NBLIGHTS_6] != 255){
		   nbPixels6 = read_page[MENU_STATE_NBLIGHTS_6];
	   }
	   
	   if (read_page[MENU_STATE_LCD_LIGHT] != 255){
		   lcdLight = read_page[MENU_STATE_LCD_LIGHT];
	   }
	   
	   if (read_page[MENU_STATE_BOX_LIGHT] != 255){
		   boxLight = read_page[MENU_STATE_BOX_LIGHT];
	   }
	   
	   if (lcdLight == 1){
		   i2c_lcd_led_on();
		   } else {
		   i2c_lcd_led_off();
	   }
	   
	   if (boxLight == 1){
		   BOX_LED_PORT.OUTSET = BOX_LED2_PIN;
		   } else {
		   BOX_LED_PORT.OUTCLR = BOX_LED2_PIN;
	   }
	   
   }
   
 int capValue(int value, int min, int max){
	 
	 if (value < min) {return min;}
	 if (value > max) {return max;}
	 
	 return value;
 }

 void updateMenuState(int val){

	if (editingValue){
		return;
	}

	menuStates[menuLevel] += val;

	switch (menuLevel) {
		
		case 0:
			
			menuStates[menuLevel] = capValue(menuStates[menuLevel], 0, (sizeof(MENU_L1) / sizeof(int))-1);
			menuState = MENU_L1[menuStates[menuLevel]];
			break;

		case 1:

			switch (menuStates[menuLevel-1]) {

				case 3:
					
					menuStates[menuLevel] = capValue(menuStates[menuLevel], 0, (sizeof(MENU_L2_COLORS) / sizeof(int))-1);
					menuState = MENU_L2_COLORS[menuStates[menuLevel]];
					break;

				case 4:

					menuStates[menuLevel] = capValue(menuStates[menuLevel], 0, (sizeof(MENU_L2_ACTIVATION) / sizeof(int))-1);
					menuState = MENU_L2_ACTIVATION[menuStates[menuLevel]];
					break;

				case 5:

					menuStates[menuLevel] = capValue(menuStates[menuLevel], 0, (sizeof(MENU_L2_SETUP) / sizeof(int))-1);
					menuState = MENU_L2_SETUP[menuStates[menuLevel]];
					break;

				case 6:
				
					menuStates[menuLevel] = capValue(menuStates[menuLevel], 0, (sizeof(MENU_L3_FACTORYPRESETS) / sizeof(int))-1);
					menuState = MENU_L3_FACTORYPRESETS[menuStates[menuLevel]];
					break;

				case 7:

					menuStates[menuLevel] = capValue(menuStates[menuLevel], 0, (sizeof(MENU_L3_USERPRESETS) / sizeof(int))-1);
					menuState = MENU_L3_USERPRESETS[menuStates[menuLevel]];
					break;
			}
			break;

		case 2: 

			switch (menuStates[menuLevel-1]) {

				case 0:
				
					menuStates[menuLevel] = capValue(menuStates[menuLevel], 0, (sizeof(MENU_L4_USERPRESETS) / sizeof(int))-1);
					menuState = MENU_L4_USERPRESETS[menuStates[menuLevel]];
					break;

				case 1:
				
					menuStates[menuLevel] = capValue(menuStates[menuLevel], 0, (sizeof(MENU_L4_USERPRESETS) / sizeof(int))-1);
					menuState = MENU_L4_USERPRESETS[menuStates[menuLevel]];
					break;

				
			}
			break;			
	}
 }

 int lastCounter = 0;
 int lastIndex = 0;

ISR(ENCODER_TURNED)
{
	int val = TCE0.CNT > 1 ? -1 : 1;

	if ((countTCF0 - lastCounter) < 2){
		return;
	}

	lastCounter = countTCF0;

	updateMenuState(val);
	
	if (val != 0 && editingValue){

		switch (menuState){

			case MENU_STATE_IDLE:
				
				break;

			case MENU_STATE_MODE:
				operationMode = capValue(operationMode+val, 0, 1);

				break;
				
			case MENU_STATE_BOX_LIGHT:
				boxLight = capValue(boxLight+val, 0, 1);

				if (boxLight == 1){
					BOX_LED_PORT.OUTSET = BOX_LED2_PIN;
					} else {
					BOX_LED_PORT.OUTCLR = BOX_LED2_PIN;
				}

				break;
			
			case MENU_STATE_LCD_LIGHT:

				lcdLight = capValue(lcdLight+val, 0, 1);

				if (lcdLight == 1){
					i2c_lcd_led_on();
					} else {
					i2c_lcd_led_off();
				}
			
				break;

			case MENU_STATE_ADDRESS:
				dmxAddress = capValue(dmxAddress+val, 0, 255);
				break;

			case MENU_STATE_COLOR_R1:
				colorR1 = capValue((colorR1 + val*32), 0, 255);
				break;
			
			case MENU_STATE_COLOR_G1:
				colorG1 = capValue((colorG1 + val*32), 0, 255);
				break;
			
			case MENU_STATE_COLOR_B1:
				colorB1 = capValue((colorB1 + val*32), 0, 255);
				break;
			
			case MENU_STATE_COLOR_R2:
				colorR2 = capValue((colorR2 + val*32), 0, 255);
				break;
			
			case MENU_STATE_COLOR_G2:
				colorG2 = capValue((colorG2 + val*32), 0, 255);
				break;
			
			case MENU_STATE_COLOR_B2:
				colorB2 = capValue((colorB2 + val*32), 0, 255);
				break;

			case MENU_STATE_RELEASE:
				release = capValue((release + val*5), 0, 100);
				break;

			case MENU_STATE_DIMMER:
				dimmer = capValue((dimmer + val*5), 0, 255);
				break;

			case MENU_STATE_INPUT_SENS_1:
				inputSens1 = capValue((inputSens1 + val), 0, 255);
				break;
			
			case MENU_STATE_INPUT_SENS_2:
				inputSens2 = capValue((inputSens2 + val), 0, 255);
				break;
			
			case MENU_STATE_INPUT_SENS_3:
				inputSens3 = capValue((inputSens3 + val), 0, 255);
				break;
			
			case MENU_STATE_INPUT_SENS_4:
				inputSens4 = capValue((inputSens4 + val), 0, 255);
				break;
				
			case MENU_STATE_INPUT_SENS_5:
				inputSens5 = capValue((inputSens5 + val), 0, 255);
				break;
			
			case MENU_STATE_INPUT_SENS_6:
				inputSens6 = capValue((inputSens6 + val), 0, 255);
				break;

			case MENU_STATE_NBLIGHTS_1:
				nbPixels1 = capValue((nbPixels1 + val), 10, 30);
				break;

			case MENU_STATE_NBLIGHTS_2:
				nbPixels2 = capValue((nbPixels2 + val), 10, 30);
				break;

			case MENU_STATE_NBLIGHTS_3:
				nbPixels3 = capValue((nbPixels3 + val), 10, 30);
				break;

			case MENU_STATE_NBLIGHTS_4:
				nbPixels4 = capValue((nbPixels4 + val), 10, 30);
				break;

			case MENU_STATE_NBLIGHTS_5:
				nbPixels5 = capValue((nbPixels5 + val), 10, 30);
				break;

			case MENU_STATE_NBLIGHTS_6:
				nbPixels6 = capValue((nbPixels6 + val), 10, 30);
				break;

			case MENU_STATE_ANIMATION:
				animation = capValue((animation+val), 0, 8);
				break;
			
			case MENU_STATE_ANIM_TRIG:
				animationTrigger = capValue((animationTrigger+val), 0, 6);
				break;
			
			case MENU_STATE_CURVE:
				releaseCurve = capValue((releaseCurve+val), 0, 3);
				break;

			case MENU_STATE_MONITOR:
			
				break;
		}
	}
}

 inline void savePreset(int presetNb) {

	preset_page[MENU_STATE_COLOR_R1] = colorR1;
	preset_page[MENU_STATE_COLOR_G1] = colorG1;
	preset_page[MENU_STATE_COLOR_B1] = colorB1;
	preset_page[MENU_STATE_COLOR_R2] = colorR2;
	preset_page[MENU_STATE_COLOR_G2] = colorG2;
	preset_page[MENU_STATE_COLOR_B2] = colorB2;
	preset_page[MENU_STATE_RELEASE] = release;
	preset_page[MENU_STATE_CURVE] = releaseCurve;
	preset_page[MENU_STATE_DIMMER] = dimmer;
	preset_page[MENU_STATE_ANIMATION] = animation;
	preset_page[MENU_STATE_ANIM_TRIG] = animationTrigger;
	
	nvm_eeprom_load_page_to_buffer(preset_page);
	nvm_eeprom_atomic_write_page((USER_PRESETS_PAGE_OFFSET + presetNb));

	i2c_lcd_set_cursor(0,1);
	i2c_lcd_write_text("Saved preset!");
 }
 
 void loadPresetFactory(struct Preset preset){
	 
		 colorR1 = preset.colorR1;
		 colorG1 = preset.colorG1;
		 colorB1 = preset.colorB1;
		 colorR2 = preset.colorR2;
		 colorG2 = preset.colorG2;
		 colorB2 = preset.colorB2;
		 release = preset.release;
		 animationTrigger = preset.animationTrigger;
		 animation = preset.animation;
		 releaseCurve = preset.releaseCurve - 1;
		 dimmer = preset.dimmer;

	 i2c_lcd_set_cursor(0,1);
	 i2c_lcd_write_text("loaded preset!");

	 WriteConfigToNVM();
 }

 inline void loadPreset(int presetNb, bool isUserPreset) {

	if (isUserPreset){

		nvm_eeprom_read_buffer((USER_PRESETS_PAGE_OFFSET + presetNb) * EEPROM_PAGE_SIZE, preset_page, EEPROM_PAGE_SIZE);
		
		if (preset_page[MENU_STATE_CURVE] == 255){

			i2c_lcd_set_cursor(0,1);
			i2c_lcd_write_text("empty preset!");
			return;
		}

		colorR1 = 255;
		colorG1 = 255;
		colorB1 = 255;
		colorR2 = 255;
		colorG2 = 255;
		colorB2 = 255;

		if (preset_page[MENU_STATE_COLOR_R1] != 255){
			colorR1 = preset_page[MENU_STATE_COLOR_R1];
		}
		
		if (preset_page[MENU_STATE_COLOR_G1] != 255){
			colorG1 = preset_page[MENU_STATE_COLOR_G1];
		}
		
		if (preset_page[MENU_STATE_COLOR_B1] != 255){
			colorB1 = preset_page[MENU_STATE_COLOR_B1];
		}
		
		if (preset_page[MENU_STATE_COLOR_R2] != 255){
			colorR2 = preset_page[MENU_STATE_COLOR_R2];
		}
		
		if (preset_page[MENU_STATE_COLOR_G2] != 255){
			colorG2 = preset_page[MENU_STATE_COLOR_G2];
		}
		
		if (preset_page[MENU_STATE_COLOR_B2] != 255){
			colorB2 = preset_page[MENU_STATE_COLOR_B2];
		}
		
		if (preset_page[MENU_STATE_RELEASE] != 255){
			release = preset_page[MENU_STATE_RELEASE];
		}
		
		if (preset_page[MENU_STATE_ANIM_TRIG] != 255){
			animationTrigger = preset_page[MENU_STATE_ANIM_TRIG];
		}
		
		if (preset_page[MENU_STATE_ANIMATION] != 255){
			animation = preset_page[MENU_STATE_ANIMATION];
		}
		
		if (preset_page[MENU_STATE_CURVE] != 255){
			releaseCurve = preset_page[MENU_STATE_CURVE];
		}

		if (preset_page[MENU_STATE_DIMMER] != 255){
			dimmer = preset_page[MENU_STATE_DIMMER];
		}

		i2c_lcd_set_cursor(0,1);
		i2c_lcd_write_text("loaded preset!");

		WriteConfigToNVM();
	}

 }
 
 void flashMainLed() {
 
	cli();
	BOX_LED_PORT.OUTCLR |= BOX_LED1_PIN | BOX_LED2_PIN;
	_delay_ms(250);
	BOX_LED_PORT.OUTSET |= BOX_LED1_PIN | BOX_LED2_PIN;
	_delay_ms(250);
	BOX_LED_PORT.OUTCLR |= BOX_LED1_PIN | BOX_LED2_PIN;
	sei();
 }
 
 ISR(BUTTON_PRESSED12){

	if (!editingValue && menuLevel != 0){
	
		menuLevel--;
		updateMenuState(0);
		return;
		
	} else {
	
		if (editingValue == 1){
			WriteConfigToNVM();
		} else {
			return;
		}
		
		editingValue ^= 1;
	}
 }
 
 int lastCounterButton = 0;
 
 ISR(BUTTON_PRESSED34ENC){

	if ((countTCF0 - lastCounterButton) < 10){
		return;
	}

	lastCounterButton = countTCF0;
	 
	 if (menuState == MENU_STATE_BACK){
		
		menuLevel--;
		updateMenuState(0);
		
		return;
	 }

	 if (menuState == MENU_L1_ACTIVATION ||
		 menuState == MENU_L1_COLORS ||
		 menuState == MENU_L1_SETUP ||
		 menuState == MENU_L1_UPRESETS ||
		 menuState == MENU_L1_FPRESETS ||
		 menuState == MENU_STATE_FACTORY_PRESET ||
		 menuState == MENU_STATE_USER_PRESET ||
		 menuState == MENU_STATE_USE_USER_PRESET ||
		 menuState == MENU_STATE_SAVE_USER_PRESET){
		
		menuLevel++;
		menuStates[menuLevel] = 0;
		updateMenuState(0);
	
		return;
	 }

	 // use user preset
	 if (menuStates[menuLevel-1] == 0 && menuState > 300){
		loadPreset(menuState-300, true);
		flashMainLed();
	
		return;
	 }
	 
	 // save user preset
	 if (menuStates[menuLevel-1] == 1 && menuState > 300){
		 savePreset(menuState-300);
		 flashMainLed();
		 
		 return;
	 }

	 // use factory preset
	 if (menuStates[menuLevel-1] == 6 && menuState > 200){
		 loadPresetFactory(FactoryPresets[menuState-201]);
		 flashMainLed();
		
		 return;
	 }

	 

	 if (menuState != MENU_STATE_MONITOR && menuState != MENU_STATE_MONITOR){
		 
		 if (editingValue == 1){
			 WriteConfigToNVM();
		 }
		 
		 editingValue ^= 1;
		 
		 if (boxLight == 1){
			 BOX_LED_PORT.OUTSET = BOX_LED2_PIN;
		} else {
			 BOX_LED_PORT.OUTCLR = BOX_LED2_PIN;
		 }
	 }
 }
