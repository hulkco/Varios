EESchema Schematic File Version 4
LIBS:001-cache
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
L power:PWR_FLAG #FLG02
U 1 1 5D932C92
P 10475 -575
F 0 "#FLG02" H 10475 -500 50  0001 C CNN
F 1 "PWR_FLAG" H 10475 -402 50  0000 C CNN
F 2 "" H 10475 -575 50  0001 C CNN
F 3 "~" H 10475 -575 50  0001 C CNN
	1    10475 -575
	-1   0    0    1   
$EndComp
Wire Wire Line
	10475 -575 10475 -700
$Comp
L power:VCC #PWR09
U 1 1 5D91B027
P 10475 -700
F 0 "#PWR09" H 10475 -850 50  0001 C CNN
F 1 "VCC" H 10492 -527 50  0000 C CNN
F 2 "" H 10475 -700 50  0001 C CNN
F 3 "" H 10475 -700 50  0001 C CNN
	1    10475 -700
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5DA04141
P 10900 -575
F 0 "#FLG03" H 10900 -500 50  0001 C CNN
F 1 "PWR_FLAG" H 10900 -402 50  0000 C CNN
F 2 "" H 10900 -575 50  0001 C CNN
F 3 "~" H 10900 -575 50  0001 C CNN
	1    10900 -575
	-1   0    0    1   
$EndComp
Wire Wire Line
	10900 -575 10900 -700
$Comp
L wickerlib:VIN #PWR01
U 1 1 5DA054F6
P 10900 -700
F 0 "#PWR01" H 10900 -850 50  0001 C CNN
F 1 "VIN" H 10915 -527 50  0000 C CNN
F 2 "" H 10900 -700 50  0000 C CNN
F 3 "" H 10900 -700 50  0000 C CNN
	1    10900 -700
	1    0    0    -1  
$EndComp
Text Notes 5150 -900 0    89   ~ 18
Attiny85 Breakout
Text Notes 10275 -1050 0    89   ~ 18
Flags
Wire Wire Line
	10075 -700 10075 -575
$Comp
L power:GND #PWR04
U 1 1 5D930D3A
P 10075 -575
F 0 "#PWR04" H 10075 -825 50  0001 C CNN
F 1 "GND" H 10080 -748 50  0000 C CNN
F 2 "" H 10075 -575 50  0001 C CNN
F 3 "" H 10075 -575 50  0001 C CNN
	1    10075 -575
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D92F7A7
P 10075 -700
F 0 "#FLG01" H 10075 -625 50  0001 C CNN
F 1 "PWR_FLAG" H 10075 -527 50  0000 C CNN
F 2 "" H 10075 -700 50  0001 C CNN
F 3 "~" H 10075 -700 50  0001 C CNN
	1    10075 -700
	1    0    0    -1  
$EndComp
$Comp
L MKR-Familiy:MKR-1000 J1
U 1 1 5DAEEFF7
P 925 -975
F 0 "J1" H 925 290 50  0000 C CNN
F 1 "MKR-1000" H 925 199 50  0000 C CNN
F 2 "" H 225 -1275 50  0001 C CNN
F 3 "~" H 225 -1275 50  0001 C CNN
	1    925  -975
	1    0    0    -1  
$EndComp
Wire Wire Line
	1425 -1575 1550 -1575
Wire Wire Line
	1425 -1475 1550 -1475
Wire Wire Line
	1425 -1375 1550 -1375
Wire Wire Line
	1425 -1275 1550 -1275
Wire Wire Line
	1425 -1175 1550 -1175
Wire Wire Line
	1425 -1075 1550 -1075
Wire Wire Line
	1425 -975 1550 -975
Wire Wire Line
	1425 -875 1550 -875
Wire Wire Line
	1425 -775 1550 -775
Wire Wire Line
	1425 -675 1550 -675
Wire Wire Line
	1425 -575 1550 -575
Wire Wire Line
	1425 -475 1550 -475
Wire Wire Line
	1425 -375 1550 -375
Wire Wire Line
	1425 -275 1550 -275
Wire Wire Line
	425  -1575 300  -1575
Wire Wire Line
	425  -1475 300  -1475
Wire Wire Line
	425  -1375 300  -1375
Wire Wire Line
	425  -1275 300  -1275
Wire Wire Line
	425  -1175 300  -1175
Wire Wire Line
	425  -1075 300  -1075
Wire Wire Line
	425  -975 300  -975
Wire Wire Line
	425  -875 300  -875
Wire Wire Line
	425  -775 300  -775
Wire Wire Line
	425  -675 300  -675
Wire Wire Line
	425  -575 300  -575
Wire Wire Line
	425  -475 300  -475
Wire Wire Line
	425  -375 300  -375
Wire Wire Line
	425  -275 300  -275
Text Label 1550 -1575 0    50   ~ 0
5V
Text Label 1550 -1475 0    50   ~ 0
5V
Text Label 1550 -1375 0    50   ~ 0
5V
Text Label 1550 -1275 0    50   ~ 0
5V
Text Label 1550 -1175 0    50   ~ 0
5V
Text Label 1550 -1075 0    50   ~ 0
5V
Text Label 1550 -975 0    50   ~ 0
5V
Text Label 1550 -875 0    50   ~ 0
5V
Text Label 1550 -775 0    50   ~ 0
5V
Text Label 1550 -675 0    50   ~ 0
5V
Text Label 1550 -575 0    50   ~ 0
5V
Text Label 1550 -475 0    50   ~ 0
5V
Text Label 1550 -375 0    50   ~ 0
5V
Text Label 1550 -275 0    50   ~ 0
5V
Text Label 300  -275 2    50   ~ 0
D5
Text Label 300  -375 2    50   ~ 0
D4
Text Label 300  -475 2    50   ~ 0
D3
Text Label 300  -575 2    50   ~ 0
D2
Text Label 300  -675 2    50   ~ 0
D1
Text Label 300  -775 2    50   ~ 0
D0
Text Label 300  -875 2    50   ~ 0
A6
Text Label 300  -975 2    50   ~ 0
A5
Text Label 300  -1075 2    50   ~ 0
A4
Text Label 300  -1175 2    50   ~ 0
A3
Text Label 300  -1275 2    50   ~ 0
A2
Text Label 300  -1375 2    50   ~ 0
A1
Text Label 300  -1475 2    50   ~ 0
A0
Text Label 300  -1575 2    50   ~ 0
AREF
$EndSCHEMATC
