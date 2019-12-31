EESchema Schematic File Version 4
LIBS:Tiny-cache
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
Wire Wire Line
	5005 3770 4805 3770
Text Label 4805 3770 2    70   ~ 0
T1
Wire Wire Line
	8965 4190 8665 4190
Text Label 8665 4190 2    70   ~ 0
T1
Wire Wire Line
	5005 3670 4805 3670
Text Label 4805 3670 2    70   ~ 0
T0
Wire Wire Line
	8965 4090 8665 4090
Text Label 8665 4090 2    70   ~ 0
T0
Text Label 4805 3870 2    70   ~ 0
T2
Wire Wire Line
	8965 4290 8665 4290
Text Label 8665 4290 2    70   ~ 0
T2
Wire Wire Line
	5005 3970 4805 3970
Text Label 4805 3970 2    70   ~ 0
T3
Wire Wire Line
	5005 4070 4805 4070
Text Label 4805 4070 2    70   ~ 0
T4
Wire Wire Line
	8965 3790 8665 3790
Wire Wire Line
	8965 3990 8665 3990
Text Label 8665 3990 2    70   ~ 0
RST
Wire Wire Line
	5005 4170 4805 4170
Text Label 4805 4170 2    70   ~ 0
RST
$Comp
L Tiny-eagle-import:PINHD-1X6 JP5
U 1 1 6716FC81
P 9065 4090
F 0 "JP5" H 8815 4515 59  0000 L BNN
F 1 "PINHD-1X6" H 8815 3690 59  0000 L BNN
F 2 "Cody_Coin:PogoPinSocket_2x03_P2.54mm" H 9065 4090 50  0001 C CNN
F 3 "" H 9065 4090 50  0001 C CNN
	1    9065 4090
	1    0    0    -1  
$EndComp
Text Notes 8565 4690 0    59   ~ 0
Programing Header
$Comp
L Switch:SW_Push SW1
U 1 1 5D559AEE
P 4405 3870
F 0 "SW1" H 4405 4155 50  0000 C CNN
F 1 "SW_Push" H 4405 4064 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P" H 4405 4070 50  0001 C CNN
F 3 "~" H 4405 4070 50  0001 C CNN
	1    4405 3870
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D591996
P 4105 4170
F 0 "R1" H 4175 4216 50  0000 L CNN
F 1 "R" H 4175 4125 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4035 4170 50  0001 C CNN
F 3 "~" H 4105 4170 50  0001 C CNN
	1    4105 4170
	1    0    0    -1  
$EndComp
Wire Wire Line
	4105 3870 4105 4020
Wire Wire Line
	1260 4615 1360 4615
Wire Wire Line
	660  4615 660  4915
Wire Wire Line
	660  4915 1560 4915
Wire Wire Line
	660  4915 660  5015
Text Label 660  5015 2    70   ~ 0
T4
Text Notes 560  5215 0    59   ~ 0
LED Connection header
Connection ~ 660  4915
Connection ~ 660  4615
$Comp
L Device:LED_Small_ALT D1
U 1 1 5D5B9C0F
P 1060 3515
F 0 "D1" H 1135 3465 39  0000 C CNN
F 1 "LED_Small_ALT" H 1060 3401 50  0001 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1060 3515 50  0001 C CNN
F 3 "~" V 1060 3515 50  0001 C CNN
	1    1060 3515
	-1   0    0    1   
$EndComp
Text Notes 1210 3265 0    157  ~ 0
-
Text Notes 860  3265 0    157  ~ 0
+
Connection ~ 1560 4515
Connection ~ 1560 4315
Connection ~ 1560 3715
Connection ~ 1560 3515
Connection ~ 660  4415
Connection ~ 660  3815
Connection ~ 660  3615
Connection ~ 660  3315
Wire Wire Line
	1560 4315 1560 4115
Wire Wire Line
	1560 4515 1560 4315
Wire Wire Line
	1560 4915 1560 4515
Wire Wire Line
	660  4415 660  4615
Wire Wire Line
	660  4415 660  4215
Text Label 660  3215 2    70   ~ 0
T3
Wire Wire Line
	1560 3715 1560 3915
