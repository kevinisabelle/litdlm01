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
LIBS:kevparts
LIBS:EC-DLM-001-Rev3-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "EC-DLM-001-REV7"
Date "2018-07-23"
Rev "Rev7"
Comp "Electro Castle"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATXMEGA64A3U-AU U3
U 1 1 59A1E9EB
P 5500 4575
F 0 "U3" H 4675 6050 50  0000 L BNN
F 1 "ATXMEGA64A3U-AU" H 5850 2875 50  0000 L BNN
F 2 "Housings_QFP:TQFP-64_14x14mm_Pitch0.8mm" H 5500 4575 50  0001 C CIN
F 3 "" H 5500 4575 50  0001 C CNN
	1    5500 4575
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 59A1EB98
P 5250 2400
F 0 "C9" H 5275 2500 50  0000 L CNN
F 1 "100n" H 5275 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5288 2250 50  0001 C CNN
F 3 "" H 5250 2400 50  0001 C CNN
	1    5250 2400
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 59A1EBF3
P 5350 2175
F 0 "C10" H 5375 2275 50  0000 L CNN
F 1 "100n" H 5375 2075 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5388 2025 50  0001 C CNN
F 3 "" H 5350 2175 50  0001 C CNN
	1    5350 2175
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 59A1EC2A
P 5450 2400
F 0 "C11" H 5475 2500 50  0000 L CNN
F 1 "100n" H 5475 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5488 2250 50  0001 C CNN
F 3 "" H 5450 2400 50  0001 C CNN
	1    5450 2400
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 59A1EC50
P 5550 2175
F 0 "C12" H 5575 2275 50  0000 L CNN
F 1 "100n" H 5575 2075 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5588 2025 50  0001 C CNN
F 3 "" H 5550 2175 50  0001 C CNN
	1    5550 2175
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 59A1EC89
P 5650 2400
F 0 "C13" H 5675 2500 50  0000 L CNN
F 1 "100n" H 5675 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5688 2250 50  0001 C CNN
F 3 "" H 5650 2400 50  0001 C CNN
	1    5650 2400
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 59A1ECBB
P 5850 2400
F 0 "C14" H 5875 2500 50  0000 L CNN
F 1 "100n" H 5875 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5888 2250 50  0001 C CNN
F 3 "" H 5850 2400 50  0001 C CNN
	1    5850 2400
	1    0    0    -1  
$EndComp
$Comp
L RJ45 J7
U 1 1 59A1ECFE
P 9900 2025
F 0 "J7" H 10100 2525 50  0000 C CNN
F 1 "RJ45" H 9750 2525 50  0000 C CNN
F 2 "Connectors:RJ45_8" H 9900 2025 50  0001 C CNN
F 3 "" H 9900 2025 50  0001 C CNN
	1    9900 2025
	0    1    1    0   
$EndComp
$Comp
L RJ45 J9
U 1 1 59A1EDD4
P 9925 4075
F 0 "J9" H 10125 4575 50  0000 C CNN
F 1 "RJ45" H 9775 4575 50  0000 C CNN
F 2 "Connectors:RJ45_8" H 9925 4075 50  0001 C CNN
F 3 "" H 9925 4075 50  0001 C CNN
	1    9925 4075
	0    1    1    0   
$EndComp
$Comp
L RJ45 J11
U 1 1 59A1EE1B
P 9925 6150
F 0 "J11" H 10125 6650 50  0000 C CNN
F 1 "RJ45" H 9775 6650 50  0000 C CNN
F 2 "Connectors:RJ45_8" H 9925 6150 50  0001 C CNN
F 3 "" H 9925 6150 50  0001 C CNN
	1    9925 6150
	0    1    1    0   
$EndComp
$Comp
L RJ45 J6
U 1 1 59A1EF1F
P 9900 1000
F 0 "J6" H 10100 1500 50  0000 C CNN
F 1 "RJ45" H 9750 1500 50  0000 C CNN
F 2 "Connectors:RJ45_8" H 9900 1000 50  0001 C CNN
F 3 "" H 9900 1000 50  0001 C CNN
	1    9900 1000
	0    1    1    0   
$EndComp
$Comp
L RJ45 J8
U 1 1 59A1EFEE
P 9925 3050
F 0 "J8" H 10125 3550 50  0000 C CNN
F 1 "RJ45" H 9775 3550 50  0000 C CNN
F 2 "Connectors:RJ45_8" H 9925 3050 50  0001 C CNN
F 3 "" H 9925 3050 50  0001 C CNN
	1    9925 3050
	0    1    1    0   
$EndComp
$Comp
L RJ45 J10
U 1 1 59A1F070
P 9925 5125
F 0 "J10" H 10125 5625 50  0000 C CNN
F 1 "RJ45" H 9775 5625 50  0000 C CNN
F 2 "Connectors:RJ45_8" H 9925 5125 50  0001 C CNN
F 3 "" H 9925 5125 50  0001 C CNN
	1    9925 5125
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead L2
U 1 1 59A1F175
P 6200 2425
F 0 "L2" V 6050 2450 50  0000 C CNN
F 1 "Fer Bead" V 6325 2475 50  0000 C CNN
F 2 "Inductors_SMD:L_0603_HandSoldering" V 6130 2425 50  0001 C CNN
F 3 "" H 6200 2425 50  0001 C CNN
	1    6200 2425
	0    1    1    0   
$EndComp
$Comp
L Max485 U2
U 1 1 59A1FB01
P 2975 6700
F 0 "U2" H 3075 6550 60  0000 C CNN
F 1 "SN65HVD75DR" H 2975 7250 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2975 6700 60  0001 C CNN
F 3 "" H 2975 6700 60  0001 C CNN
	1    2975 6700
	-1   0    0    1   
$EndComp
$Comp
L LM317T U1
U 1 1 59A2071B
P 1975 900
F 0 "U1" H 1775 1100 50  0000 C CNN
F 1 "LM317T" H 1975 1100 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 1975 1000 50  0001 C CIN
F 3 "" H 1975 900 50  0001 C CNN
	1    1975 900 
	1    0    0    -1  
$EndComp
Text Label 1200 850  0    60   ~ 0
VCC
$Comp
L CP1 C1
U 1 1 59A208EC
P 1625 1275
F 0 "C1" H 1650 1375 50  0000 L CNN
F 1 "100u" H 1650 1175 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 1625 1275 50  0001 C CNN
F 3 "" H 1625 1275 50  0001 C CNN
	1    1625 1275
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 59A2094F
P 2675 1450
F 0 "C2" H 2700 1550 50  0000 L CNN
F 1 "10u" H 2700 1350 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 2675 1450 50  0001 C CNN
F 3 "" H 2675 1450 50  0001 C CNN
	1    2675 1450
	1    0    0    -1  
$EndComp
$Comp
L CP1 C5
U 1 1 59A209D8
P 2950 1450
F 0 "C5" H 2975 1550 50  0000 L CNN
F 1 "100n" H 2975 1350 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_Tantal_D5.5mm_P2.50mm" H 2950 1450 50  0001 C CNN
F 3 "" H 2950 1450 50  0001 C CNN
	1    2950 1450
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59A20A47
P 1975 1375
F 0 "R2" V 2055 1375 50  0000 C CNN
F 1 "75" V 1975 1375 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1905 1375 50  0001 C CNN
F 3 "" H 1975 1375 50  0001 C CNN
	1    1975 1375
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59A20ABA
P 1975 1725
F 0 "R3" V 2055 1725 50  0000 C CNN
F 1 "470" V 1975 1725 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1905 1725 50  0001 C CNN
F 3 "" H 1975 1725 50  0001 C CNN
	1    1975 1725
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 59A20B4E
P 2475 1000
F 0 "R6" V 2555 1000 50  0000 C CNN
F 1 "330" V 2475 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2405 1000 50  0001 C CNN
F 3 "" H 2475 1000 50  0001 C CNN
	1    2475 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59A20E7F
P 1975 2075
F 0 "#PWR01" H 1975 1825 50  0001 C CNN
F 1 "GND" H 1975 1925 50  0000 C CNN
F 2 "" H 1975 2075 50  0001 C CNN
F 3 "" H 1975 2075 50  0001 C CNN
	1    1975 2075
	1    0    0    -1  
$EndComp
Text Label 2925 850  0    60   ~ 0
VDD
$Comp
L +5V #PWR02
U 1 1 59A21D31
P 1100 675
F 0 "#PWR02" H 1100 525 50  0001 C CNN
F 1 "+5V" H 1100 815 50  0000 C CNN
F 2 "" H 1100 675 50  0001 C CNN
F 3 "" H 1100 675 50  0001 C CNN
	1    1100 675 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 59A22698
