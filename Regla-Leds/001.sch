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
L power:GND #PWR07
U 1 1 5959B226
P 7995 2605
F 0 "#PWR07" H 7995 2355 50  0001 C CNN
F 1 "GND" H 8000 2432 50  0000 C CNN
F 2 "" H 7995 2605 50  0001 C CNN
F 3 "" H 7995 2605 50  0001 C CNN
	1    7995 2605
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5959B39B
P 7995 2505
F 0 "#FLG02" H 7995 2580 50  0001 C CNN
F 1 "PWR_FLAG" H 7995 2679 50  0000 C CNN
F 2 "" H 7995 2505 50  0001 C CNN
F 3 "" H 7995 2505 50  0001 C CNN
	1    7995 2505
	1    0    0    -1  
$EndComp
Text GLabel 3740 6060 0    50   Input ~ 0
SCK-2-A1
Text GLabel 3740 5960 0    50   Input ~ 0
MISO-1-PWM
Text GLabel 4240 6060 2    50   Input ~ 0
MOSI-0-PWM
$Comp
L power:GND #PWR06
U 1 1 5961C5A4
P 10150 2600
F 0 "#PWR06" H 10150 2350 50  0001 C CNN
F 1 "GND" H 10155 2427 50  0000 C CNN
F 2 "" H 10150 2600 50  0001 C CNN
F 3 "" H 10150 2600 50  0001 C CNN
	1    10150 2600
	1    0    0    -1  
$EndComp
Text GLabel 10150 2500 2    50   Input ~ 0
VBAT
Text GLabel 6925 900  1    50   Input ~ 0
VCC
Text GLabel 7570 2530 1    50   Input ~ 0
GND
$Comp
L 001-rescue:CONN_01X02-conn J3
U 1 1 5961A222
P 9950 2550
F 0 "J3" H 9950 2825 50  0000 C CNN
F 1 "CONN_01X02" H 10125 2725 50  0000 C CNN
F 2 "Connector_JST:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 9950 2550 50  0001 C CNN
F 3 "" H 9950 2550 50  0001 C CNN
	1    9950 2550
	-1   0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 59624869
P 7295 2605
F 0 "#FLG03" H 7295 2680 50  0001 C CNN
F 1 "PWR_FLAG" H 7295 2778 50  0000 C CNN
F 2 "" H 7295 2605 50  0001 C CNN
F 3 "" H 7295 2605 50  0001 C CNN
	1    7295 2605
	-1   0    0    1   
$EndComp
$Comp
L pspice:R R1
U 1 1 597EC094
P 1815 7385
F 0 "R1" H 1883 7431 50  0000 L CNN
F 1 "1k" H 1883 7340 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1815 7385 50  0001 C CNN
F 3 "" H 1815 7385 50  0001 C CNN
	1    1815 7385
	0    -1   -1   0   
$EndComp
Text Label 1465 7385 2    50   ~ 0
+5V
$Comp
L power:GND #PWR02
U 1 1 597EE12E
P 2565 7385
F 0 "#PWR02" H 2565 7135 50  0001 C CNN
F 1 "GND" H 2570 7212 50  0000 C CNN
F 2 "" H 2565 7385 50  0001 C CNN
F 3 "" H 2565 7385 50  0001 C CNN
	1    2565 7385
	1    0    0    -1  
$EndComp
Text GLabel 4240 5960 2    50   Input ~ 0
+5V
Text GLabel 7100 900  1    50   Input ~ 0
VBAT
$Comp
L power:GND #PWR03
U 1 1 59820FE1
P 8365 1625
F 0 "#PWR03" H 8365 1375 50  0001 C CNN
F 1 "GND" H 8370 1452 50  0000 C CNN
F 2 "" H 8365 1625 50  0001 C CNN
F 3 "" H 8365 1625 50  0001 C CNN
	1    8365 1625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 598213B8
P 7630 1775
F 0 "#PWR04" H 7630 1525 50  0001 C CNN
F 1 "GND" H 7635 1602 50  0000 C CNN
F 2 "" H 7630 1775 50  0001 C CNN
F 3 "" H 7630 1775 50  0001 C CNN
	1    7630 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	7995 2505 7995 2580
Wire Wire Line
	7295 2480 7295 2605
Wire Wire Line
	7570 2530 7570 2580
Wire Wire Line
	7570 2580 7995 2580
