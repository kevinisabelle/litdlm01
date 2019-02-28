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
P 6900 4725
F 0 "J3" H 7100 5225 50  0000 C CNN
F 1 "RJ45" H 6750 5225 50  0000 C CNN
F 2 "Connectors:RJ45_8" H 6900 4725 50  0001 C CNN
F 3 "" H 6900 4725 50  0001 C CNN
	1    6900 4725
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 J2
U 1 1 59BFF516
P 5200 4300
F 0 "J2" H 5200 4550 50  0000 C CNN
F 1 "LED Connector" V 5300 4300 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM3-96mm_Lock_3pin_straight" H 5200 4300 50  0001 C CNN
F 3 "" H 5200 4300 50  0001 C CNN
	1    5200 4300
	0    -1   -1   0   
$EndComp
Text GLabel 6425 5275 3    60   Input ~ 0
GND
Text GLabel 6825 5325 3    60   Input ~ 0
ADCTrig
Text GLabel 7175 5325 3    60   Output ~ 0
AVCC
NoConn ~ 7450 4375
$Comp
L TL084 U1
U 2 1 5BEAA9C2
P 2500 2475
F 0 "U1" H 2500 2675 50  0000 L CNN
F 1 "TL074" H 2500 2275 50  0000 L CNN
F 2 "SMD_Packages:SOIC-14_N" H 2450 2575 50  0001 C CNN
F 3 "" H 2550 2675 50  0001 C CNN
	2    2500 2475
	1    0    0    -1  
$EndComp
$Comp
L TL084 U1
U 3 1 5BEAAC27
P 5250 2475
F 0 "U1" H 5250 2675 50  0000 L CNN
F 1 "TL074" H 5225 2300 50  0000 L CNN
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
	2800 2475 3225 2475
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
Wire Wire Line
	6425 5275 6425 5175
Wire Wire Line
	6275 5175 6650 5175
Wire Wire Line
	7325 5100 7325 5325
Text GLabel 5200 4600 3    60   Input ~ 0
L_OUT_5
Wire Wire Line
	5200 4600 5200 4500
Text GLabel 5025 4600 3    60   Output ~ 0
GND
Text GLabel 5375 4600 3    60   Input ~ 0
VCC5-LDO
Wire Wire Line
	5025 4600 5025 4500
Wire Wire Line
	5025 4500 5100 4500
Wire Wire Line
	5375 4600 5375 4500
Wire Wire Line
	5375 4500 5300 4500
Wire Wire Line
	1550 2775 1550 2850
Wire Wire Line
	1350 2375 1550 2375
Text GLabel 7325 5325 3    60   Output ~ 0
VCC5
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
L GND #PWR4
U 1 1 5BF70EF9
P 6275 5275
F 0 "#PWR4" H 6275 5025 50  0001 C CNN
F 1 "GND" H 6275 5125 50  0000 C CNN
F 2 "" H 6275 5275 50  0001 C CNN
F 3 "" H 6275 5275 50  0001 C CNN
	1    6275 5275
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 5275 6275 5175
Connection ~ 6425 5175
$Comp
L CP1 C2
U 1 1 5BF7110F
P 8400 4800
F 0 "C2" H 8425 4900 50  0000 L CNN
F 1 "10uf tantale" H 8425 4700 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 8400 4800 50  0001 C CNN
F 3 "" H 8400 4800 50  0001 C CNN
	1    8400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4950 8400 5025
Text GLabel 6625 5325 3    60   Input ~ 0
AGND
Text GLabel 6975 5325 3    60   Output ~ 0
L_OUT_5
$Comp
L TL084 U1
U 2 1 5BEAAB44
P 4025 2375
F 0 "U1" H 4025 2575 50  0000 L CNN
F 1 "TL074" H 3975 2200 50  0000 L CNN
F 2 "SMD_Packages:SOIC-14_N" H 3975 2475 50  0001 C CNN
F 3 "" H 4075 2575 50  0001 C CNN
	2    4025 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2375 1850 3175
Wire Wire Line
	3675 3175 3675 2475
Wire Wire Line
	3675 2475 3725 2475
Wire Wire Line
	1850 2375 2200 2375
$Comp
L R R2
U 1 1 5C00F790
P 4525 2600
F 0 "R2" V 4605 2600 50  0000 C CNN
F 1 "10k" V 4525 2600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4455 2600 50  0001 C CNN
F 3 "" H 4525 2600 50  0001 C CNN
	1    4525 2600
	0    1    1    0   
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
	4675 2375 4950 2375
Wire Wire Line
	4325 2375 4375 2375
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
	5600 2075 5600 3050
Wire Wire Line
	5600 3050 5475 3050
$Comp
L GND #PWR3
U 1 1 5C010E1D
P 4850 3350
F 0 "#PWR3" H 4850 3100 50  0001 C CNN
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
P 8475 2375
F 0 "U1" H 8475 2575 50  0000 L CNN
F 1 "TL074" H 8475 2175 50  0000 L CNN
F 2 "SMD_Packages:SOIC-14_N" H 8425 2475 50  0001 C CNN
F 3 "" H 8525 2575 50  0001 C CNN
	4    8475 2375
	1    0    0    -1  