P 6300 1875
F 0 "#PWR03" H 6300 1625 50  0001 C CNN
F 1 "GND" H 6300 1725 50  0000 C CNN
F 2 "" H 6300 1875 50  0001 C CNN
F 3 "" H 6300 1875 50  0001 C CNN
	1    6300 1875
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59A23B16
P 5525 6575
F 0 "#PWR04" H 5525 6325 50  0001 C CNN
F 1 "GND" H 5525 6425 50  0000 C CNN
F 2 "" H 5525 6575 50  0001 C CNN
F 3 "" H 5525 6575 50  0001 C CNN
	1    5525 6575
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 J5
U 1 1 59A243D0
P 3950 3275
F 0 "J5" H 3950 3475 50  0000 C CNN
F 1 "PDI Interface" H 3950 3075 50  0000 C CNN
F 2 "Connectors:IDC_Header_Straight_6pins" H 3950 2075 50  0001 C CNN
F 3 "" H 3950 2075 50  0001 C CNN
	1    3950 3275
	-1   0    0    1   
$EndComp
$Comp
L L L3
U 1 1 59A2518E
P 6950 2275
F 0 "L3" V 6900 2275 50  0000 C CNN
F 1 "10uH" V 7025 2275 50  0000 C CNN
F 2 "Inductors_SMD:L_0603_HandSoldering" H 6950 2275 50  0001 C CNN
F 3 "" H 6950 2275 50  0001 C CNN
	1    6950 2275
	0    1    1    0   
$EndComp
$Comp
L CP1 C16
U 1 1 59A25205
P 6550 2125
F 0 "C16" H 6575 2225 50  0000 L CNN
F 1 "10u" H 6575 2025 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 6550 2125 50  0001 C CNN
F 3 "" H 6550 2125 50  0001 C CNN
	1    6550 2125
	-1   0    0    1   
$EndComp
$Comp
L CP1 C15
U 1 1 59A25287
P 6050 2100
F 0 "C15" H 6075 2200 50  0000 L CNN
F 1 "10u" H 6075 2000 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 6050 2100 50  0001 C CNN
F 3 "" H 6050 2100 50  0001 C CNN
	1    6050 2100
	-1   0    0    1   
$EndComp
NoConn ~ 4200 3275
NoConn ~ 3700 3275
$Comp
L GND #PWR05
U 1 1 59A280D6
P 3550 3075
F 0 "#PWR05" H 3550 2825 50  0001 C CNN
F 1 "GND" H 3550 2925 50  0000 C CNN
F 2 "" H 3550 3075 50  0001 C CNN
F 3 "" H 3550 3075 50  0001 C CNN
	1    3550 3075
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 59A28239
P 3950 3575
F 0 "R9" V 4030 3575 50  0000 C CNN
F 1 "10K" V 3950 3575 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3880 3575 50  0001 C CNN
F 3 "" H 3950 3575 50  0001 C CNN
	1    3950 3575
	0    1    1    0   
$EndComp
NoConn ~ 10275 4625
NoConn ~ 10275 5900
NoConn ~ 10125 5625
NoConn ~ 10125 4300
NoConn ~ 10100 3000
NoConn ~ 10250 3325
Text GLabel 3225 850  2    60   Output ~ 0
VDD
Text GLabel 7225 2275 2    60   Input ~ 0
VDD
NoConn ~ 375  3775
NoConn ~ 375  3975
$Comp
L R R7
U 1 1 59A24CC4
P 3750 7350
F 0 "R7" V 3830 7350 50  0000 C CNN
F 1 "10k" V 3750 7350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3680 7350 50  0001 C CNN
F 3 "" H 3750 7350 50  0001 C CNN
	1    3750 7350
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 59A24F90
P 4125 7275
F 0 "R10" V 4205 7275 50  0000 C CNN
F 1 "10k" V 4125 7275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4055 7275 50  0001 C CNN
F 3 "" H 4125 7275 50  0001 C CNN
	1    4125 7275
	1    0    0    -1  
$EndComp
$Comp
L XLR3 J2
U 1 1 59A25238
P 1225 6800
F 0 "J2" H 1375 7050 50  0000 C CNN
F 1 "DMX in" H 1425 6550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1225 6800 50  0001 C CNN
F 3 "" H 1225 6800 50  0001 C CNN
	1    1225 6800
	0    1    1    0   
$EndComp
$Comp
L XLR3 J1
U 1 1 59A2532A
P 1225 5975
F 0 "J1" H 1375 6225 50  0000 C CNN
F 1 "DMX out" H 1425 5725 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1225 5975 50  0001 C CNN
F 3 "" H 1225 5975 50  0001 C CNN
	1    1225 5975
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 59A257E2
P 2300 6200
F 0 "#PWR06" H 2300 5950 50  0001 C CNN
F 1 "GND" H 2300 6050 50  0000 C CNN
F 2 "" H 2300 6200 50  0001 C CNN
F 3 "" H 2300 6200 50  0001 C CNN
	1    2300 6200
	-1   0    0    1   
$EndComp
Text GLabel 3750 7675 3    60   Input ~ 0
VDD
$Comp
L CONN_01X05 J4
U 1 1 59A2C291
P 3525 5700
F 0 "J4" H 3525 6000 50  0000 C CNN
F 1 "Rotary Encoder" V 3625 5700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 3525 5700 50  0001 C CNN
F 3 "" H 3525 5700 50  0001 C CNN
	1    3525 5700
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X04 J3
U 1 1 59A2C43E
P 3525 4800
F 0 "J3" H 3525 5050 50  0000 C CNN
F 1 "LCD Screen" V 3625 4800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3525 4800 50  0001 C CNN
F 3 "" H 3525 4800 50  0001 C CNN
	1    3525 4800
	-1   0    0    1   
$EndComp
Text GLabel 4600 6650 2    60   Output ~ 0
DI
Text GLabel 4600 6875 2    60   Output ~ 0
DE-RE
Text GLabel 4600 7100 2    60   Output ~ 0
RO
Text GLabel 8625 1050 0    60   Input ~ 0
VCC
$Comp
L GND #PWR07
U 1 1 59A3B9A3
P 8600 750
F 0 "#PWR07" H 8600 500 50  0001 C CNN
F 1 "GND" H 8600 600 50  0000 C CNN
F 2 "" H 8600 750 50  0001 C CNN
F 3 "" H 8600 750 50  0001 C CNN
	1    8600 750 
	0    1    1    0   
$EndComp
Text GLabel 8650 2075 0    60   Input ~ 0
VCC
Text GLabel 8675 3100 0    60   Input ~ 0
VCC
Text GLabel 9125 4125 0    60   Input ~ 0
VCC
Text GLabel 9100 5175 0    60   Input ~ 0
VCC
Text GLabel 8700 6200 0    60   Input ~ 0
VCC
$Comp
L GND #PWR08
U 1 1 59A42939
P 8650 1775
F 0 "#PWR08" H 8650 1525 50  0001 C CNN
F 1 "GND" H 8650 1625 50  0000 C CNN
F 2 "" H 8650 1775 50  0001 C CNN
F 3 "" H 8650 1775 50  0001 C CNN
	1    8650 1775
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 59A429BC
P 8700 2800
F 0 "#PWR09" H 8700 2550 50  0001 C CNN
F 1 "GND" H 8700 2650 50  0000 C CNN
F 2 "" H 8700 2800 50  0001 C CNN
F 3 "" H 8700 2800 50  0001 C CNN
	1    8700 2800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 59A43C0F
P 8700 3825
F 0 "#PWR010" H 8700 3575 50  0001 C CNN
F 1 "GND" H 8700 3675 50  0000 C CNN
F 2 "" H 8700 3825 50  0001 C CNN
F 3 "" H 8700 3825 50  0001 C CNN
	1    8700 3825
	0    1    1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 59A43C92
P 8700 4875
F 0 "#PWR011" H 8700 4625 50  0001 C CNN
F 1 "GND" H 8700 4725 50  0000 C CNN
F 2 "" H 8700 4875 50  0001 C CNN
F 3 "" H 8700 4875 50  0001 C CNN
	1    8700 4875
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 59A44A0D
P 8700 5900
F 0 "#PWR012" H 8700 5650 50  0001 C CNN
F 1 "GND" H 8700 5750 50  0000 C CNN
F 2 "" H 8700 5900 50  0001 C CNN
F 3 "" H 8700 5900 50  0001 C CNN
	1    8700 5900
	0    1    1    0   
$EndComp
Text GLabel 900  850  0    60   Output ~ 0
VCC
Text GLabel 6625 6050 2    60   Input ~ 0
DI
Text GLabel 6625 5925 2    60   Input ~ 0
RO
Text GLabel 6625 5800 2    60   Input ~ 0
DE-RE
$Comp
L GND #PWR013
U 1 1 59A55C4B
P 2850 5075
F 0 "#PWR013" H 2850 4825 50  0001 C CNN
F 1 "GND" H 2850 4925 50  0000 C CNN
F 2 "" H 2850 5075 50  0001 C CNN
F 3 "" H 2850 5075 50  0001 C CNN
	1    2850 5075
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 59A55CCE
P 3300 6125
F 0 "#PWR014" H 3300 5875 50  0001 C CNN
F 1 "GND" H 3300 5975 50  0000 C CNN
F 2 "" H 3300 6125 50  0001 C CNN
F 3 "" H 3300 6125 50  0001 C CNN
	1    3300 6125
	1    0    0    -1  