Connection ~ 7995 2580
Wire Wire Line
	2065 7385 2165 7385
Wire Wire Line
	1565 7385 1465 7385
Wire Wire Line
	2465 7385 2565 7385
Wire Notes Line
	5750 2950 5750 475 
Wire Wire Line
	7630 1675 7630 1775
Wire Notes Line
	500  2950 10500 2950
Text Notes 8050 650  0    50   ~ 0
POWER & FILTERING
Text Notes 3175 1175 0    50   ~ 0
ATTINY 85
Text Notes 3370 5525 0    50   ~ 0
PROGRAMING PORT & I/O PINS
Wire Notes Line
	7580 6545 7585 6545
$Comp
L 001-rescue:ATTINY85-20SU-atmel U1
U 1 1 5A88CA82
P 3290 1675
F 0 "U1" H 2140 2075 50  0000 C CNN
F 1 "ATTINY85-20SU" H 4290 1275 50  0000 C CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 4240 1675 50  0001 C CIN
F 3 "" H 3290 1675 50  0001 C CNN
	1    3290 1675
	1    0    0    -1  
$EndComp
$Comp
L 001-rescue:LM7805_TO220-regul U2
U 1 1 5A88EF0C
P 8365 1175
F 0 "U2" H 8365 1420 50  0000 C CNN
F 1 "LM340MP-5.0/NOPB" H 7995 1320 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8365 1400 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm340.pdf" H 8365 1125 50  0001 C CNN
	1    8365 1175
	1    0    0    -1  
$EndComp
Wire Wire Line
	8365 1475 8365 1625
Text GLabel 3740 6160 0    50   Input ~ 0
RESET
Text GLabel 4240 6160 2    50   Input ~ 0
GND
$Comp
L 001-rescue:CONN_02X03-conn J1
U 1 1 5A89332C
P 3990 6060
F 0 "J1" H 3990 6260 50  0000 C CNN
F 1 "CONN_02X03" H 3990 5860 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 3990 4860 50  0001 C CNN
F 3 "" H 3990 4860 50  0001 C CNN
	1    3990 6060
	1    0    0    -1  
$EndComp
Text Notes 3920 5800 0    50   ~ 0
ISCP
Text GLabel 1940 1625 0    50   Input ~ 0
SCK-2-A1
Text GLabel 1940 1525 0    50   Input ~ 0
MISO-1-PWM
Text GLabel 1940 1425 0    50   Input ~ 0
MOSI-0-PWM
Text GLabel 1940 1725 0    50   Input ~ 0
3-A3
Text GLabel 1940 1825 0    50   Input ~ 0
4-A2
Text GLabel 1940 1925 0    50   Input ~ 0
RESET
Text GLabel 4640 1925 2    50   Input ~ 0
GND
Text Notes 1695 6870 0    50   ~ 0
POWER LED
Text GLabel 7295 2480 1    50   Input ~ 0
VCC
$Comp
L 001-rescue:CONN_01X02-conn J2
U 1 1 5A89FE6F
P 6335 1110
F 0 "J2" H 6335 1260 50  0000 C CNN
F 1 "CONN_01X02" V 6435 1110 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6335 1110 50  0001 C CNN
F 3 "" H 6335 1110 50  0001 C CNN
	1    6335 1110
	0    1    1    0   
$EndComp
Text GLabel 6285 910  1    50   Input ~ 0
VCC
Text GLabel 6385 910  1    50   Input ~ 0
GND
Text GLabel 9320 1085 1    50   Input ~ 0
+3V3
Wire Notes Line
	6945 6550 6945 5380
Wire Wire Line
	8665 1175 9320 1175
Wire Wire Line
	7995 2580 7995 2605
Wire Notes Line
	470  5380 11195 5380
Wire Notes Line
	475  6550 6945 6550
Wire Notes Line
	10505 2950 11220 2950
Wire Notes Line
	495  2950 470  2950
NoConn ~ 7530 1125
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5BDB5F6B
P 7845 1050
F 0 "#FLG01" H 7845 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 7845 1223 50  0000 C CNN
F 2 "" H 7845 1050 50  0001 C CNN
F 3 "" H 7845 1050 50  0001 C CNN
	1    7845 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7845 1050 7845 1175
Connection ~ 7845 1175
Wire Wire Line
	7845 1175 8065 1175