Wire Wire Line
	1560 3515 1560 3715
Wire Wire Line
	1560 3315 1560 3515
Wire Wire Line
	660  3315 1560 3315
Wire Wire Line
	660  3215 660  3315
Wire Wire Line
	660  3615 660  3315
Wire Wire Line
	660  3815 660  3615
Wire Wire Line
	660  4015 660  3815
Text Label 860  3515 2    70   ~ 0
T2
Wire Wire Line
	960  3515 860  3515
Text Label 1360 3615 0    70   ~ 0
T2
Wire Wire Line
	1260 3615 1360 3615
Text Label 860  4115 2    70   ~ 0
T2
Wire Wire Line
	960  4115 860  4115
Text Label 1360 4215 0    70   ~ 0
T2
Wire Wire Line
	1260 4215 1360 4215
Text Label 1360 4015 0    70   ~ 0
T0
Wire Wire Line
	1260 4015 1360 4015
Text Label 860  3915 2    70   ~ 0
T0
Wire Wire Line
	960  3915 860  3915
Text Label 860  4515 2    70   ~ 0
T0
Wire Wire Line
	960  4515 860  4515
Text Label 1360 4615 0    70   ~ 0
T0
Text Label 1360 3815 0    70   ~ 0
T1
Wire Wire Line
	1260 3815 1360 3815
Text Label 860  3715 2    70   ~ 0
T1
Wire Wire Line
	960  3715 860  3715
Text Label 860  4315 2    70   ~ 0
T1
Wire Wire Line
	960  4315 860  4315
Text Label 1360 4415 0    70   ~ 0
T1
Wire Wire Line
	1260 4415 1360 4415
$Comp
L Device:LED_Small_ALT D2
U 1 1 5D5CC153
P 1160 3615
F 0 "D2" H 1085 3565 39  0000 C CNN
F 1 "LED_Small_ALT" H 1160 3501 50  0001 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1160 3615 50  0001 C CNN
F 3 "~" V 1160 3615 50  0001 C CNN
	1    1160 3615
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small_ALT D3
U 1 1 5D5CCA2F
P 1060 3715
F 0 "D3" H 1135 3665 39  0000 C CNN
F 1 "LED_Small_ALT" H 1060 3601 50  0001 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1060 3715 50  0001 C CNN
F 3 "~" V 1060 3715 50  0001 C CNN
	1    1060 3715
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small_ALT D4
U 1 1 5D5CD0E2
P 1160 3815
F 0 "D4" H 1085 3765 39  0000 C CNN
F 1 "LED_Small_ALT" H 1160 3701 50  0001 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1160 3815 50  0001 C CNN
F 3 "~" V 1160 3815 50  0001 C CNN
	1    1160 3815
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small_ALT D6
U 1 1 5D5CEF8F
P 1160 4015
F 0 "D6" H 1085 3965 39  0000 C CNN
F 1 "LED_Small_ALT" H 1160 3901 50  0001 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1160 4015 50  0001 C CNN
F 3 "~" V 1160 4015 50  0001 C CNN
	1    1160 4015
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small_ALT D8
U 1 1 5D5CF52F
P 1160 4215
F 0 "D8" H 1085 4165 39  0000 C CNN
F 1 "LED_Small_ALT" H 1160 4101 50  0001 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1160 4215 50  0001 C CNN
F 3 "~" V 1160 4215 50  0001 C CNN
	1    1160 4215
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small_ALT D10
U 1 1 5D5D050B
P 1160 4415
F 0 "D10" H 1085 4365 39  0000 C CNN
F 1 "LED_Small_ALT" H 1160 4301 50  0001 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1160 4415 50  0001 C CNN
F 3 "~" V 1160 4415 50  0001 C CNN
	1    1160 4415
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small_ALT D12
U 1 1 5D5D0AA2
P 1160 4615
F 0 "D12" H 1085 4565 39  0000 C CNN
F 1 "LED_Small_ALT" H 1160 4501 50  0001 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1160 4615 50  0001 C CNN
F 3 "~" V 1160 4615 50  0001 C CNN
	1    1160 4615
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small_ALT D5
U 1 1 5D5D12FE
P 1060 3915
F 0 "D5" H 1135 3865 39  0000 C CNN
F 1 "LED_Small_ALT" H 1060 3801 50  0001 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1060 3915 50  0001 C CNN
F 3 "~" V 1060 3915 50  0001 C CNN
	1    1060 3915
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small_ALT D7
U 1 1 5D5D1BA2
P 1060 4115
F 0 "D7" H 1135 4065 39  0000 C CNN
F 1 "LED_Small_ALT" H 1060 4001 50  0001 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1060 4115 50  0001 C CNN
F 3 "~" V 1060 4115 50  0001 C CNN
	1    1060 4115
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small_ALT D9
U 1 1 5D5D2AFF
P 1060 4315
F 0 "D9" H 1135 4265 39  0000 C CNN
F 1 "LED_Small_ALT" H 1060 4201 50  0001 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1060 4315 50  0001 C CNN
F 3 "~" V 1060 4315 50  0001 C CNN
	1    1060 4315
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small_ALT D11
U 1 1 5D5D2FCB
P 1060 4515
F 0 "D11" H 1135 4465 39  0000 C CNN
F 1 "LED_Small_ALT" H 1060 4401 50  0001 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1060 4515 50  0001 C CNN
F 3 "~" V 1060 4515 50  0001 C CNN
	1    1060 4515
	-1   0    0    1   
