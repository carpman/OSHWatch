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
Sheet 5 6
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
L FAN5331 U4
U 1 1 5586BB3C
P 8300 4300
F 0 "U4" H 8300 3900 60  0000 C CNN
F 1 "FAN5331" H 8300 4650 60  0000 C CNN
F 2 "SOT23-5" H 8300 3800 60  0000 C CNN
F 3 "~" H 8300 4300 60  0000 C CNN
	1    8300 4300
	1    0    0    -1  
$EndComp
$Comp
L TPS61200 U5
U 1 1 5586D4DE
P 8600 1850
F 0 "U5" H 8600 1450 60  0000 C CNN
F 1 "TPS61200" H 8600 2450 60  0000 C CNN
F 2 "VSON-10" H 8600 1350 60  0000 C CNN
F 3 "" H 8600 1850 60  0000 C CNN
	1    8600 1850
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L2
U 1 1 5586D4ED
P 8600 850
F 0 "L2" V 8550 850 40  0000 C CNN
F 1 "4.7uH, 1.2A" V 8700 850 40  0000 C CNN
F 2 "2518" V 8800 850 60  0000 C CNN
F 3 "CBC2518T4R7M" V 8450 850 60  0000 C CNN
	1    8600 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9050 1400 9250 1400
Wire Wire Line
	9250 1400 9250 850 
Wire Wire Line
	9250 850  8900 850 
Wire Wire Line
	6750 850  8300 850 
Wire Wire Line
	8150 1400 8050 1400
Wire Wire Line
	8050 1400 8050 850 
Connection ~ 8050 850 
Wire Wire Line
	9050 1500 11050 1500
$Comp
L +3.3V #PWR019
U 1 1 5586D548
P 11050 1400
F 0 "#PWR019" H 11050 1360 30  0001 C CNN
F 1 "+3.3V" H 11050 1510 30  0000 C CNN
F 2 "" H 11050 1400 60  0000 C CNN
F 3 "" H 11050 1400 60  0000 C CNN
	1    11050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 1500 11050 1400
$Comp
L R R14
U 1 1 5586D56D
P 10450 1850
F 0 "R14" V 10530 1850 40  0000 C CNN
F 1 "1.2M" V 10457 1851 40  0000 C CNN
F 2 "SM0402" V 10380 1850 30  0000 C CNN
F 3 "~" H 10450 1850 30  0000 C CNN
	1    10450 1850
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 5586D57C
P 10450 2450
F 0 "R15" V 10530 2450 40  0000 C CNN
F 1 "220K" V 10457 2451 40  0000 C CNN
F 2 "SM0402" V 10380 2450 30  0000 C CNN
F 3 "~" H 10450 2450 30  0000 C CNN
	1    10450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1600 10450 1500
Connection ~ 10450 1500
Wire Wire Line
	10450 2100 10450 2200
Wire Wire Line
	10450 2150 9850 2150
Wire Wire Line
	9850 2150 9850 1700
Wire Wire Line
	9850 1700 9050 1700
Connection ~ 10450 2150
$Comp
L GND #PWR020
U 1 1 5586D5CF
P 10450 2750
F 0 "#PWR020" H 10450 2750 30  0001 C CNN
F 1 "GND" H 10450 2680 30  0001 C CNN
F 2 "" H 10450 2750 60  0000 C CNN
F 3 "" H 10450 2750 60  0000 C CNN
	1    10450 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 2700 10450 2750
$Comp
L GND #PWR021
U 1 1 5586D633
P 9250 2750
F 0 "#PWR021" H 9250 2750 30  0001 C CNN
F 1 "GND" H 9250 2680 30  0001 C CNN
F 2 "" H 9250 2750 60  0000 C CNN
F 3 "" H 9250 2750 60  0000 C CNN
	1    9250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1800 9250 1800
Wire Wire Line
	9250 1800 9250 2750
Wire Wire Line
	9050 1900 9250 1900
