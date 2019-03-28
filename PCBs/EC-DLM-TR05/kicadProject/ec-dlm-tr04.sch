EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ec-dlm-tr04-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "LITDLM-TR05"
Date "2019-02-18"
Rev "8"
Comp "Litioo"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RJ45 J3
U 1 1 59BFF260
P 7075 5000
F 0 "J3" H 7275 5500 50  0000 C CNN
F 1 "RJ45" H 6925 5500 50  0000 C CNN
F 2 "Connectors:RJ45_8" H 7075 5000 50  0001 C CNN
F 3 "" H 7075 5000 50  0001 C CNN
	1    7075 5000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 J2
U 1 1 59BFF516
P 5375 4575
F 0 "J2" H 5375 4825 50  0000 C CNN
F 1 "LED Connector" V 5475 4575 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM3-96mm_Lock_3pin_straight" H 5375 4575 50  0001 C CNN
F 3 "" H 5375 4575 50  0001 C CNN
	1    5375 4575
	0    -1   -1   0   
$EndComp
Text GLabel 6600 5550 3    60   Input ~ 0
GND
Text GLabel 7000 5600 3    60   Input ~ 0
ADCTrig
Text GLabel 7350 5600 3    60   Output ~ 0
AVCC
NoConn ~ 7625 4650
$Comp
L TL084 U1
U 2 1 5BEAA9C2
P 5000 2525
F 0 "U1" H 5000 2725 50  0000 L CNN
F 1 "TL074" H 4975 2350 50  0000 L CNN
F 2 "SMD_Packages:SOIC-14_N" H 4950 2625 50  0001 C CNN
F 3 "" H 5050 2725 50  0001 C CNN
	2    5000 2525
	1    0    0    1   
$EndComp
$Comp
L TL084 U1
U 4 1 5BEAAC27
P 7575 2325
F 0 "U1" H 7575 2525 50  0000 L CNN
F 1 "TL074" H 7550 2150 50  0000 L CNN
F 2 "SMD_Packages:SOIC-14_N" H 7525 2425 50  0001 C CNN
F 3 "" H 7625 2525 50  0001 C CNN
	4    7575 2325
	1    0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5BEFF553
P 2450 2725
F 0 "R1" V 2275 2725 50  0000 C CNN
F 1 "100k" V 2350 2725 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2380 2725 50  0001 C CNN
F 3 "" H 2450 2725 50  0001 C CNN
	1    2450 2725
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 5550 6600 5450
Wire Wire Line
	6450 5450 6825 5450
Wire Wire Line
	7500 5375 7500 5600
Text GLabel 5375 4875 3    60   Input ~ 0
L_OUT_5
Wire Wire Line
	5375 4875 5375 4775
Text GLabel 5200 4875 3    60   Output ~ 0
GND
Wire Wire Line
	5200 4875 5200 4775
Wire Wire Line
	5200 4775 5275 4775
Wire Wire Line
	5550 4875 5550 4775
Wire Wire Line
	5550 4775 5475 4775
Wire Wire Line
	2300 3125 2300 3200
Wire Wire Line
	2100 2725 2300 2725
Text GLabel 7500 5600 3    60   Output ~ 0
VCC5
$Comp
L CONN_01X02 J1
U 1 1 5BF4317A
P 1900 2775
F 0 "J1" H 1900 2925 50  0000 C CNN
F 1 "input" V 2000 2775 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_2.50mmDrill" H 1900 2775 50  0001 C CNN
F 3 "" H 1900 2775 50  0001 C CNN
	1    1900 2775
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 2825 2100 3125
Wire Wire Line
	2100 3125 2300 3125
Connection ~ 2300 3125
$Comp
L GND #PWR01
U 1 1 5BF70EF9
P 6450 5550
F 0 "#PWR01" H 6450 5300 50  0001 C CNN
F 1 "GND" H 6450 5400 50  0000 C CNN
F 2 "" H 6450 5550 50  0001 C CNN
F 3 "" H 6450 5550 50  0001 C CNN
	1    6450 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5550 6450 5450
Connection ~ 6600 5450
Wire Wire Line
	8575 5225 8575 5300
