EESchema Schematic File Version 4
LIBS:001-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "zondag 28 september 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR05
U 1 1 5959B226
P 7670 2605
F 0 "#PWR05" H 7670 2355 50  0001 C CNN
F 1 "GND" H 7675 2432 50  0000 C CNN
F 2 "" H 7670 2605 50  0001 C CNN
F 3 "" H 7670 2605 50  0001 C CNN
	1    7670 2605
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5959B39B
P 7670 2505
F 0 "#FLG02" H 7670 2580 50  0001 C CNN
F 1 "PWR_FLAG" H 7670 2679 50  0000 C CNN
F 2 "" H 7670 2505 50  0001 C CNN
F 3 "" H 7670 2505 50  0001 C CNN
	1    7670 2505
	1    0    0    -1  
$EndComp
Text GLabel 4540 6110 0    50   Input ~ 0
SCK-2-A1
Text GLabel 4540 6010 0    50   Input ~ 0
MISO-1-PWM
Text GLabel 5040 6110 2    50   Input ~ 0
MOSI-0-PWM
$Comp
L power:GND #PWR07
U 1 1 595C807D
P 3005 3625
F 0 "#PWR07" H 3005 3375 50  0001 C CNN
F 1 "GND" H 3010 3452 50  0000 C CNN
F 2 "" H 3005 3625 50  0001 C CNN
F 3 "" H 3005 3625 50  0001 C CNN
	1    3005 3625
	1    0    0    -1  
$EndComp
$Comp
L wickerlib:LED-RGB-WS2812B-4SMD LED1
U 1 1 595D0515
P 8685 4100
F 0 "LED1" H 8735 4475 50  0000 C CNN
F 1 "WS2812B" H 8735 4384 50  0000 C CNN
F 2 "002:WS2812B" H 8685 3750 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 8685 4100 5   0001 C CNN
F 4 "LED RGB WS2812B W/DVR 4SMD" H 8685 3750 50  0001 C CIN "Description"
F 5 "Adafruit" H 8685 3750 50  0001 C CIN "MF_Name"
F 6 "1655" H 8685 3750 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 8685 3750 50  0001 C CIN "S1_Name"
F 8 "1528-1104-ND" H 8685 3750 50  0001 C CIN "S1_PN"
	1    8685 4100
	1    0    0    -1  
$EndComp
$Comp
L wickerlib:LED-RGB-WS2812B-4SMD LED2
U 1 1 595D08CE
P 7535 4100
F 0 "LED2" H 7585 4475 50  0000 C CNN
F 1 "WS2812B" H 7585 4384 50  0000 C CNN
F 2 "002:WS2812B" H 7535 3750 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 7535 4100 5   0001 C CNN
F 4 "LED RGB WS2812B W/DVR 4SMD" H 7535 3750 50  0001 C CIN "Description"
F 5 "Adafruit" H 7535 3750 50  0001 C CIN "MF_Name"
F 6 "1655" H 7535 3750 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 7535 3750 50  0001 C CIN "S1_Name"
F 8 "1528-1104-ND" H 7535 3750 50  0001 C CIN "S1_PN"
	1    7535 4100
	1    0    0    -1  
$EndComp
$Comp
L wickerlib:LED-RGB-WS2812B-4SMD LED3
U 1 1 595D1904
P 6260 4100
F 0 "LED3" H 6310 4475 50  0000 C CNN
F 1 "WS2812B" H 6310 4384 50  0000 C CNN
F 2 "002:WS2812B" H 6260 3750 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 6260 4100 5   0001 C CNN
F 4 "LED RGB WS2812B W/DVR 4SMD" H 6260 3750 50  0001 C CIN "Description"
F 5 "Adafruit" H 6260 3750 50  0001 C CIN "MF_Name"
F 6 "1655" H 6260 3750 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 6260 3750 50  0001 C CIN "S1_Name"
F 8 "1528-1104-ND" H 6260 3750 50  0001 C CIN "S1_PN"
	1    6260 4100
	1    0    0    -1  
