EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 11
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3750 1250 550  300 
U 60203C8E
F0 "LEDs" 50
F1 "LEDs.sch" 50
F2 "LEDS_DIN" I R 4300 1400 50 
$EndSheet
$Sheet
S 4650 1250 875  1725
U 60203CB4
F0 "ESP8266" 50
F1 "ESP8266.sch" 50
F2 "LED_SDO" O L 4650 1400 50 
F3 "TX" O L 4650 2550 50 
F4 "RX" I L 4650 2650 50 
F5 "DTR" I L 4650 2750 50 
F6 "RESETn" I L 4650 2850 50 
$EndSheet
Text Notes 6350 1475 0    50   ~ 0
Mounting Holes\n
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6023DB6C
P 6600 1675
AR Path="/60203CB4/6023DB6C" Ref="H?"  Part="1" 
AR Path="/6023DB6C" Ref="H1"  Part="1" 
F 0 "H1" V 6554 1825 50  0000 L CNN
F 1 "MountingHole" V 6645 1825 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 6600 1675 50  0001 C CNN
F 3 "~" H 6600 1675 50  0001 C CNN
	1    6600 1675
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6023DB72
P 6600 1925
AR Path="/60203CB4/6023DB72" Ref="H?"  Part="1" 
AR Path="/6023DB72" Ref="H2"  Part="1" 
F 0 "H2" V 6554 2075 50  0000 L CNN
F 1 "MountingHole" V 6645 2075 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 6600 1925 50  0001 C CNN
F 3 "~" H 6600 1925 50  0001 C CNN
	1    6600 1925
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6023DB78
P 6600 2175
AR Path="/60203CB4/6023DB78" Ref="H?"  Part="1" 
AR Path="/6023DB78" Ref="H3"  Part="1" 
F 0 "H3" V 6554 2325 50  0000 L CNN
F 1 "MountingHole" V 6645 2325 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 6600 2175 50  0001 C CNN
F 3 "~" H 6600 2175 50  0001 C CNN
	1    6600 2175
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6023DB7E
P 6600 2425
AR Path="/60203CB4/6023DB7E" Ref="H?"  Part="1" 
AR Path="/6023DB7E" Ref="H4"  Part="1" 
F 0 "H4" V 6554 2575 50  0000 L CNN
F 1 "MountingHole" V 6645 2575 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 6600 2425 50  0001 C CNN
F 3 "~" H 6600 2425 50  0001 C CNN
	1    6600 2425
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6023DB85
P 6350 2625
AR Path="/60203CB4/6023DB85" Ref="#PWR?"  Part="1" 
AR Path="/6023DB85" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 6350 2375 50  0001 C CNN
F 1 "GND" H 6355 2452 50  0000 C CNN
F 2 "" H 6350 2625 50  0001 C CNN
F 3 "" H 6350 2625 50  0001 C CNN
	1    6350 2625
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1675 6350 1675
Wire Wire Line
	6350 1675 6350 1925
Wire Wire Line
	6500 1925 6350 1925
Connection ~ 6350 1925
Wire Wire Line
	6350 1925 6350 2175
Wire Wire Line
	6500 2175 6350 2175
Connection ~ 6350 2175
Wire Wire Line
	6350 2175 6350 2425
Wire Wire Line
	6500 2425 6350 2425
Connection ~ 6350 2425
Wire Wire Line
	6350 2425 6350 2625
$Sheet
S 2000 2400 850  650 
U 6044CA0F
F0 "USB_C_Power" 50
F1 "USB_power.sch" 50
F2 "USB_D_N" B R 2850 2800 50 
F3 "USB_D_P" B R 2850 2650 50 
$EndSheet
$Sheet
S 3000 2400 1500 650 
U 6047F422
F0 "UART" 50
F1 "UART.sch" 50
F2 "TXD" O R 4500 2650 50 
F3 "RXD" I R 4500 2550 50 
F4 "RESETn" O R 4500 2850 50 
F5 "DTR" O R 4500 2750 50 
F6 "USB_D_P" B L 3000 2650 50 
F7 "USB_D_N" B L 3000 2800 50 
$EndSheet
Wire Wire Line
	2850 2650 3000 2650
Wire Wire Line
	2850 2800 3000 2800
Wire Wire Line
	4500 2650 4650 2650
Wire Wire Line
	4500 2550 4650 2550
Wire Wire Line
	4500 2750 4650 2750
Wire Wire Line
	4500 2850 4650 2850
Wire Wire Line
	4300 1400 4650 1400
Wire Notes Line
	1425 850  7725 850 
Wire Notes Line
	7725 850  7725 3650
Wire Notes Line
	7725 3650 1425 3650
Wire Notes Line
	1425 3650 1425 850 
$EndSCHEMATC
