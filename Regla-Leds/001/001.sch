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
L Reverse_mount_leds:WS2812B-Normal LED1
U 1 1 5D90F91C
P 4450 1575
F 0 "LED1" H 4500 1950 50  0000 C CNN
F 1 "WS2812B-Reverse" H 4500 1859 50  0000 C CNN
F 2 "Reverse_Mount_Leds:WS2812B__Reverse" H 4450 1225 50  0001 C CIN
F 3 "" H 4450 1575 5   0001 C CNN
F 4 "WS2812B-Reverse" H 4450 1225 50  0001 C CIN "Description"
	1    4450 1575
	1    0    0    -1  
$EndComp
NoConn ~ 5000 1825
$Comp
L power:GND #PWR01
U 1 1 5D912587
P 3825 1500
F 0 "#PWR01" H 3825 1250 50  0001 C CNN
F 1 "GND" H 3830 1327 50  0000 C CNN
F 2 "" H 3825 1500 50  0001 C CNN
F 3 "" H 3825 1500 50  0001 C CNN
	1    3825 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1425 3825 1425
Wire Wire Line
	3825 1425 3825 1500
Wire Wire Line
	4000 1825 3875 1825
Text Label 3875 1825 2    50   ~ 0
Port_A
Wire Wire Line
	4500 2075 4500 2200
Text Label 4375 2200 2    50   ~ 0
VCC
$Comp
L Reverse_mount_leds:WS2812B-Normal LED2
U 1 1 5D91778C
P 6050 1575
F 0 "LED2" H 6100 1950 50  0000 C CNN
F 1 "WS2812B-2020-Reverse" H 6100 1859 50  0000 C CNN
F 2 "Reverse_Mount_Leds:WS2812B-2020_Reverse" H 6050 1225 50  0001 C CIN
F 3 "" H 6050 1575 5   0001 C CNN
F 4 "WS2812B-2020-Reverse" H 6050 1225 50  0001 C CIN "Description"
	1    6050 1575
	1    0    0    -1  
$EndComp
NoConn ~ 6600 1825
$Comp
L power:GND #PWR02
U 1 1 5D917797
P 5425 1500
F 0 "#PWR02" H 5425 1250 50  0001 C CNN
F 1 "GND" H 5430 1327 50  0000 C CNN
F 2 "" H 5425 1500 50  0001 C CNN
F 3 "" H 5425 1500 50  0001 C CNN
	1    5425 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1425 5425 1425
Wire Wire Line
	5425 1425 5425 1500
Wire Wire Line
	5600 1825 5475 1825
Text Label 5475 1825 2    50   ~ 0
Port_B
Wire Wire Line
	6100 2075 6100 2200
$Comp
L Reverse_mount_leds:WS2812B-Normal LED3
U 1 1 5D91A7C4
P 7600 1575
F 0 "LED3" H 7650 1950 50  0000 C CNN
F 1 "PL9223-F8-Reverse" H 7650 1859 50  0000 C CNN
F 2 "Reverse_Mount_Leds:P9823_Reverse_Mount" H 7600 1225 50  0001 C CIN
F 3 "" H 7600 1575 5   0001 C CNN
F 4 "PL9223-F8-Reverse" H 7600 1225 50  0001 C CIN "Description"
	1    7600 1575
	1    0    0    -1  
$EndComp
NoConn ~ 8150 1825
$Comp
L power:GND #PWR03
U 1 1 5D91A7CF
P 6975 1500
F 0 "#PWR03" H 6975 1250 50  0001 C CNN
F 1 "GND" H 6980 1327 50  0000 C CNN
F 2 "" H 6975 1500 50  0001 C CNN
F 3 "" H 6975 1500 50  0001 C CNN
	1    6975 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1425 6975 1425
Wire Wire Line
	6975 1425 6975 1500
Wire Wire Line
	7150 1825 7025 1825
Text Label 7025 1825 2    50   ~ 0
Port_C
Wire Wire Line
	7650 2075 7650 2200
Text Label 7650 2200 2    50   ~ 0
VCC
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D92F7A7
P 9750 1025
F 0 "#FLG01" H 9750 1100 50  0001 C CNN
F 1 "PWR_FLAG" H 9750 1198 50  0000 C CNN
F 2 "" H 9750 1025 50  0001 C CNN
F 3 "~" H 9750 1025 50  0001 C CNN
	1    9750 1025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D930D3A