$EndComp
$Comp
L wickerlib:LED-RGB-WS2812B-4SMD LED4
U 1 1 595D190F
P 5010 4100
F 0 "LED4" H 5060 4475 50  0000 C CNN
F 1 "WS2812B" H 5060 4384 50  0000 C CNN
F 2 "002:WS2812B" H 5010 3750 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 5010 4100 5   0001 C CNN
F 4 "LED RGB WS2812B W/DVR 4SMD" H 5010 3750 50  0001 C CIN "Description"
F 5 "Adafruit" H 5010 3750 50  0001 C CIN "MF_Name"
F 6 "1655" H 5010 3750 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 5010 3750 50  0001 C CIN "S1_Name"
F 8 "1528-1104-ND" H 5010 3750 50  0001 C CIN "S1_PN"
	1    5010 4100
	1    0    0    -1  
$EndComp
Text GLabel 2400 6235 0    50   Input ~ 0
3-A3
$Comp
L power:GND #PWR04
U 1 1 5961C5A4
P 9825 2600
F 0 "#PWR04" H 9825 2350 50  0001 C CNN
F 1 "GND" H 9830 2427 50  0000 C CNN
F 2 "" H 9825 2600 50  0001 C CNN
F 3 "" H 9825 2600 50  0001 C CNN
	1    9825 2600
	1    0    0    -1  
$EndComp
Text GLabel 9825 2500 2    50   Input ~ 0
VBAT
Text GLabel 6600 900  1    50   Input ~ 0
VCC
Text GLabel 9600 4810 2    50   Input ~ 0
+5V
Text GLabel 7245 2530 1    50   Input ~ 0
GND
$Comp
L 001-rescue:CONN_01X02-conn J2
U 1 1 5961A222
P 9625 2550
F 0 "J2" H 9625 2825 50  0000 C CNN
F 1 "CONN_01X02" H 9800 2725 50  0000 C CNN
F 2 "Connector_JST:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 9625 2550 50  0001 C CNN
F 3 "" H 9625 2550 50  0001 C CNN
	1    9625 2550
	-1   0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 59624869
P 6970 2605
F 0 "#FLG03" H 6970 2680 50  0001 C CNN
F 1 "PWR_FLAG" H 6970 2778 50  0000 C CNN
F 2 "" H 6970 2605 50  0001 C CNN
F 3 "" H 6970 2605 50  0001 C CNN
	1    6970 2605
	-1   0    0    1   
$EndComp
$Comp
L pspice:R R2
U 1 1 597EC094
P 1815 7385
F 0 "R2" H 1883 7431 50  0000 L CNN
F 1 "1k" H 1883 7340 50  0000 L CNN
F 2 "001:R_1206_HandSoldering" H 1815 7385 50  0001 C CNN
F 3 "" H 1815 7385 50  0001 C CNN
	1    1815 7385
	0    -1   -1   0   
$EndComp
$Comp
L 001-rescue:LED-RESCUE-001-001-rescue-HG_002-rescue D2
U 1 1 597EC09A
P 2315 7385
F 0 "D2" V 2355 7205 50  0000 R CNN
F 1 "ON" V 2265 7210 50  0000 R CNN
F 2 "002:LED_1206_HandSoldering" H 2315 7385 50  0001 C CNN
F 3 "" H 2315 7385 50  0001 C CNN
	1    2315 7385
	-1   0    0    1   
$EndComp
Text Label 1465 7385 2    50   ~ 0
+5V
$Comp
L power:GND #PWR08
U 1 1 597EE12E
P 2565 7385
F 0 "#PWR08" H 2565 7135 50  0001 C CNN
F 1 "GND" H 2570 7212 50  0000 C CNN
F 2 "" H 2565 7385 50  0001 C CNN
F 3 "" H 2565 7385 50  0001 C CNN
	1    2565 7385
	1    0    0    -1  
