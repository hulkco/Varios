EESchema Schematic File Version 4
LIBS:wemos-01-cache
EELAYER 26 0
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
L wemos-01-rescue:CONN_01X08 P1
U 1 1 5763EB78
P 9650 1400
F 0 "P1" H 9650 1850 50  0000 C CNN
F 1 "CONN_01X08" V 9750 1400 50  0000 C CNN
F 2 "D1_mini:D1_mini_Pin_Header" H 9650 1400 50  0001 C CNN
F 3 "" H 9650 1400 50  0000 C CNN
	1    9650 1400
	1    0    0    -1  
$EndComp
$Comp
L wemos-01-rescue:CONN_01X08 P2
U 1 1 5763EBF2
P 10100 1400
F 0 "P2" H 10100 1850 50  0000 C CNN
F 1 "CONN_01X08" V 10200 1400 50  0000 C CNN
F 2 "D1_mini:D1_mini_Pin_Header" H 10100 1400 50  0001 C CNN
F 3 "" H 10100 1400 50  0000 C CNN
	1    10100 1400
	-1   0    0    -1  
$EndComp
Text Label 9450 1050 2    60   ~ 0
+5V
Text Label 9450 1150 2    60   ~ 0
GND
Text Label 9450 1250 2    60   ~ 0
D4
Text Label 9450 1350 2    60   ~ 0
D3
Text Label 9450 1450 2    60   ~ 0
D2
Text Label 9450 1550 2    60   ~ 0
D1
Text Label 9450 1650 2    60   ~ 0
RX
Text Label 9450 1750 2    60   ~ 0
TX
Text Label 10300 1050 0    60   ~ 0
+3.3V
Text Label 10300 1150 0    60   ~ 0
D8
Text Label 10300 1250 0    60   ~ 0
D7
Text Label 10300 1350 0    60   ~ 0
D6
Text Label 10300 1450 0    60   ~ 0
D5
Text Label 10300 1550 0    60   ~ 0
D0
Text Label 10300 1650 0    60   ~ 0
A0
Text Label 10300 1750 0    60   ~ 0
RST
Text Notes 9200 1250 2    60   ~ 0
GPIO2
Text Notes 9200 1350 2    60   ~ 0
GPIO0
Text Notes 9200 1450 2    60   ~ 0
GPIO4
Text Notes 9200 1550 2    60   ~ 0
GPIO5
Text Notes 10650 1150 0    60   ~ 0
GPIO15
Text Notes 10650 1250 0    60   ~ 0
GPIO13
Text Notes 10650 1350 0    60   ~ 0
GPIO12
Text Notes 10650 1450 0    60   ~ 0
GPIO14
Text Notes 10650 1550 0    60   ~ 0
GPIO16
Wire Notes Line
	8500 500  8500 2100
Wire Notes Line
	8500 2100 11200 2100
Text Notes 8550 600  0    60   ~ 0
D1 Mini Shield
$Comp
L wemos-01-rescue:RFM95W-915S2-RF_AM_FM U1
U 1 1 5AFC7E17
P 3750 4000
F 0 "U1" H 3750 4678 50  0000 C CNN
F 1 "RFM95W-915S2" H 3750 4587 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD_WeMos" H 450 5650 50  0001 C CNN
F 3 "http://www.hoperf.com/upload/rf/RFM95_96_97_98W.pdf" H 450 5650 50  0001 C CNN
	1    3750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3350 5350 3250
Wire Wire Line
	5350 3250 5200 3250
Wire Wire Line
	5200 3350 5200 3250
Wire Wire Line
	5350 4150 5350 4050
Wire Wire Line
	5200 4050 5200 4150
$Comp
L wemos-01-rescue:CP1_Small-Device C2
U 1 1 5AFD4207
P 3950 3100
F 0 "C2" V 3900 2950 50  0000 C CNN
F 1 "10u" V 3800 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.29x1.40mm_HandSolder" H 3950 3100 50  0001 C CNN
F 3 "~" H 3950 3100 50  0001 C CNN
	1    3950 3100
	0    -1   -1   0   
$EndComp
$Comp
L wemos-01-rescue:CP1_Small-Device C1
U 1 1 5AFD42C5
P 3950 2900
F 0 "C1" V 4150 2750 50  0000 C CNN
F 1 "1u" V 4050 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.29x1.40mm_HandSolder" H 3950 2900 50  0001 C CNN
F 3 "~" H 3950 2900 50  0001 C CNN
	1    3950 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 2600 3750 2900
Wire Wire Line
	3850 2900 3750 2900
Connection ~ 3750 2900
Wire Wire Line
	3750 2900 3750 3100
Wire Wire Line
	3850 3100 3750 3100
Connection ~ 3750 3100
Wire Wire Line
	3750 3100 3750 3500
Wire Wire Line
	3750 4800 3750 4700
Wire Wire Line
	3650 4600 3650 4700
Wire Wire Line
	3650 4700 3750 4700
Connection ~ 3750 4700
Wire Wire Line
	3750 4700 3750 4600
Wire Wire Line
	3850 4600 3850 4700
Wire Wire Line
	3850 4700 3750 4700
