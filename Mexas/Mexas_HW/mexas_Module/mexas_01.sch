EESchema Schematic File Version 4
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
L power:GND #PWR015
U 1 1 5BB89DC5
P 3535 3030
F 0 "#PWR015" H 3535 2780 50  0001 C CNN
F 1 "GND" H 3535 2880 50  0000 C CNN
F 2 "" H 3535 3030 50  0000 C CNN
F 3 "" H 3535 3030 50  0000 C CNN
	1    3535 3030
	1    0    0    -1  
$EndComp
Wire Wire Line
	3165 3030 3535 3030
Text Notes 8920 4050 0    89   ~ 18
SAO 1.69bis
Text Notes 2605 2735 0    89   ~ 18
SWD PORT
Text Notes 1395 740  0    89   ~ 18
POWER SOURCE
$Comp
L power:VCC #PWR0103
U 1 1 5BBD1622
P 740 1045
F 0 "#PWR0103" H 740 895 50  0001 C CNN
F 1 "VCC" H 757 1218 50  0000 C CNN
F 2 "" H 740 1045 50  0001 C CNN
F 3 "" H 740 1045 50  0001 C CNN
	1    740  1045
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5BBD1305
P 1880 2740
F 0 "#PWR0102" H 1880 2590 50  0001 C CNN
F 1 "VCC" H 1897 2913 50  0000 C CNN
F 2 "" H 1880 2740 50  0001 C CNN
F 3 "" H 1880 2740 50  0001 C CNN
	1    1880 2740
	1    0    0    -1  
$EndComp
Text Label 1350 3170 0    50   ~ 0
D-
Text Label 1350 3070 0    50   ~ 0
D+
NoConn ~ 1170 3270
Wire Wire Line
	1170 3170 1350 3170
Wire Wire Line
	1170 3070 1350 3070
Text Notes 725  2520 0    89   ~ 18
USB
Wire Wire Line
	2435 3030 2435 3000
Wire Wire Line
	2665 3030 2435 3030
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J2
U 1 1 5BB5EF14
P 2865 3030
F 0 "J2" H 2915 3247 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 2915 3156 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 2865 3030 50  0001 C CNN
F 3 "~" H 2865 3030 50  0001 C CNN
	1    2865 3030
	1    0    0    -1  
$EndComp
Text Label 3165 3130 0    50   ~ 0
SWCLK
Text Label 2665 3130 2    50   ~ 0
SWDIO
$Comp
L power:+3.3V #PWR016
U 1 1 5BB866B1
P 2435 3000
F 0 "#PWR016" H 2435 2850 50  0001 C CNN
F 1 "+3.3V" H 2450 3173 50  0000 C CNN
F 2 "" H 2435 3000 50  0001 C CNN
F 3 "" H 2435 3000 50  0001 C CNN
	1    2435 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2960 6895 2960 6955
Wire Wire Line
	2850 6895 2960 6895
$Comp
L power:GND #PWR08
U 1 1 5BB747B9
P 2960 6955
F 0 "#PWR08" H 2960 6705 50  0001 C CNN
F 1 "GND" H 2960 6805 50  0000 C CNN
F 2 "" H 2960 6955 50  0000 C CNN
F 3 "" H 2960 6955 50  0000 C CNN
	1    2960 6955
	1    0    0    -1  
$EndComp
Text Label 2450 6895 2    60   ~ 0
RESET
$Comp
L Switch:SW_DPST_x2 SW1
U 1 1 5BB741E9
P 2650 6895
F 0 "SW1" H 2650 7130 50  0000 C CNN
F 1 "SW_DPST_x2" H 2650 7039 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 2650 6895 50  0001 C CNN
F 3 "" H 2650 6895 50  0001 C CNN
F 4 "B3U-1000P-B" H 2650 6895 50  0001 C CNN "manf#"
	1    2650 6895
	1    0    0    -1  
$EndComp
Wire Wire Line
	2790 1185 2990 1185
Connection ~ 2790 1185
Wire Wire Line
	2790 1055 2790 1185
Wire Wire Line
	2990 1585 2990 1715
Connection ~ 2990 1585
Wire Wire Line
	2400 1585 2990 1585