$EndComp
Wire Wire Line
	1160 3515 1560 3515
Wire Wire Line
	660  3615 1060 3615
Wire Wire Line
	1160 3715 1560 3715
Wire Wire Line
	660  3815 1060 3815
Wire Wire Line
	1160 3915 1560 3915
Wire Wire Line
	660  4015 1060 4015
Wire Wire Line
	1160 4115 1560 4115
Wire Wire Line
	660  4215 1060 4215
Wire Wire Line
	1160 4315 1560 4315
Wire Wire Line
	660  4415 1060 4415
Wire Wire Line
	1160 4515 1560 4515
Wire Wire Line
	660  4615 1060 4615
$Comp
L power:GND #PWR04
U 1 1 5D623E4E
P 8365 3890
F 0 "#PWR04" H 8365 3640 50  0001 C CNN
F 1 "GND" H 8370 3717 50  0000 C CNN
F 2 "" H 8365 3890 50  0001 C CNN
F 3 "" H 8365 3890 50  0001 C CNN
	1    8365 3890
	1    0    0    -1  
$EndComp
Wire Wire Line
	8665 3790 8665 3665
Wire Wire Line
	8965 3890 8365 3890
$Comp
L power:GND #PWR06
U 1 1 5D6470C1
P 4780 4645
F 0 "#PWR06" H 4780 4395 50  0001 C CNN
F 1 "GND" H 4785 4472 50  0000 C CNN
F 2 "" H 4780 4645 50  0001 C CNN
F 3 "" H 4780 4645 50  0001 C CNN
	1    4780 4645
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20SU U1
U 1 1 5D65357C
P 5605 3970
F 0 "U1" H 5075 4016 50  0000 R CNN
F 1 "ATtiny85-20SU" H 5075 3925 50  0000 R CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 5605 3970 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 5605 3970 50  0001 C CNN
	1    5605 3970
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5605 4570 5605 4645
Wire Wire Line
	5605 4645 4780 4645
Wire Wire Line
	4105 4320 4105 4645
Connection ~ 4780 4645
Wire Wire Line
	4780 4645 4105 4645
Wire Wire Line
	4105 3870 4205 3870
Wire Wire Line
	4605 3870 5005 3870
Text Notes 1210 4840 0    157  ~ 0
-
Text Notes 860  4840 0    157  ~ 0
+
$Comp
L Codi_Coin:Codi_Coin U2
U 1 1 5D59D132
P 9930 1200
F 0 "U2" H 10086 1246 50  0000 L CNN
F 1 "Codi_Coin" H 10086 1155 50  0000 L CNN
F 2 "Cody_Coin:Cody_Coin" H 9930 1200 50  0001 C CNN
F 3 "" H 9930 1200 50  0001 C CNN
	1    9930 1200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5D5B4112