Connection ~ 9250 1900
Wire Wire Line
	9050 2000 9250 2000
Connection ~ 9250 2000
Wire Wire Line
	8150 1800 8050 1800
Wire Wire Line
	8050 1800 8050 2750
$Comp
L GND #PWR022
U 1 1 5586D6C3
P 8050 2750
F 0 "#PWR022" H 8050 2750 30  0001 C CNN
F 1 "GND" H 8050 2680 30  0001 C CNN
F 2 "" H 8050 2750 60  0000 C CNN
F 3 "" H 8050 2750 60  0000 C CNN
	1    8050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 1900 8050 1900
Connection ~ 8050 1900
Wire Wire Line
	8150 2000 8050 2000
Connection ~ 8050 2000
Wire Wire Line
	8150 2100 8050 2100
Connection ~ 8050 2100
$Comp
L R R9
U 1 1 5586F3FC
P 7550 2000
F 0 "R9" V 7630 2000 40  0000 C CNN
F 1 "220K" V 7557 2001 40  0000 C CNN
F 2 "SM0402" V 7480 2000 30  0000 C CNN
F 3 "~" H 7550 2000 30  0000 C CNN
	1    7550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 850  7550 1750
Connection ~ 7550 850 
Wire Wire Line
	8150 1700 7550 1700
Connection ~ 7550 1700
$Comp
L GND #PWR023
U 1 1 5586F495
P 7550 2750
F 0 "#PWR023" H 7550 2750 30  0001 C CNN
F 1 "GND" H 7550 2680 30  0001 C CNN
F 2 "" H 7550 2750 60  0000 C CNN
F 3 "" H 7550 2750 60  0000 C CNN
	1    7550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2250 7550 2750
Wire Wire Line
	8150 1500 7900 1500
Wire Wire Line
	7700 1600 8150 1600
$Comp
L C C13
U 1 1 5586F535
P 9500 2050
F 0 "C13" H 9500 2150 40  0000 L CNN
F 1 "0.1uF" H 9506 1965 40  0000 L CNN
F 2 "SM0402" H 9538 1900 30  0000 C CNN
F 3 "~" H 9500 2050 60  0000 C CNN
	1    9500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1600 9500 1600
Wire Wire Line
	9500 1600 9500 1850
$Comp
L GND #PWR024
U 1 1 5586F57A
P 9500 2750
F 0 "#PWR024" H 9500 2750 30  0001 C CNN
F 1 "GND" H 9500 2680 30  0001 C CNN
F 2 "" H 9500 2750 60  0000 C CNN
F 3 "" H 9500 2750 60  0000 C CNN
	1    9500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2250 9500 2750
$Comp
L C C15
U 1 1 5586F5BA
P 10900 1900
F 0 "C15" H 10900 2000 40  0000 L CNN
F 1 "22uF" H 10906 1815 40  0000 L CNN
F 2 "SM0603" H 10938 1750 30  0000 C CNN
F 3 "~" H 10900 1900 60  0000 C CNN
	1    10900 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 5586F5C0
P 10900 2750
F 0 "#PWR025" H 10900 2750 30  0001 C CNN
F 1 "GND" H 10900 2680 30  0001 C CNN
F 2 "" H 10900 2750 60  0000 C CNN
F 3 "" H 10900 2750 60  0000 C CNN
	1    10900 2750
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 5586F5C6
P 7250 1150
F 0 "C11" H 7250 1250 40  0000 L CNN
F 1 "10uF" H 7256 1065 40  0000 L CNN
F 2 "SM0402" H 7288 1000 30  0000 C CNN
F 3 "~" H 7250 1150 60  0000 C CNN
	1    7250 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5586F5CC
P 7250 2750
F 0 "#PWR026" H 7250 2750 30  0001 C CNN
F 1 "GND" H 7250 2680 30  0001 C CNN
F 2 "" H 7250 2750 60  0000 C CNN
F 3 "" H 7250 2750 60  0000 C CNN
	1    7250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 1700 10900 1500