Wire Wire Line
	2990 1435 2990 1585
Wire Wire Line
	2990 1185 2990 1235
Wire Wire Line
	2400 1185 2790 1185
$Comp
L power:GND #PWR010
U 1 1 5BB625C4
P 2990 1715
F 0 "#PWR010" H 2990 1465 50  0001 C CNN
F 1 "GND" H 2990 1565 50  0000 C CNN
F 2 "" H 2990 1715 50  0000 C CNN
F 3 "" H 2990 1715 50  0000 C CNN
	1    2990 1715
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5BB62453
P 2990 1335
F 0 "C2" H 3082 1381 50  0000 L CNN
F 1 "2.2uF" H 3082 1290 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2990 1335 50  0001 C CNN
F 3 "~" H 2990 1335 50  0001 C CNN
F 4 "885012106011" H 2990 1335 50  0001 C CNN "manf#"
	1    2990 1335
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 5BB62358
P 2790 1055
F 0 "#PWR09" H 2790 905 50  0001 C CNN
F 1 "+3.3V" H 2805 1228 50  0000 C CNN
F 2 "" H 2790 1055 50  0001 C CNN
F 3 "" H 2790 1055 50  0001 C CNN
	1    2790 1055
	1    0    0    -1  
$EndComp
Wire Wire Line
	1230 1185 1400 1185
Connection ~ 1230 1185
Wire Wire Line
	1230 1385 1230 1185
Wire Wire Line
	1400 1385 1230 1385
Wire Wire Line
	850  1185 1230 1185
Connection ~ 850  1185
Wire Wire Line
	850  1415 850  1185
Wire Wire Line
	850  1615 850  1745
$Comp
L power:GND #PWR07
U 1 1 5BB56CDD
P 850 1745
F 0 "#PWR07" H 850 1495 50  0001 C CNN
F 1 "GND" H 850 1595 50  0000 C CNN
F 2 "" H 850 1745 50  0000 C CNN
F 3 "" H 850 1745 50  0000 C CNN
	1    850  1745
	1    0    0    -1  
$EndComp
Wire Wire Line
	740  1185 850  1185
Wire Wire Line
	740  1045 740  1185
$Comp
L Bast-Pro-Mini-M0-rescue:AP2112K-3.3TRG1-Croketa-cache U1
U 1 1 5BB540C8
P 1900 1385
F 0 "U1" H 1900 1855 50  0000 C CNN
F 1 "AP2112K-3.3TRG1" H 1900 1764 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1900 1385 50  0001 L BNN
F 3 "AP2112K-3.3TRG1" H 1900 1385 50  0001 L BNN
F 4 "AP2112K-3.3TRG1" H 1900 1385 50  0001 C CNN "manf#"
	1    1900 1385
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5BB50FD7
P 850 1515
F 0 "C1" H 942 1561 50  0000 L CNN
F 1 "1uF" H 942 1470 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 850 1515 50  0001 C CNN
F 3 "~" H 850 1515 50  0001 C CNN
F 4 "885012106022" H 850 1515 50  0001 C CNN "manf#"
	1    850  1515
	1    0    0    -1  
$EndComp
Wire Wire Line
	1880 2870 1880 2740
Wire Wire Line
	1680 2870 1880 2870
Wire Wire Line
	1170 2870 1380 2870
$Comp
L Device:Polyfuse F1
U 1 1 5BB4BE5F
P 1530 2870
F 0 "F1" V 1305 2870 50  0000 C CNN
F 1 "500mA" V 1396 2870 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1580 2670 50  0001 L CNN
F 3 "~" H 1530 2870 50  0001 C CNN
F 4 "MFU0805FF00500P100" V 1530 2870 50  0001 C CNN "manf#"
	1    1530 2870
	0    1    1    0   
$EndComp
Connection ~ 820  3580
Wire Wire Line
	870  3580 820  3580
Wire Wire Line
	870  3470 870  3580
Wire Wire Line
	770  3580 820  3580
Wire Wire Line
	770  3470 770  3580
