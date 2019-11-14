EESchema Schematic File Version 2
LIBS:68008-rescue
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
LIBS:bmow
LIBS:altera
LIBS:cpld PROGRAMMER_-cache
LIBS:68008-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "MC68008"
Date "2017-05-13"
Rev "0.1"
Comp "GHGV"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 29F040B U1
U 1 1 59152817
P 3250 5750
F 0 "U1" H 3050 6750 70  0000 C CNN
F 1 "SST39SF040-70-4C-PHE" H 3250 4000 70  0000 C CNN
F 2 "680008:DIL32" H 3250 5750 60  0001 C CNN
F 3 "" H 3250 5750 60  0000 C CNN
	1    3250 5750
	1    0    0    -1  
$EndComp
$Comp
L BS62LV4006 U3
U 1 1 5915287C
P 6750 2050
F 0 "U3" H 6550 3050 70  0000 C CNN
F 1 "AS6C4008" H 6750 650 70  0000 C CNN
F 2 "680008:DIL32" H 6750 2050 60  0001 C CNN
F 3 "" H 6750 2050 60  0000 C CNN
	1    6750 2050
	1    0    0    -1  
$EndComp
$Comp
L OSCILLATOR-RESCUE-68008 X1
U 1 1 591528D1
P 1300 1200
F 0 "X1" H 1300 1350 50  0000 C CNN
F 1 "OSCILLATOR" H 1300 1050 50  0000 C CNN
F 2 "Oscillators:Oscillator_DIP-14_LargePads" H 1300 0   60  0001 C CNN
F 3 "" H 1300 0   60  0000 C CNN
	1    1300 1200
	1    0    0    -1  
$EndComp
Text Label 1700 1150 0    60   ~ 0
CLK
Text Label 1700 1250 0    60   ~ 0
GND
Text Label 2300 1150 0    60   ~ 0
CLK
Text Label 4400 1150 0    60   ~ 0
A0
Text Label 4400 1250 0    60   ~ 0
A1
Text Label 4400 1350 0    60   ~ 0
A2
Text Label 4400 1450 0    60   ~ 0
A3
Text Label 4400 1550 0    60   ~ 0
A4
Text Label 2250 1450 0    60   ~ 0
IPL2
Text Label 2250 1550 0    60   ~ 0
IPL1
Text Label 2250 1950 0    60   ~ 0
VCC
Text Label 2250 2050 0    60   ~ 0
DTACK
Text Label 2250 2150 0    60   ~ 0
VCC
Text Label 2250 2350 0    60   ~ 0
FC0
Text Label 2250 2450 0    60   ~ 0
FC1
Text Label 2200 3750 0    60   ~ 0
HALT
Text Label 2200 3850 0    60   ~ 0
RESET
Text Label 2200 3950 0    60   ~ 0
AS
Text Label 2200 4050 0    60   ~ 0
DS
Text Label 2200 4150 0    60   ~ 0
RW
Text Label 4400 1650 0    60   ~ 0
A5
Text Label 4400 1750 0    60   ~ 0
A6
Text Label 4400 1850 0    60   ~ 0
A7
Text Label 4400 1950 0    60   ~ 0
A8
Text Label 4400 2050 0    60   ~ 0
A9
Text Label 4400 2150 0    60   ~ 0
A10
Text Label 4400 2250 0    60   ~ 0
A11
Text Label 4400 2350 0    60   ~ 0
A12
Text Label 4400 2450 0    60   ~ 0
A13
Text Label 4400 2550 0    60   ~ 0
A14
Text Label 4400 2650 0    60   ~ 0
A15
Text Label 4400 2750 0    60   ~ 0
A16
Text Label 4400 2850 0    60   ~ 0
A17
Text Label 4400 2950 0    60   ~ 0
A18
Text Label 4400 3050 0    60   ~ 0
A19
Text Label 4450 3450 0    60   ~ 0
D0
Text Label 4450 3550 0    60   ~ 0
D1
Text Label 4450 3650 0    60   ~ 0
D2
Text Label 4450 3750 0    60   ~ 0
D3
Text Label 4450 3850 0    60   ~ 0
D4
Text Label 4450 3950 0    60   ~ 0
D5
Text Label 4450 4050 0    60   ~ 0
D6
Text Label 4450 4150 0    60   ~ 0
D7
Text Label 5950 1150 0    60   ~ 0
A0
Text Label 5950 1250 0    60   ~ 0
A1
Text Label 5950 1350 0    60   ~ 0
A2
Text Label 5950 1450 0    60   ~ 0
A3
Text Label 5950 1550 0    60   ~ 0
A4
Text Label 5950 1650 0    60   ~ 0
A5
Text Label 5950 1750 0    60   ~ 0
A6
Text Label 5950 1850 0    60   ~ 0
A7
Text Label 5950 1950 0    60   ~ 0
A8
Text Label 5950 2050 0    60   ~ 0
A9
Text Label 5950 2150 0    60   ~ 0
A10
Text Label 5950 2250 0    60   ~ 0
A11
Text Label 5950 2350 0    60   ~ 0
A12
Text Label 5950 2450 0    60   ~ 0
A13
Text Label 5950 2550 0    60   ~ 0
A14
Text Label 5950 2650 0    60   ~ 0
A15
Text Label 5950 2750 0    60   ~ 0
A16
Text Label 5950 2850 0    60   ~ 0
A17
Text Label 5950 2950 0    60   ~ 0
A18
Text Label 5900 3150 0    60   ~ 0
RW
Text Label 5800 3250 0    60   ~ 0
CEROM
Text Label 5900 3350 0    60   ~ 0
OE
Text Label 7550 1150 0    60   ~ 0
D0
Text Label 7550 1250 0    60   ~ 0
D1
Text Label 7550 1350 0    60   ~ 0
D2
Text Label 7550 1450 0    60   ~ 0
D3
Text Label 7550 1550 0    60   ~ 0
D4
Text Label 7550 1650 0    60   ~ 0
D5
Text Label 7550 1750 0    60   ~ 0
D6
Text Label 7550 1850 0    60   ~ 0
D7
Text Label 2400 4850 0    60   ~ 0
A0
Text Label 2400 4950 0    60   ~ 0
A1
Text Label 2400 5050 0    60   ~ 0
A2
Text Label 2400 5150 0    60   ~ 0
A3
Text Label 2400 5250 0    60   ~ 0
A4
Text Label 2400 5350 0    60   ~ 0
A5
Text Label 2400 5450 0    60   ~ 0
A6
Text Label 2400 5550 0    60   ~ 0
A7
Text Label 2400 5650 0    60   ~ 0
A8
Text Label 2400 5750 0    60   ~ 0
A9
Text Label 2400 5850 0    60   ~ 0
A10
Text Label 2400 5950 0    60   ~ 0
A11
Text Label 2400 6050 0    60   ~ 0
A12
Text Label 2400 6150 0    60   ~ 0
A13
Text Label 2400 6250 0    60   ~ 0
A14
Text Label 2400 6350 0    60   ~ 0
A15
Text Label 2400 6450 0    60   ~ 0
A16
Text Label 2400 6550 0    60   ~ 0
A17
Text Label 2400 6650 0    60   ~ 0
A18
Text Label 2400 6850 0    60   ~ 0
RW
Text Label 2300 6950 0    60   ~ 0
CERAM
Text Label 4050 4850 0    60   ~ 0
D0
Text Label 4050 4950 0    60   ~ 0
D1
Text Label 4050 5050 0    60   ~ 0
D2
Text Label 4050 5150 0    60   ~ 0
D3
Text Label 4050 5250 0    60   ~ 0
D4
Text Label 4050 5350 0    60   ~ 0
D5
Text Label 4050 5450 0    60   ~ 0
D6
Text Label 4050 5550 0    60   ~ 0
D7
Text Label 3250 7250 0    60   ~ 0
GND
Text Label 2200 1250 0    60   ~ 0
VPA
$Comp
L DC_Barrel_jack U5
U 1 1 59166E00
P 8950 1400
F 0 "U5" H 8950 1250 60  0000 C CNN
F 1 "5V DC" H 8950 1950 60  0000 C CNN
F 2 "jack:DCJ0202" H 8950 1400 60  0001 C CNN
F 3 "" H 8950 1400 60  0001 C CNN
	1    8950 1400
	1    0    0    -1  