Connection ~ 10900 1500
Wire Wire Line
	10900 2100 10900 2750
Wire Wire Line
	7250 950  7250 850 
Connection ~ 7250 850 
Wire Wire Line
	7250 1350 7250 2750
Wire Notes Line
	500  3150 11200 3150
Text Notes 6500 3100 0    60   ~ 0
3.3V regulation
$Comp
L R R11
U 1 1 5587023B
P 7900 1150
F 0 "R11" V 7980 1150 40  0000 C CNN
F 1 "10k" V 7907 1151 40  0000 C CNN
F 2 "SM0402" V 7830 1150 30  0000 C CNN
F 3 "~" H 7900 1150 30  0000 C CNN
	1    7900 1150
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5587024A
P 7700 1150
F 0 "R10" V 7780 1150 40  0000 C CNN
F 1 "10k" V 7707 1151 40  0000 C CNN
F 2 "SM0402" V 7630 1150 30  0000 C CNN
F 3 "~" H 7700 1150 30  0000 C CNN
	1    7700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1600 7700 1400
Wire Wire Line
	7700 900  7700 850 
Connection ~ 7700 850 
Wire Wire Line
	7900 900  7900 850 
Connection ~ 7900 850 
Wire Wire Line
	7900 1500 7900 1400
Text Notes 6500 5350 0    60   ~ 0
Display Bias
$Comp
L MCP73831T U3
U 1 1 5588A809
P 3150 1700
F 0 "U3" H 3150 1300 60  0000 C CNN
F 1 "MCP73831T" H 3150 2100 60  0000 C CNN
F 2 "SOT23-5" H 3150 1200 60  0000 C CNN
F 3 "~" H 3000 1850 60  0000 C CNN
	1    3150 1700
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR027
U 1 1 5588A818
P 6750 850
F 0 "#PWR027" H 6750 800 20  0001 C CNN
F 1 "+BATT" H 6750 950 30  0000 C CNN
F 2 "" H 6750 850 60  0000 C CNN
F 3 "" H 6750 850 60  0000 C CNN
	1    6750 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5588A82F
P 2550 2600
F 0 "#PWR028" H 2550 2600 30  0001 C CNN
F 1 "GND" H 2550 2530 30  0001 C CNN
F 2 "" H 2550 2600 60  0000 C CNN
F 3 "" H 2550 2600 60  0000 C CNN
	1    2550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1900 2550 1900
Wire Wire Line
	2550 1900 2550 2600
$Comp
L CONN_2 P2
U 1 1 5588A870
P 5000 1600
F 0 "P2" V 4950 1600 40  0000 C CNN
F 1 "CONN_2" V 5050 1600 40  0000 C CNN
F 2 "" H 5000 1600 60  0000 C CNN
F 3 "" H 5000 1600 60  0000 C CNN
	1    5000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1500 4650 1500
$Comp
L GND #PWR029
U 1 1 5588A8B8
P 4550 2600
F 0 "#PWR029" H 4550 2600 30  0001 C CNN
F 1 "GND" H 4550 2530 30  0001 C CNN
F 2 "" H 4550 2600 60  0000 C CNN
F 3 "" H 4550 2600 60  0000 C CNN
	1    4550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1700 4550 1700
Wire Wire Line
	4550 1700 4550 2600
$Comp
L +5V #PWR030
U 1 1 5588A93B
P 2550 1400
F 0 "#PWR030" H 2550 1490 20  0001 C CNN
F 1 "+5V" H 2550 1490 30  0000 C CNN
F 2 "" H 2550 1400 60  0000 C CNN
F 3 "" H 2550 1400 60  0000 C CNN
	1    2550 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1400 2550 1500
Wire Wire Line
	2300 1500 2750 1500