$EndComp
$Comp
L CP1 C7
U 1 1 59A57D5C
P 3175 4875
F 0 "C7" H 3200 4975 50  0000 L CNN
F 1 "100n" H 3200 4775 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3175 4875 50  0001 C CNN
F 3 "" H 3175 4875 50  0001 C CNN
	1    3175 4875
	1    0    0    -1  
$EndComp
$Comp
L CP1 C4
U 1 1 59A57F83
P 2950 4875
F 0 "C4" H 2975 4975 50  0000 L CNN
F 1 "100n" H 2975 4775 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2950 4875 50  0001 C CNN
F 3 "" H 2950 4875 50  0001 C CNN
	1    2950 4875
	1    0    0    -1  
$EndComp
$Comp
L CP1 C8
U 1 1 59A58027
P 3225 5850
F 0 "C8" H 3250 5950 50  0000 L CNN
F 1 "100n" H 3250 5750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3225 5850 50  0001 C CNN
F 3 "" H 3225 5850 50  0001 C CNN
	1    3225 5850
	1    0    0    -1  
$EndComp
$Comp
L CP1 C6
U 1 1 59A580F2
P 3025 5850
F 0 "C6" H 3050 5950 50  0000 L CNN
F 1 "100n" H 3050 5750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3025 5850 50  0001 C CNN
F 3 "" H 3025 5850 50  0001 C CNN
	1    3025 5850
	1    0    0    -1  
$EndComp
$Comp
L CP1 C3
U 1 1 59A581A2
P 2825 5850
F 0 "C3" H 2850 5950 50  0000 L CNN
F 1 "100n" H 2850 5750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2825 5850 50  0001 C CNN
F 3 "" H 2825 5850 50  0001 C CNN
	1    2825 5850
	1    0    0    -1  
$EndComp
NoConn ~ 10250 2575
NoConn ~ 10275 3600
NoConn ~ 10250 1550
NoConn ~ 10275 5675
NoConn ~ 10275 6700
Text GLabel 3900 4950 2    60   Input ~ 0
VCC
Text GLabel 4050 5800 2    60   Input ~ 0
VCC
$Comp
L BARREL_JACK J12
U 1 1 59A313FB
P 900 1225
F 0 "J12" H 900 1420 50  0000 C CNN
F 1 "BARREL_JACK" H 900 1070 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 900 1225 50  0001 C CNN
F 3 "" H 900 1225 50  0001 C CNN
	1    900  1225
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J14
U 1 1 59A326EA
P 3300 1200
F 0 "J14" H 3300 1350 50  0000 C CNN
F 1 "3.3V" V 3400 1200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3300 1200 50  0001 C CNN
F 3 "" H 3300 1200 50  0001 C CNN
	1    3300 1200
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 J13
U 1 1 59A32B77
P 825 1700
F 0 "J13" H 825 1850 50  0000 C CNN
F 1 "5V" V 925 1700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 825 1700 50  0001 C CNN
F 3 "" H 825 1700 50  0001 C CNN
	1    825  1700
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 J15
U 1 1 59A34B1B
P 3950 6375
F 0 "J15" H 3950 6575 50  0000 C CNN
F 1 "DMX Test pins" V 4050 6375 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3950 6375 50  0001 C CNN
F 3 "" H 3950 6375 50  0001 C CNN
	1    3950 6375
	0    -1   -1   0   
$EndComp
$Comp
L CP1 C17
U 1 1 59A3894A
P 1250 1200
F 0 "C17" H 1275 1300 50  0000 L CNN
F 1 "1000u" H 1275 1100 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D14.0mm_P7.50mm" H 1250 1200 50  0001 C CNN
F 3 "" H 1250 1200 50  0001 C CNN
	1    1250 1200
	1    0    0    -1  
$EndComp
Text GLabel 6575 2525 2    60   Input ~ 0
VDD-Filtered
Text GLabel 3375 3525 1    60   Input ~ 0
VDD-Filtered
Text Label 4250 3175 0    60   ~ 0
PDIClk
Text Label 4250 3375 0    60   ~ 0
PDIData
Text Label 3225 4500 0    60   ~ 0
LCDSDA
Text Label 3100 4400 0    60   ~ 0
LCDSCL
Text Label 2825 5300 0    60   ~ 0
PE3
Text Label 3025 5375 0    60   ~ 0
PE4
Text Label 3225 5500 0    60   ~ 0
PE5
Text Label 2350 6800 0    60   ~ 0
MAX485-A
Text Label 2350 6950 0    60   ~ 0
MAX485-B
Text GLabel 2300 6650 0    60   Input ~ 0
VDD
$Comp
L GND #PWR015
U 1 1 59B68F6F
P 2425 7150
F 0 "#PWR015" H 2425 6900 50  0001 C CNN
F 1 "GND" H 2425 7000 50  0000 C CNN
F 2 "" H 2425 7150 50  0001 C CNN
F 3 "" H 2425 7150 50  0001 C CNN
	1    2425 7150
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 59BC61DE
P 5100 7800
F 0 "D4" H 5100 7900 50  0000 C CNN
F 1 "LED" H 5100 7700 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 5100 7800 50  0001 C CNN
F 3 "" H 5100 7800 50  0001 C CNN
	1    5100 7800
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 59BC6281
P 4675 7800
F 0 "R14" V 4755 7800 50  0000 C CNN
F 1 "R" V 4675 7800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4605 7800 50  0001 C CNN
F 3 "" H 4675 7800 50  0001 C CNN
	1    4675 7800
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 59BC6472
P 4675 7600
F 0 "R13" V 4755 7600 50  0000 C CNN
F 1 "R" V 4675 7600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4605 7600 50  0001 C CNN
F 3 "" H 4675 7600 50  0001 C CNN
	1    4675 7600
	0    1    1    0   
$EndComp
$Comp
L LED D3
U 1 1 59BC6605
P 5075 7600
F 0 "D3" H 5075 7700 50  0000 C CNN
F 1 "LED" H 5075 7500 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 5075 7600 50  0001 C CNN
F 3 "" H 5075 7600 50  0001 C CNN
	1    5075 7600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 59BC7136
P 4375 7775
F 0 "#PWR016" H 4375 7525 50  0001 C CNN
F 1 "GND" H 4375 7625 50  0000 C CNN
F 2 "" H 4375 7775 50  0001 C CNN
F 3 "" H 4375 7775 50  0001 C CNN
	1    4375 7775
	1    0    0    -1  
$EndComp
$Comp
L SN74AHCT125QDRQ1 U4
U 1 1 59E07861
P 1700 2950
F 0 "U4" H 1675 2100 60  0000 C CNN
F 1 "SN74AHCT125QDRQ1" H 1700 2950 60  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 1700 2950 60  0001 C CNN
F 3 "" H 1700 2950 60  0001 C CNN
	1    1700 2950
	1    0    0    -1  
$EndComp
$Comp
L SN74AHCT125QDRQ1 U5
U 1 1 59E07CF7
P 1700 4125
F 0 "U5" H 1675 3250 60  0000 C CNN
F 1 "SN74AHCT125QDRQ1" H 1700 4125 60  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 1700 4125 60  0001 C CNN
F 3 "" H 1700 4125 60  0001 C CNN
	1    1700 4125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 59E09C13
P 4125 7625
F 0 "#PWR017" H 4125 7375 50  0001 C CNN
F 1 "GND" H 4125 7475 50  0000 C CNN
F 2 "" H 4125 7625 50  0001 C CNN
F 3 "" H 4125 7625 50  0001 C CNN
	1    4125 7625
	1    0    0    -1  
$EndComp
Text GLabel 6625 3175 2    60   Output ~ 0
L1_OUT_3.3
Text GLabel 6625 3275 2    60   Output ~ 0
L2_OUT_3.3
Text GLabel 6625 3375 2    60   Output ~ 0
L3_OUT_3.3
Text GLabel 6625 3475 2    60   Output ~ 0
L4_OUT_3.3
Text GLabel 6625 3575 2    60   Output ~ 0
L5_OUT_3.3
Text GLabel 6625 3675 2    60   Output ~ 0
L6_OUT_3.3
Text GLabel 1150 3200 0    60   Input ~ 0
L1_OUT_3.3
Text GLabel 1150 3500 0    60   Input ~ 0
L2_OUT_3.3
Text GLabel 2225 3600 2    60   Input ~ 0
L3_OUT_3.3
Text GLabel 2225 3275 2    60   Input ~ 0
L4_OUT_3.3
Text GLabel 2225 3400 2    60   Output ~ 0
L4_OUT_5
Text GLabel 2225 3725 2    60   Output ~ 0
L3_OUT_5
Text GLabel 1150 3325 0    60   Output ~ 0
L1_OUT_5
Text GLabel 1150 3625 0    60   Output ~ 0
L2_OUT_5
Text GLabel 1125 4350 0    60   Input ~ 0
L5_OUT_3.3
Text GLabel 1125 4475 0    60   Output ~ 0
L5_OUT_5
Text GLabel 1125 4675 0    60   Input ~ 0
L6_OUT_3.3
Text GLabel 1125 4800 0    60   Output ~ 0
L6_OUT_5
$Comp
L GND #PWR018
U 1 1 59E1A482
P 925 5025
F 0 "#PWR018" H 925 4775 50  0001 C CNN
F 1 "GND" H 925 4875 50  0000 C CNN
F 2 "" H 925 5025 50  0001 C CNN
F 3 "" H 925 5025 50  0001 C CNN
	1    925  5025
	1    0    0    -1  
