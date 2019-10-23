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
L power:PWR_FLAG #FLG01
U 1 1 5D92F7A7
P 9975 800
F 0 "#FLG01" H 9975 875 50  0001 C CNN
F 1 "PWR_FLAG" H 9975 973 50  0000 C CNN
F 2 "" H 9975 800 50  0001 C CNN
F 3 "~" H 9975 800 50  0001 C CNN
	1    9975 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D930D3A
P 9975 925
F 0 "#PWR04" H 9975 675 50  0001 C CNN
F 1 "GND" H 9980 752 50  0000 C CNN
F 2 "" H 9975 925 50  0001 C CNN
F 3 "" H 9975 925 50  0001 C CNN
	1    9975 925 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9975 800  9975 925 
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D932C92
P 10375 925
F 0 "#FLG02" H 10375 1000 50  0001 C CNN
F 1 "PWR_FLAG" H 10375 1098 50  0000 C CNN
F 2 "" H 10375 925 50  0001 C CNN
F 3 "~" H 10375 925 50  0001 C CNN
	1    10375 925 
	-1   0    0    1   
$EndComp
Wire Wire Line
	10375 925  10375 800 
Text Label 1200 1650 2    50   ~ 0
VIN
$Comp
L power:GND #PWR05
U 1 1 5D93CBC2
P 925 1625
F 0 "#PWR05" H 925 1375 50  0001 C CNN
F 1 "GND" H 930 1452 50  0000 C CNN
F 2 "" H 925 1625 50  0001 C CNN
F 3 "" H 925 1625 50  0001 C CNN
	1    925  1625
	1    0    0    -1  
$EndComp
Text Label 1625 2225 3    50   ~ 0
PB_0
Text Label 1725 2225 3    50   ~ 0
PB_1
Text Label 1825 2225 3    50   ~ 0
PB_2
Text Notes 5250 850  0    79   ~ 0
Charlie Plexing
$Comp
L Device:LED D1
U 1 1 5D6B6DFF
P 4975 1375
F 0 "D1" H 5075 1225 50  0000 C CNN
F 1 "LED" H 4825 1225 50  0000 C CNN
F 2 "Reverse_Mount_Leds:SunLed_PLCC_Reverse-2" H 4975 1375 50  0001 C CNN
F 3 "~" H 4975 1375 50  0001 C CNN
	1    4975 1375
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5D91B027
P 10375 800
F 0 "#PWR09" H 10375 650 50  0001 C CNN
F 1 "VCC" H 10392 973 50  0000 C CNN
F 2 "" H 10375 800 50  0001 C CNN
F 3 "" H 10375 800 50  0001 C CNN
	1    10375 800 
	1    0    0    -1  
$EndComp
$Comp
L 001-rescue:PCB-Reverse_mount_leds U2
U 1 1 5D927C25
P 10000 1575
F 0 "U2" H 10099 1621 50  0000 L CNN
F 1 "Firma" H 10099 1530 50  0000 L CNN
F 2 "Reverse_Mount_Leds:firma_Cu_Mask" H 10000 1575 50  0001 C CNN
F 3 "" H 10000 1575 50  0001 C CNN
	1    10000 1575
	1    0    0    -1  
$EndComp
Text Label 1200 1450 2    50   ~ 0
VCC
Wire Wire Line
	4500 1075 4975 1075
Connection ~ 4975 1075
Wire Wire Line
	4975 1075 5325 1075
Wire Wire Line
	4500 1650 4975 1650
Connection ~ 4975 1650
Wire Wire Line
	4975 1650 5325 1650
Wire Wire Line
	5775 1775 5775 1650
Wire Wire Line
	5775 1650 5325 1650
Connection ~ 5325 1650
Wire Wire Line
	6100 1775 6100 1650
Wire Wire Line
	6100 1650 5775 1650
Connection ~ 5775 1650
Wire Wire Line
	5775 2075 5775 2225
Wire Wire Line
	4500 2225 5775 2225
Wire Wire Line
	6100 2075 6100 2225
Wire Wire Line
	6100 2225 5775 2225
Connection ~ 5775 2225
Wire Wire Line
	7050 2225 7050 1775
