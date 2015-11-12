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
LIBS:extra
LIBS:kicadlib
LIBS:led_shirt-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "8 nov 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 2150 3150 0    60   ~ 0
vbat
$Comp
L R-RESCUE-led_shirt R3
U 1 1 509FF0CA
P 2050 3500
F 0 "R3" V 2130 3500 50  0000 C CNN
F 1 "10kΩ" V 2050 3500 50  0000 C CNN
F 2 "kicadlib:SMD_0603_R" H 2050 3500 60  0001 C CNN
F 3 "" H 2050 3500 60  0001 C CNN
	1    2050 3500
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-led_shirt R5
U 1 1 509E9C0F
P 8300 3800
F 0 "R5" V 8380 3800 50  0000 C CNN
F 1 "0Ω" V 8300 3800 50  0000 C CNN
F 2 "kicadlib:SMD_0603_R" H 8300 3800 60  0001 C CNN
F 3 "" H 8300 3800 60  0001 C CNN
	1    8300 3800
	1    0    0    -1  
$EndComp
Text Label 2550 4150 2    60   ~ 0
mclr
Text Label 2700 1350 0    60   ~ 0
vbat
$Comp
L GND-RESCUE-led_shirt #PWR01
U 1 1 509D02E2
P 4100 3600
F 0 "#PWR01" H 4100 3600 30  0001 C CNN
F 1 "GND" H 4100 3530 30  0001 C CNN
F 2 "" H 4100 3600 60  0001 C CNN
F 3 "" H 4100 3600 60  0001 C CNN
	1    4100 3600
	1    0    0    -1  
$EndComp
Text Label 8300 5050 0    60   ~ 0
vbat
Text Label 4150 6150 0    60   ~ 0
vbat
$Comp
L GND-RESCUE-led_shirt #PWR02
U 1 1 509D029F
P 3700 7050
F 0 "#PWR02" H 3700 7050 30  0001 C CNN
F 1 "GND" H 3700 6980 30  0001 C CNN
F 2 "" H 3700 7050 60  0001 C CNN
F 3 "" H 3700 7050 60  0001 C CNN
	1    3700 7050
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-led_shirt C3
U 1 1 509D0292
P 3850 6450
F 0 "C3" H 3900 6550 50  0000 L CNN
F 1 "4.7µF" H 3900 6350 50  0000 L CNN
F 2 "kicadlib:SMD_0603_R" H 3850 6450 60  0001 C CNN
F 3 "" H 3850 6450 60  0001 C CNN
	1    3850 6450
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-led_shirt R9
U 1 1 509D0279
P 3450 6550
F 0 "R9" V 3530 6550 50  0000 C CNN
F 1 "3.3kΩ" V 3450 6550 50  0000 C CNN
F 2 "kicadlib:SMD_0603_R" H 3450 6550 60  0001 C CNN
F 3 "" H 3450 6550 60  0001 C CNN
	1    3450 6550
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-led_shirt R10
U 1 1 509D021A
P 1700 7000
F 0 "R10" V 1780 7000 50  0000 C CNN
F 1 "3.3kΩ" V 1700 7000 50  0000 C CNN
F 2 "kicadlib:SMD_0603_R" H 1700 7000 60  0001 C CNN
F 3 "" H 1700 7000 60  0001 C CNN
	1    1700 7000
	1    0    0    -1  
$EndComp
$Comp
L LED-RESCUE-led_shirt D2
U 1 1 509D01E7
P 1700 6450
F 0 "D2" H 1700 6550 50  0000 C CNN
F 1 "LED" H 1700 6350 50  0000 C CNN
F 2 "kicadlib:SMD_0603_LED" H 1700 6450 60  0001 C CNN
F 3 "" H 1700 6450 60  0001 C CNN
	1    1700 6450
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-led_shirt C2
U 1 1 509D016A
P 1250 6450
F 0 "C2" H 1300 6550 50  0000 L CNN
F 1 "4.7µF" H 1300 6350 50  0000 L CNN
F 2 "kicadlib:SMD_0603_R" H 1250 6450 60  0001 C CNN
F 3 "" H 1250 6450 60  0001 C CNN
	1    1250 6450
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-led_shirt #PWR03
U 1 1 509D017A
P 1250 6750
F 0 "#PWR03" H 1250 6750 30  0001 C CNN
F 1 "GND" H 1250 6680 30  0001 C CNN
F 2 "" H 1250 6750 60  0001 C CNN
F 3 "" H 1250 6750 60  0001 C CNN
	1    1250 6750
	1    0    0    -1  
