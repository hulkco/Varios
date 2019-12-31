EESchema Schematic File Version 4
LIBS:Bast-Pro-Mini-M0-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Bast Pro Mini M0"
Date "2019-01-10"
Rev "0.2"
Comp "Electronic Cats"
Comment1 "Edgar Capuchino"
Comment2 "Andrés Sabas"
Comment3 "Eduardo Contreras"
Comment4 ""
$EndDescr
Text Label 1180 1270 0    60   ~ 0
1(Tx)
Text Label 1180 1370 0    60   ~ 0
0(Rx)
Text Label 1180 1470 0    60   ~ 0
RESET
Text Label 2680 1470 0    60   ~ 0
RESET
Text Label 1180 1670 0    60   ~ 0
2
Text Label 1180 1770 0    60   ~ 0
3(**)
Text Label 1180 1870 0    60   ~ 0
4
Text Label 1180 1970 0    60   ~ 0
5(**)
Text Label 1180 2070 0    60   ~ 0
6(**)
Text Label 1180 2170 0    60   ~ 0
7
Text Label 1180 2270 0    60   ~ 0
8
Text Label 1180 2370 0    60   ~ 0
9(**)
Text Label 2680 2370 0    60   ~ 0
10(**/SS)
Text Label 2680 2270 0    60   ~ 0
11(**/MOSI)
Text Label 2680 2070 0    60   ~ 0
13(SCK)
Text Label 2680 1970 0    60   ~ 0
A0
Text Label 2680 1870 0    60   ~ 0
A1
Text Label 2680 1770 0    60   ~ 0
A2
Text Label 2680 1670 0    60   ~ 0
A3
Text Label 2070 2960 3    60   ~ 0
SCL
Text Label 1970 2960 3    60   ~ 0
SDA
$Comp
L Connector_Generic:Conn_01x02 P2
U 1 1 56D74FB3
P 1970 2760
F 0 "P2" H 1970 2910 50  0000 C CNN
F 1 "ADC" V 2070 2760 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical_SMD_Pin1Left" H 1970 2760 50  0001 C CNN
F 3 "" H 1970 2760 50  0000 C CNN
	1    1970 2760
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 P1
U 1 1 56D754D1
P 1730 1770
F 0 "P1" H 1730 2420 50  0000 C CNN
F 1 "Digital" V 1830 1770 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical_SMD_Pin1Left" H 1730 1770 50  0001 C CNN
F 3 "" H 1730 1770 50  0000 C CNN
	1    1730 1770
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 P3
U 1 1 56D755F3
P 2230 1770
F 0 "P3" H 2230 2420 50  0000 C CNN
F 1 "Analog" V 2330 1770 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical_SMD_Pin1Right" H 2230 1770 50  0001 C CNN
F 3 "" H 2230 1770 50  0000 C CNN
	1    2230 1770
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 56D756B8
P 1430 2470
F 0 "#PWR01" H 1430 2220 50  0001 C CNN
F 1 "GND" H 1430 2320 50  0000 C CNN
F 2 "" H 1430 2470 50  0000 C CNN
F 3 "" H 1430 2470 50  0000 C CNN
	1    1430 2470
	1    0    0    -1  
$EndComp
Wire Wire Line
	1530 1570 1430 1570
Wire Wire Line
	1430 1570 1430 2470
Wire Wire Line
	1530 1270 1180 1270
Wire Wire Line
	1180 1370 1530 1370
Wire Wire Line
	1530 1470 1180 1470
Wire Wire Line
	1180 1670 1530 1670
Wire Wire Line
	1530 1770 1180 1770
Wire Wire Line
	1530 1870 1180 1870
Wire Wire Line
	1180 1970 1530 1970
Wire Wire Line
	1530 2070 1180 2070
Wire Wire Line
	1180 2170 1530 2170
Wire Wire Line
	1530 2270 1180 2270
Wire Wire Line
	1530 2370 1180 2370
Wire Wire Line
	2530 1270 2430 1270
Wire Wire Line
	2430 1370 2530 1370
Wire Wire Line
	2530 1370 2530 2470
$Comp
L power:GND #PWR04
U 1 1 56D75A03
P 2530 2470
F 0 "#PWR04" H 2530 2220 50  0001 C CNN
F 1 "GND" H 2530 2320 50  0000 C CNN
F 2 "" H 2530 2470 50  0000 C CNN
F 3 "" H 2530 2470 50  0000 C CNN
	1    2530 2470
	1    0    0    -1  
$EndComp
Wire Wire Line
	2430 1570 2630 1570
Wire Wire Line
	2630 1570 2630 1170
$Comp
L power:VCC #PWR05
U 1 1 56D75A9D
P 2370 1145
F 0 "#PWR05" H 2370 995 50  0001 C CNN
F 1 "VCC" H 2370 1295 50  0000 C CNN
F 2 "" H 2370 1145 50  0000 C CNN
F 3 "" H 2370 1145 50  0000 C CNN
	1    2370 1145
	1    0    0    -1  
$EndComp
Wire Wire Line
	2430 1470 2680 1470
Wire Wire Line
	2680 1670 2430 1670
Wire Wire Line
	2430 1770 2680 1770
Wire Wire Line
	2680 1870 2430 1870
Wire Wire Line
	2430 1970 2680 1970
Wire Wire Line
	2680 2070 2430 2070
Wire Wire Line
	2430 2170 2680 2170
Wire Wire Line
	2680 2270 2430 2270
Wire Wire Line
	2430 2370 2680 2370
Text Notes 1830 1270 0    60   ~ 0
1
Text Label 2680 2170 0    50   ~ 0
12(MISO)
Wire Notes Line
	11210 3615 11210 3595
Wire Notes Line
	7635 485  7635 3605
Wire Notes Line
	6955 6530 6955 3615
Wire Notes Line
	460  3615 11210 3615
$Comp
L Bast-Pro-Mini-M0-rescue:+3.3V-Croketa-cache #PWR0101
U 1 1 5BBD0E40
P 2630 1170
F 0 "#PWR0101" H 2630 1020 50  0001 C CNN
F 1 "+3.3V" H 2645 1343 50  0000 C CNN
F 2 "" H 2630 1170 50  0001 C CNN
F 3 "" H 2630 1170 50  0001 C CNN
	1    2630 1170
	1    0    0    -1  
$EndComp
Text Label 2530 1170 1    50   ~ 0
RAW
Wire Wire Line
	2370 1145 2370 1220
Wire Wire Line
	2370 1220 2530 1220
Wire Wire Line
	2530 1270 2530 1220
Connection ~ 2530 1220
Wire Wire Line
	2530 1220 2530 1170
$EndSCHEMATC
