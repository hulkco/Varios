EESchema Schematic File Version 4
LIBS:001-cache
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
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
L tft-shield:TFT_0.9680*160 U1
U 1 1 5CE71487
P 4950 -1150
F 0 "U1" H 4900 -250 50  0000 L CNN
F 1 "TFT_0.9680*160" H 4625 -375 50  0000 L CNN
F 2 "tft-shield:TFT_0.96_SPI" H 4950 -1150 50  0001 C CNN
F 3 "" H 4950 -1150 50  0001 C CNN
	1    4950 -1150
	1    0    0    -1  
$EndComp
$Comp
L 001-rescue:CONN_01X08-conn J1
U 1 1 5CE71D48
P 2300 -1200
F 0 "J1" H 2217 -1775 50  0000 C CNN
F 1 "CONN_01X08" H 2217 -1684 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 2300 -1200 50  0001 C CNN
F 3 "" H 2300 -1200 50  0001 C CNN
	1    2300 -1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 -1550 3775 -1550
Wire Wire Line
	3900 -1450 3775 -1450
Wire Wire Line
	3900 -1350 3775 -1350
Wire Wire Line
	3900 -1250 3775 -1250
Wire Wire Line
	3900 -1150 3775 -1150
Wire Wire Line
	3900 -750 3775 -750
Wire Wire Line
	3900 -650 3775 -650
Wire Wire Line
	3900 -550 3775 -550
Wire Wire Line
	2500 -1550 2625 -1550
Wire Wire Line
	2500 -1450 2625 -1450
Wire Wire Line
	2500 -1350 2625 -1350
Wire Wire Line
	2500 -1250 2625 -1250
Wire Wire Line
	2500 -1150 2625 -1150
Wire Wire Line
	2500 -1050 2625 -1050
Wire Wire Line
	2500 -950 2625 -950
Wire Wire Line
	2500 -850 2625 -850
$Comp
L 001-rescue:S8050-transistors Q1
U 1 1 5CE7D6CD
P 7225 -1225
F 0 "Q1" H 7415 -1179 50  0000 L CNN
F 1 "S8050" H 7415 -1270 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7425 -1300 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 7225 -1225 50  0001 L CNN
	1    7225 -1225
	1    0    0    -1  
$EndComp
$Comp
L 001-rescue:R_Small-device R1
U 1 1 5CE7DDEC
P 6675 -1225
F 0 "R1" V 6479 -1225 50  0000 C CNN
F 1 "1k" V 6570 -1225 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6675 -1225 50  0001 C CNN
F 3 "" H 6675 -1225 50  0001 C CNN
	1    6675 -1225
	0    1    1    0   
$EndComp
$Comp
L 001-rescue:R_Small-device R3
U 1 1 5CE7E014
P 7550 -1550
F 0 "R3" V 7354 -1550 50  0000 C CNN
F 1 "10ohm" V 7445 -1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7550 -1550 50  0001 C CNN
F 3 "" H 7550 -1550 50  0001 C CNN
	1    7550 -1550
	0    1    1    0   
$EndComp
Wire Wire Line
	7025 -1225 6900 -1225
Wire Wire Line
	6900 -1225 6900 -1100
Wire Wire Line
	6900 -1225 6775 -1225
Connection ~ 6900 -1225
$Comp
L 001-rescue:R_Small-device R2
U 1 1 5CE7FBA5
P 6900 -1000
F 0 "R2" H 6959 -954 50  0000 L CNN
F 1 "10k" H 6959 -1045 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6900 -1000 50  0001 C CNN
F 3 "" H 6900 -1000 50  0001 C CNN
	1    6900 -1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7325 -1425 7325 -1550
Wire Wire Line
	7325 -1550 7450 -1550
Wire Wire Line
	7650 -1550 7775 -1550
Text Label 7775 -1550 0    50   ~ 0
LEDK
Wire Wire Line
	7325 -1025 7325 -775
$Comp
L power:GND #PWR05
U 1 1 5CE845DB
P 7325 -775
F 0 "#PWR05" H 7325 -1025 50  0001 C CNN
F 1 "GND" H 7330 -948 50  0000 C CNN
F 2 "" H 7325 -775 50  0001 C CNN
F 3 "" H 7325 -775 50  0001 C CNN
	1    7325 -775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 -900 6900 -775
Wire Wire Line
	6900 -775 6450 -775
Wire Wire Line
	6575 -1225 6450 -1225
Text Label 6450 -1225 2    50   ~ 0
BLK
Text Label 6450 -775 2    50   ~ 0
VCC
$Comp
L 001-rescue:C_Small-device C1
U 1 1 5CE8903B
P 3475 -850
F 0 "C1" V 3425 -950 50  0000 C CNN
F 1 "1uF" V 3425 -750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3475 -850 50  0001 C CNN
F 3 "" H 3475 -850 50  0001 C CNN
	1    3475 -850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5CE8B546