$EndComp
Text Label 1150 6150 2    60   ~ 0
vbus
$Comp
L GND-RESCUE-led_shirt #PWR04
U 1 1 509D0101
P 1450 1700
F 0 "#PWR04" H 1450 1700 30  0001 C CNN
F 1 "GND" H 1450 1630 30  0001 C CNN
F 2 "" H 1450 1700 60  0001 C CNN
F 3 "" H 1450 1700 60  0001 C CNN
	1    1450 1700
	1    0    0    -1  
$EndComp
Text Label 1450 1100 0    60   ~ 0
vbus
$Comp
L 10103593-0001LF J1
U 1 1 509D007F
P 1150 1300
F 0 "J1" H 1150 900 60  0000 C CNN
F 1 "10103593-0001LF" H 1150 1650 60  0000 C CNN
F 2 "kicadlib:usb_micro_b_smt" H 1150 1300 60  0001 C CNN
F 3 "" H 1150 1300 60  0001 C CNN
	1    1150 1300
	1    0    0    -1  
$EndComp
$Comp
L MCP73831 U3
U 1 1 508746F6
P 2650 6300
F 0 "U3" H 2650 6000 60  0000 C CNN
F 1 "MCP73831" H 2650 6600 60  0000 C CNN
F 2 "kicadlib:SMD_SOT23-5" H 2650 6300 60  0001 C CNN
F 3 "" H 2650 6300 60  0001 C CNN
	1    2650 6300
	1    0    0    -1  
$EndComp
$Comp
L PIC12F1822 U2
U 1 1 52608131
P 3250 3900
F 0 "U2" H 3250 3450 60  0000 C CNN
F 1 "PIC12F1822" H 3250 4300 60  0000 C CNN
F 2 "kicadlib:SMD_SOIC-8" H 3300 3850 60  0001 C CNN
F 3 "" H 3300 3850 60  0000 C CNN
	1    3250 3900
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-led_shirt R7
U 1 1 5267E075
P 2600 4500
F 0 "R7" V 2680 4500 40  0000 C CNN
F 1 "10K" V 2607 4501 40  0000 C CNN
F 2 "kicadlib:SMD_0603_R" V 2530 4500 30  0000 C CNN
F 3 "~" H 2600 4500 30  0000 C CNN
	1    2600 4500
	1    0    0    -1  
$EndComp
Text Label 2600 4900 0    60   ~ 0
vbat
$Comp
L R-RESCUE-led_shirt R8
U 1 1 5267E19B
P 3950 4500
F 0 "R8" V 4030 4500 40  0000 C CNN
F 1 "10K" V 3957 4501 40  0000 C CNN
F 2 "kicadlib:SMD_0603_R" V 3880 4500 30  0000 C CNN
F 3 "~" H 3950 4500 30  0000 C CNN
	1    3950 4500
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 509ED3DD
P 2050 4250
F 0 "SW1" H 2200 4360 50  0000 C CNN
F 1 "SW_PUSH" H 2050 4170 50  0000 C CNN
F 2 "kicadlib:spst_pushbutton_smd" H 2050 4250 60  0001 C CNN
F 3 "" H 2050 4250 60  0001 C CNN
	1    2050 4250
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-led_shirt #PWR05
U 1 1 56338053
P 2050 4650
F 0 "#PWR05" H 2050 4650 30  0001 C CNN
F 1 "GND" H 2050 4580 30  0001 C CNN
F 2 "" H 2050 4650 60  0001 C CNN
F 3 "" H 2050 4650 60  0001 C CNN
	1    2050 4650
	1    0    0    -1  