$Comp
L R R8
U 1 1 5588A993
P 3800 2200
F 0 "R8" V 3880 2200 40  0000 C CNN
F 1 "2K" V 3807 2201 40  0000 C CNN
F 2 "SM0402" V 3730 2200 30  0000 C CNN
F 3 "~" H 3800 2200 30  0000 C CNN
	1    3800 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 5588A9AE
P 3800 2600
F 0 "#PWR031" H 3800 2600 30  0001 C CNN
F 1 "GND" H 3800 2530 30  0001 C CNN
F 2 "" H 3800 2600 60  0000 C CNN
F 3 "" H 3800 2600 60  0000 C CNN
	1    3800 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1900 3800 1900
Wire Wire Line
	3800 1900 3800 1950
Wire Wire Line
	3800 2450 3800 2600
$Comp
L C C9
U 1 1 5588AA4B
P 2300 1750
F 0 "C9" H 2300 1850 40  0000 L CNN
F 1 "10uF" H 2306 1665 40  0000 L CNN
F 2 "SM0402" H 2338 1600 30  0000 C CNN
F 3 "~" H 2300 1750 60  0000 C CNN
	1    2300 1750
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 5588AA58
P 4200 1800
F 0 "C10" H 4200 1900 40  0000 L CNN
F 1 "10uF" H 4206 1715 40  0000 L CNN
F 2 "SM0402" H 4238 1650 30  0000 C CNN
F 3 "~" H 4200 1800 60  0000 C CNN
	1    4200 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 5588AA5E
P 4200 2600
F 0 "#PWR032" H 4200 2600 30  0001 C CNN
F 1 "GND" H 4200 2530 30  0001 C CNN
F 2 "" H 4200 2600 60  0000 C CNN
F 3 "" H 4200 2600 60  0000 C CNN
	1    4200 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 5588AA64
P 2300 2600
F 0 "#PWR033" H 2300 2600 30  0001 C CNN
F 1 "GND" H 2300 2530 30  0001 C CNN
F 2 "" H 2300 2600 60  0000 C CNN
F 3 "" H 2300 2600 60  0000 C CNN
	1    2300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1500 2300 1550
Connection ~ 2550 1500
Wire Wire Line
	2300 1950 2300 2600
Wire Wire Line
	4200 1250 4200 1600
Connection ~ 4200 1500
Wire Wire Line
	4200 2000 4200 2600
Text Notes 500  3100 0    60   ~ 0
Battery Management
$Comp
L +BATT #PWR034
U 1 1 5588AF71
P 4200 1250
F 0 "#PWR034" H 4200 1200 20  0001 C CNN
F 1 "+BATT" H 4200 1350 30  0000 C CNN
F 2 "" H 4200 1250 60  0000 C CNN
F 3 "" H 4200 1250 60  0000 C CNN
	1    4200 1250
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR035
U 1 1 55896655
P 7700 3450
F 0 "#PWR035" H 7700 3400 20  0001 C CNN
F 1 "+BATT" H 7700 3550 30  0000 C CNN
F 2 "" H 7700 3450 60  0000 C CNN
F 3 "" H 7700 3450 60  0000 C CNN
	1    7700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3450 7700 4100
Wire Wire Line
	7500 4100 7900 4100
$Comp
L C C12
U 1 1 558966BA
P 7500 4350
F 0 "C12" H 7500 4450 40  0000 L CNN
F 1 "10uF,6.3V" H 7506 4265 40  0000 L CNN
F 2 "SM0402" H 7538 4200 30  0000 C CNN
F 3 "~" H 7500 4350 60  0000 C CNN
	1    7500 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 558966C0
P 7500 4950
F 0 "#PWR036" H 7500 4950 30  0001 C CNN
F 1 "GND" H 7500 4880 30  0001 C CNN
F 2 "" H 7500 4950 60  0000 C CNN
F 3 "" H 7500 4950 60  0000 C CNN
	1    7500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4100 7500 4150
Connection ~ 7700 4100
Wire Wire Line
	7500 4550 7500 4950
