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
LIBS:special
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
LIBS:OSHWatch-parts
LIBS:OSHWatch-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title ""
Date "8 jul 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_30 P1
U 1 1 558EB6E1
P 7550 3450
F 0 "P1" V 7501 3450 60  0000 C CNN
F 1 "CONN_30" V 7600 3450 60  0000 C CNN
F 2 "XF2M-3015-1A" V 7800 3450 60  0000 C CNN
F 3 "" H 7550 3450 60  0000 C CNN
	1    7550 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 558EB6F0
P 4800 2500
F 0 "#PWR013" H 4800 2500 30  0001 C CNN
F 1 "GND" H 4800 2430 30  0001 C CNN
F 2 "" H 4800 2500 60  0000 C CNN
F 3 "" H 4800 2500 60  0000 C CNN
	1    4800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2100 7200 2100
$Comp
L +12V #PWR014
U 1 1 558EB701
P 6750 1750
F 0 "#PWR014" H 6750 1700 20  0001 C CNN
F 1 "+12V" H 6750 1850 30  0000 C CNN
F 2 "" H 6750 1750 60  0000 C CNN
F 3 "" H 6750 1750 60  0000 C CNN
	1    6750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2100 6750 1750
Connection ~ 6750 2100
Wire Wire Line
	7200 2000 4800 2000
$Comp
L C C7
U 1 1 558EB71D
P 6400 2100
F 0 "C7" H 6400 2200 40  0000 L CNN
F 1 "10uF,16V" H 6406 2015 40  0000 L CNN
F 2 "SM0603" H 6438 1950 30  0000 C CNN
F 3 "~" H 6400 2100 60  0000 C CNN
	1    6400 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 2100 4800 2100
Wire Wire Line
	7200 2200 6200 2200
$Comp
L C C6
U 1 1 558EB746
P 6000 2200
F 0 "C6" H 6000 2300 40  0000 L CNN
F 1 "1uF" H 6006 2115 40  0000 L CNN
F 2 "SM0402" H 6038 2050 30  0000 C CNN
F 3 "~" H 6000 2200 60  0000 C CNN
	1    6000 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 2200 5800 2200
Wire Wire Line
	6600 2300 7200 2300
Wire Wire Line
	6950 2300 6950 1750
Connection ~ 6950 2300
$Comp
L +3.3V #PWR015
U 1 1 558EB76E
P 6950 1750
F 0 "#PWR015" H 6950 1710 30  0001 C CNN
F 1 "+3.3V" H 6950 1860 30  0000 C CNN
F 2 "" H 6950 1750 60  0000 C CNN
F 3 "" H 6950 1750 60  0000 C CNN
	1    6950 1750
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 558EB77D
P 6400 2300
F 0 "C8" H 6400 2400 40  0000 L CNN
F 1 "10uF" H 6406 2215 40  0000 L CNN
F 2 "SM0402" H 6438 2150 30  0000 C CNN
F 3 "~" H 6400 2300 60  0000 C CNN
	1    6400 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 2300 6200 2300
$Comp
L R R5
U 1 1 558EB793
P 6800 2400
F 0 "R5" V 6880 2400 40  0000 C CNN
F 1 "50" V 6807 2401 40  0000 C CNN
F 2 "SM0402" V 6730 2400 30  0000 C CNN
F 3 "~" H 6800 2400 30  0000 C CNN
	1    6800 2400
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D2
U 1 1 558EB7A2
P 6050 2400
F 0 "D2" H 6050 2500 40  0000 C CNN
F 1 "1N4148" H 6050 2300 40  0000 C CNN
F 2 "~" H 6050 2400 60  0000 C CNN
F 3 "~" H 6050 2400 60  0000 C CNN
	1    6050 2400
	-1   0    0    1   
$EndComp
$Comp
L DIODE D1
U 1 1 558EB7BB
P 5550 2400
F 0 "D1" H 5550 2500 40  0000 C CNN
F 1 "1N4148" H 5550 2300 40  0000 C CNN
F 2 "~" H 5550 2400 60  0000 C CNN
F 3 "~" H 5550 2400 60  0000 C CNN
	1    5550 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	7200 2400 7050 2400
Wire Wire Line
	6550 2400 6250 2400
Wire Wire Line
	5850 2400 5750 2400
Wire Wire Line
	4800 2400 5350 2400
