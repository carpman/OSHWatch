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
Sheet 3 6
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
L STM32F072 U2
U 1 1 557DB2C1
P 5550 3550
F 0 "U2" H 5550 3500 60  0000 C CNN
F 1 "STM32F072" H 5550 3650 60  0000 C CNN
F 2 "UFQFPN48" H 5550 3350 60  0000 C CNN
F 3 "~" H 8200 2200 60  0000 C CNN
	1    5550 3550
	1    0    0    -1  
$EndComp
Text HLabel 7050 2850 2    51   Output ~ 0
BT_RX_STM_TX
Text HLabel 7050 2950 2    51   Input ~ 0
BT_TX_STM_RX
Text HLabel 4100 2650 0    51   Output ~ 0
DISPLAY_CS
Text HLabel 4100 2750 0    51   Output ~ 0
DISPLAY_SCK
Text HLabel 4100 2950 0    51   Output ~ 0
DISPLAY_MOSI
Text HLabel 7050 2450 2    51   Output ~ 0
DISPLAY_RESET
Text HLabel 7050 2350 2    51   Output ~ 0
DISPLAY_DC
Text HLabel 8500 3250 2    51   BiDi ~ 0
I2C_SCK
Text HLabel 8500 3350 2    51   BiDi ~ 0
I2C_SDA
$Comp
L GND #PWR05
U 1 1 557DEB2C
P 4450 5250
F 0 "#PWR05" H 4450 5250 30  0001 C CNN
F 1 "GND" H 4450 5180 30  0001 C CNN
F 2 "" H 4450 5250 60  0000 C CNN
F 3 "" H 4450 5250 60  0000 C CNN
	1    4450 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 557DEBFC
P 7350 5250
F 0 "#PWR06" H 7350 5250 30  0001 C CNN
F 1 "GND" H 7350 5180 30  0001 C CNN
F 2 "" H 7350 5250 60  0000 C CNN
F 3 "" H 7350 5250 60  0000 C CNN
	1    7350 5250
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 557DEC0E
P 7350 4300
F 0 "C2" H 7350 4400 40  0000 L CNN
F 1 "10uF" H 7356 4215 40  0000 L CNN
F 2 "SM0402" H 7388 4150 30  0000 C CNN
F 3 "~" H 7350 4300 60  0000 C CNN
	1    7350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2650 4100 2650
Wire Wire Line
	4700 2750 4100 2750
Wire Wire Line
	4700 2950 4100 2950
Wire Wire Line
	6400 3250 8500 3250
Wire Wire Line
	6400 3350 8500 3350
Wire Wire Line
	4700 4550 4450 4550
Wire Wire Line
	4450 4550 4450 5250
Wire Wire Line
	4700 4650 4450 4650
Connection ~ 4450 4650
Wire Wire Line
	4700 4750 4450 4750
Connection ~ 4450 4750
Wire Wire Line
	4700 4900 4450 4900
Connection ~ 4450 4900
Wire Wire Line
	6400 3950 7600 3950
Wire Wire Line
	7000 4100 6400 4100
Connection ~ 7000 3950
Wire Wire Line
	7000 4200 6400 4200
Connection ~ 7000 4100
Wire Wire Line
	7000 4300 6400 4300
Connection ~ 7000 4200
Wire Wire Line
	7350 3950 7350 4100
Wire Wire Line
	7350 4500 7350 5250
$Comp
L C C3
U 1 1 557DEDB4
P 7600 4300
F 0 "C3" H 7600 4400 40  0000 L CNN
F 1 "100pF" H 7606 4215 40  0000 L CNN
F 2 "SM0402" H 7638 4150 30  0000 C CNN
F 3 "~" H 7600 4300 60  0000 C CNN
	1    7600 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3950 7600 4100
Connection ~ 7350 3950
$Comp
L GND #PWR07
U 1 1 557DEE00
P 7600 5250
F 0 "#PWR07" H 7600 5250 30  0001 C CNN
F 1 "GND" H 7600 5180 30  0001 C CNN
F 2 "" H 7600 5250 60  0000 C CNN
F 3 "" H 7600 5250 60  0000 C CNN
	1    7600 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4500 7600 5250
$Comp
L R R1
U 1 1 557E3546
P 8150 2900
F 0 "R1" V 8230 2900 40  0000 C CNN
F 1 "4.7K" V 8157 2901 40  0000 C CNN
F 2 "SM0402" V 8080 2900 30  0000 C CNN
F 3 "~" H 8150 2900 30  0000 C CNN
	1    8150 2900
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 557E3553
P 8300 2900
F 0 "R2" V 8380 2900 40  0000 C CNN
F 1 "4.7K" V 8307 2901 40  0000 C CNN
F 2 "SM0402" V 8230 2900 30  0000 C CNN
F 3 "~" H 8300 2900 30  0000 C CNN
	1    8300 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2450 8300 2650
Wire Wire Line
	8150 2650 8150 2600
Wire Wire Line
	8150 2600 8300 2600
Connection ~ 8300 2600
Wire Wire Line
	8300 3150 8300 3350
Connection ~ 8300 3350
Wire Wire Line
	8150 3150 8150 3250