$Comp
L +12V #PWR037
U 1 1 55896774
P 10050 3550
F 0 "#PWR037" H 10050 3500 20  0001 C CNN
F 1 "+12V" H 10050 3650 30  0000 C CNN
F 2 "" H 10050 3550 60  0000 C CNN
F 3 "" H 10050 3550 60  0000 C CNN
	1    10050 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 55896781
P 8950 4950
F 0 "#PWR038" H 8950 4950 30  0001 C CNN
F 1 "GND" H 8950 4880 30  0001 C CNN
F 2 "" H 8950 4950 60  0000 C CNN
F 3 "" H 8950 4950 60  0000 C CNN
	1    8950 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4500 8950 4500
Wire Wire Line
	8950 4500 8950 4950
$Comp
L INDUCTOR L1
U 1 1 558EAD6B
P 8350 3700
F 0 "L1" V 8300 3700 40  0000 C CNN
F 1 "10uH" V 8450 3700 40  0000 C CNN
F 2 "2518" V 8550 3700 60  0000 C CNN
F 3 "~" H 8350 3700 60  0000 C CNN
	1    8350 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 4100 8950 4100
Wire Wire Line
	8950 4100 8950 3700
Wire Wire Line
	8650 3700 9050 3700
Wire Wire Line
	8050 3700 7700 3700
Connection ~ 7700 3700
Wire Wire Line
	7900 4500 7800 4500
Wire Wire Line
	7800 4500 7800 4750
$Comp
L DIODE D3
U 1 1 558EAEA3
P 9250 3700
F 0 "D3" H 9250 3800 40  0000 C CNN
F 1 "BAT54T1G" H 9250 3600 40  0000 C CNN
F 2 "SOD-123" H 9250 3500 60  0000 C CNN
F 3 "~" H 9250 3700 60  0000 C CNN
	1    9250 3700
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 558EAEC4
P 9700 4000
F 0 "R12" V 9780 4000 40  0000 C CNN
F 1 "100K" V 9707 4001 40  0000 C CNN
F 2 "SM0402" V 9630 4000 30  0000 C CNN
F 3 "~" H 9700 4000 30  0000 C CNN
	1    9700 4000
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 558EAECA
P 9700 4600
F 0 "R13" V 9780 4600 40  0000 C CNN
F 1 "10K" V 9707 4601 40  0000 C CNN
F 2 "SM0402" V 9630 4600 30  0000 C CNN
F 3 "~" H 9700 4600 30  0000 C CNN
	1    9700 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 558EAED0
P 9700 4950
F 0 "#PWR039" H 9700 4950 30  0001 C CNN
F 1 "GND" H 9700 4880 30  0001 C CNN
F 2 "" H 9700 4950 60  0000 C CNN
F 3 "" H 9700 4950 60  0000 C CNN
	1    9700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4300 10050 4300
Wire Wire Line
	9700 4250 9700 4350
Connection ~ 9700 4300
Wire Wire Line
	9700 4950 9700 4850
Connection ~ 8950 3700
Wire Wire Line
	9450 3700 10050 3700
Wire Wire Line
	9700 3700 9700 3750
Wire Wire Line
	10050 3550 10050 3800
Connection ~ 9700 3700
$Comp
L C C14
U 1 1 558EB128
P 10050 4000
F 0 "C14" H 10050 4100 40  0000 L CNN
F 1 "0.1uF,16V" H 10056 3915 40  0000 L CNN
F 2 "SM0402" H 10088 3850 30  0000 C CNN
F 3 "~" H 10050 4000 60  0000 C CNN
	1    10050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4300 10050 4200
Connection ~ 10050 3700
Wire Notes Line
	5850 500  5850 5400
Wire Notes Line
	5850 5400 11250 5400
Wire Bus Line
	5850 5400 500  5400
