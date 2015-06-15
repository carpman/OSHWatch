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
Date "15 jun 2015"
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
$EndSCHEMATC