P 10730 1195
F 0 "H1" H 10830 1241 50  0000 L CNN
F 1 "MountingHole" H 10830 1150 50  0000 L CNN
F 2 "Tiny:MountingHole_Codi_Coin" H 10730 1195 50  0001 C CNN
F 3 "~" H 10730 1195 50  0001 C CNN
	1    10730 1195
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5959B226
P 11050 650
F 0 "#PWR011" H 11050 400 50  0001 C CNN
F 1 "GND" H 11055 477 50  0000 C CNN
F 2 "" H 11050 650 50  0001 C CNN
F 3 "" H 11050 650 50  0001 C CNN
	1    11050 650 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5959B39B
P 11050 550
F 0 "#FLG03" H 11050 625 50  0001 C CNN
F 1 "PWR_FLAG" H 11050 724 50  0000 C CNN
F 2 "" H 11050 550 50  0001 C CNN
F 3 "" H 11050 550 50  0001 C CNN
	1    11050 550 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5961C5A4
P 5820 1000
F 0 "#PWR012" H 5820 750 50  0001 C CNN
F 1 "GND" H 5825 827 50  0000 C CNN
F 2 "" H 5820 1000 50  0001 C CNN
F 3 "" H 5820 1000 50  0001 C CNN
	1    5820 1000
	1    0    0    -1  
$EndComp
Text GLabel 5820 900  2    50   Input ~ 0
VBAT
Text GLabel 980  645  1    50   Input ~ 0
VCC
Text GLabel 10625 575  1    50   Input ~ 0
GND
$Comp
L Tiny-rescue:CONN_01X02-001-rescue J2
U 1 1 5961A222
P 5620 950
F 0 "J2" H 5620 1225 50  0000 C CNN
F 1 "CONN_01X02" H 5795 1125 50  0000 C CNN
F 2 "Connector_JST:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 5620 950 50  0001 C CNN
F 3 "" H 5620 950 50  0001 C CNN
	1    5620 950 
	-1   0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 59624869
P 10350 650
F 0 "#FLG04" H 10350 725 50  0001 C CNN
F 1 "PWR_FLAG" H 10350 823 50  0000 C CNN
F 2 "" H 10350 650 50  0001 C CNN
F 3 "" H 10350 650 50  0001 C CNN
	1    10350 650 
	-1   0    0    1   
$EndComp
Text GLabel 1155 645  1    50   Input ~ 0
VBAT
$Comp
L wickerlib:DIODE-SCHOTTKY-40V-1A-MBRA140-SMA D13
U 1 1 598120B7
P 1155 820
F 0 "D13" H 1087 820 50  0000 R CNN
F 1 "MBRA140" H 1087 865 50  0001 R CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 1155 470 50  0001 C CIN
F 3 "http://www.vishay.com/docs/94301/vs-mbra140trpbf.pdf" V 1155 820 10  0001 C CNN
F 4 "DIODE SCHOTTKY 40V 1A MBRA140 SMA" H 1155 470 50  0001 C CIN "Description"
F 5 "Vishay" H 1155 470 50  0001 C CIN "MF_Name"
F 6 "VS-MBRA140TRPBF" H 1155 470 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 1155 470 50  0001 C CIN "S1_Name"
F 8 "VS-MBRA140TRPBFCT-ND" H 1155 470 50  0001 C CIN "S1_PN"
	1    1155 820 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 59820FE1
P 3000 1470
F 0 "#PWR08" H 3000 1220 50  0001 C CNN
F 1 "GND" H 3005 1297 50  0000 C CNN
F 2 "" H 3000 1470 50  0001 C CNN
F 3 "" H 3000 1470 50  0001 C CNN
	1    3000 1470
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 598213B8
P 2265 1520
F 0 "#PWR09" H 2265 1270 50  0001 C CNN
F 1 "GND" H 2270 1347 50  0000 C CNN
F 2 "" H 2265 1520 50  0001 C CNN
F 3 "" H 2265 1520 50  0001 C CNN
	1    2265 1520
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5982188B
P 3955 1540
F 0 "#PWR010" H 3955 1290 50  0001 C CNN
F 1 "GND" H 3960 1367 50  0000 C CNN
F 2 "" H 3955 1540 50  0001 C CNN
F 3 "" H 3955 1540 50  0001 C CNN
	1    3955 1540
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 550  11050 625 
Wire Wire Line
	10350 525  10350 650 
