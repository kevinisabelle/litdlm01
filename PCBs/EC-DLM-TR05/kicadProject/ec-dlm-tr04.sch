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
Date "2018-11-30"
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
P 5000 4775
F 0 "J3" H 5200 5275 50  0000 C CNN
F 1 "RJ45" H 4850 5275 50  0000 C CNN
F 2 "Connectors:RJ45_8" H 5000 4775 50  0001 C CNN
F 3 "" H 5000 4775 50  0001 C CNN
	1    5000 4775
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 J2
U 1 1 59BFF516
P 3725 4500
F 0 "J2" H 3725 4750 50  0000 C CNN
F 1 "LED Connector" V 3825 4500 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM3-96mm_Lock_3pin_straight" H 3725 4500 50  0001 C CNN
F 3 "" H 3725 4500 50  0001 C CNN
	1    3725 4500
	0    -1   -1   0   
$EndComp
Text GLabel 4525 5325 3    60   Input ~ 0
GND
Text GLabel 5575 5300 3    60   Output ~ 0
WSLED-Signal
Text GLabel 4975 5325 3    60   Input ~ 0
ADCInput
Text GLabel 5275 5300 3    60   Input ~ 0
SchmidtTrigInput
NoConn ~ 5550 4425
$Comp
L TL084 U1
U 1 1 5BEAA9C2
P 2500 2475
F 0 "U1" H 2500 2675 50  0000 L CNN
F 1 "MCP6424" H 2500 2275 50  0000 L CNN
F 2 "SMD_Packages:SOIC-14_N" H 2450 2575 50  0001 C CNN
F 3 "" H 2550 2675 50  0001 C CNN
	1    2500 2475
	1    0    0    -1  
$EndComp
$Comp
L TL084 U1
U 3 1 5BEAAC27
P 5250 2475
F 0 "U1" H 5250 2675 50  0000 L CNN
F 1 "MCP6424" H 5225 2300 50  0000 L CNN
F 2 "SMD_Packages:SOIC-14_N" H 5200 2575 50  0001 C CNN
F 3 "" H 5300 2675 50  0001 C CNN
	3    5250 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2575 2075 2575
Wire Wire Line
	2075 2575 2075 3000
Wire Wire Line
	2075 3000 2925 3000
Wire Wire Line
	2925 3000 2925 2475
Wire Wire Line
	2925 2475 2800 2475
$Comp
L GND #PWR5
U 1 1 5BEACA84
P 3725 2275
F 0 "#PWR5" H 3725 2025 50  0001 C CNN
F 1 "GND" H 3625 2275 50  0000 C CNN
F 2 "" H 3725 2275 50  0001 C CNN
F 3 "" H 3725 2275 50  0001 C CNN
	1    3725 2275
	1    0    0    -1  
$EndComp
Text GLabel 8925 2575 2    60   Output ~ 0
SchmidtTrigInput
$Comp
L GND #PWR16
U 1 1 5BEFEBB0
P 7050 3200
F 0 "#PWR16" H 7050 2950 50  0001 C CNN
F 1 "GND" H 7050 3050 50  0000 C CNN
F 2 "" H 7050 3200 50  0001 C CNN
F 3 "" H 7050 3200 50  0001 C CNN
	1    7050 3200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5BEFF553
P 1700 2375
F 0 "R1" V 1780 2375 50  0000 C CNN
F 1 "27k" V 1700 2375 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1630 2375 50  0001 C CNN
F 3 "" H 1700 2375 50  0001 C CNN
	1    1700 2375
	0    1    1    0   
$EndComp
$Comp
L GND #PWR1
U 1 1 5BEFFAAA
P 1550 2800
F 0 "#PWR1" H 1550 2550 50  0001 C CNN
F 1 "GND" H 1550 2650 50  0000 C CNN
F 2 "" H 1550 2800 50  0001 C CNN
F 3 "" H 1550 2800 50  0001 C CNN
	1    1550 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4525 5325 4525 5225
Wire Wire Line
	4375 5225 4650 5225
Wire Wire Line
	4825 5325 4825 5225
Wire Wire Line
	4825 5225 4850 5225
Wire Wire Line
	4975 5325 4975 5225