$EndComp
Text GLabel 5040 6010 2    50   Input ~ 0
+5V
Text GLabel 6775 900  1    50   Input ~ 0
VBAT
$Comp
L wickerlib:DIODE-SCHOTTKY-40V-1A-MBRA140-SMA D1
U 1 1 598120B7
P 6775 1075
F 0 "D1" H 6707 1075 50  0000 R CNN
F 1 "MBRA140" H 6707 1120 50  0001 R CNN
F 2 "002:DIODE-SMA" H 6775 725 50  0001 C CIN
F 3 "http://www.vishay.com/docs/94301/vs-mbra140trpbf.pdf" V 6775 1075 10  0001 C CNN
F 4 "DIODE SCHOTTKY 40V 1A MBRA140 SMA" H 6775 725 50  0001 C CIN "Description"
F 5 "Vishay" H 6775 725 50  0001 C CIN "MF_Name"
F 6 "VS-MBRA140TRPBF" H 6775 725 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 6775 725 50  0001 C CIN "S1_Name"
F 8 "VS-MBRA140TRPBFCT-ND" H 6775 725 50  0001 C CIN "S1_PN"
	1    6775 1075
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 59820FE1
P 8040 1625
F 0 "#PWR01" H 8040 1375 50  0001 C CNN
F 1 "GND" H 8045 1452 50  0000 C CNN
F 2 "" H 8040 1625 50  0001 C CNN
F 3 "" H 8040 1625 50  0001 C CNN
	1    8040 1625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 598213B8
P 7305 1775
F 0 "#PWR02" H 7305 1525 50  0001 C CNN
F 1 "GND" H 7310 1602 50  0000 C CNN
F 2 "" H 7305 1775 50  0001 C CNN
F 3 "" H 7305 1775 50  0001 C CNN
	1    7305 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	7670 2505 7670 2580
Wire Wire Line
	3285 4350 3185 4350
Wire Wire Line
	4285 4350 4560 4350
Wire Wire Line
	5560 4350 5810 4350
Wire Wire Line
	6810 4350 7085 4350
Wire Wire Line
	8085 4350 8235 4350
Wire Wire Line
	7085 3950 6960 3950
Wire Wire Line
	6960 3950 6960 3625
Connection ~ 6960 3625
Wire Wire Line
	5810 3950 5685 3950
Wire Wire Line
	5685 3950 5685 3625
Connection ~ 5685 3625
Wire Wire Line
	4560 3950 4435 3950
Wire Wire Line
	4435 3950 4435 3625
Connection ~ 4435 3625
Wire Wire Line
	3785 4600 3785 4810
Wire Wire Line
	5060 4600 5060 4810
Wire Wire Line
	6310 4810 6310 4600
Wire Wire Line
	7585 4810 7585 4600
Wire Wire Line
	6970 2480 6970 2605
Wire Wire Line
	7245 2530 7245 2580
Wire Wire Line
	7245 2580 7670 2580
Connection ~ 7670 2580
Wire Wire Line
	2065 7385 2165 7385
Wire Wire Line
	1565 7385 1465 7385
Wire Wire Line
	2465 7385 2565 7385
Wire Wire Line
	8235 3625 8235 3950
Wire Wire Line
	8735 4810 8735 4600
Wire Notes Line
	5750 2950 5750 475 
Wire Wire Line
	3210 3625 4435 3625
Wire Wire Line
	6600 1175 6775 1175
Wire Wire Line
	6600 900  6600 1175
Wire Wire Line
	6775 900  6775 975 
Wire Wire Line
	7305 1675 7305 1775
Wire Notes Line
	500  2950 10500 2950
Text Notes 7725 650  0    50   ~ 0
POWER & FILTERING
Text Notes 3175 1175 0    50   ~ 0
ATTINY 85
Text Notes 6715 3440 0    50   ~ 0
NEOPIXELS
Text Notes 3370 5525 0    50   ~ 0
PROGRAMING PORT & I/O PINS
Wire Wire Line
	3785 4810 5060 4810
Connection ~ 7585 4810
Connection ~ 6310 4810
Connection ~ 5060 4810
$Comp
L power:GND #PWR06
U 1 1 59894DC3
P 9325 5110
F 0 "#PWR06" H 9325 4860 50  0001 C CNN
F 1 "GND" H 9330 4937 50  0000 C CNN
F 2 "" H 9325 5110 50  0001 C CNN
F 3 "" H 9325 5110 50  0001 C CNN
	1    9325 5110
	1    0    0    -1  