$EndComp
Text Label 9650 950  0    60   ~ 0
VCC
Text Label 9650 1350 0    60   ~ 0
GND
NoConn ~ 2400 2550
NoConn ~ 9500 1100
$Comp
L R R1
U 1 1 59173E69
P 4750 6300
F 0 "R1" V 4830 6300 50  0000 C CNN
F 1 "10K" V 4750 6300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4680 6300 50  0001 C CNN
F 3 "" H 4750 6300 50  0001 C CNN
	1    4750 6300
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59173EE0
P 5100 6300
F 0 "R2" V 5180 6300 50  0000 C CNN
F 1 "10K" V 5100 6300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5030 6300 50  0001 C CNN
F 3 "" H 5100 6300 50  0001 C CNN
	1    5100 6300
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59173F4F
P 5400 6300
F 0 "R3" V 5480 6300 50  0000 C CNN
F 1 "10K" V 5400 6300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5330 6300 50  0001 C CNN
F 3 "" H 5400 6300 50  0001 C CNN
	1    5400 6300
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 59173FAA
P 5650 6300
F 0 "R4" V 5730 6300 50  0000 C CNN
F 1 "10K" V 5650 6300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5580 6300 50  0001 C CNN
F 3 "" H 5650 6300 50  0001 C CNN
	1    5650 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1150 1850 1150
Wire Wire Line
	1650 1250 1850 1250
Wire Wire Line
	2400 1150 2200 1150
Wire Wire Line
	4200 1150 4550 1150
Wire Wire Line
	4200 1250 4550 1250
Wire Wire Line
	4550 1350 4200 1350
Wire Wire Line
	4200 1450 4550 1450
Wire Wire Line
	4200 1550 4550 1550
Wire Wire Line
	4200 1650 4550 1650
Wire Wire Line
	4200 1750 4550 1750
Wire Wire Line
	4200 1850 4550 1850
Wire Wire Line
	4200 1950 4550 1950
Wire Wire Line
	4200 2050 4550 2050
Wire Wire Line
	4200 2150 4550 2150
Wire Wire Line
	4200 2250 4550 2250
Wire Wire Line
	4200 2350 4550 2350
Wire Wire Line
	4200 2450 4550 2450
Wire Wire Line
	4200 2550 4550 2550
Wire Wire Line
	4200 2650 4550 2650
Wire Wire Line
	4200 2750 4550 2750
Wire Wire Line
	4200 2850 4550 2850
Wire Wire Line
	4200 2950 4550 2950
Wire Wire Line
	4200 3450 4550 3450
Wire Wire Line
	4200 3550 4550 3550
Wire Wire Line
	4200 3650 4550 3650
Wire Wire Line
	4200 3750 4550 3750
Wire Wire Line
	4200 3850 4550 3850
Wire Wire Line
	4200 3950 4550 3950
Wire Wire Line
	4200 4050 4550 4050
Wire Wire Line
	4200 4150 4550 4150
Wire Wire Line
	2400 3750 2100 3750
Wire Wire Line
	2400 3850 2100 3850
Wire Wire Line
	2400 3950 2100 3950
Wire Wire Line
	2400 4050 2100 4050
Wire Wire Line
	2400 4150 2100 4150
Wire Wire Line
	2400 2450 2100 2450
Wire Wire Line
	2400 2350 2100 2350
Wire Wire Line
	2400 2150 2100 2150