Text GLabel 6800 5600 3    60   Input ~ 0
AGND
Text GLabel 7150 5600 3    60   Output ~ 0
L_OUT_5
$Comp
L TL084 U1
U 3 1 5BEAAB44
P 6175 2425
F 0 "U1" H 6175 2625 50  0000 L CNN
F 1 "TL074" H 6125 2250 50  0000 L CNN
F 2 "SMD_Packages:SOIC-14_N" H 6125 2525 50  0001 C CNN
F 3 "" H 6225 2625 50  0001 C CNN
	3    6175 2425
	1    0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5C00F790
P 4525 1875
F 0 "R2" V 4350 1875 50  0000 C CNN
F 1 "10k" V 4425 1875 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4455 1875 50  0001 C CNN
F 3 "" H 4525 1875 50  0001 C CNN
	1    4525 1875
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5C00FCDC
P 3850 2625
F 0 "R4" V 3675 2625 50  0000 C CNN
F 1 "10k" V 3750 2625 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3780 2625 50  0001 C CNN
F 3 "" H 3850 2625 50  0001 C CNN
	1    3850 2625
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5C010A1C
P 7150 1450
F 0 "R5" H 7250 1425 50  0000 C CNN
F 1 "10k" H 7275 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7080 1450 50  0001 C CNN
F 3 "" H 7150 1450 50  0001 C CNN
	1    7150 1450
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 5C010B25
P 7700 1650
F 0 "R6" V 7850 1650 50  0000 C CNN
F 1 "10k" V 7775 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7630 1650 50  0001 C CNN
F 3 "" H 7700 1650 50  0001 C CNN
	1    7700 1650
	0    -1   -1   0   
$EndComp
$Comp
L D D1
U 1 1 5C010F9E
P 7350 1650
F 0 "D1" H 7350 1750 50  0000 C CNN
F 1 "1N4148" H 7375 1550 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 7350 1650 50  0001 C CNN
F 3 "" H 7350 1650 50  0001 C CNN
	1    7350 1650
	1    0    0    -1  
$EndComp
$Comp
L TL084 U1
U 1 1 5BEAAD5E
P 3175 2625
F 0 "U1" H 3175 2825 50  0000 L CNN
F 1 "TL074" H 3175 2425 50  0000 L CNN
F 2 "SMD_Packages:SOIC-14_N" H 3125 2725 50  0001 C CNN
F 3 "" H 3225 2825 50  0001 C CNN
	1    3175 2625
	1    0    0    1   
$EndComp
Connection ~ 7925 2325
Text GLabel 9275 1925 2    60   Output ~ 0
ADCTrig
$Comp
L D_Zener_ALT D2
U 1 1 5C015A06
P 8975 2225
F 0 "D2" V 9000 2350 50  0000 C CNN
F 1 "BZX79C5V" V 8925 2500 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P2.54mm_Vertical_AnodeUp" H 8975 2225 50  0001 C CNN
F 3 "" H 8975 2225 50  0001 C CNN
	1    8975 2225
	0    1    1    0   
$EndComp
Wire Wire Line
	8975 2375 8975 2375
$Comp
L +5V #PWR02
U 1 1 5C01D94C
P 7625 5300
F 0 "#PWR02" H 7625 5150 50  0001 C CNN
F 1 "+5V" H 7625 5440 50  0000 C CNN
F 2 "" H 7625 5300 50  0001 C CNN
F 3 "" H 7625 5300 50  0001 C CNN
	1    7625 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7625 5300 7625 5375
Wire Wire Line
	7625 5375 7500 5375
Connection ~ 7500 5500
Text Notes 7125 1225 0    79   ~ 16
Log amplifier \n(gain = 2)
Text Notes 4500 1525 0    79   ~ 16
Signal positive rectification
Wire Notes Line
	6550 1875 6550 1600
Wire Notes Line
	6550 1600 4125 1600
Wire Notes Line
	4125 1600 4125 1850
Text Notes 1625 2500 0    60   ~ 0
Voltage reduction
Text Notes 8050 1675 0    79   ~ 16
Low pass filter at 4.8kHz
Text Notes 925  2000 0    60   ~ 0
Input from 3 possible situations:\n1) Piezo trigger alone\n2) Electronic drum piezo mic out TRS\n3) Piezo splitted for this input and input of a \n  drum module such as the Roland TD-12.
Wire Notes Line
	1700 2725 1775 2725