Connection ~ 8150 3250
$Comp
L +3.3V #PWR08
U 1 1 5586FB72
P 8300 2450
F 0 "#PWR08" H 8300 2410 30  0001 C CNN
F 1 "+3.3V" H 8300 2560 30  0000 C CNN
F 2 "" H 8300 2450 60  0000 C CNN
F 3 "" H 8300 2450 60  0000 C CNN
	1    8300 2450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 5586FB8E
P 7000 3900
F 0 "#PWR09" H 7000 3860 30  0001 C CNN
F 1 "+3.3V" H 7000 4010 30  0000 C CNN
F 2 "" H 7000 3900 60  0000 C CNN
F 3 "" H 7000 3900 60  0000 C CNN
	1    7000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2250 7050 2250
Text HLabel 7050 2250 2    60   Input ~ 0
UV_OUT
Wire Wire Line
	1900 3550 4700 3550
Wire Wire Line
	1900 3650 4700 3650
Wire Wire Line
	7000 3900 7000 4300
Wire Wire Line
	6400 4450 7200 4450
Wire Wire Line
	7200 4450 7200 3900
$Comp
L +BATT #PWR010
U 1 1 55900257
P 7200 3900
F 0 "#PWR010" H 7200 3850 20  0001 C CNN
F 1 "+BATT" H 7200 4000 30  0000 C CNN
F 2 "" H 7200 3900 60  0000 C CNN
F 3 "" H 7200 3900 60  0000 C CNN
	1    7200 3900
	1    0    0    -1  
$EndComp
Text HLabel 4100 2450 0    60   Output ~ 0
DISPLAY_BIAS_EN
Wire Wire Line
	4700 3350 4100 3350
Wire Wire Line
	4700 3450 4100 3450
Text HLabel 4100 3350 0    60   BiDi ~ 0
USB_DM
Text HLabel 4100 3450 0    60   BiDi ~ 0
USB_DP
Text HLabel 4100 3950 0    60   Input ~ 0
GESTURE_INT
Text HLabel 7050 3750 2    60   Input ~ 0
GYRO_INT
Text HLabel 4100 3050 0    60   Input ~ 0
XM_INT
Text HLabel 4100 2350 0    60   Output ~ 0
UV_EN
Wire Wire Line
	6400 3050 7050 3050
Wire Wire Line
	6400 3150 7050 3150
Text HLabel 7050 3050 2    60   Output ~ 0
VIB_EN
Text HLabel 7050 3150 2    60   Output ~ 0
VIB_TRIG
Wire Wire Line
	6400 3450 7050 3450
Text HLabel 7050 3450 2    60   Output ~ 0
BT_RESET
Text HLabel 4100 2250 0    60   Input ~ 0
BUTTON_1
Text HLabel 7050 2550 2    60   Input ~ 0
BUTTON_2
Text HLabel 4100 3750 0    60   Input ~ 0
BUTTON_3
$Comp
L CONN_4 P3
U 1 1 55980A5B
P 1550 3700
F 0 "P3" V 1500 3700 50  0000 C CNN
F 1 "CONN_4" V 1600 3700 50  0000 C CNN
F 2 "4pin" V 1700 3700 60  0000 C CNN
F 3 "" H 1550 3700 60  0000 C CNN
	1    1550 3700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 55980AE0
P 2000 4050
F 0 "#PWR011" H 2000 4050 30  0001 C CNN
F 1 "GND" H 2000 3980 30  0001 C CNN
F 2 "" H 2000 4050 60  0000 C CNN
F 3 "" H 2000 4050 60  0000 C CNN
	1    2000 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3850 2000 3850
Wire Wire Line
	2000 3850 2000 4050
Wire Wire Line
	1900 3750 2350 3750
Text Label 2350 3750 0    60   ~ 0
NRST
Wire Wire Line
	6400 4750 6600 4750
Text Label 6600 4750 0    60   ~ 0
NRST
Wire Wire Line
	4700 2450 4100 2450
Wire Wire Line
	6400 2450 7050 2450
Wire Wire Line
	6400 2350 7050 2350
Wire Wire Line
	4700 3950 4100 3950
Wire Wire Line
	6400 3750 7050 3750
Wire Wire Line
	4100 3050 4700 3050
Wire Wire Line
	6400 2550 7050 2550
Wire Wire Line
	4100 2250 4700 2250
Wire Wire Line
	4100 2350 4700 2350
Wire Wire Line
	7050 2850 6400 2850
Wire Wire Line
	7050 2950 6400 2950
Wire Wire Line
	4700 3750 4100 3750
Wire Wire Line
	6400 4650 7350 4650
Connection ~ 7350 4650
$Comp
L R R29
U 1 1 559C92E6
P 2150 3200
F 0 "R29" V 2230 3200 40  0000 C CNN
F 1 "10K" V 2157 3201 40  0000 C CNN
F 2 "SM0402" V 2080 3200 30  0000 C CNN
F 3 "~" H 2150 3200 30  0000 C CNN
	1    2150 3200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 559C92EC
P 2150 2900
F 0 "#PWR012" H 2150 2860 30  0001 C CNN
F 1 "+3.3V" H 2150 3010 30  0000 C CNN
F 2 "" H 2150 2900 60  0000 C CNN
F 3 "" H 2150 2900 60  0000 C CNN
	1    2150 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3750 2150 3450
Connection ~ 2150 3750
Wire Wire Line
	2150 2950 2150 2900
$EndSCHEMATC