Wire Wire Line
	2400 2050 2100 2050
Wire Wire Line
	2400 1950 2100 1950
Wire Wire Line
	2400 1550 2100 1550
Wire Wire Line
	2400 1450 2100 1450
Wire Wire Line
	6050 1150 5750 1150
Wire Wire Line
	6050 1250 5750 1250
Wire Wire Line
	6050 1350 5750 1350
Wire Wire Line
	6050 1450 5750 1450
Wire Wire Line
	6050 1550 5750 1550
Wire Wire Line
	6050 1650 5750 1650
Wire Wire Line
	6050 1750 5750 1750
Wire Wire Line
	6050 1850 5750 1850
Wire Wire Line
	6050 1950 5750 1950
Wire Wire Line
	6050 2050 5750 2050
Wire Wire Line
	6050 2150 5750 2150
Wire Wire Line
	6050 2250 5750 2250
Wire Wire Line
	6050 2350 5750 2350
Wire Wire Line
	6050 2450 5750 2450
Wire Wire Line
	6050 2550 5750 2550
Wire Wire Line
	6050 2650 5750 2650
Wire Wire Line
	6050 2750 5750 2750
Wire Wire Line
	6050 2850 5750 2850
Wire Wire Line
	6050 2950 5750 2950
Wire Wire Line
	6050 3150 5750 3150
Wire Wire Line
	6050 3250 5750 3250
Wire Wire Line
	6050 3350 5750 3350
Wire Wire Line
	7450 1150 7800 1150
Wire Wire Line
	7800 1150 7800 1200
Wire Wire Line
	7450 1250 7750 1250
Wire Wire Line
	7450 1350 7750 1350
Wire Wire Line
	7450 1450 7750 1450
Wire Wire Line
	7450 1550 7750 1550
Wire Wire Line
	7450 1650 7750 1650
Wire Wire Line
	7450 1750 7750 1750
Wire Wire Line
	7450 1850 7750 1850
Wire Wire Line
	3950 4850 4300 4850
Wire Wire Line
	3950 4950 4300 4950
Wire Wire Line
	3950 5050 4300 5050
Wire Wire Line
	3950 5150 4300 5150
Wire Wire Line
	3950 5250 4300 5250
Wire Wire Line
	3950 5350 4300 5350
Wire Wire Line
	3950 5450 4300 5450
Wire Wire Line
	3950 5550 4300 5550
Wire Wire Line
	2550 4850 2250 4850
Wire Wire Line
	2550 4950 2250 4950
Wire Wire Line
	2550 5050 2250 5050
Wire Wire Line
	2550 5150 2250 5150
Wire Wire Line
	2550 5250 2250 5250
Wire Wire Line
	2550 5350 2250 5350
Wire Wire Line
	2550 5450 2250 5450
Wire Wire Line
	2550 5550 2250 5550
Wire Wire Line
	2550 5650 2250 5650
Wire Wire Line
	2550 5750 2250 5750
Wire Wire Line
	2550 5850 2250 5850
Wire Wire Line
	2550 5950 2250 5950
Wire Wire Line
	2550 6050 2250 6050
Wire Wire Line
	2550 6150 2250 6150
Wire Wire Line
	2550 6250 2250 6250
Wire Wire Line
	2550 6350 2250 6350
Wire Wire Line
	2550 6450 2250 6450
Wire Wire Line
	2550 6550 2250 6550
Wire Wire Line
	2550 6650 2250 6650
Wire Wire Line
	2550 6850 2250 6850
Wire Wire Line
	2550 6950 2250 6950
Connection ~ 2400 1450
Connection ~ 2400 1550
Connection ~ 2400 1950
Connection ~ 2400 2050
Connection ~ 2400 2150
Wire Wire Line
	3250 7100 3250 7400
Wire Wire Line
	4200 3050 4550 3050
Connection ~ 4200 3050
Wire Wire Line
	2100 1250 2600 1250
Wire Wire Line
	9500 950  9900 950 
Wire Wire Line
	9500 1350 9900 1350
Connection ~ 2400 1250
Wire Wire Line
	4750 6150 4750 6000
Wire Wire Line
	5100 6000 5100 6150
Wire Wire Line
	4750 6450 4750 6700
Wire Wire Line
	5100 6450 5100 6700
Wire Wire Line
	5400 6450 5400 6700
Wire Wire Line
	5650 6450 5650 6700
Text Label 4750 6650 1    60   ~ 0
RESET
Text Label 5100 6650 1    60   ~ 0
HALT
Text Label 5400 6650 1    60   ~ 0
TCK
Text Label 5650 6650 1    60   ~ 0
TMS
$Comp
L 68008D U2
U 1 1 591527E6
P 3300 2650
F 0 "U2" H 3300 2750 50  0000 C CNN
F 1 "68008D" H 3300 2550 50  0000 C CNN
F 2 "680008:DIL48" H 3300 2650 50  0001 C CNN
F 3 "" H 3300 2650 50  0001 C CNN
	1    3300 2650
	1    0    0    -1  
$EndComp
NoConn ~ 2400 2750
NoConn ~ 2400 2950
$Comp
L R R5
U 1 1 5917A06B
P 5950 6300
F 0 "R5" V 6030 6300 50  0000 C CNN
F 1 "10K" V 5950 6300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5880 6300 50  0001 C CNN
F 3 "" H 5950 6300 50  0001 C CNN
	1    5950 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6150 5400 6000
Wire Wire Line
	5650 6150 5650 6000
Wire Wire Line
	5950 6150 5950 6000
Wire Wire Line
	5950 6450 5950 6700
Wire Wire Line
	5950 6700 6000 6700