Wire Wire Line
	9275 5225 9275 5300
Text Notes 8425 4250 0    60   ~ 0
Close to opamp supply
Wire Notes Line
	8375 4800 8375 4300
Wire Notes Line
	8375 4300 9750 4300
Wire Notes Line
	9750 4300 9750 5225
$Comp
L R R3
U 1 1 5C44BBA8
P 8325 1925
F 0 "R3" V 8475 1925 50  0000 C CNN
F 1 "10k" V 8400 1925 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8255 1925 50  0001 C CNN
F 3 "" H 8325 1925 50  0001 C CNN
	1    8325 1925
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8175 1925 7925 1925
$Comp
L C C1
U 1 1 5C44BCEB
P 8700 2150
F 0 "C1" H 8750 1975 50  0000 L CNN
F 1 "100n" H 8725 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8738 2000 50  0001 C CNN
F 3 "" H 8700 2150 50  0001 C CNN
	1    8700 2150
	-1   0    0    1   
$EndComp
Connection ~ 8700 1925
Connection ~ 6725 5450
Wire Wire Line
	7325 5450 7500 5450
Connection ~ 7500 5450
Connection ~ 7425 5450
Wire Wire Line
	6925 5450 6925 5550
Wire Wire Line
	6925 5550 6800 5550
Wire Wire Line
	6800 5550 6800 5600
Wire Wire Line
	7025 5450 7025 5550
Wire Wire Line
	7025 5550 7000 5550
Wire Wire Line
	7000 5550 7000 5600
Wire Wire Line
	7125 5450 7125 5550
Wire Wire Line
	7125 5550 7150 5550
Wire Wire Line
	7150 5550 7150 5600
Wire Wire Line
	7225 5450 7225 5550
Wire Wire Line
	7225 5550 7350 5550
Wire Wire Line
	7350 5550 7350 5600
Text GLabel 4825 2150 0    60   Input ~ 0
AVSS
Wire Wire Line
	4900 2825 4900 2900
Wire Wire Line
	4900 2900 5000 2900
Text GLabel 6150 2050 2    60   Input ~ 0
AVSS
Text GLabel 7400 1950 0    60   Input ~ 0
AVSS
Wire Wire Line
	7525 2700 7475 2700
Wire Wire Line
	7475 2700 7475 2625
Wire Wire Line
	6075 2725 6075 2850
Text GLabel 5000 2900 2    60   Input ~ 0
AVCC
Wire Wire Line
	4825 2150 4900 2150
Wire Wire Line
	4900 2150 4900 2225
Text GLabel 6075 2850 2    60   Input ~ 0
AVCC
Wire Wire Line
	6075 2050 6075 2125
Text GLabel 7525 2700 2    60   Input ~ 0
AVCC
Wire Wire Line
	7400 1950 7475 1950
Wire Wire Line
	7475 1950 7475 2025
Wire Wire Line
	7925 2325 7875 2325
Wire Wire Line
	8700 1925 8700 2000
Wire Wire Line
	8700 2300 8700 2375
Wire Wire Line
	8975 1925 8975 2075
Connection ~ 8975 1925
Wire Wire Line
	8475 1925 9275 1925
Text GLabel 2300 3200 3    60   Output ~ 0
AGND
Text GLabel 8575 4800 1    60   Input ~ 0
AVCC
Text GLabel 9275 4825 1    60   Input ~ 0
AVSS
Wire Wire Line
	9275 4825 9275 4925
Wire Wire Line
	8575 4925 8575 4800