Wire Wire Line
	6625 1800 6625 2225
Connection ~ 6625 2225
Wire Wire Line
	6625 2225 7050 2225
Wire Wire Line
	6100 2225 6625 2225
Connection ~ 6100 2225
Wire Wire Line
	5325 1075 6625 1075
Connection ~ 5325 1075
Connection ~ 6625 1075
Wire Wire Line
	6625 1075 7050 1075
Wire Wire Line
	4975 1525 4975 1650
Wire Wire Line
	5325 1525 5325 1650
Wire Wire Line
	5325 1075 5325 1225
Wire Wire Line
	4975 1075 4975 1225
Wire Wire Line
	6625 1075 6625 1500
Wire Wire Line
	7050 1075 7050 1475
Text Label 1925 2225 3    50   ~ 0
PB_3
Text Label 2025 2225 3    50   ~ 0
PB_4
Text Label 2125 2225 3    50   ~ 0
PB_5
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5DA04141
P 10800 925
F 0 "#FLG03" H 10800 1000 50  0001 C CNN
F 1 "PWR_FLAG" H 10800 1098 50  0000 C CNN
F 2 "" H 10800 925 50  0001 C CNN
F 3 "~" H 10800 925 50  0001 C CNN
	1    10800 925 
	-1   0    0    1   
$EndComp
Wire Wire Line
	10800 925  10800 800 
$Comp
L wickerlib:VIN #PWR01
U 1 1 5DA054F6
P 10800 800
F 0 "#PWR01" H 10800 650 50  0001 C CNN
F 1 "VIN" H 10815 973 50  0000 C CNN
F 2 "" H 10800 800 50  0000 C CNN
F 3 "" H 10800 800 50  0000 C CNN
	1    10800 800 
	1    0    0    -1  
$EndComp
$Comp
L Digispark:Conn_01x06_x03 J2
U 1 1 5DA5B104
P 1825 1900
F 0 "J2" H 1775 3025 50  0000 L CNN
F 1 "Conn_01x06_x03" V 2275 1900 50  0001 L CNN
F 2 "Reverse_Mount_Leds:Digispark_SMD_Reverse" H 1300 850 50  0001 C CNN
F 3 "~" H 1300 850 50  0001 C CNN
	1    1825 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1325 1450 1200 1450
Wire Wire Line
	1325 1650 1200 1650
Wire Wire Line
	1625 2100 1625 2225
Wire Wire Line
	1725 2100 1725 2225
Wire Wire Line
	2025 2100 2025 2225
Wire Wire Line
	925  1550 925  1625
Wire Wire Line
	925  1550 1325 1550
Text Label 4500 1075 2    50   ~ 0
PB_0
Text Label 4500 1650 2    50   ~ 0
PB_1
Text Label 4500 2225 2    50   ~ 0
PB_4
NoConn ~ 1825 2100
NoConn ~ 1925 2100
NoConn ~ 2125 2100
$Comp
L 001-rescue:PCB-Reverse_mount_leds U1
U 1 1 5DA40039
P 10000 1325
F 0 "U1" H 10099 1371 50  0000 L CNN
F 1 "PCB" H 10099 1280 50  0000 L CNN
F 2 "Reverse_Mount_Leds:Moon_6_Leds_75_2" H 10000 1325 50  0001 C CNN
F 3 "" H 10000 1325 50  0001 C CNN
	1    10000 1325
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5DA423B6
P 3150 1450
F 0 "J1" H 3230 1442 50  0000 L CNN
F 1 "Conn_01x02" H 3230 1351 50  0000 L CNN
F 2 "Connector_JST:JST-S2B-PH-SM4-TB" H 3150 1450 50  0001 C CNN
F 3 "~" H 3150 1450 50  0001 C CNN
	1    3150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1550 2825 1550
Wire Wire Line
	2950 1450 2825 1450
Text Label 2825 1450 2    50   ~ 0
VIN
$Comp
L power:GND #PWR02
U 1 1 5DA459D2
P 2825 1550
F 0 "#PWR02" H 2825 1300 50  0001 C CNN
F 1 "GND" H 2830 1377 50  0000 C CNN
F 2 "" H 2825 1550 50  0001 C CNN
F 3 "" H 2825 1550 50  0001 C CNN
	1    2825 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5DA72DC3