$Comp
L Device:C C2
U 1 1 5D6B6E95
P 7630 1525
F 0 "C2" H 7745 1571 50  0000 L CNN
F 1 "4.7uF" H 7745 1480 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7668 1375 50  0001 C CNN
F 3 "~" H 7630 1525 50  0001 C CNN
	1    7630 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	7575 1175 7630 1175
Wire Wire Line
	7630 1175 7630 1375
Connection ~ 7630 1175
Wire Wire Line
	7630 1175 7845 1175
Wire Wire Line
	9320 1085 9320 1175
$Comp
L power:GND #PWR05
U 1 1 5D6C9B45
P 9320 1775
F 0 "#PWR05" H 9320 1525 50  0001 C CNN
F 1 "GND" H 9325 1602 50  0000 C CNN
F 2 "" H 9320 1775 50  0001 C CNN
F 3 "" H 9320 1775 50  0001 C CNN
	1    9320 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	9320 1675 9320 1775
$Comp
L Device:C C3
U 1 1 5D6C9B50
P 9320 1525
F 0 "C3" H 9435 1571 50  0000 L CNN
F 1 "4.7uF" H 9435 1480 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9358 1375 50  0001 C CNN
F 3 "~" H 9320 1525 50  0001 C CNN
	1    9320 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	9320 1175 9320 1375
Connection ~ 9320 1175
$Comp
L Device:C C1
U 1 1 5D6867E5
P 6375 3900
F 0 "C1" H 6490 3946 50  0000 L CNN
F 1 "22nF" H 6490 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6413 3750 50  0001 C CNN
F 3 "~" H 6375 3900 50  0001 C CNN
	1    6375 3900
	1    0    0    -1  
$EndComp
Text GLabel 6750 4250 0    50   Input ~ 0
4-A2
Wire Wire Line
	6950 4250 6750 4250
$Comp
L power:GND #PWR01
U 1 1 59894DC3
P 6375 4050
F 0 "#PWR01" H 6375 3800 50  0001 C CNN
F 1 "GND" H 6380 3877 50  0000 C CNN
F 2 "" H 6375 4050 50  0001 C CNN
F 3 "" H 6375 4050 50  0001 C CNN
	1    6375 4050
	1    0    0    -1  
$EndComp
Text Notes 2500 3325 0    79   ~ 0
CharliePlex
$Comp
L Device:LED D2
U 1 1 5D6BC7E9
P 2925 3950
F 0 "D2" V 3025 3875 50  0000 C CNN
F 1 "LED" V 3025 4050 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 2925 3950 50  0001 C CNN
F 3 "~" H 2925 3950 50  0001 C CNN
	1    2925 3950
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5D6BCB10
P 2525 4375
F 0 "D3" V 2625 4450 50  0000 C CNN
F 1 "LED" V 2625 4300 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2525 4375 50  0001 C CNN
F 3 "~" H 2525 4375 50  0001 C CNN
	1    2525 4375
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5D6BE36E
P 2925 4375
F 0 "D4" V 3025 4300 50  0000 C CNN
F 1 "LED" V 3025 4475 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2925 4375 50  0001 C CNN
F 3 "~" H 2925 4375 50  0001 C CNN
	1    2925 4375
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5D6BF16C
P 3300 4150
F 0 "D5" V 3400 4225 50  0000 C CNN
F 1 "LED" V 3400 4050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3300 4150 50  0001 C CNN
F 3 "~" H 3300 4150 50  0001 C CNN
	1    3300 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 4550 9600 4725
Wire Wire Line
	9600 4725 8525 4725
Wire Wire Line
	7250 4725 7250 4550
Wire Wire Line
	8525 4550 8525 4725
Connection ~ 8525 4725
Wire Wire Line
	8525 4725 7250 4725
$Comp
L LED:WS2812B D6
U 1 1 5D67BA44
P 7250 4250
F 0 "D6" H 6950 4575 50  0000 L CNN
F 1 "WS2812B" H 7375 3900 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7300 3950 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7350 3875 50  0001 L TNN
	1    7250 4250
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D7
U 1 1 5D68C575
P 8525 4250
F 0 "D7" H 8225 4575 50  0000 L CNN
F 1 "WS2812B" H 8650 3900 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 8575 3950 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 8625 3875 50  0001 L TNN
	1    8525 4250
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D8
U 1 1 5D68CD46
P 9600 4250
F 0 "D8" H 9300 4575 50  0000 L CNN
F 1 "WS2812B" H 9725 3900 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 9650 3950 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 9700 3875 50  0001 L TNN
	1    9600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3950 9600 3750