$EndComp
Text Label 3950 3850 0    60   ~ 0
icspdat
Text Label 3950 4000 0    60   ~ 0
icspclk
$Comp
L PN_MOSFET_DUAL Q1
U 1 1 5633D4EA
P 7550 4600
F 0 "Q1" H 7500 5250 60  0000 C CNN
F 1 "PN_MOSFET_DUAL" H 7550 3950 60  0000 C CNN
F 2 "kicadlib:SMD_SOT23-6" H 7500 4600 60  0001 C CNN
F 3 "" H 7500 4600 60  0000 C CNN
	1    7550 4600
	1    0    0    -1  
$EndComp
Text Label 4050 4150 0    60   ~ 0
led_cntrl
Text Label 2550 3700 2    60   ~ 0
lps
Text Label 6800 4150 2    60   ~ 0
led_cntrl
Text Label 6800 5050 2    60   ~ 0
~lps_enable
Text Label 6800 4600 2    60   ~ 0
lps
$Comp
L GND-RESCUE-led_shirt #PWR06
U 1 1 5638CC8A
P 8300 4700
F 0 "#PWR06" H 8300 4700 30  0001 C CNN
F 1 "GND" H 8300 4630 30  0001 C CNN
F 2 "" H 8300 4700 60  0000 C CNN
F 3 "" H 8300 4700 60  0000 C CNN
	1    8300 4700
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-led_shirt #PWR07
U 1 1 5638D6FF
P 3950 4850
F 0 "#PWR07" H 3950 4850 30  0001 C CNN
F 1 "GND" H 3950 4780 30  0001 C CNN
F 2 "" H 3950 4850 60  0000 C CNN
F 3 "" H 3950 4850 60  0000 C CNN
	1    3950 4850
	1    0    0    -1  
$EndComp
NoConn ~ 1300 1200
NoConn ~ 1300 1300
NoConn ~ 1300 1400
$Comp
L AP3012 U1
U 1 1 56420BDF
P 6800 1800
F 0 "U1" H 6800 1500 60  0000 C CNN
F 1 "AP3012" H 6800 2100 60  0000 C CNN
F 2 "kicadlib:SMD_SOT23-5" H 6750 1800 60  0001 C CNN
F 3 "" H 6750 1800 60  0000 C CNN
	1    6800 1800
	1    0    0    -1  
$EndComp
Text Notes 2300 5800 0    60   ~ 0
Lipo Charger
Text Notes 3100 3300 0    60   ~ 0
Control
Text Label 1950 3850 2    60   ~ 0
~lps_enable
$Comp
L 5_PIN_HDR J4
U 1 1 56421892
P 5300 4800
F 0 "J4" H 5300 4350 60  0000 C CNN
F 1 "5_PIN_HDR" H 5300 5250 60  0000 C CNN
F 2 "kicadlib:SMD_JST_5_PIN_VERT" H 5300 4800 60  0001 C CNN
F 3 "" H 5300 4800 60  0000 C CNN
	1    5300 4800
	1    0    0    -1  
$EndComp
Text Label 5600 4500 0    60   ~ 0
lps
$Comp
L GND-RESCUE-led_shirt #PWR08
U 1 1 56421A53
P 5600 5200
F 0 "#PWR08" H 5600 5200 30  0001 C CNN
F 1 "GND" H 5600 5130 30  0001 C CNN
F 2 "" H 5600 5200 60  0000 C CNN
F 3 "" H 5600 5200 60  0000 C CNN
	1    5600 5200
	1    0    0    -1  
$EndComp
Text Label 5600 4800 0    60   ~ 0
icspclk
Text Label 5600 4650 0    60   ~ 0
icspdat
Text Label 5600 4950 0    60   ~ 0
mclr
Text Label 2550 4000 2    60   ~ 0
batt_sns
Text Label 1050 4000 2    60   ~ 0
batt_sns
Text Label 1050 3350 2    60   ~ 0
lps
$Comp
L R-RESCUE-led_shirt R4
U 1 1 56422732
P 1150 3700
F 0 "R4" V 1230 3700 50  0000 C CNN
F 1 "10kΩ" V 1150 3700 50  0000 C CNN
F 2 "kicadlib:SMD_0603_R" H 1150 3700 60  0001 C CNN
F 3 "" H 1150 3700 60  0001 C CNN
	1    1150 3700
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-led_shirt R6
U 1 1 564228CE
P 1150 4300
F 0 "R6" V 1230 4300 50  0000 C CNN
F 1 "10kΩ" V 1150 4300 50  0000 C CNN
F 2 "kicadlib:SMD_0603_R" H 1150 4300 60  0001 C CNN
F 3 "" H 1150 4300 60  0001 C CNN
	1    1150 4300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-led_shirt #PWR09