Text GLabel 8575 5300 3    60   Output ~ 0
AGND
Text GLabel 9275 5300 3    60   Output ~ 0
AGND
Text GLabel 8700 2375 3    60   Output ~ 0
AGND
Text GLabel 8975 2375 3    60   Output ~ 0
AGND
Text GLabel 3125 2950 2    60   Input ~ 0
AVCC
Text GLabel 3025 2300 0    60   Input ~ 0
AVSS
Text Notes 4750 4375 0    79   ~ 16
LED Strip connection
Text Notes 6400 4375 0    79   ~ 16
Main Module interface
$Comp
L TC1044S U2
U 1 1 5C6DD326
P 2500 5175
F 0 "U2" H 2300 5525 60  0000 C CNN
F 1 "TC1044S" H 2500 4775 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2500 5175 60  0001 C CNN
F 3 "" H 2500 5175 60  0001 C CNN
	1    2500 5175
	1    0    0    -1  
$EndComp
Text GLabel 4150 4975 2    60   Input ~ 0
AVCC
Wire Wire Line
	2000 4975 1900 4975
Wire Wire Line
	1900 4975 1900 4550
Wire Wire Line
	1900 4550 3225 4550
Wire Wire Line
	3225 4550 3225 4975
Wire Wire Line
	3150 4975 3550 4975
Connection ~ 3225 4975
NoConn ~ 3150 5275
Text GLabel 1800 5275 0    60   Output ~ 0
AGND
Wire Wire Line
	1800 5275 2000 5275
Text GLabel 3925 5425 2    60   Output ~ 0
AVSS
NoConn ~ 3150 5125
$Comp
L CP C4
U 1 1 5C6DDAED
P 1250 5300
F 0 "C4" H 1275 5400 50  0000 L CNN
F 1 "10u" H 1275 5200 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D4.0mm_P2.00mm" H 1288 5150 50  0001 C CNN
F 3 "" H 1250 5300 50  0001 C CNN
	1    1250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5125 1250 5125
Wire Wire Line
	1250 5125 1250 5150
Wire Wire Line
	1250 5450 2000 5450
Wire Wire Line
	2000 5450 2000 5425
Wire Wire Line
	3150 5425 3925 5425
Text GLabel 3350 5875 3    60   Output ~ 0
AGND
$Comp
L CP C5
U 1 1 5C6DDDFD
P 3350 5625
F 0 "C5" H 3375 5725 50  0000 L CNN
F 1 "10u" H 3375 5525 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D4.0mm_P2.00mm" H 3388 5475 50  0001 C CNN
F 3 "" H 3350 5625 50  0001 C CNN
	1    3350 5625
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 5775 3350 5875
Wire Wire Line
	3350 5475 3350 5425
Connection ~ 3350 5425
Text Notes 1325 4400 0    79   ~ 16
Negative supply for opamp (+12v to -12v)
$Comp
L CP C6
U 1 1 5C6DEA9E
P 3475 5200
F 0 "C6" H 3500 5300 50  0000 L CNN
F 1 "100u" H 3500 5100 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D4.0mm_P2.00mm" H 3513 5050 50  0001 C CNN
F 3 "" H 3475 5200 50  0001 C CNN
	1    3475 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3475 5050 3475 4975
Connection ~ 3475 4975
Wire Wire Line
	3475 5350 3475 5425
Connection ~ 3475 5425
$Comp
L Ferrite_Bead L1
U 1 1 5C77AFCD
P 3700 4975
F 0 "L1" V 3550 5000 50  0000 C CNN
F 1 "Ferrite_Bead" V 3850 4975 50  0000 C CNN
F 2 "Inductors_THT:L_Axial_L6.6mm_D2.7mm_P2.54mm_Vertical_Vishay_IM-2" V 3630 4975 50  0001 C CNN
F 3 "" H 3700 4975 50  0001 C CNN
	1    3700 4975
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 4975 4150 4975
Wire Wire Line
	3025 2300 3075 2300
Wire Wire Line
	3075 2300 3075 2325
Wire Wire Line
	3125 2950 3075 2950
Wire Wire Line
	3075 2950 3075 2925
Wire Wire Line
	2875 2525 2700 2525
Wire Wire Line
	2700 2525 2700 2150
Wire Wire Line
	3600 2150 3600 2625
Connection ~ 3600 2625
Wire Wire Line
	2600 2725 2875 2725
$Comp
L C C7
U 1 1 5C77CB15
P 4150 2875
F 0 "C7" H 4025 3050 50  0000 L CNN
F 1 "10n" H 4000 2975 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4188 2725 50  0001 C CNN
F 3 "" H 4150 2875 50  0001 C CNN
	1    4150 2875
	1    0    0    -1  