$EndComp
Text GLabel 2400 3100 2    60   Input ~ 0
VCC
Text GLabel 2300 4275 2    60   Input ~ 0
VCC
Text GLabel 9300 1350 0    60   Input ~ 0
L1_OUT_5
Text GLabel 9325 2375 0    60   Input ~ 0
L2_OUT_5
Text GLabel 9350 3400 0    60   Input ~ 0
L3_OUT_5
Text GLabel 9350 4425 0    60   Input ~ 0
L4_OUT_5
Text GLabel 9350 5475 0    60   Input ~ 0
L5_OUT_5
Text GLabel 9325 6500 0    60   Input ~ 0
L6_OUT_5
$Comp
L R R1
U 1 1 59E2B03C
P 2075 6800
F 0 "R1" V 2155 6800 50  0000 C CNN
F 1 "10" V 2075 6800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2005 6800 50  0001 C CNN
F 3 "" H 2075 6800 50  0001 C CNN
	1    2075 6800
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 59E2B146
P 2125 7200
F 0 "R4" V 2205 7200 50  0000 C CNN
F 1 "10" V 2125 7200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2055 7200 50  0001 C CNN
F 3 "" H 2125 7200 50  0001 C CNN
	1    2125 7200
	-1   0    0    1   
$EndComp
$Comp
L C C18
U 1 1 59E2CB4A
P 2425 6425
F 0 "C18" H 2450 6525 50  0000 L CNN
F 1 "100n" H 2450 6325 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2463 6275 50  0001 C CNN
F 3 "" H 2425 6425 50  0001 C CNN
	1    2425 6425
	1    0    0    -1  
$EndComp
$Comp
L D_TVS_x2_AAC D1
U 1 1 59E2D69E
P 1600 7525
F 0 "D1" H 1600 7700 50  0000 C CNN
F 1 "CDSOT23-SM712" H 1600 7625 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 1450 7525 50  0001 C CNN
F 3 "" H 1450 7525 50  0001 C CNN
	1    1600 7525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 59E2E0DA
P 1600 7700
F 0 "#PWR019" H 1600 7450 50  0001 C CNN
F 1 "GND" H 1600 7550 50  0000 C CNN
F 2 "" H 1600 7700 50  0001 C CNN
F 3 "" H 1600 7700 50  0001 C CNN
	1    1600 7700
	1    0    0    -1  
$EndComp
Text GLabel 6625 3775 2    60   Output ~ 0
L7_OUT_3.3
Text GLabel 6625 3875 2    60   Output ~ 0
L8_OUT_3.3
Text GLabel 2200 4775 2    60   Input ~ 0
L7_OUT_3.3
Text GLabel 2200 4475 2    60   Input ~ 0
L8_OUT_3.3
$Comp
L CONN_01X02 J16
U 1 1 5A3B2211
P 2150 5275
F 0 "J16" H 2150 5425 50  0000 C CNN
F 1 "Aux LED Out 7-8" V 2250 5275 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 2150 5275 50  0001 C CNN
F 3 "" H 2150 5275 50  0001 C CNN
	1    2150 5275
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 J18
U 1 1 5A3B344D
P 7250 4675
F 0 "J18" H 7250 4825 50  0000 C CNN
F 1 "Aux ADC Input 7-8" H 7700 4750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7250 4675 50  0001 C CNN
F 3 "" H 7250 4675 50  0001 C CNN
	1    7250 4675
	1    0    0    -1  
$EndComp
Text GLabel 4425 4025 0    60   Output ~ 0
RST6
Text GLabel 4425 4125 0    60   Output ~ 0
RST5
Text GLabel 4425 4325 0    60   Output ~ 0
RST3
Text GLabel 4425 4425 0    60   Output ~ 0
RST2
Text GLabel 4425 4525 0    60   Output ~ 0
RST1
Text GLabel 4425 4225 0    60   Output ~ 0
RST4
$Comp
L CONN_01X02 J17
U 1 1 5A3C0097
P 3600 4000
F 0 "J17" H 3600 4150 50  0000 C CNN
F 1 "Aux RST Out 7-8" H 3625 3825 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3600 4000 50  0001 C CNN
F 3 "" H 3600 4000 50  0001 C CNN
	1    3600 4000
	-1   0    0    1   
$EndComp
Text GLabel 9375 4875 0    60   Input ~ 0
RST5
Text GLabel 9400 5900 0    60   Input ~ 0
RST6
Text GLabel 9375 3825 0    60   Input ~ 0
RST4
Text GLabel 9375 2800 0    60   Input ~ 0
RST3
Text GLabel 9350 1775 0    60   Input ~ 0
RST2
Text GLabel 9325 750  0    60   Input ~ 0
RST1
$Comp
L CONN_01X02 J19
U 1 1 5A3CDCCD
P 7100 5525
F 0 "J19" H 7225 5450 50  0000 C CNN
F 1 "STrigger Input 7-8" H 7550 5600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7100 5525 50  0001 C CNN
F 3 "" H 7100 5525 50  0001 C CNN
	1    7100 5525
	1    0    0    -1  
$EndComp
Text GLabel 4425 3775 0    60   Input ~ 0
BTN1
Text GLabel 4425 3875 0    60   Input ~ 0
BTN2
Text GLabel 4300 6025 0    60   Input ~ 0
BTN3
Text GLabel 6625 5675 2    60   Input ~ 0
BTN4
Text GLabel 6900 850  2    60   Output ~ 0
BTN3
Text GLabel 6900 750  2    60   Output ~ 0
BTN4
Text GLabel 6900 950  2    60   Output ~ 0
BTN2
Text GLabel 6900 1050 2    60   Output ~ 0
BTN1
$Comp
L CONN_01X02 J25
U 1 1 5A3D94F3
P 5450 1000
F 0 "J25" H 5550 1000 50  0000 C CNN
F 1 "btn 1 & 2" H 5200 1000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5450 1000 50  0001 C CNN
F 3 "" H 5450 1000 50  0001 C CNN
	1    5450 1000
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 J22
U 1 1 5A3DF673
P 5450 750
F 0 "J22" H 5550 750 50  0000 C CNN
F 1 "btn 6" H 5200 700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 5450 750 50  0001 C CNN
F 3 "" H 5450 750 50  0001 C CNN
	1    5450 750 
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 J23
U 1 1 5A3DF798
P 5350 850
F 0 "J23" H 5450 850 50  0000 C CNN
F 1 "btn 3" H 5100 825 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 5350 850 50  0001 C CNN
F 3 "" H 5350 850 50  0001 C CNN
	1    5350 850 
	-1   0    0    1   
$EndComp
Text GLabel 8025 750  2    60   Input ~ 0
VDD
$Comp
L R R22
U 1 1 5A3E7511
P 6675 750
F 0 "R22" V 6725 600 50  0000 C CNN
F 1 "220" V 6675 750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6605 750 50  0001 C CNN
F 3 "" H 6675 750 50  0001 C CNN
	1    6675 750 
	0    -1   -1   0   
$EndComp
$Comp
L R R23
U 1 1 5A3E763D
P 6675 850
F 0 "R23" V 6725 700 50  0000 C CNN
F 1 "220" V 6675 850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6605 850 50  0001 C CNN
F 3 "" H 6675 850 50  0001 C CNN
	1    6675 850 
	0    -1   -1   0   
$EndComp
$Comp
L R R24
U 1 1 5A3E7771
P 6675 950
F 0 "R24" V 6725 800 50  0000 C CNN
F 1 "220" V 6675 950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6605 950 50  0001 C CNN
F 3 "" H 6675 950 50  0001 C CNN
	1    6675 950 
	0    -1   -1   0   