$EndComp
Wire Wire Line
	3285 3950 3210 3950
Wire Notes Line
	7580 6545 7585 6545
Text Notes 8820 5505 0    50   ~ 0
CAPACITIVE SENSOR
Wire Wire Line
	9235 4350 9435 4350
$Comp
L 001-rescue:ATTINY85-20SU-atmel U2
U 1 1 5A88CA82
P 3290 1675
F 0 "U2" H 2140 2075 50  0000 C CNN
F 1 "ATTINY85-20SU" H 4290 1275 50  0000 C CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 4240 1675 50  0001 C CIN
F 3 "" H 3290 1675 50  0001 C CNN
	1    3290 1675
	1    0    0    -1  
$EndComp
$Comp
L 001-rescue:LM7805_TO220-regul U1
U 1 1 5A88EF0C
P 8040 1175
F 0 "U1" H 8040 1420 50  0000 C CNN
F 1 "LM340MP-5.0/NOPB" H 7670 1320 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8040 1400 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm340.pdf" H 8040 1125 50  0001 C CNN
	1    8040 1175
	1    0    0    -1  
$EndComp
Wire Wire Line
	8040 1475 8040 1625
Text GLabel 4540 6210 0    50   Input ~ 0
RESET
Text GLabel 5040 6210 2    50   Input ~ 0
GND
Text GLabel 9435 4350 2    50   Input ~ 0
4-A2
$Comp
L 001-rescue:CONN_02X03-conn J3
U 1 1 5A89332C
P 4790 6110
F 0 "J3" H 4790 6310 50  0000 C CNN
F 1 "CONN_02X03" H 4790 5910 50  0000 C CNN
F 2 "001:Pin_Header_Straight_2x03_Pitch2.54mm_SMD" H 4790 4910 50  0001 C CNN
F 3 "" H 4790 4910 50  0001 C CNN
	1    4790 6110
	1    0    0    -1  
$EndComp
Text Notes 4720 5850 0    50   ~ 0
ISCP
Text Notes 2645 5855 0    50   ~ 0
USER PINS
Text GLabel 8100 5775 0    50   Input ~ 0
MOSI-0-PWM
Text GLabel 8600 5775 2    50   Input ~ 0
MISO-1-PWM
Text GLabel 1940 1625 0    50   Input ~ 0
SCK-2-A1
Text GLabel 1940 1525 0    50   Input ~ 0
MISO-1-PWM
Text GLabel 1940 1425 0    50   Input ~ 0
MOSI-0-PWM
Text GLabel 1940 1725 0    50   Input ~ 0
3-A3
Text GLabel 4640 1425 2    50   Input ~ 0
+5V
Text GLabel 1940 1825 0    50   Input ~ 0
4-A2
Text GLabel 1940 1925 0    50   Input ~ 0
RESET
Text GLabel 4640 1925 2    50   Input ~ 0
GND
Text Notes 1695 6870 0    50   ~ 0
POWER LED
Text GLabel 6970 2480 1    50   Input ~ 0
VCC
$Comp
L 001-rescue:CONN_01X02-conn J1
U 1 1 5A89FE6F
P 6010 1110
F 0 "J1" H 6010 1260 50  0000 C CNN
F 1 "CONN_01X02" V 6110 1110 50  0000 C CNN
F 2 "002:Pin_Header_Straight_1x02_Pitch2.54mm_SMD_Pin1Left" H 6010 1110 50  0001 C CNN
F 3 "" H 6010 1110 50  0001 C CNN
	1    6010 1110
	0    1    1    0   
$EndComp
Text GLabel 5960 910  1    50   Input ~ 0
VCC
Text GLabel 6060 910  1    50   Input ~ 0
GND
Text GLabel 8995 1085 1    50   Input ~ 0
+5V
Wire Notes Line
	6945 6550 6945 5380