$EndComp
Text GLabel 4150 3125 3    60   Output ~ 0
AGND
Wire Wire Line
	4150 3125 4150 3025
Wire Wire Line
	3475 2625 3700 2625
Wire Wire Line
	4150 2725 4150 2625
Connection ~ 4150 2625
$Comp
L R R8
U 1 1 5C77D2D0
P 6150 1925
F 0 "R8" V 5975 1925 50  0000 C CNN
F 1 "10k" V 6050 1925 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6080 1925 50  0001 C CNN
F 3 "" H 6150 1925 50  0001 C CNN
	1    6150 1925
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 2050 4500 2425
Wire Wire Line
	4500 2425 4700 2425
$Comp
L D D4
U 1 1 5C77D7C9
P 5525 2525
F 0 "D4" H 5525 2625 50  0000 C CNN
F 1 "D" H 5525 2425 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 5525 2525 50  0001 C CNN
F 3 "" H 5525 2525 50  0001 C CNN
	1    5525 2525
	-1   0    0    1   
$EndComp
$Comp
L D D3
U 1 1 5C77D912
P 6625 2425
F 0 "D3" H 6625 2525 50  0000 C CNN
F 1 "D" H 6625 2325 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 6625 2425 50  0001 C CNN
F 3 "" H 6625 2425 50  0001 C CNN
	1    6625 2425
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 5C77DCC8
P 4500 2625
F 0 "R9" V 4650 2625 50  0000 C CNN
F 1 "10k" V 4575 2625 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4430 2625 50  0001 C CNN
F 3 "" H 4500 2625 50  0001 C CNN
	1    4500 2625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 2325 5750 1875
Wire Wire Line
	7150 1300 7300 1300
Wire Wire Line
	7150 1600 7150 1650
Wire Wire Line
	7075 1650 7200 1650
Wire Wire Line
	7500 1650 7550 1650
Wire Wire Line
	7850 1650 7925 1650
Wire Wire Line
	7925 1650 7925 2325
Connection ~ 7925 1925
Wire Wire Line
	7275 2225 7075 2225
Wire Wire Line
	7075 2225 7075 1650
Connection ~ 7150 1650
Wire Wire Line
	2700 2150 3600 2150
Wire Wire Line
	5300 2525 5375 2525
Wire Wire Line
	4500 2050 5675 2050
Wire Wire Line
	4000 2625 4350 2625
Wire Wire Line
	4300 1875 4300 2625
Connection ~ 4300 2625
Wire Wire Line
	4650 2625 4700 2625
Wire Wire Line
	4300 1875 4375 1875
Wire Wire Line
	5750 1875 4675 1875
Wire Wire Line
	5750 2325 5875 2325
Wire Wire Line
	5675 2050 5675 3075
Wire Wire Line
	5675 3075 6775 3075
Wire Wire Line
	6775 3075 6775 1925
Connection ~ 6775 2425
Wire Wire Line
	6475 2425 6475 2425
Wire Wire Line
	5850 2325 5850 1925
Wire Wire Line
	5850 1925 6000 1925
Connection ~ 5850 2325
Wire Wire Line
	6775 1925 6300 1925
Text GLabel 5875 2650 3    60   Output ~ 0
AGND
Wire Wire Line
	5875 2650 5875 2525
Wire Wire Line
	6150 2050 6075 2050
$Comp
L R R10
U 1 1 5C782EE1
P 7125 2425
F 0 "R10" V 6950 2425 50  0000 C CNN
F 1 "10k" V 7025 2425 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7055 2425 50  0001 C CNN
F 3 "" H 7125 2425 50  0001 C CNN
	1    7125 2425
	0    1    1    0   
$EndComp
Wire Wire Line
	6775 2425 6975 2425
Wire Wire Line
	7275 2425 7275 2425