Wire Wire Line
	4800 2000 4800 2500
Connection ~ 4800 2100
Connection ~ 4800 2200
Connection ~ 4800 2300
Connection ~ 4800 2400
Wire Wire Line
	7200 3200 6500 3200
Text HLabel 6500 3200 0    60   Input ~ 0
DISPLAY_MOSI
Wire Wire Line
	7200 3300 6500 3300
Text HLabel 6500 3300 0    60   Input ~ 0
DISPLAY_SCK
Wire Wire Line
	7200 3600 6500 3600
$Comp
L R R4
U 1 1 558EBA0F
P 6250 3600
F 0 "R4" V 6330 3600 40  0000 C CNN
F 1 "10K" V 6257 3601 40  0000 C CNN
F 2 "SM0402" V 6180 3600 30  0000 C CNN
F 3 "~" H 6250 3600 30  0000 C CNN
	1    6250 3600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR016
U 1 1 558EBA15
P 5800 3700
F 0 "#PWR016" H 5800 3700 30  0001 C CNN
F 1 "GND" H 5800 3630 30  0001 C CNN
F 2 "" H 5800 3700 60  0000 C CNN
F 3 "" H 5800 3700 60  0000 C CNN
	1    5800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3600 6000 3600
Wire Wire Line
	5800 3600 5800 3700
Wire Wire Line
	7200 3700 5900 3700
Wire Wire Line
	5900 3700 5900 3600
Connection ~ 5900 3600
Wire Wire Line
	7200 3800 6500 3800
Text HLabel 6500 3800 0    60   Input ~ 0
DISPLAY_CS
Wire Wire Line
	7200 3900 6500 3900
Text HLabel 6500 3900 0    60   Input ~ 0
DISPLAY_DC
Wire Wire Line
	7200 4000 6500 4000
Text HLabel 6500 4000 0    60   Input ~ 0
DISPLAY_RESET
Wire Wire Line
	7200 4100 5650 4100
$Comp
L R R3
U 1 1 558EBC30
P 5400 4100
F 0 "R3" V 5480 4100 40  0000 C CNN
F 1 "600K" V 5407 4101 40  0000 C CNN
F 2 "SM0402" V 5330 4100 30  0000 C CNN
F 3 "~" H 5400 4100 30  0000 C CNN
	1    5400 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5150 4100 4750 4100
Wire Wire Line
	4750 4900 7200 4900
Wire Wire Line
	7200 4700 7000 4700
Wire Wire Line
	7000 4700 7000 4900
Connection ~ 7000 4900
Wire Wire Line
	7200 4600 5650 4600
$Comp
L C C5
U 1 1 558EBCC5
P 5450 4600
F 0 "C5" H 5450 4700 40  0000 L CNN
F 1 "10uF" H 5456 4515 40  0000 L CNN
F 2 "SM0402" H 5488 4450 30  0000 C CNN
F 3 "~" H 5450 4600 60  0000 C CNN
	1    5450 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 4600 4750 4600
$Comp
L C C4
U 1 1 558EBCF3
P 5050 4500
F 0 "C4" H 5050 4600 40  0000 L CNN
F 1 "1uF" H 5056 4415 40  0000 L CNN
F 2 "SM0402" H 5088 4350 30  0000 C CNN
F 3 "~" H 5050 4500 60  0000 C CNN
	1    5050 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 4500 4750 4500
Wire Wire Line
	5250 4500 7200 4500
Wire Wire Line
	5800 4600 5800 4400
Connection ~ 5800 4600
$Comp
L +3.3V #PWR017
U 1 1 558EBDBF
P 5800 4400
F 0 "#PWR017" H 5800 4360 30  0001 C CNN
F 1 "+3.3V" H 5800 4510 30  0000 C CNN
F 2 "" H 5800 4400 60  0000 C CNN
F 3 "" H 5800 4400 60  0000 C CNN
	1    5800 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 558EBDC5
P 4750 5000
F 0 "#PWR018" H 4750 5000 30  0001 C CNN
F 1 "GND" H 4750 4930 30  0001 C CNN
F 2 "" H 4750 5000 60  0000 C CNN
F 3 "" H 4750 5000 60  0000 C CNN
	1    4750 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4100 4750 5000
Connection ~ 4750 4600
Connection ~ 4750 4900
Connection ~ 4750 4500
$EndSCHEMATC