Wire Wire Line
	4975 5225 4950 5225
Wire Wire Line
	5125 5325 5125 5275
Wire Wire Line
	5125 5275 5050 5275
Wire Wire Line
	5050 5275 5050 5225
Wire Wire Line
	5150 5225 5150 5275
Wire Wire Line
	5150 5275 5275 5275
Wire Wire Line
	5275 5275 5275 5300
Wire Wire Line
	5250 5225 5250 5250
Wire Wire Line
	5250 5250 5325 5250
Wire Wire Line
	5325 5250 5325 5275
Wire Wire Line
	5325 5275 5425 5275
Wire Wire Line
	5425 5150 5425 5300
Wire Wire Line
	5350 5225 5575 5225
Wire Wire Line
	5575 5225 5575 5300
Text GLabel 3725 4800 3    60   Input ~ 0
WSLED-Signal
Wire Wire Line
	3725 4800 3725 4700
Text GLabel 3550 4800 3    60   Output ~ 0
GND
Text GLabel 3900 4800 3    60   Input ~ 0
VCC5-LDO
Wire Wire Line
	3550 4800 3550 4700
Wire Wire Line
	3550 4700 3625 4700
Wire Wire Line
	3900 4800 3900 4700
Wire Wire Line
	3900 4700 3825 4700
$Comp
L C C1
U 1 1 5BF151A1
P 6375 2700
F 0 "C1" H 6400 2800 50  0000 L CNN
F 1 "104" H 6400 2600 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D4.0mm_P2.00mm" H 6413 2550 50  0001 C CNN
F 3 "" H 6375 2700 50  0001 C CNN
	1    6375 2700
	-1   0    0    1   
$EndComp
$Comp
L D_Zener_ALT D3
U 1 1 5BF28202
P 8625 2725
F 0 "D3" H 8625 2825 50  0000 C CNN
F 1 "BZX79C3V3‎" H 8725 2600 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8625 2725 50  0001 C CNN
F 3 "" H 8625 2725 50  0001 C CNN
	1    8625 2725
	0    1    1    0   
$EndComp
$Comp
L GND #PWR20
U 1 1 5BF28913
P 8625 2925
F 0 "#PWR20" H 8625 2675 50  0001 C CNN
F 1 "GND" H 8625 2775 50  0000 C CNN
F 2 "" H 8625 2925 50  0001 C CNN
F 3 "" H 8625 2925 50  0001 C CNN
	1    8625 2925
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5BF28AFE
P 6725 2675
F 0 "R9" V 6805 2675 50  0000 C CNN
F 1 "470k" V 6725 2675 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6655 2675 50  0001 C CNN
F 3 "" H 6725 2675 50  0001 C CNN
	1    6725 2675
	-1   0    0    1   
$EndComp
$Comp
L R R10
U 1 1 5BF29036
P 7050 3025
F 0 "R10" V 7130 3025 50  0000 C CNN
F 1 "33k" V 7050 3025 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6980 3025 50  0001 C CNN
F 3 "" H 7050 3025 50  0001 C CNN
	1    7050 3025
	-1   0    0    1   
$EndComp
Wire Wire Line
	7050 3175 7050 3200
Wire Wire Line
	1550 2775 1550 2800
Wire Wire Line
	1350 2375 1550 2375
Wire Wire Line
	8625 2925 8625 2875
Wire Wire Line
	7050 2525 7050 2875
Text GLabel 5425 5300 3    60   Output ~ 0
VCC5
Wire Wire Line
	4675 5350 4675 5250
Wire Wire Line
	4675 5250 4750 5250
Wire Wire Line
	4750 5250 4750 5225
$Comp
L CONN_01X02 J1
U 1 1 5BF4317A
P 1150 2425
F 0 "J1" H 1150 2575 50  0000 C CNN
F 1 "input" V 1250 2425 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_2.50mmDrill" H 1150 2425 50  0001 C CNN
F 3 "" H 1150 2425 50  0001 C CNN
	1    1150 2425
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 2475 1350 2775
Wire Wire Line
	1350 2775 1550 2775
