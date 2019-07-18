EESchema Schematic File Version 4
LIBS:wemos-01-cache
EELAYER 29 0
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
Wire Notes Line
	8500 500  8500 2100
Wire Notes Line
	8500 2100 11200 2100
Text Notes 8550 600  0    60   ~ 0
D1 Mini Shield
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
Wire Wire Line
	9300 2800 9300 2700
Wire Wire Line
	8850 2800 8850 2700
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
$Comp
L wemos-01-rescue:RFM95W-915S2-RF_AM_FM U1
U 1 1 5AFC7E17
P 5100 2975
F 0 "U1" H 5100 3653 50  0000 C CNN
F 1 "RFM95W-915S2" H 5100 3562 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD_WeMos" H 1800 4625 50  0001 C CNN
F 3 "http://www.hoperf.com/upload/rf/RFM95_96_97_98W.pdf" H 1800 4625 50  0001 C CNN
	1    5100 2975
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2325 6700 2225
Wire Wire Line
	6700 2225 6550 2225
Wire Wire Line
	6550 2325 6550 2225
Wire Wire Line
	6700 3125 6700 3025
Wire Wire Line
	6550 3025 6550 3125
$Comp
L wemos-01-rescue:CP1_Small-Device C2
U 1 1 5AFD4207
P 5300 2075
F 0 "C2" V 5250 1925 50  0000 C CNN
F 1 "10u" V 5150 1775 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.29x1.40mm_HandSolder" H 5300 2075 50  0001 C CNN
F 3 "~" H 5300 2075 50  0001 C CNN
	1    5300 2075
	0    -1   -1   0   
$EndComp
$Comp
L wemos-01-rescue:CP1_Small-Device C1
U 1 1 5AFD42C5
P 5300 1875
F 0 "C1" V 5500 1725 50  0000 C CNN
F 1 "1u" V 5400 1575 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.29x1.40mm_HandSolder" H 5300 1875 50  0001 C CNN
F 3 "~" H 5300 1875 50  0001 C CNN
	1    5300 1875
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 1575 5100 1875
Wire Wire Line
	5200 1875 5100 1875
Connection ~ 5100 1875
Wire Wire Line
	5100 1875 5100 2075
Wire Wire Line
	5200 2075 5100 2075
Connection ~ 5100 2075
Wire Wire Line
	5100 2075 5100 2475
Wire Wire Line
	5100 3775 5100 3675
Wire Wire Line
	5000 3575 5000 3675
Wire Wire Line
	5000 3675 5100 3675
Connection ~ 5100 3675
Wire Wire Line
	5100 3675 5100 3575
Wire Wire Line
	5200 3575 5200 3675
Wire Wire Line
	5200 3675 5100 3675
Wire Wire Line
	5600 3175 5750 3175
Wire Wire Line
	5600 3275 5750 3275
Wire Wire Line
	5600 3375 5750 3375
Wire Wire Line
	4600 3175 4450 3175
Wire Wire Line
	4600 2975 4450 2975
Wire Wire Line
	4600 2875 4450 2875
Wire Wire Line
	4600 2775 4450 2775
Wire Wire Line
	4600 2675 4450 2675
Text Label 4450 2675 2    50   ~ 0
D5
Text Label 4450 2775 2    50   ~ 0
D7
Text Label 4450 2875 2    50   ~ 0
D6
Text Label 4450 2975 2    50   ~ 0
D0
Text Label 4450 3175 2    50   ~ 0
RST
Text Label 5750 3175 0    50   ~ 0
G2
Text Label 5750 3275 0    50   ~ 0
D2
Text Label 5750 3375 0    50   ~ 0
D1
Wire Wire Line
	5400 2075 5450 2075
Wire Wire Line
	5450 2075 5450 1975
Wire Wire Line
	5450 1875 5400 1875
Wire Wire Line
	5600 1975 5450 1975
Connection ~ 5450 1975
Wire Wire Line
	5450 1975 5450 1875
Text Label 6850 3125 0    60   ~ 0
GND
Text Label 6850 2225 0    60   ~ 0
GND
Text Label 5100 3775 2    60   ~ 0
GND
Text Label 5600 1975 0    60   ~ 0
GND
Text Label 5100 1575 0    60   ~ 0
+3.3V
$Comp
L wemos-01-rescue:Conn_01x01-conn J2
U 1 1 5AFDE5C3
P 6050 2875
F 0 "J2" V 6000 2725 50  0000 L CNN
F 1 "Conn_01x01" V 6150 2725 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_WeMos" H 6050 2875 50  0001 C CNN
F 3 "~" H 6050 2875 50  0001 C CNN
	1    6050 2875
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 3075 5750 3075
Wire Wire Line
	5600 2975 5750 2975
Wire Wire Line
	5600 2875 5750 2875
Text Label 5750 3075 0    50   ~ 0
G3
Text Label 5750 2975 0    50   ~ 0
G4
Text Label 5750 2875 0    50   ~ 0
G5
Connection ~ 6050 2675
Wire Wire Line
	6050 2675 6450 2675
Wire Wire Line
	5600 2675 6050 2675
$Comp
L wemos-01-rescue:Conn_01x04-conn J1
U 1 1 5AFDFE32
P 6450 4350
F 0 "J1" H 6450 4700 50  0000 C CNN
F 1 "Conn_01x04" H 6450 4600 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_WeMos" H 6450 4350 50  0001 C CNN
F 3 "~" H 6450 4350 50  0001 C CNN
	1    6450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4250 6100 4250
Text Label 6100 4250 2    50   ~ 0
G2
Wire Wire Line
	6250 4350 6100 4350
Wire Wire Line
	6250 4450 6100 4450
Wire Wire Line
	6250 4550 6100 4550
Text Label 6100 4350 2    50   ~ 0
G3
Text Label 6100 4450 2    50   ~ 0
G4
Text Label 6100 4550 2    50   ~ 0
G5
Wire Wire Line
	6550 3125 6700 3125
$Comp
L wemos-01-rescue:ANT-Cats_GPSLoRa-cache A2
U 1 1 5AFEED37
P 6850 3025
F 0 "A2" V 7253 3048 60  0000 R CNN
F 1 "ANT" V 7147 3048 60  0000 R CNN
F 2 "Cats_ArduinoShieldLoRa:SMA_EDGELAUNCH_UFL" H 6850 3025 60  0001 C CNN
F 3 "" H 6850 3025 60  0000 C CNN
	1    6850 3025
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 2225 6850 2225
Connection ~ 6700 2225
Wire Wire Line
	6700 3125 6850 3125
Connection ~ 6700 3125
Text Notes 4000 2675 0    60   ~ 0
GPIO14
Text Notes 4000 2775 0    60   ~ 0
GPIO13
Text Notes 4000 2875 0    60   ~ 0
GPIO12
Text Notes 4000 2975 0    60   ~ 0
GPIO16
Text Notes 6150 3275 2    60   ~ 0
GPIO4
Text Notes 6150 3375 2    60   ~ 0
GPIO5
$EndSCHEMATC