$EndComp
$Comp
L R R25
U 1 1 5A3E78A5
P 6675 1050
F 0 "R25" V 6725 900 50  0000 C CNN
F 1 "220" V 6675 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6605 1050 50  0001 C CNN
F 3 "" H 6675 1050 50  0001 C CNN
	1    6675 1050
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 5A3E7994
P 6175 1275
F 0 "R15" V 6225 1125 50  0000 C CNN
F 1 "10k" V 6175 1275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6105 1275 50  0001 C CNN
F 3 "" H 6175 1275 50  0001 C CNN
	1    6175 1275
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5A3E84C0
P 6275 1275
F 0 "R16" V 6325 1125 50  0000 C CNN
F 1 "10k" V 6275 1275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6205 1275 50  0001 C CNN
F 3 "" H 6275 1275 50  0001 C CNN
	1    6275 1275
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 5A3E86AC
P 6375 1275
F 0 "R17" V 6425 1125 50  0000 C CNN
F 1 "10k" V 6375 1275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6305 1275 50  0001 C CNN
F 3 "" H 6375 1275 50  0001 C CNN
	1    6375 1275
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 5A3E8ACD
P 6475 1275
F 0 "R18" V 6525 1125 50  0000 C CNN
F 1 "10k" V 6475 1275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6405 1275 50  0001 C CNN
F 3 "" H 6475 1275 50  0001 C CNN
	1    6475 1275
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5A3E8B83
P 6750 1475
F 0 "#PWR020" H 6750 1225 50  0001 C CNN
F 1 "GND" H 6750 1325 50  0000 C CNN
F 2 "" H 6750 1475 50  0001 C CNN
F 3 "" H 6750 1475 50  0001 C CNN
	1    6750 1475
	1    0    0    -1  
$EndComp
Text GLabel 6600 4875 2    60   Input ~ 0
STrig1
Text GLabel 6600 4975 2    60   Input ~ 0
STrig2
Text GLabel 6600 5075 2    60   Input ~ 0
STrig3
Text GLabel 6600 5175 2    60   Input ~ 0
STrig4
Text GLabel 6600 5275 2    60   Input ~ 0
STrig5
Text GLabel 6600 5375 2    60   Input ~ 0
STrig6
Text GLabel 9275 1150 0    60   Output ~ 0
STrig1
Text GLabel 9075 2175 0    60   Output ~ 0
STrig2
Text GLabel 9350 3200 0    60   Output ~ 0
STrig3
Text GLabel 9100 4225 0    60   Output ~ 0
STrig4
Text GLabel 9475 5275 0    60   Output ~ 0
STrig5
Text GLabel 9475 6300 0    60   Output ~ 0
STrig6
Text GLabel 6600 4025 2    60   Input ~ 0
ADCTrig1
Text GLabel 6600 4125 2    60   Input ~ 0
ADCTrig2
Text GLabel 6600 4225 2    60   Input ~ 0
ADCTrig3
Text GLabel 6600 4325 2    60   Input ~ 0
ADCTrig4
Text GLabel 6600 4425 2    60   Input ~ 0
ADCTrig5
Text GLabel 6600 4525 2    60   Input ~ 0
ADCTrig6
Text GLabel 9375 3000 0    60   Output ~ 0
ADCTrig3
Text GLabel 9350 950  0    60   Output ~ 0
ADCTrig1
Text GLabel 9350 1975 0    60   Output ~ 0
ADCTrig2
Text GLabel 9400 4025 0    60   Output ~ 0
ADCTrig4
Text GLabel 9400 5075 0    60   Output ~ 0
ADCTrig5
Text GLabel 9400 6100 0    60   Output ~ 0
ADCTrig6
$Comp
L Micro_SD_Card_Amphenol_114-00841-68 J26
U 1 1 5A481648
P 4400 1325
F 0 "J26" H 3750 1925 50  0000 C CNN
F 1 "Micro_SD_Card" H 5050 1925 50  0000 R CNN
F 2 "ec-dlm-001:Micro_SD_Card_Amphenol_114-00841-68" H 5550 1625 50  0001 C CNN
F 3 "" H 4400 1325 50  0001 C CNN
	1    4400 1325
	0    -1   -1   0   
$EndComp
Text GLabel 4400 5275 0    60   BiDi ~ 0
SD_SS
Text GLabel 4400 5375 0    60   BiDi ~ 0
SD_MOSI
Text GLabel 4400 5475 0    60   BiDi ~ 0
SD_MISO
Text GLabel 4400 5575 0    60   BiDi ~ 0
SD_SCK
Text GLabel 4100 2725 0    60   BiDi ~ 0
SD_SS
Text GLabel 4200 2875 0    60   BiDi ~ 0
SD_MOSI
Text GLabel 4700 2925 2    60   BiDi ~ 0
SD_MISO
Text GLabel 4500 2775 2    60   BiDi ~ 0
SD_SCK
$Comp
L R R30
U 1 1 5A48BF3E
P 4700 2375
F 0 "R30" V 4700 2200 50  0000 C CNN
F 1 "27" V 4700 2375 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4630 2375 50  0001 C CNN
F 3 "" H 4700 2375 50  0001 C CNN
	1    4700 2375
	1    0    0    -1  
$EndComp
$Comp
L R R28
U 1 1 5A48C97B
P 4200 2375
F 0 "R28" V 4200 2200 50  0000 C CNN
F 1 "27" V 4200 2375 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4130 2375 50  0001 C CNN
F 3 "" H 4200 2375 50  0001 C CNN
	1    4200 2375
	1    0    0    -1  
$EndComp
$Comp
L R R29
U 1 1 5A48CAA7
P 4500 2375
F 0 "R29" V 4500 2200 50  0000 C CNN
F 1 "27" V 4500 2375 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4430 2375 50  0001 C CNN
F 3 "" H 4500 2375 50  0001 C CNN
	1    4500 2375
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5A48EABF
P 5175 525
F 0 "#PWR021" H 5175 275 50  0001 C CNN
F 1 "GND" H 5175 375 50  0000 C CNN
F 2 "" H 5175 525 50  0001 C CNN
F 3 "" H 5175 525 50  0001 C CNN
	1    5175 525 
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5A49096E
P 3900 2350
F 0 "R12" V 3900 2525 50  0000 C CNN
F 1 "10k" V 3900 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3830 2350 50  0001 C CNN
F 3 "" H 3900 2350 50  0001 C CNN
	1    3900 2350
	0    1    1    0   
$EndComp
$Comp
L R R27
U 1 1 5A4962F9
P 3900 2600
F 0 "R27" V 3900 2775 50  0000 C CNN
F 1 "10k" V 3900 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3830 2600 50  0001 C CNN
F 3 "" H 3900 2600 50  0001 C CNN
	1    3900 2600
	0    1    1    0   
$EndComp
$Comp
L R R26
U 1 1 5A497190
P 3900 2475
F 0 "R26" V 3900 2650 50  0000 C CNN
F 1 "10k" V 3900 2475 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3830 2475 50  0001 C CNN
F 3 "" H 3900 2475 50  0001 C CNN
	1    3900 2475
	0    1    1    0   
$EndComp
Text GLabel 2800 2350 0    60   Input ~ 0
VDD
$Comp
L Ferrite_Bead L1
U 1 1 5A498BDB
P 3025 2350
F 0 "L1" V 2875 2375 50  0000 C CNN
F 1 "Ferrite_Bead" V 2875 2675 50  0000 C CNN
F 2 "Inductors_SMD:L_0603_HandSoldering" V 2955 2350 50  0001 C CNN
F 3 "" H 3025 2350 50  0001 C CNN
	1    3025 2350
	0    1    1    0   
$EndComp
$Comp
L C C20
U 1 1 5A49A90D
P 3425 2500
F 0 "C20" H 3450 2600 50  0000 L CNN
F 1 "100n" H 3450 2400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3463 2350 50  0001 C CNN
F 3 "" H 3425 2500 50  0001 C CNN
	1    3425 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5A49AB52
P 2775 2725
F 0 "#PWR022" H 2775 2475 50  0001 C CNN
F 1 "GND" H 2775 2575 50  0000 C CNN
F 2 "" H 2775 2725 50  0001 C CNN
F 3 "" H 2775 2725 50  0001 C CNN
	1    2775 2725
	0    1    1    0   
$EndComp
$Comp
L CP1 C19
U 1 1 5A49B23E
P 3175 2500
F 0 "C19" H 3200 2600 50  0000 L CNN
F 1 "10u" H 3025 2400 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 3175 2500 50  0001 C CNN
F 3 "" H 3175 2500 50  0001 C CNN
	1    3175 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5A49E4B4
P 4600 2375
F 0 "#PWR023" H 4600 2125 50  0001 C CNN
F 1 "GND" H 4600 2225 50  0000 C CNN
F 2 "" H 4600 2375 50  0001 C CNN
F 3 "" H 4600 2375 50  0001 C CNN
	1    4600 2375
	1    0    0    -1  
$EndComp
NoConn ~ 4800 2225
$Comp
L CONN_01X04 J20
U 1 1 5A4B9CC8
P 7425 900
F 0 "J20" H 7425 1150 50  0000 C CNN
F 1 "CONN_01X04" V 7525 900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 7425 900 50  0001 C CNN
F 3 "" H 7425 900 50  0001 C CNN
	1    7425 900 
	-1   0    0    1   