U 1 1 564229D9
P 1150 4650
F 0 "#PWR09" H 1150 4650 30  0001 C CNN
F 1 "GND" H 1150 4580 30  0001 C CNN
F 2 "" H 1150 4650 60  0001 C CNN
F 3 "" H 1150 4650 60  0001 C CNN
	1    1150 4650
	1    0    0    -1  
$EndComp
Text Notes 800  3100 0    60   ~ 0
nopop
$Comp
L D_Schottky D1
U 1 1 56423279
P 6050 1200
F 0 "D1" H 6050 1300 50  0000 C CNN
F 1 "D_Schottky" H 6050 1100 50  0000 C CNN
F 2 "kicadlib:SMD_SOD-123_DIODE" H 6050 1200 60  0001 C CNN
F 3 "" H 6050 1200 60  0000 C CNN
	1    6050 1200
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 564232A8
P 6800 1200
F 0 "L1" V 6750 1200 50  0000 C CNN
F 1 "INDUCTOR" V 6900 1200 50  0000 C CNN
F 2 "kicadlib:SMD_IND_6.8x6.8_SRR6038-100Y" H 6800 1200 60  0001 C CNN
F 3 "" H 6800 1200 60  0000 C CNN
	1    6800 1200
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-led_shirt #PWR010
U 1 1 56423691
P 6300 1850
F 0 "#PWR010" H 6300 1850 30  0001 C CNN
F 1 "GND" H 6300 1780 30  0001 C CNN
F 2 "" H 6300 1850 60  0000 C CNN
F 3 "" H 6300 1850 60  0000 C CNN
	1    6300 1850
	1    0    0    -1  
$EndComp
Text Notes 650  800  0    60   ~ 0
Micro USB B Connector
Text Notes 2100 1100 0    60   ~ 0
Battery Connector
$Comp
L 2_PIN_HDR J2
U 1 1 56423C78
P 2400 1500
F 0 "J2" H 2400 1350 60  0000 C CNN
F 1 "2_PIN_HDR" H 2400 1800 60  0000 C CNN
F 2 "kicadlib:SMD_JST_2_PIN_VERT" H 2400 1500 60  0001 C CNN
F 3 "" H 2400 1500 60  0000 C CNN
	1    2400 1500
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-led_shirt #PWR011
U 1 1 56423DAF
P 2700 1600
F 0 "#PWR011" H 2700 1600 30  0001 C CNN
F 1 "GND" H 2700 1530 30  0001 C CNN
F 2 "" H 2700 1600 60  0000 C CNN
F 3 "" H 2700 1600 60  0000 C CNN
	1    2700 1600
	1    0    0    -1  
$EndComp
Text Notes 4900 4200 0    60   ~ 0
Programming Connector
$Comp
L R-RESCUE-led_shirt R1
U 1 1 5642454D
P 5750 1650
F 0 "R1" V 5830 1650 50  0000 C CNN
F 1 "10kΩ" V 5750 1650 50  0000 C CNN
F 2 "kicadlib:SMD_0603_R" H 5750 1650 60  0001 C CNN
F 3 "" H 5750 1650 60  0001 C CNN
	1    5750 1650
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-led_shirt R2
U 1 1 564245B3
P 5750 2250
F 0 "R2" V 5830 2250 50  0000 C CNN
F 1 "10kΩ" V 5750 2250 50  0000 C CNN
F 2 "kicadlib:SMD_0603_R" H 5750 2250 60  0001 C CNN
F 3 "" H 5750 2250 60  0001 C CNN
	1    5750 2250
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-led_shirt C1
U 1 1 56424638
P 5350 1850
F 0 "C1" H 5400 1950 50  0000 L CNN
F 1 "1.0µF" H 5400 1750 50  0000 L CNN
F 2 "kicadlib:SMD_0603_R" H 5350 1850 60  0001 C CNN
F 3 "" H 5350 1850 60  0001 C CNN
	1    5350 1850
	1    0    0    -1  
