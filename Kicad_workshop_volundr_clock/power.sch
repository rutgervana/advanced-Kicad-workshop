EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:AMS1117-3.3 U?
U 1 1 6044F9DC
P 5650 2900
AR Path="/60203CB4/6044F9DC" Ref="U?"  Part="1" 
AR Path="/6044F9DC" Ref="U?"  Part="1" 
F 0 "U?" H 5650 3142 50  0000 C CNN
F 1 "AMS1117-3.3" H 5650 3051 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5650 3100 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 5750 2650 50  0001 C CNN
F 4 "C6186" H 5650 2900 50  0001 C CNN "LCSC"
	1    5650 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6044F9E3
P 5000 3050
AR Path="/60203CB4/6044F9E3" Ref="C?"  Part="1" 
AR Path="/6044F9E3" Ref="C?"  Part="1" 
F 0 "C?" H 5092 3096 50  0000 L CNN
F 1 "10uF" H 5092 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5000 3050 50  0001 C CNN
F 3 "~" H 5000 3050 50  0001 C CNN
F 4 " C15850" H 5000 3050 50  0001 C CNN "LCSC"
	1    5000 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6044F9EA
P 6150 3000
AR Path="/60203CB4/6044F9EA" Ref="C?"  Part="1" 
AR Path="/6044F9EA" Ref="C?"  Part="1" 
F 0 "C?" H 6242 3046 50  0000 L CNN
F 1 "10uF" H 6242 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6150 3000 50  0001 C CNN
F 3 "~" H 6150 3000 50  0001 C CNN
F 4 " C15850" H 6150 3000 50  0001 C CNN "LCSC"
	1    6150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2900 6150 2900
$Comp
L Device:C_Small C?
U 1 1 6044F9F2
P 6450 3000
AR Path="/60203CB4/6044F9F2" Ref="C?"  Part="1" 
AR Path="/6044F9F2" Ref="C?"  Part="1" 
F 0 "C?" H 6542 3046 50  0000 L CNN
F 1 "100nF" H 6542 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6450 3000 50  0001 C CNN
F 3 "~" H 6450 3000 50  0001 C CNN
F 4 " C14663" H 6450 3000 50  0001 C CNN "LCSC"
	1    6450 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2900 6450 2900
Connection ~ 6150 2900
Wire Wire Line
	5650 3200 5650 3250
$Comp
L power:GND #PWR?
U 1 1 6044F9FB
P 5650 3350
AR Path="/60203CB4/6044F9FB" Ref="#PWR?"  Part="1" 
AR Path="/6044F9FB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5650 3100 50  0001 C CNN
F 1 "GND" H 5655 3177 50  0000 C CNN
F 2 "" H 5650 3350 50  0001 C CNN
F 3 "" H 5650 3350 50  0001 C CNN
	1    5650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3250 6150 3250
Wire Wire Line
	6150 3250 6150 3100
Connection ~ 5650 3250
Wire Wire Line
	5650 3250 5650 3350
Wire Wire Line
	6150 3250 6450 3250
Wire Wire Line
	6450 3250 6450 3100
Connection ~ 6150 3250
Wire Wire Line
	5000 3250 5650 3250
Wire Wire Line
	5000 2900 5350 2900
$Comp
L power:+5V #PWR?
U 1 1 6044FA0A
P 5000 2800
AR Path="/60203CB4/6044FA0A" Ref="#PWR?"  Part="1" 
AR Path="/6044FA0A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5000 2650 50  0001 C CNN
F 1 "+5V" H 5015 2973 50  0000 C CNN
F 2 "" H 5000 2800 50  0001 C CNN
F 3 "" H 5000 2800 50  0001 C CNN
	1    5000 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2800 5000 2900
Wire Wire Line
	5000 3150 5000 3250
Wire Wire Line
	5000 2950 5000 2900
Connection ~ 5000 2900
Wire Wire Line
	4650 3150 4700 3150
Wire Wire Line
	4700 3150 4700 3250
Wire Wire Line
	4700 3250 5000 3250
Connection ~ 5000 3250
Wire Wire Line
	4650 2950 4900 2950
Wire Wire Line
	4900 2950 4900 2900
Wire Wire Line
	4900 2900 5000 2900
$Comp
L power:+3.3V #PWR?
U 1 1 6044FA1B
P 6450 2750
AR Path="/60203CB4/6044FA1B" Ref="#PWR?"  Part="1" 
AR Path="/6044FA1B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 2600 50  0001 C CNN
F 1 "+3.3V" H 6465 2923 50  0000 C CNN
F 2 "" H 6450 2750 50  0001 C CNN
F 3 "" H 6450 2750 50  0001 C CNN
	1    6450 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2750 6450 2900
Connection ~ 6450 2900
Text Notes 4150 2600 0    50   ~ 0
Power\n
$Comp
L power:GND #PWR?
U 1 1 6044FA24
P 4350 3450
AR Path="/60203CB4/6044FA24" Ref="#PWR?"  Part="1" 
AR Path="/6044FA24" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4350 3200 50  0001 C CNN
F 1 "GND" H 4355 3277 50  0000 C CNN
F 2 "" H 4350 3450 50  0001 C CNN
F 3 "" H 4350 3450 50  0001 C CNN
	1    4350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3350 4350 3450
$EndSCHEMATC
