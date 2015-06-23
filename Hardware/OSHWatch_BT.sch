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
Sheet 2 6
Title ""
Date "23 jun 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SPBT2632C2A.AT2 U?
U 1 1 557DB159
P 5650 3650
F 0 "U?" H 5650 2950 60  0000 C CNN
F 1 "SPBT2632C2A.AT2" H 5650 4350 60  0000 C CNN
F 2 "" H 5750 3650 60  0000 C CNN
F 3 "" H 5750 3650 60  0000 C CNN
	1    5650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3850 4600 3850
Wire Wire Line
	5050 3950 4600 3950
Wire Wire Line
	5050 4050 4600 4050
Wire Wire Line
	5050 4150 4600 4150
Text HLabel 4600 4050 0    51   Input ~ 0
BT_RX_STM_TX
Text HLabel 4600 4150 0    51   Output ~ 0
BT_TX_STM_RX
Text HLabel 4600 3850 0    51   Output ~ 0
BT_CTS_STM_RTS
Text HLabel 4600 3950 0    51   Input ~ 0
BT_RTS_STM_CTS
$Comp
L +3.3V #PWR?
U 1 1 5586F988
P 4900 2950
F 0 "#PWR?" H 4900 2910 30  0001 C CNN
F 1 "+3.3V" H 4900 3060 30  0000 C CNN
F 2 "" H 4900 2950 60  0000 C CNN
F 3 "" H 4900 2950 60  0000 C CNN
	1    4900 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3150 4900 3150
Wire Wire Line
	4900 3150 4900 2950
$Comp
L C C?
U 1 1 5586F99C
P 4650 3250
F 0 "C?" H 4650 3350 40  0000 L CNN
F 1 "C" H 4656 3165 40  0000 L CNN
F 2 "~" H 4688 3100 30  0000 C CNN
F 3 "~" H 4650 3250 60  0000 C CNN
	1    4650 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5586F9AB
P 4650 3550
F 0 "#PWR?" H 4650 3550 30  0001 C CNN
F 1 "GND" H 4650 3480 30  0001 C CNN
F 2 "" H 4650 3550 60  0000 C CNN
F 3 "" H 4650 3550 60  0000 C CNN
	1    4650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3050 4650 3000
Wire Wire Line
	4650 3000 4900 3000
Connection ~ 4900 3000
Wire Wire Line
	4650 3450 4650 3550
$Comp
L GND #PWR?
U 1 1 5586F9D6
P 4900 3700
F 0 "#PWR?" H 4900 3700 30  0001 C CNN
F 1 "GND" H 4900 3630 30  0001 C CNN
F 2 "" H 4900 3700 60  0000 C CNN
F 3 "" H 4900 3700 60  0000 C CNN
	1    4900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3650 4900 3650
Wire Wire Line
	4900 3650 4900 3700
$EndSCHEMATC