Text Label 5950 6650 1    60   ~ 0
TDI
Text Label 5950 6100 0    60   ~ 0
VCC
Text Label 5650 6100 0    60   ~ 0
VCC
Text Label 5400 6100 0    60   ~ 0
GND
Text Label 5100 6100 0    60   ~ 0
VCC
Text Label 4750 6100 0    60   ~ 0
VCC
Wire Wire Line
	5250 7050 5000 7050
Wire Wire Line
	5250 7150 5000 7150
Wire Wire Line
	5250 7250 5000 7250
Wire Wire Line
	5750 7050 6000 7050
Wire Wire Line
	5750 7150 6000 7150
Wire Wire Line
	5750 7250 6000 7250
Text Label 5100 7050 0    60   ~ 0
TCK
Text Label 5900 7050 0    60   ~ 0
GND
Text Label 5100 7150 0    60   ~ 0
TDO
Text Label 5900 7150 0    60   ~ 0
VCC
Text Label 5100 7250 0    60   ~ 0
TMS
Text Label 5900 7250 0    60   ~ 0
VCC
$Comp
L CONN_02X05 J1
U 1 1 5917AEC8
P 5500 7250
F 0 "J1" H 5500 7550 50  0000 C CNN
F 1 "CPLD" H 5500 6950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 5500 6050 50  0001 C CNN
F 3 "" H 5500 6050 50  0001 C CNN
	1    5500 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 7450 5000 7450
Wire Wire Line
	5750 7450 6000 7450
Text Label 5150 7450 0    60   ~ 0
TDI
Text Label 5900 7450 0    60   ~ 0
GND
NoConn ~ 5250 7350
NoConn ~ 5750 7350
$Comp
L R R6
U 1 1 5917BA63
P 6400 5950
F 0 "R6" V 6480 5950 50  0000 C CNN
F 1 "1K" V 6400 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6330 5950 50  0001 C CNN
F 3 "" H 6400 5950 50  0001 C CNN
	1    6400 5950
	1    0    0    -1  
$EndComp
$Comp
L LED_Small D1
U 1 1 5917BB20
P 6400 6400
F 0 "D1" H 6350 6525 50  0000 L CNN
F 1 "Power" H 6225 6300 50  0000 L CNN
F 2 "LEDs:LED_0805" V 6400 6400 50  0001 C CNN
F 3 "" V 6400 6400 50  0001 C CNN
	1    6400 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 6100 6400 6300
Wire Wire Line
	6400 6500 6400 6650
Wire Wire Line
	6400 5800 6400 5650
Text Label 6400 5700 0    60   ~ 0
VCC
Text Label 6400 6550 0    60   ~ 0
GND
$Comp
L R R7
U 1 1 5917C38B
P 6750 5850
F 0 "R7" V 6830 5850 50  0000 C CNN
F 1 "1K" V 6750 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6680 5850 50  0001 C CNN
F 3 "" H 6750 5850 50  0001 C CNN
	1    6750 5850
	1    0    0    -1  
$EndComp
$Comp
L LED_Small D2
U 1 1 5917C3DA
P 6750 6200
F 0 "D2" H 6700 6325 50  0000 L CNN
F 1 "status" H 6575 6100 50  0000 L CNN
F 2 "LEDs:LED_0805" V 6750 6200 50  0001 C CNN
F 3 "" V 6750 6200 50  0001 C CNN
	1    6750 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 6000 6750 6100
Wire Wire Line
	6750 6300 6750 6650
Wire Wire Line
	6750 5700 6750 5600
Text Label 6750 6600 1    60   ~ 0
STATUS
Text Label 6750 5650 0    60   ~ 0
VCC
$Comp
L FT245R U6
U 1 1 5917FCA1
P 6750 4700
F 0 "U6" H 6750 4200 60  0000 C CNN
F 1 "FT245R" H 6750 5500 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x10_Pitch2.54mm" H 6750 4700 60  0001 C CNN
F 3 "" H 6750 4700 60  0001 C CNN
	1    6750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4100 7600 4100
Wire Wire Line
	7250 4200 7600 4200
Wire Wire Line
	7250 4300 7600 4300
Wire Wire Line
	7250 4400 7600 4400
Wire Wire Line
	7250 4500 7600 4500
Wire Wire Line
	7250 4600 7600 4600
Wire Wire Line
	7250 4700 7600 4700
Wire Wire Line
	7250 4800 7600 4800
Wire Wire Line
	7250 4900 7600 4900
Wire Wire Line
	7250 5000 7600 5000
Wire Wire Line
	6250 4100 5900 4100
Wire Wire Line
	6250 4200 5900 4200
Wire Wire Line
	6250 4300 5900 4300
Wire Wire Line
	6250 4400 5900 4400
Wire Wire Line
	5400 4500 6250 4500
Wire Wire Line
	6250 4600 5900 4600
Wire Wire Line
	6250 4900 5900 4900
Wire Wire Line
	5400 5000 6250 5000
Text Label 7350 4100 0    60   ~ 0
D7
Text Label 7350 4200 0    60   ~ 0
D6
Text Label 7350 4300 0    60   ~ 0
D5
Text Label 7350 4400 0    60   ~ 0
D4
Text Label 7350 4500 0    60   ~ 0
D3
Text Label 7350 4600 0    60   ~ 0
D2
Text Label 7350 4700 0    60   ~ 0
D1
Text Label 7350 4800 0    60   ~ 0
D0
Text Label 7350 4900 0    60   ~ 0
GND
Text Label 7350 5000 0    60   ~ 0
VCCIO
Text Label 6000 5000 0    60   ~ 0
VCCIO
Text Label 6000 4900 0    60   ~ 0
GND
Text Label 6050 4300 0    60   ~ 0
RXF
Text Label 6050 4400 0    60   ~ 0
TXE
Text Label 6050 4100 0    60   ~ 0
RD
Text Label 6050 4200 0    60   ~ 0
WR
$Comp
L R R8
U 1 1 59181A5A
P 5400 4700
F 0 "R8" V 5480 4700 50  0000 C CNN
F 1 "10KR" V 5400 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5330 4700 50  0001 C CNN
F 3 "" H 5400 4700 50  0001 C CNN
	1    5400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4550 5400 4500