$EndComp
Connection ~ 5600 2475
Text GLabel 6950 2075 2    60   Output ~ 0
ADCTrig
$Comp
L D_Zener_ALT D2
U 1 1 5C015A06
P 6650 2375
F 0 "D2" H 6650 2475 50  0000 C CNN
F 1 "BZX79C3V3" H 6725 2275 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6650 2375 50  0001 C CNN
F 3 "" H 6650 2375 50  0001 C CNN
	1    6650 2375
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 2525 6650 2525
$Comp
L +5V #PWR7
U 1 1 5C01D94C
P 7450 5025
F 0 "#PWR7" H 7450 4875 50  0001 C CNN
F 1 "+5V" H 7450 5165 50  0000 C CNN
F 2 "" H 7450 5025 50  0001 C CNN
F 3 "" H 7450 5025 50  0001 C CNN
	1    7450 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5025 7450 5100
Wire Wire Line
	7450 5100 7325 5100
Connection ~ 7325 5225
Text Notes 4775 2000 0    79   ~ 16
Log amplifier \n(gain = 2)
Text Notes 2375 1575 0    79   ~ 16
Signal positive rectification
Wire Notes Line
	4425 1925 4425 1650
Wire Notes Line
	4425 1650 2000 1650
Wire Notes Line
	2000 1650 2000 1900
Text Notes 1300 2300 0    60   ~ 0
Voltage reduction
Text Notes 5650 1925 0    79   ~ 16
Low pass filter at 4.8kHz
Text Notes 850  4100 0    60   ~ 0
Input from 3 possible situations:\n1) Piezo trigger alone\n2) Electronic drum piezo mic out TRS\n3) Piezo splitted for this input and input of a \n  drum module such as the Roland TD-12.
Wire Notes Line
	950  3600 950  2375
Wire Notes Line
	950  2375 1025 2375
$Comp
L CP1 C3
U 1 1 5C0311A3
P 9100 4800
F 0 "C3" H 9125 4900 50  0000 L CNN
F 1 "100nf cer" H 9125 4700 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 9100 4800 50  0001 C CNN
F 3 "" H 9100 4800 50  0001 C CNN
	1    9100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4950 9100 5025
Text Notes 8250 3975 0    60   ~ 0
Close to opamp supply
Wire Notes Line
	8200 4525 8200 4025
Wire Notes Line
	8200 4025 9575 4025
Wire Notes Line
	9575 4025 9575 4950
$Comp
L R R3
U 1 1 5C44BBA8
P 6000 2075
F 0 "R3" V 6080 2075 50  0000 C CNN
F 1 "10k" V 6000 2075 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5930 2075 50  0001 C CNN
F 3 "" H 6000 2075 50  0001 C CNN
	1    6000 2075
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 2075 5600 2075
$Comp
L C C1
U 1 1 5C44BCEB
P 6375 2300
F 0 "C1" H 6400 2400 50  0000 L CNN
F 1 "105" H 6400 2200 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D4.0mm_P2.00mm" H 6413 2150 50  0001 C CNN
F 3 "" H 6375 2300 50  0001 C CNN
	1    6375 2300
	-1   0    0    1   
$EndComp
Connection ~ 6375 2075
Connection ~ 6550 5175
Wire Wire Line
	7150 5175 7325 5175
Connection ~ 7325 5175
Connection ~ 7250 5175
Wire Wire Line
	6750 5175 6750 5275
Wire Wire Line
	6750 5275 6625 5275
Wire Wire Line
	6625 5275 6625 5325
Wire Wire Line
	6850 5175 6850 5275
Wire Wire Line
	6850 5275 6825 5275
Wire Wire Line
	6825 5275 6825 5325
Wire Wire Line
	6950 5175 6950 5275
Wire Wire Line
	6950 5275 6975 5275
Wire Wire Line
	6975 5275 6975 5325
Wire Wire Line
	7050 5175 7050 5275
Wire Wire Line
	7050 5275 7175 5275
Wire Wire Line
	7175 5275 7175 5325
Text GLabel 2475 2850 2    60   Output ~ 0
AVSS
Wire Wire Line
	2400 2775 2400 2850
Wire Wire Line
	2400 2850 2475 2850
Text GLabel 4000 2750 2    60   Output ~ 0
AVSS
Text GLabel 5200 2850 2    60   Output ~ 0
AVSS
Wire Wire Line
	5200 2850 5150 2850
Wire Wire Line
	5150 2850 5150 2775
Wire Wire Line
	4000 2750 3925 2750
Wire Wire Line
	3925 2750 3925 2675
Text GLabel 2325 2100 0    60   Input ~ 0
AVCC
Wire Wire Line
	2325 2100 2400 2100
Wire Wire Line
	2400 2100 2400 2175
Text GLabel 3875 2000 0    60   Input ~ 0
AVCC
Wire Wire Line
	3875 2000 3925 2000
Wire Wire Line
	3925 2000 3925 2075
Text GLabel 5075 2100 0    60   Input ~ 0
AVCC
Wire Wire Line
	5075 2100 5150 2100
Wire Wire Line
	5150 2100 5150 2175