$Comp
L 001-rescue:CONN_01X03-conn J4
U 1 1 5A88EF7D
P 2600 6135
F 0 "J4" H 2600 6335 50  0000 C CNN
F 1 "CONN_01X03" V 2700 6135 50  0000 C CNN
F 2 "002:Pin_Header_Straight_1x03_Pitch2.54mm_SMD_Pin1Left" H 2600 6135 50  0001 C CNN
F 3 "" H 2600 6135 50  0001 C CNN
	1    2600 6135
	1    0    0    -1  
$EndComp
$Comp
L 001-rescue:CONN_01X03-conn J5
U 1 1 5A88F449
P 2980 6135
F 0 "J5" H 2980 6335 50  0000 C CNN
F 1 "CONN_01X03" V 3080 6135 50  0000 C CNN
F 2 "002:Pin_Header_Straight_1x03_Pitch2.54mm_SMD_Pin1Right" H 2980 6135 50  0001 C CNN
F 3 "" H 2980 6135 50  0001 C CNN
	1    2980 6135
	-1   0    0    -1  
$EndComp
Text GLabel 3180 6035 2    50   Input ~ 0
+5V
Text GLabel 2400 6035 0    50   Input ~ 0
+5V
Text GLabel 3180 6135 2    50   Input ~ 0
GND
Text GLabel 2400 6135 0    50   Input ~ 0
GND
Text GLabel 3180 6235 2    50   Input ~ 0
SCK-2-A1
Wire Wire Line
	8340 1175 8995 1175
Wire Wire Line
	6960 3625 8235 3625
Wire Wire Line
	5685 3625 6960 3625
Wire Wire Line
	4435 3625 5685 3625
Wire Wire Line
	7670 2580 7670 2605
Wire Wire Line
	7585 4810 8735 4810
Wire Wire Line
	6310 4810 7585 4810
Wire Wire Line
	5060 4810 6310 4810
Wire Wire Line
	3210 3950 3210 3625
Text Notes 4000 6895 0    50   ~ 0
Escornabot Art
Wire Notes Line
	470  5380 11195 5380
Wire Notes Line
	475  6550 6945 6550
Wire Notes Line
	10505 2950 11220 2950
Wire Notes Line
	495  2950 470  2950
$Comp
L 001-rescue:HG_SilKs_2-HG SilKs1
U 1 1 5BD9DD96
P 4160 7205
F 0 "SilKs1" H 4338 7251 50  0000 L CNN
F 1 "Escorni_Art" H 4338 7160 50  0000 L CNN
F 2 "002:escorni-badge-new_03_100mm" H 4160 7205 50  0001 C CNN
F 3 "" H 4160 7205 50  0001 C CNN
	1    4160 7205
	1    0    0    -1  
$EndComp
Text Notes 9035 6405 0    50   ~ 0
Agregar una conexión manual a la H
$Comp
L wickerlib:SWITCH-SLIDE-SPDT-100MA-12V S1
U 1 1 5BD9DEF7
P 7055 1175
F 0 "S1" H 7050 1040 50  0000 C CNN
F 1 "MSK12C02_SWITCH-SLIDE-SPDT" H 7030 1355 50  0001 C CNN
F 2 "002:MSK12C02" H 7055 825 50  0001 C CIN
F 3 "https://es.aliexpress.com/item/10pcs-Slide-Switch-On-OFF-2-Position-1P2T-SPDT-Miniature-Horizontal-Slide-Switch-SMD-7-Pin/32770836506.html?spm=a219c.10010108.1000016.1.415e538dUbCoPc&isOrigTitle=true" H 7055 975 5   0001 C CNN
F 4 "SWITCH SLIDE SPDT" H 7055 825 50  0001 C CIN "Description"
	1    7055 1175
	-1   0    0    1   
$EndComp
Connection ~ 6775 1175
NoConn ~ 7205 1125
Wire Wire Line
	6775 1175 6855 1175
Wire Wire Line
	7250 1225 7250 1175
Wire Wire Line
	7205 1225 7250 1225
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5BDB5F6B
P 7520 1050
F 0 "#FLG01" H 7520 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 7520 1223 50  0000 C CNN
F 2 "" H 7520 1050 50  0001 C CNN
F 3 "" H 7520 1050 50  0001 C CNN
	1    7520 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7520 1050 7520 1175