Wire Wire Line
	9600 3750 8525 3750
Wire Wire Line
	7250 3750 7250 3950
Wire Wire Line
	8525 3925 8525 3750
Connection ~ 8525 3750
Wire Wire Line
	8525 3750 7250 3750
$Comp
L Device:D_Schottky_Small_ALT D10
U 1 1 5D69981E
P 7100 1060
F 0 "D10" V 7146 992 50  0000 R CNN
F 1 "D_Schottky_Small_ALT" V 6660 1715 50  0001 R CNN
F 2 "" V 7100 1060 50  0001 C CNN
F 3 "~" V 7100 1060 50  0001 C CNN
	1    7100 1060
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPDT SW1
U 1 1 5D69C31E
P 7330 1225
F 0 "SW1" H 7330 1045 50  0000 C CNN
F 1 "SW_SPDT" H 7325 940 50  0000 C CNN
F 2 "" H 7330 1225 50  0001 C CNN
F 3 "~" H 7330 1225 50  0001 C CNN
	1    7330 1225
	1    0    0    -1  
$EndComp
Wire Wire Line
	7530 1325 7575 1325
Wire Wire Line
	7575 1325 7575 1175
Wire Wire Line
	7130 1225 7100 1225
Wire Wire Line
	6925 900  6925 1225
Wire Wire Line
	7100 1160 7100 1225
Connection ~ 7100 1225
Wire Wire Line
	7100 1225 6925 1225
Wire Wire Line
	7100 960  7100 900 
Wire Wire Line
	7250 3750 6375 3750
Connection ~ 7250 3750
Text GLabel 6300 3750 0    50   Input ~ 0
+3V3
Wire Wire Line
	6300 3750 6375 3750
Connection ~ 6375 3750
Text GLabel 4640 1425 2    50   Input ~ 0
+3V3
Text GLabel 2275 4650 0    50   Input ~ 0
SCK-2-A1
Text GLabel 2275 4175 0    50   Input ~ 0
MISO-1-PWM
Text GLabel 2275 3675 0    50   Input ~ 0
MOSI-0-PWM
$Comp
L Device:LED D9
U 1 1 5D6A4CFA
P 2315 7385
F 0 "D9" H 2308 7601 50  0000 C CNN
F 1 "LED" H 2308 7510 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 2315 7385 50  0001 C CNN
F 3 "~" H 2315 7385 50  0001 C CNN
	1    2315 7385
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5D6B6DFF
P 2525 3950
F 0 "D1" V 2625 4000 50  0000 C CNN
F 1 "LED" V 2625 3875 50  0000 C CNN
F 2 "LED_THT:LED_D10.0mm" H 2525 3950 50  0001 C CNN
F 3 "~" H 2525 3950 50  0001 C CNN
	1    2525 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2525 4100 2525 4175
Wire Wire Line
	2925 4100 2925 4175
Wire Wire Line
	2525 4175 2925 4175
Connection ~ 2525 4175
Wire Wire Line
	2525 4175 2525 4225
Connection ~ 2925 4175
Wire Wire Line
	2925 4175 2925 4225
Wire Wire Line
	2525 4525 2525 4650
Wire Wire Line
	2525 4650 2925 4650
Wire Wire Line
	2925 4650 2925 4525
Wire Wire Line
	2525 3800 2525 3675
Wire Wire Line
	2525 3675 2925 3675
Wire Wire Line
	2925 3675 2925 3800
Wire Wire Line
	3300 4300 3300 4650
Wire Wire Line
	3300 4650 2925 4650
Connection ~ 2925 4650
Wire Wire Line
	3300 4000 3300 3675
Wire Wire Line
	3300 3675 2925 3675
Connection ~ 2925 3675
Wire Wire Line
	2525 4175 2275 4175
Wire Wire Line
	2525 3675 2275 3675
Connection ~ 2525 3675
Wire Wire Line
	2525 4650 2275 4650
Connection ~ 2525 4650
Text Notes 8150 3475 0    79   ~ 0
NeoPixel
Wire Wire Line
	7550 4250 8225 4250
Wire Wire Line
	8825 4250 9300 4250
$EndSCHEMATC