Wire Wire Line
	10625 575  10625 625 
Wire Wire Line
	10625 625  11050 625 
Connection ~ 11050 625 
Wire Wire Line
	980  920  1155 920 
Wire Wire Line
	980  645  980  920 
Wire Wire Line
	1155 645  1155 720 
Connection ~ 1155 920 
Wire Wire Line
	2265 1420 2265 1520
Wire Wire Line
	3955 1440 3955 1540
Text Notes 2685 495  0    50   ~ 0
POWER & FILTERING
$Comp
L Tiny-rescue:LM7805_TO220-001-rescue U3
U 1 1 5A88EF0C
P 3000 1020
F 0 "U3" H 3000 1265 50  0000 C CNN
F 1 "LM340MP-5.0/NOPB" H 2630 1165 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3000 1245 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm340.pdf" H 3000 970 50  0001 C CNN
	1    3000 1020
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1320 3000 1470
Text GLabel 10350 525  1    50   Input ~ 0
VCC
$Comp
L Tiny-rescue:CONN_01X02-001-rescue J1
U 1 1 5A89FE6F
P 430 855
F 0 "J1" H 430 1005 50  0000 C CNN
F 1 "CONN_01X02" V 530 855 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical_SMD_Pin1Left" H 430 855 50  0001 C CNN
F 3 "" H 430 855 50  0001 C CNN
	1    430  855 
	0    1    1    0   
$EndComp
Text GLabel 380  655  1    50   Input ~ 0
VCC
Text GLabel 480  655  1    50   Input ~ 0
GND
Text GLabel 4475 1020 2    50   Input ~ 0
+5V
Wire Wire Line
	11050 625  11050 650 
$Comp
L Device:C C2
U 1 1 5D5D8468
P 3955 1290
F 0 "C2" H 4070 1336 50  0000 L CNN
F 1 "4.7uF" H 4070 1245 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3993 1140 50  0001 C CNN
F 3 "~" H 3955 1290 50  0001 C CNN
	1    3955 1290
	1    0    0    -1  
$EndComp
Wire Wire Line
	3955 1020 3955 1140
Connection ~ 3955 1020
$Comp
L Device:C C1
U 1 1 5D5E8205
P 2265 1270
F 0 "C1" H 2380 1316 50  0000 L CNN
F 1 "4.7uF" H 2380 1225 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2303 1120 50  0001 C CNN
F 3 "~" H 2265 1270 50  0001 C CNN
	1    2265 1270
	1    0    0    -1  
$EndComp
Wire Wire Line
	1155 920  1685 920 
Wire Wire Line
	2265 1120 2265 1020
Wire Wire Line
	2265 1020 2495 1020
Wire Wire Line
	5605 3370 5605 3310
$Comp
L Switch:SW_Push_SPDT SW2
U 1 1 5D573F77
P 1885 920
F 0 "SW2" H 1885 1205 50  0000 C CNN
F 1 "SW_Push_SPDT" H 1885 670 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 1885 920 50  0001 C CNN
F 3 "~" H 1885 920 50  0001 C CNN
	1    1885 920 
	1    0    0    1   
$EndComp
Wire Wire Line
	3955 1020 4475 1020
Text GLabel 5605 3310 1    50   Input ~ 0
+5V
Text GLabel 8665 3665 1    50   Input ~ 0
VCC
Wire Wire Line
	2265 1020 2085 1020
Connection ~ 2265 1020
NoConn ~ 2085 820 
Wire Wire Line
	3300 1020 3955 1020
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D776856
P 2495 875
F 0 "#FLG0101" H 2495 950 50  0001 C CNN
F 1 "PWR_FLAG" H 2495 1048 50  0000 C CNN
F 2 "" H 2495 875 50  0001 C CNN
F 3 "~" H 2495 875 50  0001 C CNN
	1    2495 875 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2495 875  2495 1020
Connection ~ 2495 1020
Wire Wire Line
	2495 1020 2700 1020
$EndSCHEMATC