$EndComp
Text Label 7350 1950 0    60   ~ 0
lps
Text Notes 7350 2200 0    60   ~ 0
*LPS output also\nused for 12v enable
$Comp
L GND-RESCUE-led_shirt #PWR012
U 1 1 564250CE
P 5550 2700
F 0 "#PWR012" H 5550 2700 30  0001 C CNN
F 1 "GND" H 5550 2630 30  0001 C CNN
F 2 "" H 5550 2700 60  0000 C CNN
F 3 "" H 5550 2700 60  0000 C CNN
	1    5550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4150 2650 4150
Wire Wire Line
	4100 3600 4100 3500
Wire Wire Line
	4100 3500 3950 3500
Wire Wire Line
	3950 3500 3950 3700
Wire Wire Line
	3950 3700 3850 3700
Connection ~ 3850 6150
Wire Wire Line
	3200 6150 4150 6150
Connection ~ 3450 6900
Wire Wire Line
	3700 6900 3700 7050
Wire Wire Line
	3450 6900 3450 6800
Wire Wire Line
	3300 6450 3300 6900
Wire Wire Line
	3300 6450 3200 6450
Wire Wire Line
	1700 7250 1700 7350
Wire Wire Line
	1700 7350 1950 7350
Wire Wire Line
	1950 7350 1950 6450
Wire Wire Line
	1950 6450 2050 6450
Connection ~ 1700 6150
Wire Wire Line
	1700 6150 1700 6250
Wire Wire Line
	1250 6250 1250 6150
Wire Wire Line
	1300 1600 1450 1600
Wire Wire Line
	1300 1100 1450 1100
Wire Wire Line
	1300 1500 1450 1500
Wire Wire Line
	1450 1500 1450 1700
Connection ~ 1450 1600
Wire Wire Line
	1250 6650 1250 6750
Connection ~ 1250 6150
Wire Wire Line
	1150 6150 2050 6150
Wire Wire Line
	1700 6750 1700 6650
Wire Wire Line
	3200 6300 3450 6300
Wire Wire Line
	3850 6150 3850 6250
Wire Wire Line
	3850 6900 3850 6650
Wire Wire Line
	3300 6900 3850 6900
Connection ~ 3700 6900
Wire Wire Line
	2600 4900 2600 4750
Wire Wire Line
	2600 4250 2600 4150
Connection ~ 2600 4150
Wire Wire Line
	3950 3850 3850 3850
Wire Wire Line
	3950 4000 3850 4000
Wire Wire Line
	6800 4150 6900 4150
Wire Wire Line
	6900 4600 6800 4600
Wire Wire Line
	6800 5050 6900 5050
Wire Wire Line
	8200 4600 8300 4600
Wire Wire Line
	8300 4150 8200 4150
Wire Wire Line
	8200 5050 8300 5050
Wire Wire Line
	2050 3150 2050 3250
Wire Wire Line
	8300 4600 8300 4700
Wire Wire Line
	3950 4850 3950 4750
Wire Wire Line
	3950 4250 3950 4150
Wire Wire Line
	3850 4150 4050 4150
Connection ~ 3950 4150
Wire Wire Line
	2150 3150 2050 3150
Wire Wire Line
	2550 3700 2650 3700
Wire Wire Line
	1950 3850 2650 3850
Wire Wire Line
	2050 4650 2050 4550
Wire Wire Line
	2050 3750 2050 3950
Connection ~ 2050 3850
Wire Wire Line
	5500 5100 5600 5100
Wire Wire Line
	5600 5100 5600 5200
Wire Wire Line
	5600 4950 5500 4950
Wire Wire Line
	5500 4800 5600 4800