Wire Wire Line
	5400 5000 5400 4850
Wire Wire Line
	2550 7050 2250 7050
Text Label 2350 7050 0    60   ~ 0
OE
Text Label 6050 4600 0    60   ~ 0
VCC
$Comp
L switch U7
U 1 1 591845D1
P 1350 4550
F 0 "U7" H 1350 4300 60  0000 C CNN
F 1 "reset" H 1350 4700 60  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 1350 4550 60  0001 C CNN
F 3 "" H 1350 4550 60  0001 C CNN
	1    1350 4550
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 591847B2
P 1900 4750
F 0 "R9" V 1980 4750 50  0000 C CNN
F 1 "R" V 1900 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1830 4750 50  0001 C CNN
F 3 "" H 1900 4750 50  0001 C CNN
	1    1900 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4600 1900 4600
Wire Wire Line
	1900 4900 1900 5050
Wire Wire Line
	1050 4600 750  4600
Text Label 850  4600 0    60   ~ 0
GND
Text Label 1750 4600 0    60   ~ 0
BTN
Text Label 1900 5000 0    60   ~ 0
VCC
$Comp
L CP C1
U 1 1 591875FF
P 1650 4900
F 0 "C1" H 1675 5000 50  0000 L CNN
F 1 "10uF" H 1675 4800 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D4.0mm_P2.00mm" H 1688 4750 50  0001 C CNN
F 3 "" H 1650 4900 50  0001 C CNN
	1    1650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5050 1650 5200
Wire Wire Line
	1650 4750 1650 4600
Text Label 1650 5100 0    60   ~ 0
GND
$Comp
L EPM7486-84 U8
U 1 1 59193993
P 12800 3650
F 0 "U8" H 12800 2100 60  0000 C CNN
F 1 "EPM7486-84" H 12800 5500 60  0000 C CNN
F 2 "Sockets:PLCC84" H 12800 3650 60  0001 C CNN
F 3 "" H 12800 3650 60  0001 C CNN
	1    12800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	12450 2200 12450 1850
Wire Wire Line
	12350 2200 12350 1850
Wire Wire Line
	12250 2200 12250 1850
Wire Wire Line
	12150 2200 12150 1850
Wire Wire Line
	12050 2200 12050 1850
Wire Wire Line
	11950 2200 11950 1850
Wire Wire Line
	11850 2200 11850 1850
Wire Wire Line
	11750 2200 11750 1850
Text Label 12150 2000 1    60   ~ 0
GND
Wire Wire Line
	12550 2200 12550 1850
Text Label 12550 2050 1    60   ~ 0
VCC
Wire Wire Line
	11200 2850 10850 2850
Text Label 10900 2850 0    60   ~ 0
TDI
Wire Wire Line
	11200 2750 10850 2750
Text Label 10950 2750 0    60   ~ 0
VCC
Wire Wire Line
	11200 4050 10900 4050
Text Label 10950 4050 0    60   ~ 0
VCC
Wire Wire Line
	11200 4650 10900 4650
Text Label 10950 4650 0    60   ~ 0
GND
Wire Wire Line
	12200 5100 12200 5450
Text Label 12200 5350 1    60   ~ 0
VCC
Wire Wire Line
	12600 5100 12600 5450
Text Label 12600 5450 1    60   ~ 0
GND
Wire Wire Line
	12700 5100 12700 5450
Text Label 12700 5400 1    60   ~ 0
VCC
Wire Wire Line
	13700 5100 13700 5450
Text Label 13700 5450 1    60   ~ 0
VCC
Wire Wire Line
	14350 3850 14750 3850
Text Label 14650 3850 0    60   ~ 0
TCK
Wire Wire Line
	14350 3450 14750 3450
Text Label 14600 3450 0    60   ~ 0
VCC
Wire Wire Line
	14350 2950 14750 2950
Text Label 14600 2950 0    60   ~ 0
GND
Wire Wire Line
	14350 4150 14750 4150
Text Label 14750 4150 0    60   ~ 0
GND
Wire Wire Line
	14350 3050 14750 3050
Text Label 14700 3050 0    60   ~ 0
TDO
Wire Wire Line
	13100 5100 13100 5450
Text Label 13100 5400 1    60   ~ 0
GND
Wire Wire Line
	11200 3350 10850 3350
Text Label 10900 3350 0    60   ~ 0
GND
Wire Wire Line
	11200 3750 10900 3750
Text Label 10950 3750 0    60   ~ 0
TMS
Text Label 12450 2050 1    60   ~ 0
AS
Text Label 12350 2050 1    60   ~ 0
CERAM
Text Label 12250 2050 1    60   ~ 0
CEROM
Text Label 12050 2050 1    60   ~ 0
DS
Text Label 11950 2050 1    60   ~ 0
DTACK
Text Label 11850 2050 1    60   ~ 0
HALT
Text Label 11750 2050 1    60   ~ 0
IPL1
Wire Wire Line
	11200 2650 10850 2650
Wire Wire Line
	11200 2950 10850 2950
Wire Wire Line
	11200 3050 10850 3050
Wire Wire Line
	11200 3150 10850 3150
Wire Wire Line
	11200 3250 10850 3250
Wire Wire Line
	11200 3450 10850 3450
Wire Wire Line
	11200 3550 10850 3550
Wire Wire Line
	11200 3650 10850 3650
Wire Wire Line
	11200 3850 10850 3850
Text Label 11050 2650 0    60   ~ 0
IPL2
Text Label 10950 2950 0    60   ~ 0
OE
Text Label 10950 3050 0    60   ~ 0
RD
Text Label 10950 3150 0    60   ~ 0
RXF
Text Label 10950 3250 0    60   ~ 0
RESET
Text Label 10950 3450 0    60   ~ 0
TXE
Text Label 10950 3550 0    60   ~ 0
VPA
Text Label 10950 3650 0    60   ~ 0
A19
Text Label 10950 3850 0    60   ~ 0
A18
Wire Wire Line
	11200 3950 10900 3950