$Comp
L KD3270031 OSC1
U 1 1 5590AA80
P 3100 4300
F 0 "OSC1" H 3100 4050 60  0000 C CNN
F 1 "KD3270031" H 3100 4500 60  0000 C CNN
F 2 "KD3270031" H 3100 3950 60  0000 C CNN
F 3 "" H 3100 4300 60  0000 C CNN
	1    3100 4300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR040
U 1 1 5590AA8F
P 2550 3850
F 0 "#PWR040" H 2550 3810 30  0001 C CNN
F 1 "+3.3V" H 2550 3960 30  0000 C CNN
F 2 "" H 2550 3850 60  0000 C CNN
F 3 "" H 2550 3850 60  0000 C CNN
	1    2550 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 5590AAB6
P 2550 4600
F 0 "#PWR041" H 2550 4600 30  0001 C CNN
F 1 "GND" H 2550 4530 30  0001 C CNN
F 2 "" H 2550 4600 60  0000 C CNN
F 3 "" H 2550 4600 60  0000 C CNN
	1    2550 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4250 2700 4250
Wire Wire Line
	2550 3850 2550 4250
Wire Wire Line
	2700 4400 2550 4400
Wire Wire Line
	2550 4400 2550 4600
Text HLabel 3700 4400 2    60   Output ~ 0
32KHZ_CLK
Wire Wire Line
	3500 4400 3700 4400
$Comp
L R R17
U 1 1 5590E24E
P 7050 4750
F 0 "R17" V 7130 4750 40  0000 C CNN
F 1 "10K" V 7057 4751 40  0000 C CNN
F 2 "SM0402" V 6980 4750 30  0000 C CNN
F 3 "~" H 7050 4750 30  0000 C CNN
	1    7050 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 4750 7300 4750
Wire Wire Line
	6800 4750 6700 4750
Text HLabel 6700 4750 0    60   Input ~ 0
DISPLAY_BIAS_EN
$Comp
L USB-MINI-B CON1
U 1 1 5597FF69
P 3000 6600
F 0 "CON1" H 2750 7050 60  0000 C CNN
F 1 "USB-MINI-B" H 2950 6100 60  0000 C CNN
F 2 "10118192" H 3000 6000 60  0000 C CNN
F 3 "" H 3000 6600 60  0000 C CNN
	1    3000 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6300 2300 6300
Wire Wire Line
	2300 6300 2300 6100
$Comp
L +5V #PWR042
U 1 1 5597FFF2
P 2300 6100
F 0 "#PWR042" H 2300 6190 20  0001 C CNN
F 1 "+5V" H 2300 6190 30  0000 C CNN
F 2 "" H 2300 6100 60  0000 C CNN
F 3 "" H 2300 6100 60  0000 C CNN
	1    2300 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 5598000B
P 2300 7100
F 0 "#PWR043" H 2300 7100 30  0001 C CNN
F 1 "GND" H 2300 7030 30  0001 C CNN
F 2 "" H 2300 7100 60  0000 C CNN
F 3 "" H 2300 7100 60  0000 C CNN
	1    2300 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6900 2300 6900
Wire Wire Line
	2300 6900 2300 7100
Wire Wire Line
	2450 6450 2300 6450
Wire Wire Line
	2300 6450 2300 6600
Wire Wire Line
	2300 6600 2450 6600
Wire Wire Line
	3550 6300 3650 6300
Wire Wire Line
	3650 6300 3650 7100
Wire Wire Line
	3550 6450 3650 6450
Connection ~ 3650 6450
Wire Wire Line
	3550 6750 3650 6750
Connection ~ 3650 6750
Wire Wire Line
	3550 6900 3650 6900
Connection ~ 3650 6900
$Comp
L GND #PWR044
U 1 1 5598068B
P 3650 7100
F 0 "#PWR044" H 3650 7100 30  0001 C CNN
F 1 "GND" H 3650 7030 30  0001 C CNN
F 2 "" H 3650 7100 60  0000 C CNN
F 3 "" H 3650 7100 60  0000 C CNN
	1    3650 7100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