$Comp
L power:GND #PWR02
U 1 1 5BB475A7
P 820 3580
F 0 "#PWR02" H 820 3330 50  0001 C CNN
F 1 "GND" H 820 3430 50  0000 C CNN
F 2 "" H 820 3580 50  0000 C CNN
F 3 "" H 820 3580 50  0000 C CNN
	1    820  3580
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5BB47277
P 870 3070
F 0 "J1" H 925 3537 50  0000 C CNN
F 1 "USB_B_Micro" H 925 3446 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_629105150521" H 1020 3020 50  0001 C CNN
F 3 "~" H 1020 3020 50  0001 C CNN
F 4 "629105150521" H 870 3070 50  0001 C CNN "manf#"
	1    870  3070
	1    0    0    -1  
$EndComp
Text Label 1685 7400 3    50   ~ 0
LED
Wire Wire Line
	1065 7390 1065 7450
$Comp
L power:GND #PWR018
U 1 1 5BB3A8AB
P 1065 7450
F 0 "#PWR018" H 1065 7200 50  0001 C CNN
F 1 "GND" H 1065 7300 50  0000 C CNN
F 2 "" H 1065 7450 50  0000 C CNN
F 3 "" H 1065 7450 50  0000 C CNN
	1    1065 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1685 6510 1685 6670
Wire Wire Line
	1065 6500 1065 6670
$Comp
L power:+3.3V #PWR019
U 1 1 5BB2CAF8
P 1685 6510
F 0 "#PWR019" H 1685 6360 50  0001 C CNN
F 1 "+3.3V" H 1700 6683 50  0000 C CNN
F 2 "" H 1685 6510 50  0001 C CNN
F 3 "" H 1685 6510 50  0001 C CNN
	1    1685 6510
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR017
U 1 1 5BB2C9F6
P 1065 6500
F 0 "#PWR017" H 1065 6350 50  0001 C CNN
F 1 "+3.3V" H 1080 6673 50  0000 C CNN
F 2 "" H 1065 6500 50  0001 C CNN
F 3 "" H 1065 6500 50  0001 C CNN
	1    1065 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1065 6970 1065 7090
Wire Wire Line
	1685 6970 1685 7100
$Comp
L Device:R R2
U 1 1 5BB1D85A
P 1685 7250
F 0 "R2" H 1755 7296 50  0000 L CNN
F 1 "330" H 1755 7205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1615 7250 50  0001 C CNN
F 3 "~" H 1685 7250 50  0001 C CNN
F 4 "ESR03EZPJ331" H 1685 7250 50  0001 C CNN "manf#"
	1    1685 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5BB1D679
P 1065 7240
F 0 "R1" H 1135 7286 50  0000 L CNN
F 1 "330" H 1135 7195 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 995 7240 50  0001 C CNN
F 3 "~" H 1065 7240 50  0001 C CNN
F 4 "ESR03EZPJ331" H 1065 7240 50  0001 C CNN "manf#"
	1    1065 7240
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5BB1D525
P 1685 6820
F 0 "D2" V 1723 6703 50  0000 R CNN
F 1 "LED" V 1632 6703 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1685 6820 50  0001 C CNN
F 3 "~" H 1685 6820 50  0001 C CNN
F 4 "APT2012SGC" V 1685 6820 50  0001 C CNN "manf#"
	1    1685 6820
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5BB1D4DB
P 1065 6820
F 0 "D1" V 1103 6703 50  0000 R CNN
F 1 "POWER" V 1012 6703 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1065 6820 50  0001 C CNN
F 3 "~" H 1065 6820 50  0001 C CNN
F 4 "AP2012EC" V 1065 6820 50  0001 C CNN "manf#"
	1    1065 6820
	0    -1   -1   0   
$EndComp
$Comp
L badgelife_shitty_addon_v169bis:Badgelife_sao_connector_v169bis X?
U 1 1 5E51FA4C
P 9290 4610
F 0 "X?" V 8825 4610 50  0000 C CNN
F 1 "Badgelife_sao_connector_v169bis" V 8916 4610 50  0000 C CNN
F 2 "badgelife_sao_v169bis:Badgelife-SAOv169-BADGE-2x3" H 9290 4810 50  0001 C CNN
F 3 "" H 9290 4810 50  0001 C CNN
	1    9290 4610
	0    1    1    0   