$EndComp
$Comp
L C C22
U 1 1 5A51AC19
P 5700 1300
F 0 "C22" H 5725 1400 50  0000 L CNN
F 1 "100n" H 5725 1200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5738 1150 50  0001 C CNN
F 3 "" H 5700 1300 50  0001 C CNN
	1    5700 1300
	1    0    0    -1  
$EndComp
$Comp
L C C23
U 1 1 5A51B1D2
P 5850 1450
F 0 "C23" H 5875 1550 50  0000 L CNN
F 1 "100n" H 5875 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5888 1300 50  0001 C CNN
F 3 "" H 5850 1450 50  0001 C CNN
	1    5850 1450
	1    0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 5A51B2E1
P 6000 1300
F 0 "C24" H 6025 1400 50  0000 L CNN
F 1 "100n" H 6025 1200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6038 1150 50  0001 C CNN
F 3 "" H 6000 1300 50  0001 C CNN
	1    6000 1300
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 5A51B3F5
P 5550 1450
F 0 "C21" H 5575 1550 50  0000 L CNN
F 1 "100n" H 5575 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5588 1300 50  0001 C CNN
F 3 "" H 5550 1450 50  0001 C CNN
	1    5550 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5A51B74C
P 5850 1650
F 0 "#PWR024" H 5850 1400 50  0001 C CNN
F 1 "GND" H 5850 1500 50  0000 C CNN
F 2 "" H 5850 1650 50  0001 C CNN
F 3 "" H 5850 1650 50  0001 C CNN
	1    5850 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4475 5925 4500 5925
Wire Wire Line
	4475 6200 4475 5925
Wire Wire Line
	4850 6200 4475 6200
Wire Wire Line
	4850 6600 4850 6200
Wire Wire Line
	5375 6600 4850 6600
Wire Wire Line
	5375 7800 5375 6600
Wire Wire Line
	5250 7800 5375 7800
Wire Wire Line
	4450 5825 4500 5825
Wire Wire Line
	4450 6250 4450 5825
Wire Wire Line
	4825 6250 4450 6250
Wire Wire Line
	4825 6700 4825 6250
Wire Wire Line
	5350 6700 4825 6700
Wire Wire Line
	5350 7600 5350 6700
Wire Wire Line
	5225 7600 5350 7600
Wire Wire Line
	9350 950  9450 950 
Wire Wire Line
	9350 1975 9450 1975
Wire Wire Line
	9375 3000 9475 3000
Wire Wire Line
	9400 4025 9475 4025
Wire Wire Line
	9400 6100 9475 6100
Wire Wire Line
	9400 5075 9475 5075
Wire Wire Line
	4500 4525 4425 4525
Wire Wire Line
	4500 4425 4425 4425
Wire Wire Line
	4500 4325 4425 4325
Wire Wire Line
	4500 4225 4425 4225
Wire Wire Line
	4500 4125 4425 4125
Wire Wire Line
	4425 4025 4500 4025
Wire Wire Line
	3975 4725 4500 4725
Wire Wire Line
	3975 3950 3975 4725
Wire Wire Line
	3800 3950 3975 3950
Wire Wire Line
	4000 4625 4500 4625
Wire Wire Line
	4000 4050 4000 4625
Wire Wire Line
	3800 4050 4000 4050
Wire Wire Line
	6500 4725 7050 4725
Wire Wire Line
	6500 4625 7050 4625
Wire Wire Line
	2100 4475 2200 4475
Wire Wire Line
	2200 5050 2200 5075
Wire Wire Line
	2150 5050 2200 5050
Wire Wire Line
	2150 4575 2150 5050
Wire Wire Line
	2100 4575 2150 4575
Wire Wire Line
	2100 4875 2100 5075
Wire Wire Line
	2100 4775 2200 4775
Connection ~ 2850 4375
Wire Wire Line
	2850 4675 2100 4675
Connection ~ 2850 3925
Wire Wire Line
	2850 4375 2100 4375
Wire Wire Line
	6500 3875 6625 3875
Wire Wire Line
	6500 3775 6625 3775
Wire Wire Line
	2425 6650 2300 6650
Wire Wire Line
	2425 6575 2425 6650
Wire Wire Line
	2425 6200 2425 6275
Wire Wire Line
	2425 7100 2425 7150
Wire Wire Line
	1600 7675 1600 7700
Wire Wire Line
	1975 7525 1950 7525
Wire Wire Line
	1975 7475 1975 7525
Wire Wire Line
	1250 7250 1250 7525
Wire Wire Line
	1825 7250 1250 7250
Wire Wire Line
	1825 6325 1825 7250
Wire Wire Line
	1925 6800 1825 6800
Wire Wire Line
	2225 6800 2425 6800
Wire Wire Line
	2125 7050 2125 6950
Wire Wire Line
	2125 7475 2125 7350
Wire Wire Line
	1975 7475 2150 7475
Wire Wire Line
	2150 7475 2150 7850
Wire Wire Line
	9325 6500 9475 6500
Wire Wire Line
	9350 5475 9475 5475
Wire Wire Line
	9350 4425 9475 4425
Wire Wire Line
	9350 3400 9475 3400
Wire Wire Line
	9325 2375 9450 2375
Wire Wire Line
	9300 1350 9450 1350
Wire Wire Line
	2100 4275 2300 4275
Wire Wire Line
	2100 3100 2400 3100
Connection ~ 2850 3500
Wire Wire Line
	2100 3200 2850 3200
Connection ~ 1250 3925
Wire Wire Line
	2850 3200 2850 4675
Wire Wire Line
	2100 3500 2850 3500
Connection ~ 525  3400
Wire Wire Line
	1250 3100 525  3100
Connection ~ 525  3925
Wire Wire Line
	1250 3400 525  3400
Connection ~ 525  4275
Wire Wire Line
	525  3925 2850 3925
Wire Wire Line
	1250 3700 1250 3925
Connection ~ 525  4575
Wire Wire Line
	525  4275 1250 4275
Connection ~ 925  4925
Wire Wire Line
	525  3100 525  4925
Wire Wire Line
	525  4575 1250 4575
Wire Wire Line
	925  4925 925  5025
Wire Wire Line
	525  4925 1250 4925
Wire Wire Line
	1250 4925 1250 4875
Wire Wire Line
	1125 4775 1125 4800
Wire Wire Line
	1250 4775 1125 4775
Wire Wire Line
	1125 4675 1250 4675
Wire Wire Line
	1250 4475 1125 4475
Wire Wire Line
	1225 4375 1250 4375
Wire Wire Line
	1225 4350 1225 4375
Wire Wire Line
	1125 4350 1225 4350
Wire Wire Line
	1150 3600 1150 3625
Wire Wire Line
	1250 3600 1150 3600
Wire Wire Line
	1250 3500 1150 3500
Wire Wire Line
	1150 3300 1150 3325
Wire Wire Line
	1250 3300 1150 3300
Wire Wire Line
	1250 3200 1150 3200
Wire Wire Line
	2225 3700 2225 3725
Wire Wire Line
	2100 3700 2225 3700
Wire Wire Line
	2100 3600 2225 3600
Wire Wire Line
	2100 3400 2225 3400
Wire Wire Line
	2225 3300 2225 3275
Wire Wire Line
	2100 3300 2225 3300
Wire Wire Line
	6500 3675 6625 3675
Wire Wire Line
	6500 3575 6625 3575
Wire Wire Line
	6500 3475 6625 3475
Wire Wire Line
	6500 3375 6625 3375
Wire Wire Line
	6500 3275 6625 3275
Wire Wire Line
	6500 3175 6625 3175
Wire Wire Line
	3375 3575 3375 3525
Wire Wire Line
	4125 7425 4125 7625
Wire Wire Line
	4100 4750 4375 4875
Wire Wire Line
	3725 4750 4100 4750
Wire Wire Line
	3725 4650 3900 4650
Wire Wire Line
	3900 4850 4200 4850
Connection ~ 4375 7750
Wire Wire Line
	4375 7750 4450 7750
Connection ~ 4375 7600
Wire Wire Line
	4525 7600 4375 7600
Wire Wire Line
	4450 7750 4450 7800
Wire Wire Line
	4450 7800 4525 7800
Wire Wire Line
	4925 7600 4825 7600
Wire Wire Line
	4950 7800 4825 7800
Wire Wire Line
	2050 6200 2425 6200
Connection ~ 6700 2275
Wire Wire Line
	6700 2275 6700 2375
Wire Wire Line
	6700 2375 6575 2375
Wire Wire Line
	6575 2375 6575 2525
Connection ~ 2950 5075
Wire Wire Line
	2850 5075 2950 5075
Connection ~ 1200 1050
Wire Wire Line
	1250 1050 1200 1050
Connection ~ 1200 1350
Wire Wire Line
	1250 1350 1200 1350
Connection ~ 1650 2025
Wire Wire Line
	1125 2025 3500 2025
