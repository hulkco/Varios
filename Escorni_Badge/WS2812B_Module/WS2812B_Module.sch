EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L LED:WS2812B D1
U 1 1 5D6AD5CD
P 5625 3500
F 0 "D1" H 5969 3546 50  0000 L CNN
F 1 "WS2812B" H 5969 3455 50  0000 L CNN
F 2 "LED_SMD:WS2812B_" H 5675 3200 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5725 3125 50  0001 L TNN
	1    5625 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D6ADD66
P 4975 3225
F 0 "C1" H 5090 3271 50  0000 L CNN
F 1 "C" H 5090 3180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5013 3075 50  0001 C CNN
F 3 "~" H 4975 3225 50  0001 C CNN
	1    4975 3225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D6B0D78
P 5625 3925
F 0 "#PWR02" H 5625 3675 50  0001 C CNN
F 1 "GND" H 5630 3752 50  0000 C CNN
F 2 "" H 5625 3925 50  0001 C CNN
F 3 "" H 5625 3925 50  0001 C CNN
	1    5625 3925
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5D6B11C4
P 4975 3075
F 0 "#PWR01" H 4975 2925 50  0001 C CNN
F 1 "VCC" H 4992 3248 50  0000 C CNN
F 2 "" H 4975 3075 50  0001 C CNN
F 3 "" H 4975 3075 50  0001 C CNN
	1    4975 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	5625 3800 5625 3875
NoConn ~ 5925 3500
NoConn ~ 5325 3500
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D6B66EB
P 5625 3875
F 0 "#FLG0102" H 5625 3950 50  0001 C CNN
F 1 "PWR_FLAG" V 5625 4003 50  0000 L CNN
F 2 "" H 5625 3875 50  0001 C CNN
F 3 "~" H 5625 3875 50  0001 C CNN
	1    5625 3875
	0    1    1    0   
$EndComp
Connection ~ 5625 3875
Wire Wire Line
	5625 3875 5625 3925
Wire Wire Line
	5625 3200 5625 3075
Wire Wire Line
	5625 3075 5425 3075
Wire Wire Line
	4975 3375 4975 3500
Connection ~ 4975 3075
$Comp
L power:GND #PWR03
U 1 1 5D6C1164
P 4975 3500
F 0 "#PWR03" H 4975 3250 50  0001 C CNN
F 1 "GND" H 4980 3327 50  0000 C CNN
F 2 "" H 4975 3500 50  0001 C CNN
F 3 "" H 4975 3500 50  0001 C CNN
	1    4975 3500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D6C218F
P 5425 3075
F 0 "#FLG01" H 5425 3150 50  0001 C CNN
F 1 "PWR_FLAG" H 5425 3248 50  0000 C CNN
F 2 "" H 5425 3075 50  0001 C CNN
F 3 "~" H 5425 3075 50  0001 C CNN
	1    5425 3075
	1    0    0    -1  
$EndComp
Connection ~ 5425 3075
Wire Wire Line
	5425 3075 4975 3075
$EndSCHEMATC