$EndComp
Text Notes 4290 6900 0    89   ~ 18
PCB Art & Logos
$Comp
L 001-rescue:PCB-Reverse_mount_leds U5
U 1 1 5DA99272
P 4465 7625
F 0 "U5" H 4564 7671 50  0000 L CNN
F 1 "OSHW_Silk" H 4564 7580 50  0000 L CNN
F 2 "Symbol:OSHW-Logo2_9.8x8mm_SilkScreen" H 4465 7625 50  0001 C CNN
F 3 "" H 4465 7625 50  0001 C CNN
	1    4465 7625
	1    0    0    -1  
$EndComp
$Comp
L 001-rescue:PCB-Reverse_mount_leds U4
U 1 1 5DA98FA3
P 4990 7400
F 0 "U4" H 5089 7446 50  0000 L CNN
F 1 "Oshpark_Purple" H 5089 7355 50  0000 L CNN
F 2 "Moon_75mm_Gaviota:OSHpark-2-1800" H 4990 7400 50  0001 C CNN
F 3 "" H 4990 7400 50  0001 C CNN
	1    4990 7400
	1    0    0    -1  
$EndComp
$Comp
L 001-rescue:PCB-Reverse_mount_leds U3
U 1 1 5DA98B61
P 4990 7125
F 0 "U3" H 5089 7171 50  0000 L CNN
F 1 "Oshpark_logo" H 5089 7080 50  0000 L CNN
F 2 "Moon_75mm_Gaviota:OSHpark-1-1200" H 4990 7125 50  0001 C CNN
F 3 "" H 4990 7125 50  0001 C CNN
	1    4990 7125
	1    0    0    -1  
$EndComp
Text Notes 9425 790  0    89   ~ 18
Flags
Text Notes 480  4100 0    89   ~ 18
LIPO Battery
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5DA423B6
P 1035 4305
F 0 "J1" H 1115 4297 50  0000 L CNN
F 1 "Conn_01x02" H 1115 4206 50  0000 L CNN
F 2 "Moon_75mm_Gaviota:JST-S2B-PH-SM4-TB" H 1035 4305 50  0001 C CNN
F 3 "~" H 1035 4305 50  0001 C CNN
	1    1035 4305
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 5DA2BBA7
P 6870 4765
F 0 "D6" H 6970 4615 50  0000 C CNN
F 1 "LED" H 6720 4615 50  0000 C CNN
F 2 "Moon_75mm_Gaviota:SunLed_PLCC_Reverse-2" H 6870 4765 50  0001 C CNN
F 3 "~" H 6870 4765 50  0001 C CNN
	1    6870 4765
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5DA2C1E7
P 6445 4790
F 0 "D5" H 6545 4640 50  0000 C CNN
F 1 "LED" H 6295 4640 50  0000 C CNN
F 2 "Moon_75mm_Gaviota:SunLed_PLCC_Reverse-2" H 6445 4790 50  0001 C CNN
F 3 "~" H 6445 4790 50  0001 C CNN
	1    6445 4790
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5DA2B62C
P 5920 5065
F 0 "D4" H 6020 4915 50  0000 C CNN
F 1 "LED" H 5770 4915 50  0000 C CNN
F 2 "Moon_75mm_Gaviota:SunLed_PLCC_Reverse-2" H 5920 5065 50  0001 C CNN
F 3 "~" H 5920 5065 50  0001 C CNN
	1    5920 5065
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5DA2C9DE
P 5595 5065
F 0 "D3" H 5695 4915 50  0000 C CNN
F 1 "LED" H 5445 4915 50  0000 C CNN
F 2 "Moon_75mm_Gaviota:SunLed_PLCC_Reverse-2" H 5595 5065 50  0001 C CNN
F 3 "~" H 5595 5065 50  0001 C CNN
	1    5595 5065
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5DA2AE55
P 5145 4515
F 0 "D2" H 5245 4365 50  0000 C CNN
F 1 "LED" H 4995 4365 50  0000 C CNN
F 2 "Moon_75mm_Gaviota:SunLed_PLCC_Reverse-2" H 5145 4515 50  0001 C CNN
F 3 "~" H 5145 4515 50  0001 C CNN
	1    5145 4515
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5DA459D2
P 710 4405
F 0 "#PWR02" H 710 4155 50  0001 C CNN
F 1 "GND" H 715 4232 50  0000 C CNN
F 2 "" H 710 4405 50  0001 C CNN
F 3 "" H 710 4405 50  0001 C CNN
	1    710  4405
	1    0    0    -1  