P 9750 1150
F 0 "#PWR04" H 9750 900 50  0001 C CNN
F 1 "GND" H 9755 977 50  0000 C CNN
F 2 "" H 9750 1150 50  0001 C CNN
F 3 "" H 9750 1150 50  0001 C CNN
	1    9750 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1025 9750 1150
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D932C92
P 10325 1125
F 0 "#FLG02" H 10325 1200 50  0001 C CNN
F 1 "PWR_FLAG" H 10325 1298 50  0000 C CNN
F 2 "" H 10325 1125 50  0001 C CNN
F 3 "~" H 10325 1125 50  0001 C CNN
	1    10325 1125
	-1   0    0    1   
$EndComp
Wire Wire Line
	10325 1125 10325 1000
Wire Wire Line
	5925 3450 5775 3450
Wire Wire Line
	5925 3550 5775 3550
Wire Wire Line
	5925 3650 5775 3650
Wire Wire Line
	5925 3750 5775 3750
Wire Wire Line
	5925 4150 5775 4150
Text Label 5275 4075 2    50   ~ 0
VCC
$Comp
L power:GND #PWR05
U 1 1 5D93CBC2
P 5775 4200
F 0 "#PWR05" H 5775 3950 50  0001 C CNN
F 1 "GND" H 5780 4027 50  0000 C CNN
F 2 "" H 5775 4200 50  0001 C CNN
F 3 "" H 5775 4200 50  0001 C CNN
	1    5775 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5775 4150 5775 4200
Text Label 5775 3450 2    50   ~ 0
Port_A
Text Label 5775 3550 2    50   ~ 0
Port_B
Text Label 5775 3650 2    50   ~ 0
Port_C
Text Notes 1725 850  0    79   ~ 0
Leds
$Comp
L Device:LED D3
U 1 1 5D6BC7E9
P 1800 2175
F 0 "D3" H 1900 2025 50  0000 C CNN
F 1 "LED" H 1650 2025 50  0000 C CNN
F 2 "Reverse_Mount_Leds:LED_0805_Reverse" H 1800 2175 50  0001 C CNN
F 3 "~" H 1800 2175 50  0001 C CNN
	1    1800 2175
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5D6BCB10
P 1800 1700
F 0 "D2" H 1900 1550 50  0000 C CNN
F 1 "LED" H 1650 1550 50  0000 C CNN
F 2 "Reverse_Mount_Leds:LED_1206_Reverse" H 1800 1700 50  0001 C CNN
F 3 "~" H 1800 1700 50  0001 C CNN
	1    1800 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5D6B6DFF
P 1800 1200
F 0 "D1" H 1900 1050 50  0000 C CNN
F 1 "LED" H 1650 1050 50  0000 C CNN
F 2 "Reverse_Mount_Leds:LED_D5.0mm_Reverse" H 1800 1200 50  0001 C CNN
F 3 "~" H 1800 1200 50  0001 C CNN
	1    1800 1200
	-1   0    0    1   
$EndComp
Text Label 1175 1200 2    50   ~ 0
Led_1
Text Label 1175 1700 2    50   ~ 0
Led_2
Text Label 1175 2175 2    50   ~ 0
Led_3
$Comp
L Device:R_Small R1
U 1 1 5D98FB8C
P 1400 1200
F 0 "R1" V 1204 1200 50  0000 C CNN
F 1 "330" V 1295 1200 50  0000 C CNN
F 2 "Reverse_Mount_Leds:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1400 1200 50  0001 C CNN
F 3 "~" H 1400 1200 50  0001 C CNN
	1    1400 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5D990A5A
P 1400 1700
F 0 "R2" V 1204 1700 50  0000 C CNN
F 1 "330" V 1295 1700 50  0000 C CNN
F 2 "Reverse_Mount_Leds:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1400 1700 50  0001 C CNN
F 3 "~" H 1400 1700 50  0001 C CNN
	1    1400 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5D990F11
P 1400 2175
F 0 "R3" V 1204 2175 50  0000 C CNN
F 1 "330" V 1295 2175 50  0000 C CNN
F 2 "Reverse_Mount_Leds:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1400 2175 50  0001 C CNN
F 3 "~" H 1400 2175 50  0001 C CNN
	1    1400 2175
	0    1    1    0   
$EndComp
Text Label 5775 3750 2    50   ~ 0
Led_1
Text Label 5775 3850 2    50   ~ 0
Led_2
Text Label 5775 3950 2    50   ~ 0
Led_3
Text Notes 5700 900  0    79   ~ 0
Neo Pixels
Wire Wire Line
	1500 2175 1650 2175
Wire Wire Line
	1500 1700 1650 1700