Connection ~ 1550 2775
$Comp
L GND #PWR8
U 1 1 5BF70EF9
P 4375 5325
F 0 "#PWR8" H 4375 5075 50  0001 C CNN
F 1 "GND" H 4375 5175 50  0000 C CNN
F 2 "" H 4375 5325 50  0001 C CNN
F 3 "" H 4375 5325 50  0001 C CNN
	1    4375 5325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4375 5325 4375 5225
Connection ~ 4525 5225
$Comp
L CP1 C2
U 1 1 5BF7110F
P 6075 5275
F 0 "C2" H 6100 5375 50  0000 L CNN
F 1 "10uf tantale" H 6100 5175 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 6075 5275 50  0001 C CNN
F 3 "" H 6075 5275 50  0001 C CNN
	1    6075 5275
	1    0    0    -1  
$EndComp
Text GLabel 6075 5125 1    60   Input ~ 0
VCC5
$Comp
L GND #PWR13
U 1 1 5BF719A6
P 6075 5500
F 0 "#PWR13" H 6075 5250 50  0001 C CNN
F 1 "GND" H 6075 5350 50  0000 C CNN
F 2 "" H 6075 5500 50  0001 C CNN
F 3 "" H 6075 5500 50  0001 C CNN
	1    6075 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6075 5425 6075 5500
Text GLabel 4825 5325 3    60   Input ~ 0
GND
Text GLabel 5125 5325 3    60   Output ~ 0
VCC5
$Comp
L GND #PWR4
U 1 1 5C00EFFA
P 2400 2775
F 0 "#PWR4" H 2400 2525 50  0001 C CNN
F 1 "GND" H 2400 2625 50  0000 C CNN
F 2 "" H 2400 2775 50  0001 C CNN
F 3 "" H 2400 2775 50  0001 C CNN
	1    2400 2775
	1    0    0    -1  
$EndComp
$Comp
L TL084 U1
U 2 1 5BEAAB44
P 4025 2375
F 0 "U1" H 4025 2575 50  0000 L CNN
F 1 "MCP6424" H 3975 2200 50  0000 L CNN
F 2 "SMD_Packages:SOIC-14_N" H 3975 2475 50  0001 C CNN
F 3 "" H 4075 2575 50  0001 C CNN
	2    4025 2375
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 5C00F272
P 3925 2675
F 0 "#PWR7" H 3925 2425 50  0001 C CNN
F 1 "GND" H 3925 2525 50  0000 C CNN
F 2 "" H 3925 2675 50  0001 C CNN
F 3 "" H 3925 2675 50  0001 C CNN
	1    3925 2675
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2375 1850 3175
Wire Wire Line
	1850 3175 3875 3175
Wire Wire Line
	3675 3175 3675 2475
Wire Wire Line
	3675 2475 3725 2475
Wire Wire Line
	1850 2375 2200 2375
$Comp
L R R2
U 1 1 5C00F790
P 3075 2475
F 0 "R2" V 3155 2475 50  0000 C CNN
F 1 "7.5k" V 3075 2475 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3005 2475 50  0001 C CNN
F 3 "" H 3075 2475 50  0001 C CNN
	1    3075 2475
	0    1    1    0   
$EndComp
$Comp
L GND #PWR11
U 1 1 5C00FA79
P 5150 2775
F 0 "#PWR11" H 5150 2525 50  0001 C CNN
F 1 "GND" H 5150 2625 50  0000 C CNN
F 2 "" H 5150 2775 50  0001 C CNN
F 3 "" H 5150 2775 50  0001 C CNN
	1    5150 2775
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5C00FCDC
P 4525 2375
F 0 "R4" V 4605 2375 50  0000 C CNN
F 1 "10k" V 4525 2375 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4455 2375 50  0001 C CNN
F 3 "" H 4525 2375 50  0001 C CNN
	1    4525 2375
	0    1    1    0   
$EndComp
Wire Wire Line
	3225 2475 3225 2950
Wire Wire Line
	3225 2950 4700 2950
Wire Wire Line
	4700 2950 4700 2375
$Comp
L R R3
U 1 1 5C00FFCC
P 4025 3175
F 0 "R3" V 4105 3175 50  0000 C CNN
F 1 "10k" V 4025 3175 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3955 3175 50  0001 C CNN
F 3 "" H 4025 3175 50  0001 C CNN
	1    4025 3175
	0    1    1    0   