Wire Wire Line
	1625 1425 1625 2025
Wire Wire Line
	1625 1100 1625 1125
Wire Wire Line
	1500 1100 1625 1100
Connection ~ 4050 7100
Wire Wire Line
	4050 7100 4050 6575
Connection ~ 3950 6800
Wire Wire Line
	3950 6575 3950 6800
Connection ~ 3850 6650
Wire Wire Line
	3850 6575 3850 6650
Connection ~ 3100 850 
Wire Wire Line
	3100 850  3100 1000
Wire Wire Line
	3100 1000 3500 1000
Wire Wire Line
	3500 1000 3500 1150
Connection ~ 1300 850 
Wire Wire Line
	1300 850  1300 1650
Wire Wire Line
	1300 1650 1025 1650
Connection ~ 1200 2025
Wire Wire Line
	1125 1750 1125 2025
Wire Wire Line
	1025 1750 1125 1750
Connection ~ 2950 2025
Wire Wire Line
	3500 2025 3500 1250
Connection ~ 1350 2025
Wire Wire Line
	1350 1225 1350 2025
Wire Wire Line
	1200 1225 1350 1225
Connection ~ 1500 2025
Wire Wire Line
	1200 1325 1200 2025
Connection ~ 1200 850 
Wire Wire Line
	1200 850  1200 1125
Wire Wire Line
	900  850  1100 850 
Wire Wire Line
	1100 850  1100 675 
Wire Wire Line
	5850 2550 5850 2875
Connection ~ 5850 2625
Wire Wire Line
	6000 2625 5850 2625
Wire Wire Line
	5650 2550 5650 2875
Wire Wire Line
	5550 2325 5550 2875
Wire Wire Line
	3750 4950 3725 4950
Connection ~ 3900 4650
Wire Wire Line
	3900 4400 3900 4850
Wire Wire Line
	4375 4875 4500 4875
Wire Wire Line
	4200 4975 4500 4975
Wire Wire Line
	4200 4850 4200 4975
Wire Wire Line
	2825 5175 2825 5700
Connection ~ 3800 5275
Wire Wire Line
	3025 5275 3025 5700
Wire Wire Line
	3225 5375 3225 5700
Connection ~ 3025 6125
Wire Wire Line
	2825 6125 2825 6000
Connection ~ 3225 6125
Wire Wire Line
	3025 6125 3025 6000
Connection ~ 3300 6125
Wire Wire Line
	3225 6125 3225 6000
Wire Wire Line
	2825 6125 3800 6125
Wire Wire Line
	3800 6125 3800 5900
Wire Wire Line
	3725 5800 4050 5800
Wire Wire Line
	3725 4850 3900 4950
Connection ~ 3100 5125
Wire Wire Line
	2950 5025 2950 5125
Connection ~ 3175 5125
Connection ~ 3750 4950
Wire Wire Line
	3750 5125 3750 4950
Wire Wire Line
	2950 5125 3750 5125
Wire Wire Line
	3175 5125 3175 5025
Connection ~ 3775 4750
Wire Wire Line
	3175 4500 3175 4725
Wire Wire Line
	3775 4500 3175 4500
Wire Wire Line
	3775 4750 3775 4500
Wire Wire Line
	2950 4400 2950 4725
Wire Wire Line
	3900 4400 2950 4400
Wire Wire Line
	3800 5900 3725 5900
Wire Wire Line
	3900 5075 3850 5175
Wire Wire Line
	3725 5700 4500 5700
Wire Wire Line
	3800 5600 3800 5275
Wire Wire Line
	3725 5600 3800 5600
Wire Wire Line
	6625 5825 6625 5800
Wire Wire Line
	6500 5825 6625 5825
Wire Wire Line
	6625 6025 6625 6050
Wire Wire Line
	6500 6025 6625 6025
Wire Wire Line
	6500 5925 6625 5925
Wire Wire Line
	4600 6800 4600 6950
Connection ~ 1075 850 
Connection ~ 8650 1775
Wire Wire Line
	8650 1875 9450 1875
Wire Wire Line
	8650 1675 8650 1875
Wire Wire Line
	9450 1675 8650 1675
Connection ~ 8700 2800
Wire Wire Line
	8700 2900 9475 2900
Wire Wire Line
	8700 2700 8700 2900
Wire Wire Line
	9475 2700 8700 2700
Connection ~ 8700 3825
Wire Wire Line
	8700 3925 9475 3925
Wire Wire Line
	8700 3725 8700 3925
Wire Wire Line
	9475 3725 8700 3725
Connection ~ 8700 4875
Wire Wire Line
	8700 4975 9475 4975
Wire Wire Line
	8700 4775 8700 4975
Wire Wire Line
	9475 4775 8700 4775
Connection ~ 8700 5900
Wire Wire Line
	8700 6000 9475 6000
Wire Wire Line
	8700 5800 8700 6000
Wire Wire Line
	9475 5800 8700 5800
Connection ~ 9275 2075
Wire Wire Line
	9275 2275 9275 2075
Wire Wire Line
	9450 2275 9275 2275
Wire Wire Line
	8650 2075 9450 2075
Connection ~ 9300 3100
Wire Wire Line
	9300 3300 9300 3100
Wire Wire Line
	9475 3300 9300 3300
Wire Wire Line
	8675 3100 9475 3100
Connection ~ 9275 4125
Wire Wire Line
	9275 4325 9275 4125
Wire Wire Line
	9475 4325 9275 4325
Wire Wire Line
	9125 4125 9475 4125
Connection ~ 9250 5175
Wire Wire Line
	9250 5375 9250 5175
Wire Wire Line
	9475 5375 9250 5375
Wire Wire Line
	9100 5175 9475 5175
Connection ~ 9225 6200
Wire Wire Line
	9225 6400 9225 6200
Wire Wire Line
	9475 6400 9225 6400
Wire Wire Line
	8700 6200 9475 6200
Connection ~ 8850 1050
Wire Wire Line
	8850 1250 9450 1250
Wire Wire Line
	8850 1050 8850 1250
Wire Wire Line
	8625 1050 9450 1050
Connection ~ 8600 750 
Wire Wire Line
	8600 850  9450 850 
Wire Wire Line
	8600 650  8600 850 
Wire Wire Line
	9450 650  8600 650 
Wire Wire Line
	6000 2425 6000 2625
Connection ~ 4325 6650
Connection ~ 4125 6800
Connection ~ 3750 7100
Wire Wire Line
	3525 6650 4600 6650
Wire Wire Line
	4125 6800 4125 7125
Wire Wire Line
	3525 6800 4600 6800
Wire Wire Line
	4600 6950 3525 6950
Wire Wire Line
	3750 7100 3750 7200
Wire Wire Line
	3525 7100 4600 7100
Connection ~ 3750 7525
Connection ~ 3750 7600
Connection ~ 875  6800
Connection ~ 2125 7475
Wire Wire Line
	2150 7850 875  7850
Connection ~ 1825 7150
Wire Wire Line
	1825 7150 1225 7150
Connection ~ 1825 6800
Wire Wire Line
	1225 6325 1825 6325
Wire Wire Line
	875  7850 875  5975
Connection ~ 1225 5625
Wire Wire Line
	800  6450 800  5625
Wire Wire Line
	1225 6450 800  6450
Connection ~ 2300 6200
Wire Wire Line
	2050 5625 2050 6200
Wire Wire Line
	800  5625 2050 5625
Connection ~ 2300 6950
Connection ~ 2300 6800
Wire Wire Line
	2125 6950 2425 6950
Wire Wire Line
	3750 7500 3750 7675
Wire Wire Line
	3550 3375 3550 3575
Wire Wire Line
	7100 2275 7225 2275
Connection ~ 3550 3575
Wire Wire Line
	3375 3575 3800 3575
Connection ~ 4375 3175
Wire Wire Line
	4375 3575 4375 3175
Wire Wire Line
	4100 3575 4375 3575
Wire Wire Line
	3700 3375 3550 3375
Wire Wire Line
	3550 3175 3700 3175
Wire Wire Line
	3550 3075 3550 3175
Wire Wire Line
	4500 3375 4500 3275
Wire Wire Line
	4200 3375 4500 3375
Wire Wire Line
	4200 3175 4500 3175
Connection ~ 6050 1825
Wire Wire Line
	6050 1825 6050 1950
Wire Wire Line
	6050 2250 6050 2425
Wire Wire Line
	6050 2425 6000 2425
Connection ~ 6450 2425
Wire Wire Line
	6350 2425 6450 2425
Connection ~ 6550 2275
Wire Wire Line
	6450 2700 6450 2275
Wire Wire Line
	5450 1825 6550 1825
Wire Wire Line
	6550 1825 6550 1975
Wire Wire Line
	6450 2275 6800 2275
Connection ~ 5650 2700
Connection ~ 5550 2700
Connection ~ 5450 2700
Connection ~ 5350 2700
Wire Wire Line
	5250 2700 6450 2700