$EndComp
Text Label 710  4305 2    50   ~ 0
VCC
Wire Wire Line
	835  4305 710  4305
Wire Wire Line
	835  4405 710  4405
$Comp
L 001-rescue:PCB-Reverse_mount_leds U1
U 1 1 5DA40039
P 4465 7125
F 0 "U1" H 4564 7171 50  0000 L CNN
F 1 "PCB" H 4564 7080 50  0000 L CNN
F 2 "Moon_75mm_Gaviota:Moon_6_Leds_75_2" H 4465 7125 50  0001 C CNN
F 3 "" H 4465 7125 50  0001 C CNN
	1    4465 7125
	1    0    0    -1  
$EndComp
Text Label 4320 5365 2    50   ~ 0
PB_4
Text Label 4320 4790 2    50   ~ 0
PB_1
Text Label 4320 4215 2    50   ~ 0
PB_0
$Comp
L 001-rescue:VIN-wickerlib #PWR01
U 1 1 5DA054F6
P 10050 1140
F 0 "#PWR01" H 10050 990 50  0001 C CNN
F 1 "VIN" H 10065 1313 50  0000 C CNN
F 2 "" H 10050 1140 50  0000 C CNN
F 3 "" H 10050 1140 50  0000 C CNN
	1    10050 1140
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1265 10050 1140
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5DA04141
P 10050 1265
F 0 "#FLG03" H 10050 1340 50  0001 C CNN
F 1 "PWR_FLAG" H 10050 1438 50  0000 C CNN
F 2 "" H 10050 1265 50  0001 C CNN
F 3 "~" H 10050 1265 50  0001 C CNN
	1    10050 1265
	-1   0    0    1   
$EndComp
Wire Wire Line
	6870 4215 6870 4615
Wire Wire Line
	6445 4215 6445 4640
Wire Wire Line
	4795 4215 4795 4365
Wire Wire Line
	5145 4215 5145 4365
Wire Wire Line
	5145 4665 5145 4790
Wire Wire Line
	4795 4665 4795 4790
Wire Wire Line
	6445 4215 6870 4215
Connection ~ 6445 4215
Connection ~ 5145 4215
Wire Wire Line
	5145 4215 6445 4215
Connection ~ 5920 5365
Wire Wire Line
	5920 5365 6445 5365
Wire Wire Line
	6445 5365 6870 5365
Connection ~ 6445 5365
Wire Wire Line
	6445 4940 6445 5365
Wire Wire Line
	6870 5365 6870 4915
Connection ~ 5595 5365
Wire Wire Line
	5920 5365 5595 5365
Wire Wire Line
	5920 5215 5920 5365
Wire Wire Line
	4320 5365 5595 5365
Wire Wire Line
	5595 5215 5595 5365
Connection ~ 5595 4790
Wire Wire Line
	5920 4790 5595 4790
Wire Wire Line
	5920 4915 5920 4790
Connection ~ 5145 4790
Wire Wire Line
	5595 4790 5145 4790
Wire Wire Line
	5595 4915 5595 4790
Wire Wire Line
	4795 4790 5145 4790
Connection ~ 4795 4790
Wire Wire Line
	4320 4790 4795 4790
Wire Wire Line
	4795 4215 5145 4215
Connection ~ 4795 4215
Wire Wire Line
	4320 4215 4795 4215