Wire Wire Line
	5600 4650 5500 4650
Wire Wire Line
	5500 4500 5600 4500
Wire Wire Line
	2550 4000 2650 4000
Wire Wire Line
	1050 3350 1150 3350
Wire Wire Line
	1150 3350 1150 3450
Wire Wire Line
	1050 4000 1150 4000
Wire Wire Line
	1150 3950 1150 4050
Connection ~ 1150 4000
Wire Wire Line
	1150 4650 1150 4550
Wire Notes Line
	600  3150 1350 3150
Wire Notes Line
	1350 3150 1350 4850
Wire Notes Line
	1350 4850 600  4850
Wire Notes Line
	600  4850 600  3150
Wire Wire Line
	6350 1650 6300 1650
Wire Wire Line
	6300 1650 6300 1200
Wire Wire Line
	6200 1200 6500 1200
Wire Wire Line
	7100 1200 7300 1200
Wire Wire Line
	7300 1200 7300 1650
Wire Wire Line
	7250 1650 7400 1650
Wire Wire Line
	6300 1850 6300 1800
Wire Wire Line
	6300 1800 6350 1800
Wire Wire Line
	2700 1350 2600 1350
Wire Wire Line
	2700 1600 2700 1500
Wire Wire Line
	2700 1500 2600 1500
Wire Wire Line
	7350 1950 7250 1950
Wire Wire Line
	5750 1900 5750 2000
Connection ~ 6300 1200
Wire Wire Line
	5750 1200 5750 1400
Wire Wire Line
	4650 1200 5900 1200
Wire Wire Line
	5750 1950 6350 1950
Connection ~ 5750 1950
Wire Wire Line
	5350 2050 5350 2600
Wire Wire Line
	5750 2600 5750 2500
Wire Wire Line
	5000 2600 5750 2600
Connection ~ 5550 2600
Wire Wire Line
	5550 2600 5550 2700
Wire Wire Line
	5350 1650 5350 1200
Connection ~ 5750 1200
Text Notes 5950 900  0    60   ~ 0
+12v Supply
Connection ~ 7300 1650
Connection ~ 5350 1200
Text Label 7400 1650 0    60   ~ 0
vbat
Text Label 4650 1200 2    60   ~ 0
+12v
Wire Wire Line
	8300 4050 8300 4150
$Comp
L 2_PIN_HDR J3
U 1 1 56426881
P 9600 3700
F 0 "J3" H 9600 3550 60  0000 C CNN
F 1 "2_PIN_HDR" H 9600 4000 60  0000 C CNN
F 2 "kicadlib:SMD_JST_2_PIN_VERT" H 9600 3700 60  0001 C CNN
F 3 "" H 9600 3700 60  0000 C CNN
	1    9600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3550 8300 3450
Text Label 8300 3450 0    60   ~ 0
led-
Text Label 9900 3550 0    60   ~ 0
+12v
Text Label 9900 3700 0    60   ~ 0
led-
Wire Wire Line
	9900 3550 9800 3550
Wire Wire Line
	9800 3700 9900 3700
Text Notes 9450 3250 0    60   ~ 0
LED Output
Text Notes 6900 3700 0    60   ~ 0
LPS/Load Switches
$Comp
L CP1 C4
U 1 1 564507C5
P 5000 1850
F 0 "C4" H 5025 1950 50  0000 L CNN
F 1 "CP1" H 5025 1750 50  0000 L CNN
F 2 "kicadlib:SMD_5X5.2_CAP" H 5000 1850 60  0001 C CNN
F 3 "" H 5000 1850 60  0000 C CNN
	1    5000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1700 5000 1200
Connection ~ 5000 1200
Wire Wire Line
	5000 2000 5000 2600
Connection ~ 5350 2600
Wire Notes Line
	4750 1450 4750 2250
Wire Notes Line
	4750 2250 5200 2250
Wire Notes Line
	5200 2250 5200 1450
Wire Notes Line
	5200 1450 4750 1450
Text Notes 4100 1950 0    60   ~ 0
*nopop-\nextra holdup\non +12V
$EndSCHEMATC