Wire Wire Line
	11200 4150 10900 4150
Wire Wire Line
	11200 4250 10900 4250
Wire Wire Line
	11200 4350 10900 4350
Wire Wire Line
	11200 4450 10900 4450
Wire Wire Line
	11200 4550 10900 4550
Wire Wire Line
	11700 5100 11700 5450
Wire Wire Line
	11800 5100 11800 5450
Wire Wire Line
	11900 5100 11900 5450
Wire Wire Line
	12000 5100 12000 5450
Wire Wire Line
	12100 5100 12100 5450
Wire Wire Line
	12300 5100 12300 5450
Wire Wire Line
	12400 5100 12400 5450
Wire Wire Line
	12400 5450 12350 5450
Wire Wire Line
	12500 5100 12500 5450
Wire Wire Line
	12800 5100 12800 5450
Wire Wire Line
	12900 5100 12900 5450
Wire Wire Line
	13000 5100 13000 5450
Text Label 11000 3950 0    60   ~ 0
A17
Text Label 11000 4150 0    60   ~ 0
A16
Text Label 11000 4250 0    60   ~ 0
A15
Text Label 11000 4350 0    60   ~ 0
A14
Text Label 11000 4450 0    60   ~ 0
A13
Text Label 11000 4550 0    60   ~ 0
A12
Text Label 11700 5400 1    60   ~ 0
BTN
Text Label 11800 5400 1    60   ~ 0
CLK
Text Label 11900 5400 1    60   ~ 0
D0
Text Label 12000 5400 1    60   ~ 0
FC0
Text Label 12100 5400 1    60   ~ 0
FC1
Text Label 12300 5400 1    60   ~ 0
RW
Text Label 12400 5400 1    60   ~ 0
STATUS
Text Label 12500 5400 1    60   ~ 0
WR
Text Label 12800 5400 1    60   ~ 0
D1
Text Label 12900 5400 1    60   ~ 0
D2
Text Label 13000 5400 1    60   ~ 0
D3
Wire Wire Line
	13200 5100 13200 5450
Wire Wire Line
	13300 5100 13300 5450
Wire Wire Line
	13400 5100 13400 5450
Wire Wire Line
	13500 5100 13500 5450
Wire Wire Line
	13600 5100 13600 5450
Text Label 13200 5400 1    60   ~ 0
D4
Text Label 13300 5400 1    60   ~ 0
D5
Text Label 13400 5400 1    60   ~ 0
D6
Text Label 13500 5400 1    60   ~ 0
D7
Wire Wire Line
	14350 4650 14750 4650
Wire Wire Line
	14350 4550 14750 4550
Wire Wire Line
	14350 4450 14750 4450
Wire Wire Line
	14350 4350 14750 4350
Wire Wire Line
	14350 4250 14750 4250
Wire Wire Line
	14350 4050 14700 4050
Wire Wire Line
	14350 3950 14700 3950
Wire Wire Line
	14350 3750 14750 3750
Wire Wire Line
	14350 3650 14700 3650
Text Label 13600 5400 1    60   ~ 0
PA0
Text Label 14550 4650 0    60   ~ 0
PA1
Text Label 14550 4550 0    60   ~ 0
PA2
Text Label 14550 4450 0    60   ~ 0
PA3
Text Label 14550 4350 0    60   ~ 0
PA4
Text Label 14550 4250 0    60   ~ 0
PA5
Text Label 14600 4050 0    60   ~ 0
PA6
Text Label 14600 3950 0    60   ~ 0
-IOW
Text Label 14600 3750 0    60   ~ 0
A11
Wire Wire Line
	14350 3550 14700 3550
Text Label 14600 3650 0    60   ~ 0
A0
Text Label 14600 3550 0    60   ~ 0
A1
Wire Wire Line
	14350 3350 14750 3350
Wire Wire Line
	14350 3250 14750 3250
Wire Wire Line
	14350 3150 14700 3150
Wire Wire Line
	14350 2850 14750 2850
Wire Wire Line
	14350 2750 14750 2750
Wire Wire Line
	13650 2200 13650 1900
Wire Wire Line
	13550 2200 13550 1900
Wire Wire Line
	13450 2200 13450 1900
Wire Wire Line
	13350 2200 13350 1900
Wire Wire Line
	13250 2200 13250 1900
Wire Wire Line
	13050 2200 13050 1900
Wire Wire Line
	12950 2200 12950 1900
Wire Wire Line
	12650 2200 12650 1900
Text Label 14600 3350 0    60   ~ 0
PB0
Text Label 14600 3250 0    60   ~ 0
PB1
Text Label 14600 3150 0    60   ~ 0
PB2
Text Label 14600 2850 0    60   ~ 0
PB3
Text Label 14600 2750 0    60   ~ 0
PB4
Text Label 13450 2100 1    60   ~ 0
VCC
Wire Wire Line
	8250 6100 8550 6100
Wire Wire Line
	9050 6100 9400 6100
Wire Wire Line
	8550 6200 8250 6200
Wire Wire Line
	9050 6200 9400 6200
Wire Wire Line
	9050 6300 9400 6300
Wire Wire Line
	8550 6300 8250 6300
Wire Wire Line
	8550 6400 8250 6400
Wire Wire Line
	8550 6500 8250 6500
Wire Wire Line
	8550 6600 8250 6600
Wire Wire Line
	8550 6700 8250 6700
Wire Wire Line
	9050 6500 9400 6500
Wire Wire Line
	9050 6600 9400 6600
Wire Wire Line
	9050 6700 9400 6700
Wire Wire Line
	9050 6900 9400 6900