$Comp
L 001-rescue:PCB-Reverse_mount_leds U2
U 1 1 5D927C25
P 4465 7375
F 0 "U2" H 4564 7421 50  0000 L CNN
F 1 "Firma" H 4564 7330 50  0000 L CNN
F 2 "Moon_75mm_Gaviota:firma_Cu_Mask" H 4465 7375 50  0001 C CNN
F 3 "" H 4465 7375 50  0001 C CNN
	1    4465 7375
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5D91B027
P 9625 1140
F 0 "#PWR09" H 9625 990 50  0001 C CNN
F 1 "VCC" H 9642 1313 50  0000 C CNN
F 2 "" H 9625 1140 50  0001 C CNN
F 3 "" H 9625 1140 50  0001 C CNN
	1    9625 1140
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D6B6DFF
P 4795 4515
F 0 "D1" H 4895 4365 50  0000 C CNN
F 1 "LED" H 4645 4365 50  0000 C CNN
F 2 "Moon_75mm_Gaviota:SunLed_PLCC_Reverse-2" H 4795 4515 50  0001 C CNN
F 3 "~" H 4795 4515 50  0001 C CNN
	1    4795 4515
	0    1    1    0   
$EndComp
Text Notes 5070 3990 0    89   ~ 18
Charlie Plexing
Wire Wire Line
	9625 1265 9625 1140
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D932C92
P 9625 1265
F 0 "#FLG02" H 9625 1340 50  0001 C CNN
F 1 "PWR_FLAG" H 9625 1438 50  0000 C CNN
F 2 "" H 9625 1265 50  0001 C CNN
F 3 "~" H 9625 1265 50  0001 C CNN
	1    9625 1265
	-1   0    0    1   
$EndComp
Wire Wire Line
	9225 1140 9225 1265
$Comp
L power:GND #PWR04
U 1 1 5D930D3A
P 9225 1265
F 0 "#PWR04" H 9225 1015 50  0001 C CNN
F 1 "GND" H 9230 1092 50  0000 C CNN
F 2 "" H 9225 1265 50  0001 C CNN
F 3 "" H 9225 1265 50  0001 C CNN
	1    9225 1265
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D92F7A7
P 9225 1140
F 0 "#FLG01" H 9225 1215 50  0001 C CNN
F 1 "PWR_FLAG" H 9225 1313 50  0000 C CNN
F 2 "" H 9225 1140 50  0001 C CNN
F 3 "~" H 9225 1140 50  0001 C CNN
	1    9225 1140
	1    0    0    -1  
$EndComp
Wire Wire Line
	6525 1675 6650 1675
Wire Wire Line
	6525 1575 6650 1575
Text Notes 4945 945  0    89   ~ 18
nrf52840 Module
Wire Wire Line
	6525 1875 6650 1875
Wire Wire Line
	6525 1975 6650 1975
Wire Wire Line
	6525 2075 6650 2075
Wire Wire Line
	6525 2175 6650 2175
Wire Wire Line
	6525 2275 6650 2275
Wire Wire Line
	6525 2375 6650 2375
Wire Wire Line
	6525 2475 6650 2475
Wire Wire Line
	7975 2775 7850 2775
Wire Wire Line
	7975 2575 7850 2575
Wire Wire Line
	7975 2475 7850 2475
Wire Wire Line
	7975 2375 7850 2375
Wire Wire Line
	7975 2275 7850 2275
Wire Wire Line
	7975 2175 7850 2175
Wire Wire Line
	7975 2075 7850 2075
Wire Wire Line
	7975 1975 7850 1975
Wire Wire Line
	7975 1875 7850 1875
Wire Wire Line
	7975 1375 7850 1375
Wire Wire Line
	7975 1575 7850 1575
$Comp
L NRF52840-DONGLE:NRF52840-DONGLE U?
U 1 1 5E76B4E8
P 7250 2075
F 0 "U?" H 7250 3040 50  0000 C CNN
F 1 "NRF52840-DONGLE" H 7250 2949 50  0000 C CNN
F 2 "MODULE_NRF52840-DONGLE" H 7250 2075 50  0001 L BNN
F 3 "N/A" H 7250 2075 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 7250 2075 50  0001 L BNN "Field4"
F 5 "1.1" H 7250 2075 50  0001 L BNN "Field5"
F 6 "Nordic semiconductor" H 7250 2075 50  0001 L BNN "Field6"
	1    7250 2075
	1    0    0    -1  
$EndComp
$EndSCHEMATC