Wire Wire Line
	1500 1200 1650 1200
Wire Wire Line
	1950 1200 2375 1200
Wire Wire Line
	2375 1200 2375 1700
Wire Wire Line
	2375 2175 1950 2175
Wire Wire Line
	1950 1700 2375 1700
Connection ~ 2375 1700
Wire Wire Line
	2375 1700 2375 2175
$Comp
L power:GND #PWR06
U 1 1 5DA08FE3
P 2375 2175
F 0 "#PWR06" H 2375 1925 50  0001 C CNN
F 1 "GND" H 2380 2002 50  0000 C CNN
F 2 "" H 2375 2175 50  0001 C CNN
F 3 "" H 2375 2175 50  0001 C CNN
	1    2375 2175
	1    0    0    -1  
$EndComp
Connection ~ 2375 2175
Wire Wire Line
	1300 1200 1175 1200
Wire Wire Line
	1300 1700 1175 1700
Wire Wire Line
	1300 2175 1175 2175
$Comp
L Device:C_Small C1
U 1 1 5DA270E6
P 4500 2300
F 0 "C1" H 4592 2346 50  0000 L CNN
F 1 "100nF" H 4592 2255 50  0000 L CNN
F 2 "Reverse_Mount_Leds:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4500 2300 50  0001 C CNN
F 3 "~" H 4500 2300 50  0001 C CNN
	1    4500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2400 4500 2550
Text Label 5975 2200 2    50   ~ 0
VCC
$Comp
L Device:C_Small C2
U 1 1 5DA2E836
P 6100 2300
F 0 "C2" H 6192 2346 50  0000 L CNN
F 1 "100nF" H 6192 2255 50  0000 L CNN
F 2 "Reverse_Mount_Leds:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6100 2300 50  0001 C CNN
F 3 "~" H 6100 2300 50  0001 C CNN
	1    6100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2400 6100 2550
Wire Wire Line
	4375 2200 4500 2200
Connection ~ 4500 2200
Wire Wire Line
	6100 2200 5975 2200
Connection ~ 6100 2200
$Comp
L power:GND #PWR07
U 1 1 5DA463C8
P 4500 2550
F 0 "#PWR07" H 4500 2300 50  0001 C CNN
F 1 "GND" H 4505 2377 50  0000 C CNN
F 2 "" H 4500 2550 50  0001 C CNN
F 3 "" H 4500 2550 50  0001 C CNN
	1    4500 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5DA47125
P 6100 2550
F 0 "#PWR08" H 6100 2300 50  0001 C CNN
F 1 "GND" H 6105 2377 50  0000 C CNN
F 2 "" H 6100 2550 50  0001 C CNN
F 3 "" H 6100 2550 50  0001 C CNN
	1    6100 2550
	1    0    0    -1  
$EndComp
$Comp
L Reverse_mount_leds:PCB U1
U 1 1 5D912D99
P 7650 3450
F 0 "U1" H 7749 3496 50  0000 L CNN
F 1 "PCB" H 7749 3405 50  0000 L CNN
F 2 "Reverse_Mount_Leds:Regla_Leds" H 7650 3450 50  0001 C CNN
F 3 "" H 7650 3450 50  0001 C CNN
	1    7650 3450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5D91B027
P 10325 1000
F 0 "#PWR09" H 10325 850 50  0001 C CNN
F 1 "VCC" H 10342 1173 50  0000 C CNN
F 2 "" H 10325 1000 50  0001 C CNN
F 3 "" H 10325 1000 50  0001 C CNN
	1    10325 1000
	1    0    0    -1  
$EndComp
$Comp
L Reverse_mount_leds:PCB U2
U 1 1 5D927C25
P 7650 3675
F 0 "U2" H 7749 3721 50  0000 L CNN
F 1 "Firma" H 7749 3630 50  0000 L CNN
F 2 "Reverse_Mount_Leds:firma_Cu_Mask" H 7650 3675 50  0001 C CNN
F 3 "" H 7650 3675 50  0001 C CNN
	1    7650 3675
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J?
U 1 1 5D99DEAA
P 6125 3850
F 0 "J?" H 6205 3892 50  0000 L CNN
F 1 "Conn_01x09" H 6205 3801 50  0000 L CNN
F 2 "" H 6125 3850 50  0001 C CNN
F 3 "~" H 6125 3850 50  0001 C CNN
	1    6125 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 3850 5775 3850
Wire Wire Line
	5925 3950 5775 3950
Wire Wire Line
	5925 4050 5775 4050
$EndSCHEMATC
