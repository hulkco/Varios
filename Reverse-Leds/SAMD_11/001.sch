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
P 10325 1250
F 0 "#FLG02" H 10325 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 10325 1423 50  0000 C CNN
F 2 "" H 10325 1250 50  0001 C CNN
F 3 "~" H 10325 1250 50  0001 C CNN
	1    10325 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	10325 1250 10325 1125
$Comp
L power:VCC #PWR09
U 1 1 5D91B027
P 10325 1125
F 0 "#PWR09" H 10325 975 50  0001 C CNN
F 1 "VCC" H 10342 1298 50  0000 C CNN
F 2 "" H 10325 1125 50  0001 C CNN
F 3 "" H 10325 1125 50  0001 C CNN
	1    10325 1125
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5DA04141
P 10750 1250
F 0 "#FLG03" H 10750 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 10750 1423 50  0000 C CNN
F 2 "" H 10750 1250 50  0001 C CNN
F 3 "~" H 10750 1250 50  0001 C CNN
	1    10750 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	10750 1250 10750 1125
$Comp
L wickerlib:VIN #PWR01
U 1 1 5DA054F6
P 10750 1125
F 0 "#PWR01" H 10750 975 50  0001 C CNN
F 1 "VIN" H 10765 1298 50  0000 C CNN
F 2 "" H 10750 1125 50  0000 C CNN
F 3 "" H 10750 1125 50  0000 C CNN
	1    10750 1125
	1    0    0    -1  
$EndComp
Text Notes 5000 925  0    89   ~ 18
Attiny85 Breakout
Text Notes 10125 775  0    89   ~ 18
Flags
Wire Wire Line
	4850 1475 5050 1475
Wire Wire Line
	6250 1475 6450 1475
Wire Wire Line
	6250 1575 6450 1575
Wire Wire Line
	6250 1675 6450 1675
Wire Wire Line
	4850 1575 5050 1575
Wire Wire Line
	4850 1675 5050 1675
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5DA7EE5F
P 6650 1575
F 0 "J1" H 6730 1567 50  0000 L CNN
F 1 "Conn_01x04" H 6730 1476 50  0000 L CNN
F 2 "Attiny85_01:Attiny85_Socket_Castell_Up" H 6650 1575 50  0001 C CNN
F 3 "~" H 6650 1575 50  0001 C CNN
	1    6650 1575
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5DA7FF92
P 4650 1675
F 0 "J2" H 4568 1250 50  0000 C CNN
F 1 "Conn_01x04" H 4568 1341 50  0000 C CNN
F 2 "Attiny85_01:Attiny85_Socket_Castell_Down" H 4650 1675 50  0001 C CNN
F 3 "~" H 4650 1675 50  0001 C CNN
	1    4650 1675
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 1775 6350 1775
Wire Wire Line
	4850 1775 4950 1775
$Comp
L power:GND #PWR0101
U 1 1 5DA82097
P 4950 1975
F 0 "#PWR0101" H 4950 1725 50  0001 C CNN
F 1 "GND" H 4955 1802 50  0000 C CNN
F 2 "" H 4950 1975 50  0001 C CNN
F 3 "" H 4950 1975 50  0001 C CNN
	1    4950 1975
	1    0    0    -1  
$EndComp
Connection ~ 4950 1775
Wire Wire Line
	4950 1775 5050 1775
Wire Wire Line
	9925 1125 9925 1250
$Comp
L power:GND #PWR04
U 1 1 5D930D3A
P 9925 1250
F 0 "#PWR04" H 9925 1000 50  0001 C CNN
F 1 "GND" H 9930 1077 50  0000 C CNN
F 2 "" H 9925 1250 50  0001 C CNN
F 3 "" H 9925 1250 50  0001 C CNN
	1    9925 1250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D92F7A7
P 9925 1125
F 0 "#FLG01" H 9925 1200 50  0001 C CNN
F 1 "PWR_FLAG" H 9925 1298 50  0000 C CNN
F 2 "" H 9925 1125 50  0001 C CNN
F 3 "~" H 9925 1125 50  0001 C CNN
	1    9925 1125
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ATTINY85-20SU IC1
U 1 1 5DA83E2C
P 5050 1475
F 0 "IC1" H 5650 1740 50  0000 C CNN
F 1 "ATTINY85-20SU" H 5650 1649 50  0000 C CNN
F 2 "Attiny85:SOT127P798X216-8N" H 6100 1575 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ATTINY85-20SU.pdf" H 6100 1475 50  0001 L CNN
F 4 "MICROCHIP - ATTINY85-20SU - MICROCONTROLLER MCU, 8 BIT, ATTINY, 20MHZ, SOIC-8" H 6100 1375 50  0001 L CNN "Description"
F 5 "2.16" H 6100 1275 50  0001 L CNN "Height"
F 6 "556-ATTINY85-20SU" H 6100 1175 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=556-ATTINY85-20SU" H 6100 1075 50  0001 L CNN "Mouser Price/Stock"
F 8 "Microchip" H 6100 975 50  0001 L CNN "Manufacturer_Name"
F 9 "ATTINY85-20SU" H 6100 875 50  0001 L CNN "Manufacturer_Part_Number"
	1    5050 1475
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1975 4950 1775
$Comp
L power:VCC #PWR02
U 1 1 5DA8597A
P 6350 1975
F 0 "#PWR02" H 6350 1825 50  0001 C CNN
F 1 "VCC" H 6367 2148 50  0000 C CNN
F 2 "" H 6350 1975 50  0001 C CNN
F 3 "" H 6350 1975 50  0001 C CNN
	1    6350 1975
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 1975 6350 1775
Connection ~ 6350 1775
Wire Wire Line
	6350 1775 6450 1775
$EndSCHEMATC