Wire Wire Line
	5850 1825 5850 2250
Connection ~ 5350 6575
Connection ~ 5450 6575
Connection ~ 5650 6575
Wire Wire Line
	5750 6575 5750 6325
Wire Wire Line
	5250 6575 5750 6575
Wire Wire Line
	5650 6575 5650 6325
Connection ~ 5525 6575
Wire Wire Line
	5550 6575 5550 6325
Wire Wire Line
	5450 6325 5450 6575
Wire Wire Line
	5350 6325 5350 6575
Wire Wire Line
	5350 6575 5550 6575
Wire Wire Line
	5250 6325 5250 6575
Wire Wire Line
	5250 2550 5250 2875
Wire Wire Line
	1075 850  1575 850 
Wire Wire Line
	1975 1150 1975 1225
Wire Wire Line
	1975 1525 1975 1575
Wire Wire Line
	1975 1875 1975 2075
Wire Wire Line
	1500 850  1500 1100
Connection ~ 1500 850 
Connection ~ 1975 2025
Wire Wire Line
	2475 1150 1975 1150
Connection ~ 2475 850 
Wire Wire Line
	2375 850  3225 850 
Wire Wire Line
	2675 850  2675 1300
Connection ~ 2675 850 
Wire Wire Line
	2950 850  2950 1300
Connection ~ 2950 850 
Wire Wire Line
	2675 2025 2675 1600
Wire Wire Line
	2950 1600 2950 2025
Connection ~ 2950 1950
Connection ~ 2675 2025
Wire Wire Line
	5350 2325 5350 2875
Wire Wire Line
	5450 2550 5450 2875
Connection ~ 5250 2700
Wire Wire Line
	5450 2250 5450 1825
Wire Wire Line
	5350 1825 5550 1825
Wire Wire Line
	5550 1825 5550 2025
Connection ~ 5475 1825
Wire Wire Line
	5650 1825 5650 2250
Wire Wire Line
	5250 1825 5650 1825
Wire Wire Line
	5350 2025 5350 1825
Wire Wire Line
	5250 2250 5250 1825
Wire Wire Line
	5475 1825 5850 1825
Wire Wire Line
	6500 5475 6900 5475
Wire Wire Line
	6500 5575 6900 5575
Wire Wire Line
	4425 3775 4500 3775
Wire Wire Line
	4425 3875 4500 3875
Wire Wire Line
	4300 6025 4500 6025
Wire Wire Line
	6500 5725 6575 5725
Wire Wire Line
	6575 5725 6575 5675
Wire Wire Line
	6575 5675 6625 5675
Connection ~ 8025 750 
Connection ~ 8025 850 
Connection ~ 8025 950 
Connection ~ 8025 1050
Wire Wire Line
	8025 1050 7625 1050
Wire Wire Line
	8025 950  7625 950 
Wire Wire Line
	7625 850  8025 850 
Wire Wire Line
	8025 750  7625 750 
Wire Wire Line
	6175 1425 6175 1475
Connection ~ 6175 1475
Wire Wire Line
	6275 1425 6275 1475
Connection ~ 6275 1475
Wire Wire Line
	6375 1475 6375 1425
Connection ~ 6375 1475
Wire Wire Line
	6475 1475 6475 1425
Connection ~ 6475 1475
Wire Wire Line
	6825 1050 6900 1050
Wire Wire Line
	6825 950  6900 950 
Wire Wire Line
	6825 850  6900 850 
Wire Wire Line
	6825 750  6900 750 
Wire Wire Line
	5650 750  6525 750 
Wire Wire Line
	5550 850  6525 850 
Wire Wire Line
	5650 950  6525 950 
Wire Wire Line
	5650 1050 6525 1050
Wire Wire Line
	6475 1050 6475 1125
Connection ~ 6475 1050
Wire Wire Line
	6375 1125 6375 950 
Connection ~ 6375 950 
Wire Wire Line
	6275 1125 6275 850 
Connection ~ 6275 850 
Wire Wire Line
	6175 1125 6175 750 
Connection ~ 6175 750 
Wire Wire Line
	9325 750  9450 750 
Wire Wire Line
	9350 1775 9450 1775
Wire Wire Line
	9375 2800 9475 2800
Wire Wire Line
	9375 3825 9475 3825
Wire Wire Line
	9375 4875 9475 4875
Wire Wire Line
	9400 5900 9475 5900
Wire Wire Line
	6500 4875 6600 4875
Wire Wire Line
	6500 4975 6600 4975
Wire Wire Line
	6500 5075 6600 5075
Wire Wire Line
	6500 5175 6600 5175
Wire Wire Line
	6500 5275 6600 5275
Wire Wire Line
	6500 5375 6600 5375
Wire Wire Line
	6500 4025 6600 4025
Wire Wire Line
	6500 4125 6600 4125
Wire Wire Line
	6600 4225 6500 4225
Wire Wire Line
	6600 4325 6500 4325
Wire Wire Line
	6600 4425 6500 4425
Wire Wire Line
	6600 4525 6500 4525
Wire Wire Line
	9350 3200 9475 3200
Wire Wire Line
	9450 2175 9075 2175
Wire Wire Line
	9475 4225 9100 4225
Wire Wire Line
	9450 1150 9275 1150
Wire Wire Line
	3850 5175 2825 5175
Wire Wire Line
	3025 5275 3950 5275
Wire Wire Line
	3950 5275 3950 5175
Wire Wire Line
	4375 7600 4375 7775
Wire Wire Line
	3225 5375 3900 5375
Wire Wire Line
	4400 5275 4500 5275
Wire Wire Line
	4400 5375 4500 5375
Wire Wire Line
	4400 5475 4500 5475
Wire Wire Line
	4400 5575 4500 5575
Wire Wire Line
	4700 2525 4700 2925
Wire Wire Line
	4200 2525 4200 2875
Wire Wire Line
	5000 525  5175 525 
Wire Wire Line
	4100 2225 4100 2725
Wire Wire Line
	2800 2350 2875 2350
Wire Wire Line
	3175 2650 3425 2650
Wire Wire Line
	3175 2350 3750 2350
Wire Wire Line
	3300 2650 3300 2725
Connection ~ 3300 2650
Connection ~ 3425 2350
Wire Wire Line
	3750 2350 3750 2600
Connection ~ 3750 2475
Wire Wire Line
	4050 2600 4700 2600
Connection ~ 4700 2600
Wire Wire Line
	4050 2350 4100 2350
Connection ~ 4100 2350
Wire Wire Line
	3600 2350 3600 2250
Wire Wire Line
	3600 2250 4400 2250
Wire Wire Line
	4400 2250 4400 2225
Connection ~ 3600 2350
Wire Wire Line
	4600 2225 4600 2375
Wire Wire Line
	4300 2325 4600 2325
Connection ~ 4600 2325
Wire Wire Line
	4500 2525 4500 2775
Wire Wire Line
	4050 2550 4500 2550
Wire Wire Line
	4050 2550 4050 2475
Connection ~ 4500 2550
Wire Wire Line
	4300 2225 4300 2325
Wire Wire Line
	3300 2725 2775 2725
Wire Wire Line
	6175 1475 6750 1475
Wire Wire Line
	8025 750  8025 1050
Wire Wire Line
	6300 1875 6300 1825
Connection ~ 6300 1825
Wire Wire Line
	5200 1775 5200 800 
Wire Wire Line
	5200 800  5075 800 
Wire Wire Line
	5075 800  5075 525 
Connection ~ 5075 525 
Wire Wire Line
	5850 1600 5850 1650
Wire Wire Line
	5550 1600 6000 1600
Wire Wire Line
	6000 1600 6000 1450
Connection ~ 5850 1600
Wire Wire Line
	5700 1450 5700 1600
Connection ~ 5700 1600
Wire Wire Line
	6000 1150 6000 1100
Wire Wire Line
	6000 1100 6100 1100
Wire Wire Line
	6100 1100 6100 750 
Connection ~ 6100 750 
Wire Wire Line
	5850 1300 5850 1100
Wire Wire Line
	5850 1100 5950 1100
Wire Wire Line
	5950 1100 5950 850 
Connection ~ 5950 850 
Wire Wire Line
	5700 1150 5700 1100
Wire Wire Line
	5700 1100 5825 1100
Wire Wire Line
	5825 1100 5825 950 
Connection ~ 5825 950 
Wire Wire Line
	5550 1300 5550 1125
Wire Wire Line
	5550 1125 5675 1125
Wire Wire Line
	5675 1125 5675 1050
Connection ~ 5675 1050
Wire Wire Line
	4500 5700 4500 5725
Wire Wire Line
	3900 5375 3900 5700
Connection ~ 3900 5700
Wire Wire Line
	3950 5175 4500 5175
Wire Wire Line
	3900 5075 4500 5075
Wire Wire Line
	3725 5175 3725 5500
Connection ~ 3725 5175
$EndSCHEMATC
