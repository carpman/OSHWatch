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
Sheet 1 6
Title ""
Date "14 jun 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1750 2800 1200 500 
U 557DB14F
F0 "Bluetooth" 50
F1 "OSHWatch_BT.sch" 50
F2 "BT_RX_STM_TX" I R 2950 2900 60 
F3 "BT_TX_STM_RX" O R 2950 3000 60 
F4 "BT_RTS_STM_CTS" I R 2950 3200 60 
F5 "BT_CTS_STM_RTS" O R 2950 3100 60 
$EndSheet
$Sheet
S 4000 2800 1700 1550
U 557DB26C
F0 "STM32F072" 50
F1 "OSHWatch_STM.sch" 50
F2 "BT_RX_STM_TX" O L 4000 2900 60 
F3 "BT_TX_STM_RX" I L 4000 3000 60 
F4 "DISPLAY_CS" O R 5700 2900 60 
F5 "DISPLAY_SCK" O R 5700 3000 60 
F6 "DISPLAY_MOSI" O R 5700 3100 60 
F7 "BT_CTS_STM_RTS" I L 4000 3100 60 
F8 "BT_RTS_STM_CTS" O L 4000 3200 60 
F9 "DISPLAY_RESET" O R 5700 3200 60 
F10 "DISPLAY_DC" O R 5700 3300 60 
F11 "I2C_SCK" B R 5700 4100 60 
F12 "I2C_SDA" B R 5700 4200 60 
$EndSheet
Wire Wire Line
	2950 2900 4000 2900
Wire Wire Line
	4000 3000 2950 3000
$Sheet
S 6350 2800 1300 850 
U 557DD2B4
F0 "Display" 50
F1 "OSHWatch_Display.sch" 50
$EndSheet
$Sheet
S 1800 1100 1300 800 
U 557DD37B
F0 "Power" 50
F1 "OSHWatch_Power.sch" 50
$EndSheet
$Sheet
S 6350 3900 1400 1200
U 557DD3CC
F0 "Sensors" 50
F1 "OSHWatch_Sensors.sch" 50
$EndSheet
Wire Wire Line
	2950 3100 4000 3100
Wire Wire Line
	4000 3200 2950 3200
$EndSCHEMATC