P 3150 2275
F 0 "BT1" H 3268 2371 50  0000 L CNN
F 1 "Battery_Cell" H 3268 2280 50  0000 L CNN
F 2 "Battery:S8211R" V 3150 2335 50  0001 C CNN
F 3 "~" V 3150 2335 50  0001 C CNN
	1    3150 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2075 3150 1950
Wire Wire Line
	3150 2375 3150 2500
Text Label 3150 1950 2    50   ~ 0
VIN
$Comp
L power:GND #PWR03
U 1 1 5DA78ABB
P 3150 2500
F 0 "#PWR03" H 3150 2250 50  0001 C CNN
F 1 "GND" H 3155 2327 50  0000 C CNN
F 2 "" H 3150 2500 50  0001 C CNN
F 3 "" H 3150 2500 50  0001 C CNN
	1    3150 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5DA2AE55
P 5325 1375
F 0 "D2" H 5425 1225 50  0000 C CNN
F 1 "LED" H 5175 1225 50  0000 C CNN
F 2 "Reverse_Mount_Leds:SunLed_PLCC_Reverse-2" H 5325 1375 50  0001 C CNN
F 3 "~" H 5325 1375 50  0001 C CNN
	1    5325 1375
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5DA2C9DE
P 5775 1925
F 0 "D3" H 5875 1775 50  0000 C CNN
F 1 "LED" H 5625 1775 50  0000 C CNN
F 2 "Reverse_Mount_Leds:SunLed_PLCC_Reverse-2" H 5775 1925 50  0001 C CNN
F 3 "~" H 5775 1925 50  0001 C CNN
	1    5775 1925
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5DA2B62C
P 6100 1925
F 0 "D4" H 6200 1775 50  0000 C CNN
F 1 "LED" H 5950 1775 50  0000 C CNN
F 2 "Reverse_Mount_Leds:SunLed_PLCC_Reverse-2" H 6100 1925 50  0001 C CNN
F 3 "~" H 6100 1925 50  0001 C CNN
	1    6100 1925
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5DA2C1E7
P 6625 1650
F 0 "D5" H 6725 1500 50  0000 C CNN
F 1 "LED" H 6475 1500 50  0000 C CNN
F 2 "Reverse_Mount_Leds:SunLed_PLCC_Reverse-2" H 6625 1650 50  0001 C CNN
F 3 "~" H 6625 1650 50  0001 C CNN
	1    6625 1650
	0    1    1    0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5DA2BBA7
P 7050 1625
F 0 "D6" H 7150 1475 50  0000 C CNN
F 1 "LED" H 6900 1475 50  0000 C CNN
F 2 "Reverse_Mount_Leds:SunLed_PLCC_Reverse-2" H 7050 1625 50  0001 C CNN
F 3 "~" H 7050 1625 50  0001 C CNN
	1    7050 1625
	0    -1   -1   0   
$EndComp
$Comp
L 001-rescue:PCB-Reverse_mount_leds U?
U 1 1 5DA53F91
P 10000 2075
F 0 "U?" H 10099 2121 50  0000 L CNN
F 1 "Firma" H 10099 2030 50  0000 L CNN
F 2 "Reverse_Mount_Leds:firma_Cu_Mask" H 10000 2075 50  0001 C CNN
F 3 "" H 10000 2075 50  0001 C CNN
	1    10000 2075
	1    0    0    -1  
$EndComp
$Comp
L 001-rescue:PCB-Reverse_mount_leds U?
U 1 1 5DA53F9B
P 10000 1825
F 0 "U?" H 10099 1871 50  0000 L CNN
F 1 "PCB" H 10099 1780 50  0000 L CNN
F 2 "Reverse_Mount_Leds:Moon_6_Leds_75_2" H 10000 1825 50  0001 C CNN
F 3 "" H 10000 1825 50  0001 C CNN
	1    10000 1825
	1    0    0    -1  
$EndComp
$EndSCHEMATC