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
L wemos_microbit:Microbit_01X25 J1
U 1 1 5C369241
P 4750 3325
F 0 "J1" H 4667 4740 50  0000 C CNN
F 1 "Microbit_01X25" H 4667 4649 50  0000 C CNN
F 2 "wemos_microbit:Microbit_PCB_Connector" H 4750 3325 50  0001 C CNN
F 3 "" H 4750 3325 50  0001 C CNN
	1    4750 3325
	-1   0    0    1   
$EndComp
Text Label 4950 2125 0    60   ~ 0
GND
Text Label 4950 3525 0    60   ~ 0
D4
Text Label 4950 3925 0    60   ~ 0
D3
Text Label 4950 2425 0    60   ~ 0
D2
Text Label 4950 2525 0    60   ~ 0
D1
Text Label 4950 2725 0    60   ~ 0
+3.3V
Text Label 4950 2925 0    60   ~ 0
D8
Text Label 4950 3025 0    60   ~ 0
D7
Text Label 4950 3125 0    60   ~ 0
D6
Text Label 4950 3225 0    60   ~ 0
D5
Text Label 4950 4425 0    60   ~ 0
D0
Text Label 4950 3725 0    60   ~ 0
RST
Text Notes 5075 3525 0    60   ~ 0
GPIO2
Text Notes 5075 3925 0    60   ~ 0
GPIO0
Text Notes 5100 2425 0    60   ~ 0
GPIO4
Text Notes 5100 2525 0    60   ~ 0
GPIO5
Text Notes 5100 2925 0    60   ~ 0
GPIO15
Text Notes 5100 3025 0    60   ~ 0
GPIO13
Text Notes 5100 3125 0    60   ~ 0
GPIO12
Text Notes 5100 3225 0    60   ~ 0
GPIO14
Text Notes 5075 4425 0    60   ~ 0
GPIO16
Text Label 4950 2325 0    60   ~ 0
GND
Text Label 4950 2225 0    60   ~ 0
GND
Text Label 4950 3325 0    60   ~ 0
A0
Text Label 4950 2625 0    60   ~ 0
+3.3V
Text Label 4950 2825 0    60   ~ 0
+3.3V
Text Notes 4525 4550 0    60   ~ 0
P3
Text Notes 4525 4450 0    60   ~ 0
P0
Text Notes 4525 4350 0    60   ~ 0
P4
Text Notes 4525 4250 0    60   ~ 0
P5
Text Notes 4525 4150 0    60   ~ 0
P6
Text Notes 4525 4050 0    60   ~ 0
P7
Text Notes 4525 3950 0    60   ~ 0
P1
Text Notes 4525 3850 0    60   ~ 0
P8
Text Notes 4525 3750 0    60   ~ 0
P9
Text Notes 4525 3650 0    60   ~ 0
P10
Text Notes 4525 3550 0    60   ~ 0
P11
Text Notes 4525 3450 0    60   ~ 0
P12
Text Notes 4525 3350 0    60   ~ 0
P2
Text Notes 4525 3250 0    60   ~ 0
P13
Text Notes 4525 3150 0    60   ~ 0
P14
Text Notes 4525 3050 0    60   ~ 0
P15
Text Notes 4525 2950 0    60   ~ 0
P16
Text Notes 4525 2550 0    60   ~ 0
P19
Text Notes 4525 2450 0    60   ~ 0
P20
NoConn ~ 4950 3425
NoConn ~ 5050 3575
NoConn ~ 4950 3625
NoConn ~ 4950 3825
NoConn ~ 4950 4025
NoConn ~ 4950 4125
NoConn ~ 4950 4225
NoConn ~ 4950 4325
NoConn ~ 4950 4525
Text Notes 5400 2425 0    60   ~ 0
SDA
Text Notes 5400 2525 0    60   ~ 0
SCL
Text Notes 5450 2925 0    60   ~ 0
SS
Text Notes 5450 3025 0    60   ~ 0
MOSI
Text Notes 5450 3125 0    60   ~ 0
MISO
Text Notes 5450 3225 0    60   ~ 0
SCK
$EndSCHEMATC