Connection ~ 7520 1175
Wire Wire Line
	7520 1175 7740 1175
$Comp
L wickerlib:LED-RGB-WS2812B-4SMD LED5
U 1 1 595D1F1E
P 3735 4100
F 0 "LED5" H 3785 4475 50  0000 C CNN
F 1 "WS2812B" H 3785 4384 50  0000 C CNN
F 2 "002:WS2812B" H 3735 3750 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 3735 4100 5   0001 C CNN
	1    3735 4100
	1    0    0    -1  
$EndComp
NoConn ~ 3185 4350
$Comp
L Device:R R1
U 1 1 5D6A129B
P 8350 6175
F 0 "R1" V 8250 6175 50  0000 C CNN
F 1 "1Mohm" V 8450 6175 50  0000 C CNN
F 2 "002:R_1206_HandSoldering" V 8280 6175 50  0001 C CNN
F 3 "~" H 8350 6175 50  0001 C CNN
	1    8350 6175
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 5775 8525 5775
Wire Wire Line
	8525 6175 8500 6175
Wire Wire Line
	8200 6175 8175 6175
Wire Wire Line
	8175 6175 8175 5775
Wire Wire Line
	8175 5775 8100 5775
Wire Wire Line
	8525 5775 8525 6050
Wire Wire Line
	8525 6050 8725 6050
Connection ~ 8525 6050
Wire Wire Line
	8525 6050 8525 6175
$Comp
L Escorni_Badge:Escorni_Touch CAP1
U 1 1 5D6540C6
P 8925 6050
F 0 "CAP1" H 9159 6103 60  0000 L CNN
F 1 "Escorni_Touch" H 9159 5997 60  0000 L CNN
F 2 "002:escorni-Touch_02_100mm" H 8850 6350 60  0001 C CNN
F 3 "" H 8925 6050 60  0000 C CNN
	1    8925 6050
	1    0    0    -1  
$EndComp
Connection ~ 8735 4810
$Comp
L Device:C C3
U 1 1 5D6867E5
P 9325 4960
F 0 "C3" H 9440 5006 50  0000 L CNN
F 1 "22nF" H 9440 4915 50  0000 L CNN
F 2 "002:C_1206_HandSoldering" H 9363 4810 50  0001 C CNN
F 3 "~" H 9325 4960 50  0001 C CNN
	1    9325 4960
	1    0    0    -1  
$EndComp
Connection ~ 9325 4810
Wire Wire Line
	9325 4810 9600 4810
Wire Wire Line
	8735 4810 9325 4810
Wire Wire Line
	3210 3625 3005 3625
Connection ~ 3210 3625
$Comp
L Device:C C1
U 1 1 5D6B6E95
P 7305 1525
F 0 "C1" H 7420 1571 50  0000 L CNN
F 1 "4.7uF" H 7420 1480 50  0000 L CNN
F 2 "002:C_1206_HandSoldering" H 7343 1375 50  0001 C CNN
F 3 "~" H 7305 1525 50  0001 C CNN
	1    7305 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1175 7305 1175
Wire Wire Line
	7305 1175 7305 1375
Connection ~ 7305 1175
Wire Wire Line
	7305 1175 7520 1175
Wire Wire Line
	8995 1085 8995 1175
$Comp
L power:GND #PWR03
U 1 1 5D6C9B45
P 8995 1775
F 0 "#PWR03" H 8995 1525 50  0001 C CNN
F 1 "GND" H 9000 1602 50  0000 C CNN
F 2 "" H 8995 1775 50  0001 C CNN
F 3 "" H 8995 1775 50  0001 C CNN
	1    8995 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	8995 1675 8995 1775
$Comp
L Device:C C2
U 1 1 5D6C9B50
P 8995 1525
F 0 "C2" H 9110 1571 50  0000 L CNN
F 1 "4.7uF" H 9110 1480 50  0000 L CNN
F 2 "002:C_1206_HandSoldering" H 9033 1375 50  0001 C CNN
F 3 "~" H 8995 1525 50  0001 C CNN
	1    8995 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	8995 1175 8995 1375
Connection ~ 8995 1175
$EndSCHEMATC