Wire Wire Line
	4250 4200 4400 4200
Wire Wire Line
	4250 4300 4400 4300
Wire Wire Line
	4250 4400 4400 4400
Wire Wire Line
	3250 4200 3100 4200
Wire Wire Line
	3250 4000 3100 4000
Wire Wire Line
	3250 3900 3100 3900
Wire Wire Line
	3250 3800 3100 3800
Wire Wire Line
	3250 3700 3100 3700
Text Label 3100 3700 2    50   ~ 0
D5
Text Label 3100 3800 2    50   ~ 0
D7
Text Label 3100 3900 2    50   ~ 0
D6
Text Label 3100 4000 2    50   ~ 0
D0
Text Label 3100 4200 2    50   ~ 0
RST
Text Label 4400 4200 0    50   ~ 0
G2
Text Label 4400 4300 0    50   ~ 0
D2
Text Label 4400 4400 0    50   ~ 0
D1
Wire Wire Line
	4050 3100 4100 3100
Wire Wire Line
	4100 3100 4100 3000
Wire Wire Line
	4100 2900 4050 2900
Wire Wire Line
	4250 3000 4100 3000
Connection ~ 4100 3000
Wire Wire Line
	4100 3000 4100 2900
$Comp
L wemos-01-rescue:PWR_FLAG-power #FLG1
U 1 1 5AFDDE6D
P 8850 2800
F 0 "#FLG1" H 8850 3100 60  0001 C CNN
F 1 "PWR_FLAG" H 8850 2750 40  0001 C CNN
F 2 "" H 8750 3000 60  0001 C CNN
F 3 "" H 8850 3100 60  0001 C CNN
	1    8850 2800
	-1   0    0    1   
$EndComp
$Comp
L wemos-01-rescue:PWR_FLAG-power #FLG2
U 1 1 5AFDDEDF
P 9300 2800
F 0 "#FLG2" H 9300 3100 60  0001 C CNN
F 1 "PWR_FLAG" H 9300 2750 40  0001 C CNN
F 2 "" H 9200 3000 60  0001 C CNN
F 3 "" H 9300 3100 60  0001 C CNN
	1    9300 2800
	-1   0    0    1   
$EndComp
Text Label 8850 2700 0    60   ~ 0
+3.3V
Text Label 9300 2700 0    60   ~ 0
GND
Text Label 5500 4150 0    60   ~ 0
GND
Text Label 5500 3250 0    60   ~ 0
GND
Text Label 3750 4800 2    60   ~ 0
GND
Text Label 4250 3000 0    60   ~ 0
GND
Text Label 3750 2600 0    60   ~ 0
+3.3V
$Comp
L wemos-01-rescue:Conn_01x01-conn J2
U 1 1 5AFDE5C3
P 4700 3900
F 0 "J2" V 4650 3750 50  0000 L CNN
F 1 "Conn_01x01" V 4800 3750 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_WeMos" H 4700 3900 50  0001 C CNN
F 3 "~" H 4700 3900 50  0001 C CNN
	1    4700 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 4100 4400 4100
Wire Wire Line
	4250 4000 4400 4000
Wire Wire Line
	4250 3900 4400 3900
Text Label 4400 4100 0    50   ~ 0
G3
Text Label 4400 4000 0    50   ~ 0
G4
Text Label 4400 3900 0    50   ~ 0
G5
Connection ~ 4700 3700
Wire Wire Line
	4700 3700 5100 3700
Wire Wire Line
	4250 3700 4700 3700
$Comp
L wemos-01-rescue:Conn_01x04-conn J1
U 1 1 5AFDFE32
P 7150 3700
F 0 "J1" H 7150 4050 50  0000 C CNN
F 1 "Conn_01x04" H 7150 3950 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_WeMos" H 7150 3700 50  0001 C CNN
F 3 "~" H 7150 3700 50  0001 C CNN
	1    7150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3600 6800 3600
Text Label 6800 3600 2    50   ~ 0
G2
Wire Wire Line
	6950 3700 6800 3700
Wire Wire Line
	6950 3800 6800 3800
Wire Wire Line
	6950 3900 6800 3900
Text Label 6800 3700 2    50   ~ 0
G3
Text Label 6800 3800 2    50   ~ 0
G4
Text Label 6800 3900 2    50   ~ 0
G5
Wire Wire Line
	9300 2800 9300 2700
Wire Wire Line
	8850 2800 8850 2700
Wire Wire Line
	5200 4150 5350 4150
$Comp
L wemos-01-rescue:ANT-Cats_GPSLoRa-cache A2
U 1 1 5AFEED37
P 5500 4050
F 0 "A2" V 5903 4073 60  0000 R CNN
F 1 "ANT" V 5797 4073 60  0000 R CNN
F 2 "Cats_ArduinoShieldLoRa:SMA_EDGELAUNCH_UFL" H 5500 4050 60  0001 C CNN
F 3 "" H 5500 4050 60  0000 C CNN
	1    5500 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 3250 5500 3250
Connection ~ 5350 3250
Wire Wire Line
	5350 4150 5500 4150
Connection ~ 5350 4150
$EndSCHEMATC