Wire Wire Line
	8550 7000 8250 7000
Text Label 8350 7000 0    60   ~ 0
GND
Text Label 9200 7000 0    60   ~ 0
VCC
Text Label 8350 6100 0    60   ~ 0
PA0
Text Label 9150 6100 0    60   ~ 0
PA1
Text Label 8350 6200 0    60   ~ 0
PA2
Text Label 9150 6200 0    60   ~ 0
PA3
Text Label 8350 6300 0    60   ~ 0
PA4
Text Label 9150 6300 0    60   ~ 0
PA5
Text Label 8350 6400 0    60   ~ 0
PA6
Text Label 8350 6500 0    60   ~ 0
PB0
Text Label 9150 6500 0    60   ~ 0
PB1
Text Label 8350 6600 0    60   ~ 0
PB2
Text Label 9150 6600 0    60   ~ 0
PB3
Text Label 8350 6700 0    60   ~ 0
PB4
Text Label 9150 6700 0    60   ~ 0
PB5
Text Label 8350 6800 0    60   ~ 0
PB6
Text Label 8300 6900 0    60   ~ 0
INTR1
Text Label 9150 6900 0    60   ~ 0
INTR2
Text Label 13050 2100 1    60   ~ 0
GND
Text Label 12650 2050 1    60   ~ 0
CLK
NoConn ~ 12750 2200
NoConn ~ 12850 2200
Text Label 12950 2100 1    60   ~ 0
CLK
$Comp
L CONN_02X10 J2
U 1 1 591D7406
P 8800 6550
F 0 "J2" H 8800 7100 50  0000 C CNN
F 1 "PORTS" V 8800 6550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x10_Pitch2.54mm" H 8800 5350 50  0001 C CNN
F 3 "" H 8800 5350 50  0001 C CNN
	1    8800 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 7000 9350 7000
Wire Wire Line
	8550 6900 8250 6900
Wire Wire Line
	8550 6800 8250 6800
Wire Wire Line
	13150 2200 13150 1900
Text Label 13150 2100 1    60   ~ 0
INTR2
Text Label 13250 2100 1    60   ~ 0
INTR1
Text Label 13350 2100 1    60   ~ 0
-IOR
NoConn ~ 950  1250
Wire Wire Line
	950  1150 750  1150
Text Label 800  1150 0    60   ~ 0
VCC
$Comp
L 7SEGMENT_CA U4
U 1 1 5ADFE469
P 9050 4550
F 0 "U4" H 8950 4925 50  0000 R CNN
F 1 "Hi" H 8950 4850 50  0000 R CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 9500 4250 50  0001 L CNN
F 3 "" H 9050 4540 50  0001 L CNN
	1    9050 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 4550 9700 4550
Wire Wire Line
	9450 4650 9700 4650
Wire Wire Line
	8650 4150 8350 4150
Wire Wire Line
	8650 4250 8350 4250
Wire Wire Line
	8650 4350 8350 4350
Wire Wire Line
	8650 4450 8350 4450
Wire Wire Line
	8650 4550 8350 4550
Wire Wire Line
	8650 4650 8350 4650
Wire Wire Line
	8650 4750 8350 4750
Wire Wire Line
	8650 4950 8350 4950
Text Label 8450 4750 0    60   ~ 0
PB0
Text Label 8450 4650 0    60   ~ 0
PB1
Text Label 8450 4550 0    60   ~ 0
PB2
Text Label 8450 4450 0    60   ~ 0
PB3
Text Label 8450 4350 0    60   ~ 0
PB4
Text Label 8450 4950 0    60   ~ 0
_CS1
Text Label 8450 4250 0    60   ~ 0
PB5
Text Label 8450 4150 0    60   ~ 0
PB6
Wire Wire Line
	9700 4650 9700 4550
Wire Wire Line
	9650 4650 9900 4650
Connection ~ 9650 4650
$Comp
L R R10
U 1 1 5ADFFCD6
P 9900 4900
F 0 "R10" V 9980 4900 50  0000 C CNN
F 1 "680" V 9900 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9830 4900 50  0001 C CNN
F 3 "" H 9900 4900 50  0001 C CNN
	1    9900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4650 9900 4750
Wire Wire Line
	10000 5250 9900 5250
Wire Wire Line
	9900 5250 9900 5050
Text Label 9900 5150 0    60   ~ 0
GND
$Comp
L 7SEGMENT_CA U9
U 1 1 5AE00574
P 9100 3250
F 0 "U9" H 9000 3625 50  0000 R CNN
F 1 "Low" H 9000 3550 50  0000 R CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 9550 2950 50  0001 L CNN
F 3 "" H 9100 3240 50  0001 L CNN
	1    9100 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 2850 8450 2850
Wire Wire Line
	8700 2950 8450 2950
Wire Wire Line
	8700 3050 8450 3050
Wire Wire Line
	8700 3150 8450 3150
Wire Wire Line
	8700 3250 8450 3250
Wire Wire Line
	8700 3350 8450 3350
Wire Wire Line
	8700 3450 8450 3450
Wire Wire Line
	8700 3650 8450 3650
Wire Wire Line
	9500 3250 9500 3350
Wire Wire Line
	9500 3350 9800 3350
Text Label 8550 2850 0    60   ~ 0
PA6
Text Label 8550 2950 0    60   ~ 0
PA5
Text Label 8550 3050 0    60   ~ 0
PA4
Text Label 8550 3150 0    60   ~ 0
PA3
Text Label 8550 3250 0    60   ~ 0
PA2
Text Label 8550 3350 0    60   ~ 0
PA1
Text Label 8550 3450 0    60   ~ 0
PA0
Text Label 8550 3650 0    60   ~ 0
_CS0
$Comp
L R R11
U 1 1 5AE0176F
P 9800 3600
F 0 "R11" V 9880 3600 50  0000 C CNN
F 1 "680" V 9800 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9730 3600 50  0001 C CNN
F 3 "" H 9800 3600 50  0001 C CNN
	1    9800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3350 9800 3450