P 3225 -775
F 0 "#PWR03" H 3225 -1025 50  0001 C CNN
F 1 "GND" H 3075 -875 50  0000 C CNN
F 2 "" H 3225 -775 50  0001 C CNN
F 3 "" H 3225 -775 50  0001 C CNN
	1    3225 -775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3225 -850 3225 -775
$Comp
L power:GND #PWR04
U 1 1 5CE8D048
P 3775 -550
F 0 "#PWR04" H 3775 -800 50  0001 C CNN
F 1 "GND" H 3780 -723 50  0000 C CNN
F 2 "" H 3775 -550 50  0001 C CNN
F 3 "" H 3775 -550 50  0001 C CNN
	1    3775 -550
	1    0    0    -1  
$EndComp
NoConn ~ 3900 -1750
NoConn ~ 3900 -1650
Text Label 3775 -1550 2    50   ~ 0
SDA
Text Label 3775 -1450 2    50   ~ 0
SCL
Text Label 3775 -1350 2    50   ~ 0
DC
Text Label 3775 -1250 2    50   ~ 0
RES
Text Label 3775 -1150 2    50   ~ 0
CS
Wire Wire Line
	3225 -1050 3900 -1050
Wire Wire Line
	3225 -1050 3225 -1000
Text Label 3775 -750 2    50   ~ 0
LEDK
Text Label 3775 -650 2    50   ~ 0
VCC
Wire Wire Line
	3575 -850 3750 -850
Wire Wire Line
	3375 -850 3225 -850
$Comp
L power:GND #PWR01
U 1 1 5CE97E48
P 2625 -850
F 0 "#PWR01" H 2625 -1100 50  0001 C CNN
F 1 "GND" H 2630 -1023 50  0000 C CNN
F 2 "" H 2625 -850 50  0001 C CNN
F 3 "" H 2625 -850 50  0001 C CNN
	1    2625 -850
	1    0    0    -1  
$EndComp
Text Label 2625 -950 0    50   ~ 0
VCC
Text Label 2625 -1450 0    50   ~ 0
SCL
Text Label 2625 -1550 0    50   ~ 0
SDA
Text Label 2625 -1250 0    50   ~ 0
RES
Text Label 2625 -1350 0    50   ~ 0
DC
Text Label 2625 -1150 0    50   ~ 0
CS
Text Label 2625 -1050 0    50   ~ 0
BLK
$Comp
L power:GND #PWR06
U 1 1 5CEA6B31
P 8975 -3950
F 0 "#PWR06" H 8975 -4200 50  0001 C CNN
F 1 "GND" H 8825 -4050 50  0000 C CNN
F 2 "" H 8975 -3950 50  0001 C CNN
F 3 "" H 8975 -3950 50  0001 C CNN
	1    8975 -3950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5CEA766C
P 9250 -4075
F 0 "#PWR07" H 9250 -4225 50  0001 C CNN
F 1 "VCC" H 9267 -3902 50  0000 C CNN
F 2 "" H 9250 -4075 50  0001 C CNN
F 3 "" H 9250 -4075 50  0001 C CNN
	1    9250 -4075
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5CEA8BBA
P 8975 -4075
F 0 "#FLG01" H 8975 -4000 50  0001 C CNN
F 1 "PWR_FLAG" H 8975 -3902 50  0000 C CNN
F 2 "" H 8975 -4075 50  0001 C CNN
F 3 "~" H 8975 -4075 50  0001 C CNN
	1    8975 -4075
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5CEA93B9
P 9250 -3950
F 0 "#FLG02" H 9250 -3875 50  0001 C CNN
F 1 "PWR_FLAG" H 9250 -3777 50  0000 C CNN
F 2 "" H 9250 -3950 50  0001 C CNN
F 3 "~" H 9250 -3950 50  0001 C CNN
	1    9250 -3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 -4075 9250 -3950
Wire Wire Line
	8975 -3950 8975 -4075
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5CEAAEFD
P 3750 -850
F 0 "#FLG03" H 3750 -775 50  0001 C CNN
F 1 "PWR_FLAG" H 3750 -700 39  0000 C CNN
F 2 "" H 3750 -850 50  0001 C CNN
F 3 "~" H 3750 -850 50  0001 C CNN
	1    3750 -850
	1    0    0    -1  
$EndComp
Connection ~ 3750 -850
Wire Wire Line
	3750 -850 3900 -850
$Comp
L power:GND #PWR0101
U 1 1 5CEF97E8
P 3225 -1000
F 0 "#PWR0101" H 3225 -1250 50  0001 C CNN
F 1 "GND" H 3075 -1100 50  0000 C CNN
F 2 "" H 3225 -1000 50  0001 C CNN
F 3 "" H 3225 -1000 50  0001 C CNN
	1    3225 -1000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