Wire Wire Line
	1850 3175 3675 3175
Wire Wire Line
	3725 2275 3500 2275
Wire Wire Line
	3500 2275 3500 1850
Wire Wire Line
	3500 1850 4350 1850
Wire Wire Line
	4350 1850 4350 2375
Connection ~ 4350 2375
Wire Wire Line
	4675 2600 4700 2600
Connection ~ 2925 2475
Wire Wire Line
	4700 2600 4700 2375
Wire Wire Line
	4375 2600 4375 2950
Wire Wire Line
	4375 2950 3225 2950
Wire Wire Line
	5550 2475 5600 2475
Wire Wire Line
	6375 2075 6375 2150
Wire Wire Line
	6375 2450 6375 2525
Wire Wire Line
	6650 2075 6650 2225
Connection ~ 6650 2075
Wire Wire Line
	6150 2075 6950 2075
Text GLabel 1550 2850 3    60   Output ~ 0
AGND
Text GLabel 8400 4525 1    60   Input ~ 0
AVCC
Text GLabel 9100 4550 1    60   Input ~ 0
AVCC
Wire Wire Line
	9100 4550 9100 4650
Wire Wire Line
	8400 4650 8400 4525
Text GLabel 8400 5025 3    60   Output ~ 0
AGND
Text GLabel 9100 5025 3    60   Output ~ 0
AGND
Wire Wire Line
	8175 2475 8050 2475
Wire Wire Line
	8050 2475 8050 2925
Wire Wire Line
	8050 2925 9000 2925
Wire Wire Line
	9000 2925 9000 2375
Wire Wire Line
	9000 2375 8775 2375
Text GLabel 6375 2525 3    60   Output ~ 0
AGND
Text GLabel 6650 2525 3    60   Output ~ 0
AGND
Text GLabel 8375 2075 0    60   Input ~ 0
AVCC
Text GLabel 8375 2675 2    60   Output ~ 0
AVSS
Text GLabel 8175 2275 0    60   Output ~ 0
AGND
Text Notes 4575 4100 0    79   ~ 16
LED Strip connection
Text Notes 6225 4100 0    79   ~ 16
Main Module interface
Text Notes 7875 1900 0    79   ~ 16
Unused opamp channel
$Comp
L TC1044S U?
U 1 1 5C6DD326
P 2475 5675
F 0 "U?" H 2275 6025 60  0000 C CNN
F 1 "TC1044S" H 2475 5275 60  0000 C CNN
F 2 "" H 2475 5675 60  0001 C CNN
F 3 "" H 2475 5675 60  0001 C CNN
	1    2475 5675
	1    0    0    -1  
$EndComp
Text GLabel 3600 5475 2    60   Input ~ 0
AVCC
Wire Wire Line
	1975 5475 1875 5475
Wire Wire Line
	1875 5475 1875 5050
Wire Wire Line
	1875 5050 3200 5050
Wire Wire Line
	3200 5050 3200 5475
Wire Wire Line
	3125 5475 3600 5475
Connection ~ 3200 5475
NoConn ~ 3125 5775
Text GLabel 1775 5775 0    60   Output ~ 0
AGND
Wire Wire Line
	1775 5775 1975 5775
Text GLabel 3550 5925 2    60   Output ~ 0
AVSS
NoConn ~ 3125 5625
$Comp
L CP C?
U 1 1 5C6DDAED
P 1225 5800
F 0 "C?" H 1250 5900 50  0000 L CNN
F 1 "10u" H 1250 5700 50  0000 L CNN
F 2 "" H 1263 5650 50  0001 C CNN
F 3 "" H 1225 5800 50  0001 C CNN
	1    1225 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1975 5625 1225 5625
Wire Wire Line
	1225 5625 1225 5650
Wire Wire Line
	1225 5950 1975 5950
Wire Wire Line
	1975 5950 1975 5925
Wire Wire Line
	3125 5925 3550 5925
Text GLabel 3325 6375 3    60   Output ~ 0
AGND
$Comp
L CP C?
U 1 1 5C6DDDFD
P 3325 6125
F 0 "C?" H 3350 6225 50  0000 L CNN
F 1 "10u" H 3350 6025 50  0000 L CNN
F 2 "" H 3363 5975 50  0001 C CNN
F 3 "" H 3325 6125 50  0001 C CNN
	1    3325 6125
	-1   0    0    1   
$EndComp
Wire Wire Line
	3325 6275 3325 6375
Wire Wire Line
	3325 5975 3325 5925
Connection ~ 3325 5925
Text Notes 1725 4925 0    79   ~ 16
Negative supply for opamp
$Comp
L CP C?
U 1 1 5C6DEA9E
P 3450 5700
F 0 "C?" H 3475 5800 50  0000 L CNN
F 1 "100u" H 3475 5600 50  0000 L CNN
F 2 "" H 3488 5550 50  0001 C CNN
F 3 "" H 3450 5700 50  0001 C CNN
	1    3450 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5550 3450 5475
Connection ~ 3450 5475
Wire Wire Line
	3450 5850 3450 5925
Connection ~ 3450 5925
$EndSCHEMATC