$EndComp
Wire Wire Line
	4675 2375 4950 2375
Wire Wire Line
	4325 2375 4375 2375
Wire Wire Line
	4350 2375 4350 3175
Wire Wire Line
	4350 3175 4175 3175
Connection ~ 4350 2375
Connection ~ 3675 3175
Connection ~ 4700 2375
$Comp
L R R5
U 1 1 5C010A1C
P 4850 3200
F 0 "R5" H 4950 3200 50  0000 C CNN
F 1 "10k" V 4850 3200 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4780 3200 50  0001 C CNN
F 3 "" H 4850 3200 50  0001 C CNN
	1    4850 3200
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 5C010B25
P 5325 3050
F 0 "R6" V 5405 3050 50  0000 C CNN
F 1 "10k" V 5325 3050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5255 3050 50  0001 C CNN
F 3 "" H 5325 3050 50  0001 C CNN
	1    5325 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 2575 4850 2575
Wire Wire Line
	4850 2575 4850 3050
Wire Wire Line
	5550 2475 5850 2475
Wire Wire Line
	5600 2075 5600 3050
Wire Wire Line
	5600 3050 5475 3050
$Comp
L GND #PWR9
U 1 1 5C010E1D
P 4850 3350
F 0 "#PWR9" H 4850 3100 50  0001 C CNN
F 1 "GND" H 4850 3200 50  0000 C CNN
F 2 "" H 4850 3350 50  0001 C CNN
F 3 "" H 4850 3350 50  0001 C CNN
	1    4850 3350
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 5C010F9E
P 5025 3050
F 0 "D1" H 5025 3150 50  0000 C CNN
F 1 "1N4148" H 5050 2950 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P2.54mm_Vertical_AnodeUp" H 5025 3050 50  0001 C CNN
F 3 "" H 5025 3050 50  0001 C CNN
	1    5025 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3050 4875 3050
$Comp
L TL084 U1
U 4 1 5BEAAD5E
P 7500 2575
F 0 "U1" H 7500 2775 50  0000 L CNN
F 1 "MCP6424" H 7500 2375 50  0000 L CNN
F 2 "SMD_Packages:SOIC-14_N" H 7450 2675 50  0001 C CNN
F 3 "" H 7550 2775 50  0001 C CNN
	4    7500 2575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR18
U 1 1 5C01211C
P 7400 2875
F 0 "#PWR18" H 7400 2625 50  0001 C CNN
F 1 "GND" H 7400 2725 50  0000 C CNN
F 2 "" H 7400 2875 50  0001 C CNN
F 3 "" H 7400 2875 50  0001 C CNN
	1    7400 2875
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5C012C68
P 6000 2475
F 0 "R8" V 6080 2475 50  0000 C CNN
F 1 "10k" V 6000 2475 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5930 2475 50  0001 C CNN
F 3 "" H 6000 2475 50  0001 C CNN
	1    6000 2475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 2475 7200 2475
Connection ~ 5600 2475
Wire Wire Line
	7800 2575 8925 2575
Connection ~ 8625 2575
Text GLabel 8925 2075 2    60   Output ~ 0
ADCInput
Wire Wire Line
	5600 2075 8925 2075
$Comp
L D_Zener_ALT D2
U 1 1 5C015A06
P 8250 2250
F 0 "D2" H 8250 2350 50  0000 C CNN
F 1 "BZX79C3V3" H 8325 2150 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8250 2250 50  0001 C CNN
F 3 "" H 8250 2250 50  0001 C CNN
	1    8250 2250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR19
U 1 1 5C015A0C
P 8250 2400
F 0 "#PWR19" H 8250 2150 50  0001 C CNN
F 1 "GND" H 8400 2325 50  0000 C CNN
F 2 "" H 8250 2400 50  0001 C CNN
F 3 "" H 8250 2400 50  0001 C CNN
	1    8250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2400 8250 2400
Wire Wire Line
	8250 2100 8250 2075
Connection ~ 8250 2075
Wire Wire Line
	6725 2525 7050 2525