Wire Wire Line
	9800 3750 9800 3950
Text Label 9800 3850 0    60   ~ 0
GND
$Comp
L Conn_02x20_Odd_Even J3
U 1 1 5B01C021
P 11750 7050
F 0 "J3" H 11800 8050 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 11800 5950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.00mm" H 11750 7050 50  0001 C CNN
F 3 "" H 11750 7050 50  0001 C CNN
	1    11750 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	11550 6150 11200 6150
Wire Wire Line
	11550 6250 11200 6250
Text Label 11200 6150 0    60   ~ 0
RESET
Wire Wire Line
	12050 6150 12350 6150
Text Label 12200 6150 0    60   ~ 0
GND
Wire Wire Line
	11550 6350 11200 6350
Wire Wire Line
	11550 6450 11200 6450
Wire Wire Line
	11550 6550 11200 6550
Wire Wire Line
	11550 6650 11200 6650
Wire Wire Line
	11550 6750 11200 6750
Wire Wire Line
	11550 6850 11200 6850
Wire Wire Line
	11550 6950 11200 6950
Wire Wire Line
	11550 7050 11200 7050
Text Label 11300 6250 0    60   ~ 0
D7
Text Label 11300 6350 0    60   ~ 0
D6
Text Label 11300 6450 0    60   ~ 0
D5
Text Label 11300 6550 0    60   ~ 0
D4
Text Label 11300 6650 0    60   ~ 0
D3
Text Label 11300 6750 0    60   ~ 0
D2
Text Label 11300 6850 0    60   ~ 0
D1
Text Label 11300 6950 0    60   ~ 0
D0
Text Label 11300 7050 0    60   ~ 0
GND
Wire Wire Line
	12050 8050 12350 8050
Text Label 12150 8050 0    60   ~ 0
GND
Wire Wire Line
	12050 7150 12350 7150
Wire Wire Line
	12350 7150 12350 7350
Wire Wire Line
	12350 7250 12050 7250
Wire Wire Line
	12350 7350 12050 7350
Connection ~ 12350 7250
Wire Wire Line
	12050 7550 12350 7550
Text Label 12250 7550 0    60   ~ 0
GND
Text Label 12200 7150 0    60   ~ 0
GND
Text Label 11250 7250 0    60   ~ 0
-IOW
Text Label 11250 7350 0    60   ~ 0
-IOR
Wire Wire Line
	11550 7650 11200 7650
$Comp
L R R12
U 1 1 5B01E8E8
P 11050 7650
F 0 "R12" V 11130 7650 50  0000 C CNN
F 1 "1K" V 11050 7650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10980 7650 50  0001 C CNN
F 3 "" H 11050 7650 50  0001 C CNN
	1    11050 7650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10900 7650 10550 7650
Text Label 10650 7650 0    60   ~ 0
GND
Wire Wire Line
	11550 7750 11200 7750
Wire Wire Line
	11550 7850 11200 7850
Wire Wire Line
	11550 7950 11200 7950
Wire Wire Line
	10000 8050 11550 8050
Text Label 11400 7650 0    60   ~ 0
INTRQ
Text Label 11300 7750 0    60   ~ 0
A1
Text Label 11300 7850 0    60   ~ 0
A0
Text Label 11200 7950 0    60   ~ 0
_CS0
Text Label 11200 8050 0    60   ~ 0
-DASP
Wire Wire Line
	12050 7950 12350 7950
Text Label 12250 7950 0    60   ~ 0
_CS1
Wire Wire Line
	12050 7850 12350 7850
Text Label 12300 7850 0    60   ~ 0
A2
Wire Wire Line
	13800 2200 13800 1900
Text Label 13800 2100 1    60   ~ 0
PB5
Text Label 13650 2100 1    60   ~ 0
PB6
Text Label 13550 2150 1    60   ~ 0
_CS0
Wire Wire Line
	14350 2650 14750 2650
Text Label 14550 2650 0    60   ~ 0
_CS1
$Comp
L Conn_01x02 J4
U 1 1 5B01EFF7
P 13350 6250
F 0 "J4" H 13350 6350 50  0000 C CNN
F 1 "Conn_01x02" H 13350 6050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.00mm" H 13350 6250 50  0001 C CNN
F 3 "" H 13350 6250 50  0001 C CNN
	1    13350 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	13150 6250 12750 6250
Wire Wire Line
	13150 6350 12750 6350
Text Label 12850 6250 0    60   ~ 0
VCC
Text Label 12900 6350 0    60   ~ 0
GND
Wire Wire Line
	11550 7250 11200 7250
Wire Wire Line
	11550 7350 11200 7350
$Comp
L LED_Small D3
U 1 1 5B026CA0
P 10000 7950
F 0 "D3" H 9950 8075 50  0000 L CNN
F 1 "IDE" V 9700 8100 50  0000 L CNN
F 2 "LEDs:LED_0805" V 10000 7950 50  0001 C CNN
F 3 "" V 10000 7950 50  0001 C CNN
	1    10000 7950
	0    -1   -1   0   
$EndComp
$Comp
L R R13
U 1 1 5B026D72
P 10000 7700
F 0 "R13" V 10080 7700 50  0000 C CNN
F 1 "1K" V 10000 7700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9930 7700 50  0001 C CNN
F 3 "" H 10000 7700 50  0001 C CNN
	1    10000 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 7550 10000 7100
Text Label 10000 7300 0    60   ~ 0
VCC
Wire Wire Line
	9050 6400 9400 6400
Wire Wire Line
	9050 6800 9400 6800
Text Label 9250 6400 0    60   ~ 0
_CS0
Text Label 9350 6800 0    60   ~ 0
_CS1
$EndSCHEMATC