Text GLabel 5550 4875 3    60   Input ~ 0
VCC5
Text GLabel 7300 1300 2    60   Output ~ 0
AGND
Connection ~ 5675 2525
$Comp
L R R11
U 1 1 5C7E5B6D
P 6950 2625
F 0 "R11" H 7050 2600 50  0000 C CNN
F 1 "10k" H 7075 2675 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6880 2625 50  0001 C CNN
F 3 "" H 6950 2625 50  0001 C CNN
	1    6950 2625
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 2475 6950 2425
Connection ~ 6950 2425
Text GLabel 6950 2850 3    60   Output ~ 0
AGND
Wire Wire Line
	6950 2850 6950 2775
$Comp
L C C2
U 1 1 5C7E63D8
P 2750 2925
F 0 "C2" H 2625 3100 50  0000 L CNN
F 1 "1n" H 2600 3025 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2788 2775 50  0001 C CNN
F 3 "" H 2750 2925 50  0001 C CNN
	1    2750 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2775 2750 2725
Connection ~ 2750 2725
Text GLabel 2750 3150 3    60   Output ~ 0
AGND
Wire Wire Line
	2750 3075 2750 3150
$Comp
L R R7
U 1 1 5C7E700C
P 7375 1450
F 0 "R7" V 7275 1725 50  0000 C CNN
F 1 "100k" V 7325 1625 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7305 1450 50  0001 C CNN
F 3 "" H 7375 1450 50  0001 C CNN
	1    7375 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	7525 1450 7525 1650
Connection ~ 7525 1650
Wire Wire Line
	7225 1450 7225 1575
Wire Wire Line
	7225 1575 7200 1575
Wire Wire Line
	7200 1575 7200 1650
$Comp
L C C9
U 1 1 5C7E7C56
P 4100 4775
F 0 "C9" H 3975 4950 50  0000 L CNN
F 1 "100n" H 3950 4875 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4138 4625 50  0001 C CNN
F 3 "" H 4100 4775 50  0001 C CNN
	1    4100 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4975 4100 4925
Connection ~ 4100 4975
Text GLabel 4200 4625 2    60   Output ~ 0
AGND
Wire Wire Line
	3875 4625 4200 4625
$Comp
L CP1 C10
U 1 1 5C7E8357
P 5800 5075
F 0 "C10" H 5825 5175 50  0000 L CNN
F 1 "10uf" H 5825 4975 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 5800 5075 50  0001 C CNN
F 3 "" H 5800 5075 50  0001 C CNN
	1    5800 5075
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5225 5800 5300
Text GLabel 5800 4800 1    60   Input ~ 0
VCC5
Wire Wire Line
	5800 4925 5800 4800
Text GLabel 5800 5300 3    60   Output ~ 0
GND
$Comp
L C C3
U 1 1 5C7EA466
P 3800 5650
F 0 "C3" H 3675 5825 50  0000 L CNN
F 1 "100n" H 3650 5750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3838 5500 50  0001 C CNN
F 3 "" H 3800 5650 50  0001 C CNN
	1    3800 5650
	1    0    0    -1  
$EndComp
Text GLabel 3800 5875 3    60   Output ~ 0
AGND
Wire Wire Line
	3800 5875 3800 5800
Wire Wire Line
	3800 5500 3800 5425
Connection ~ 3800 5425
Wire Wire Line
	3875 4975 3875 4925
Connection ~ 3875 4975
Connection ~ 4100 4625
$Comp
L CP1 C8
U 1 1 5C7EB7B4
P 3875 4775
F 0 "C8" H 3900 4875 50  0000 L CNN
F 1 "10u" H 3900 4675 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 3875 4775 50  0001 C CNN
F 3 "" H 3875 4775 50  0001 C CNN
	1    3875 4775
	-1   0    0    1   
$EndComp
$Comp
L C C11
U 1 1 5C7EBBF2
P 8575 5075
F 0 "C11" H 8450 5250 50  0000 L CNN
F 1 "100n" H 8425 5175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8613 4925 50  0001 C CNN
F 3 "" H 8575 5075 50  0001 C CNN
	1    8575 5075
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 5C7EBFA0
P 9275 5075
F 0 "C12" H 9150 5250 50  0000 L CNN
F 1 "100n" H 9125 5175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9313 4925 50  0001 C CNN
F 3 "" H 9275 5075 50  0001 C CNN
	1    9275 5075
	1    0    0    -1  
$EndComp
$EndSCHEMATC