Text GLabel 6725 2825 3    60   Input ~ 0
VCC5
Text GLabel 4675 5350 3    60   Output ~ 0
RESET
$Comp
L +5V #PWR3
U 1 1 5C01D4A6
P 2400 2175
F 0 "#PWR3" H 2400 2025 50  0001 C CNN
F 1 "+5V" H 2400 2315 50  0000 C CNN
F 2 "" H 2400 2175 50  0001 C CNN
F 3 "" H 2400 2175 50  0001 C CNN
	1    2400 2175
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR6
U 1 1 5C01D4FD
P 3925 2075
F 0 "#PWR6" H 3925 1925 50  0001 C CNN
F 1 "+5V" H 3925 2215 50  0000 C CNN
F 2 "" H 3925 2075 50  0001 C CNN
F 3 "" H 3925 2075 50  0001 C CNN
	1    3925 2075
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR10
U 1 1 5C01D54D
P 5150 2175
F 0 "#PWR10" H 5150 2025 50  0001 C CNN
F 1 "+5V" H 5150 2315 50  0000 C CNN
F 2 "" H 5150 2175 50  0001 C CNN
F 3 "" H 5150 2175 50  0001 C CNN
	1    5150 2175
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR17
U 1 1 5C01D59D
P 7400 1975
F 0 "#PWR17" H 7400 1825 50  0001 C CNN
F 1 "+5V" H 7400 2115 50  0000 C CNN
F 2 "" H 7400 1975 50  0001 C CNN
F 3 "" H 7400 1975 50  0001 C CNN
	1    7400 1975
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR12
U 1 1 5C01D94C
P 5550 5075
F 0 "#PWR12" H 5550 4925 50  0001 C CNN
F 1 "+5V" H 5550 5215 50  0000 C CNN
F 2 "" H 5550 5075 50  0001 C CNN
F 3 "" H 5550 5075 50  0001 C CNN
	1    5550 5075
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5075 5550 5150
Wire Wire Line
	5550 5150 5425 5150
Connection ~ 5425 5275
Wire Wire Line
	7400 1975 7400 2275
$Comp
L R R11
U 1 1 5C01DF6F
P 7175 2225
F 0 "R11" V 7255 2225 50  0000 C CNN
F 1 "470k" V 7175 2225 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7105 2225 50  0001 C CNN
F 3 "" H 7175 2225 50  0001 C CNN
	1    7175 2225
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7325 2225 7900 2225
Wire Wire Line
	7900 2225 7900 2575
Connection ~ 7900 2575
Wire Wire Line
	7025 2225 6900 2225
Wire Wire Line
	6900 2225 6900 2475
Connection ~ 6900 2475
Text Notes 4900 1950 0    60   ~ 0
Log amplifier \n(gain = 2)
Text Notes 2550 1775 0    60   ~ 0
Signal positive rectification
Wire Notes Line
	4350 1925 4350 1650
Wire Notes Line
	4350 1650 2000 1650
Wire Notes Line
	2000 1650 2000 1900
Text Notes 1250 2200 0    60   ~ 0
Voltage reduction
Text Notes 6825 1700 0    60   ~ 0
Schmidt trigger\ncircuit\n(with hysteresis resistor)
Wire Notes Line
	8075 1875 8075 1275
Wire Notes Line
	8075 1275 6600 1275
Wire Notes Line
	6600 1275 6600 3450
Text Notes 7075 3775 0    60   ~ 0
Pot for control \nof trigger sensitivity
Wire Notes Line
	7125 2750 7225 2750
Wire Notes Line
	7225 2750 7225 3575
Text Notes 8475 3625 0    60   ~ 0
3.3v clipping\ndiodes
Wire Notes Line
	8875 3400 8875 2750
Wire Notes Line
	8875 2750 8775 2750
Wire Notes Line
	8900 3400 8900 2275
Wire Notes Line
	8900 2275 8400 2275
Wire Wire Line
	6375 2475 6375 2550
Connection ~ 6375 2475
$Comp
L GND #PWR14
U 1 1 5C01F02E
P 6375 2850
F 0 "#PWR14" H 6375 2600 50  0001 C CNN
F 1 "GND" H 6375 2700 50  0000 C CNN
F 2 "" H 6375 2850 50  0001 C CNN
F 3 "" H 6375 2850 50  0001 C CNN
	1    6375 2850
	1    0    0    -1  
$EndComp
Text Notes 5800 3350 0    60   ~ 0
Low pass filter \nat 4.8kHz
Wire Notes Line
	6525 2825 6525 3400
Wire Notes Line
	6525 3400 5750 3400
Wire Notes Line
	5750 3400 5750 2525
Text Notes 850  4100 0    60   ~ 0
Input from 3 possible situations:\n1) Piezo trigger alone\n2) Electronic drum piezo mic out TRS\n3) Piezo splitted for this input and input of a \n  drum module such as the Roland TD-12.
Wire Notes Line
	950  3600 950  2375
Wire Notes Line
	950  2375 1025 2375
$Comp
L CP1 C3
U 1 1 5C0311A3
P 6775 5275
F 0 "C3" H 6800 5375 50  0000 L CNN
F 1 "100nf cer" H 6800 5175 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 6775 5275 50  0001 C CNN
F 3 "" H 6775 5275 50  0001 C CNN
	1    6775 5275
	1    0    0    -1  
$EndComp
Text GLabel 6775 5125 1    60   Input ~ 0
VCC5
$Comp
L GND #PWR15
U 1 1 5C0311AA
P 6775 5500
F 0 "#PWR15" H 6775 5250 50  0001 C CNN
F 1 "GND" H 6775 5350 50  0000 C CNN
F 2 "" H 6775 5500 50  0001 C CNN
F 3 "" H 6775 5500 50  0001 C CNN
	1    6775 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6775 5425 6775 5500
Text Notes 5925 4450 0    60   ~ 0
Close to opamp supply
Wire Notes Line
	5875 5000 5875 4500
Wire Notes Line
	5875 4500 7250 4500
Wire Notes Line
	7250 4500 7250 5425
Wire Wire Line
	7050 2675 7200 2675
Connection ~ 7050 2675
NoConn ~ 4750 5225
$Comp
L LD1117S50TR U2
U 1 1 5C149F08
P 1825 5150
F 0 "U2" H 1800 5425 50  0000 C CNN
F 1 "LD1117S50TR" H 1825 5350 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 1825 5250 50  0001 C CNN
F 3 "" H 1825 5150 50  0001 C CNN
	1    1825 5150
	1    0    0    -1  
$EndComp
Text GLabel 2425 5100 2    60   Input ~ 0
VCC5-LDO
Wire Wire Line
	2425 5100 2225 5100
$Comp
L GND #PWR2
U 1 1 5C14A3EB
P 1825 5600
F 0 "#PWR2" H 1825 5350 50  0001 C CNN
F 1 "GND" H 1825 5450 50  0000 C CNN
F 2 "" H 1825 5600 50  0001 C CNN
F 3 "" H 1825 5600 50  0001 C CNN
	1    1825 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1825 5400 1825 5600
$Comp
L C C5
U 1 1 5C14A58F
P 2325 5350
F 0 "C5" H 2350 5450 50  0000 L CNN
F 1 "4.7pF" H 2350 5250 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D4.0mm_P2.00mm" H 2363 5200 50  0001 C CNN
F 3 "" H 2325 5350 50  0001 C CNN
	1    2325 5350
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 5C14A7DC
P 1350 5350
F 0 "C4" H 1375 5450 50  0000 L CNN
F 1 "105" H 1375 5250 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D4.0mm_P2.00mm" H 1388 5200 50  0001 C CNN
F 3 "" H 1350 5350 50  0001 C CNN
	1    1350 5350
	-1   0    0    1   
$EndComp
Text GLabel 1175 5100 0    60   Input ~ 0
VCC5
Wire Wire Line
	1175 5100 1425 5100
Wire Wire Line
	1350 5200 1350 5100
Connection ~ 1350 5100
Wire Wire Line
	2325 5200 2325 5100
Connection ~ 2325 5100
Wire Wire Line
	2325 5550 2325 5500
Wire Wire Line
	1350 5550 2325 5550
Connection ~ 1825 5550
Wire Wire Line
	1350 5550 1350 5500
$EndSCHEMATC
