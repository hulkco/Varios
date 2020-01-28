EESchema Schematic File Version 4
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
L power:GND #PWR04
U 1 1 5D55BEDE
P 2150 2350
F 0 "#PWR04" H 2150 2100 50  0001 C CNN
F 1 "GND" H 2150 2200 50  0000 C CNN
F 2 "" H 2150 2350 50  0001 C CNN
F 3 "" H 2150 2350 50  0001 C CNN
	1    2150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1700 2500 1700
Wire Wire Line
	2500 1700 2500 1650
$Comp
L power:VBUS #PWR012
U 1 1 5D55C5F0
P 2500 1650
F 0 "#PWR012" H 2500 1500 50  0001 C CNN
F 1 "VBUS" H 2500 1800 50  0000 C CNN
F 2 "" H 2500 1650 50  0001 C CNN
F 3 "" H 2500 1650 50  0001 C CNN
	1    2500 1650
	1    0    0    -1  
$EndComp
Text Label 2500 2000 0    50   ~ 0
USB_D-
Text Label 2500 1900 0    50   ~ 0
USB_D+
$Comp
L Regulator_Linear:MCP1700-3302E_SOT23 U2
U 1 1 5D56FC32
P 2350 3400
F 0 "U2" H 2550 3525 50  0000 R CNN
F 1 "MCP1700-3302E_SOT23" H 2350 3551 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 3625 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001826D.pdf" H 2350 3400 50  0001 C CNN
	1    2350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3400 2700 3400
Wire Wire Line
	2700 3400 2700 3100
Wire Wire Line
	2050 3400 2000 3400
Wire Wire Line
	2000 3400 2000 3100
Wire Wire Line
	2350 3700 2350 3750
$Comp
L power:GND #PWR09
U 1 1 5D5710CF
P 2350 3750
F 0 "#PWR09" H 2350 3500 50  0001 C CNN
F 1 "GND" H 2350 3600 50  0000 C CNN
F 2 "" H 2350 3750 50  0001 C CNN
F 3 "" H 2350 3750 50  0001 C CNN
	1    2350 3750
	1    0    0    -1  
$EndComp
Connection ~ 2000 3400
$Comp
L Device:D_Schottky_Small D1
U 1 1 5D571794
P 1600 3250
F 0 "D1" V 1600 3200 50  0000 R CNN
F 1 "D_Schottky_Small" H 1600 3364 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" V 1600 3250 50  0001 C CNN
F 3 "~" V 1600 3250 50  0001 C CNN
	1    1600 3250
	0    1    -1   0   
$EndComp
$Comp
L Device:D_Schottky_Small D2
U 1 1 5D572C79
P 1800 3250
F 0 "D2" V 1800 3318 50  0000 L CNN
F 1 "D_Schottky_Small" H 1800 3364 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" V 1800 3250 50  0001 C CNN
F 3 "~" V 1800 3250 50  0001 C CNN
	1    1800 3250
	0    1    -1   0   
$EndComp
Wire Wire Line
	1800 3150 1800 3100
Wire Wire Line
	1600 3150 1600 3100
Wire Wire Line
	1800 3350 1800 3400
Wire Wire Line
	1800 3400 2000 3400
$Comp
L power:VBUS #PWR02
U 1 1 5D576616
P 1600 3100
F 0 "#PWR02" H 1600 2950 50  0001 C CNN
F 1 "VBUS" H 1600 3250 50  0000 C CNN
F 2 "" H 1600 3100 50  0001 C CNN
F 3 "" H 1600 3100 50  0001 C CNN
	1    1600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3400 2000 3450
$Comp
L power:+3.3V #PWR011
U 1 1 5D57BCD6
P 2700 3100
F 0 "#PWR011" H 2700 2950 50  0001 C CNN
F 1 "+3.3V" H 2715 3273 50  0000 C CNN
F 2 "" H 2700 3100 50  0001 C CNN
F 3 "" H 2700 3100 50  0001 C CNN
	1    2700 3100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5D580D9E
P 5050 3650
F 0 "SW1" H 5050 3550 50  0000 C CNN
F 1 "SW_RESET" H 5050 3794 50  0001 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P" H 5050 3650 50  0001 C CNN
F 3 "~" H 5050 3650 50  0001 C CNN
	1    5050 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3650 4800 3650
Wire Wire Line
	4800 3650 4800 3700
$Comp
L power:GND #PWR018
U 1 1 5D581A2E
P 4800 3700
F 0 "#PWR018" H 4800 3450 50  0001 C CNN
F 1 "GND" H 4805 3527 50  0000 C CNN
F 2 "" H 4800 3700 50  0001 C CNN
F 3 "" H 4800 3700 50  0001 C CNN
	1    4800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4200 5250 4200
Wire Wire Line
	5250 4200 5250 4250
$Comp
L power:GND #PWR021
U 1 1 5D5927A1
P 5250 4250
F 0 "#PWR021" H 5250 4000 50  0001 C CNN
F 1 "GND" H 5250 4100 50  0000 C CNN
F 2 "" H 5250 4250 50  0001 C CNN
F 3 "" H 5250 4250 50  0001 C CNN
	1    5250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2100 5250 2100
Wire Wire Line
	5250 2100 5250 2050
Wire Wire Line
	5300 2200 5250 2200
Wire Wire Line
	5250 2200 5250 2100
Connection ~ 5250 2100
Wire Wire Line
	5300 2400 5050 2400
Wire Wire Line
	5300 3050 5250 3050
Wire Wire Line
	5300 3150 5200 3150
Wire Wire Line
	6300 2100 6350 2100
Wire Wire Line
	6300 2200 6350 2200
Wire Wire Line
	6300 2300 6350 2300
Wire Wire Line
	6300 2400 6350 2400
Wire Wire Line
	6300 2500 6350 2500
Wire Wire Line
	6300 2600 6350 2600
Wire Wire Line
	6300 2700 6350 2700
Wire Wire Line
	6300 2800 6350 2800
Wire Wire Line
	6300 2900 6350 2900
Wire Wire Line
	6300 3000 6350 3000
Wire Wire Line
	6300 3100 6350 3100
Wire Wire Line
	6300 3200 6350 3200
Wire Wire Line
	6300 3300 6350 3300
Wire Wire Line
	6300 3400 6350 3400
Wire Wire Line
	6300 3500 6350 3500
Wire Wire Line
	6300 3600 6350 3600
Wire Wire Line
	6300 3700 6350 3700
Wire Wire Line
	6300 3800 6350 3800
Wire Wire Line
	6300 3900 6350 3900
Wire Wire Line
	6300 4000 6350 4000
Wire Wire Line
	6300 4100 6350 4100
Wire Wire Line
	6300 4200 6350 4200
$Comp
L Device:R_Small R6
U 1 1 5D59BBAF
P 5250 2900
F 0 "R6" H 5191 2854 50  0000 R CNN
F 1 "1K" H 5191 2945 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5250 2900 50  0001 C CNN
F 3 "~" H 5250 2900 50  0001 C CNN
	1    5250 2900
	1    0    0    1   
$EndComp
Wire Wire Line
	5250 3050 5250 3000
Connection ~ 5250 3050
Wire Wire Line
	5250 3050 5200 3050
Wire Wire Line
	5250 2800 5250 2750
$Comp
L power:+3.3V #PWR020
U 1 1 5D59E626
P 5250 2750
F 0 "#PWR020" H 5250 2600 50  0001 C CNN
F 1 "+3.3V" H 5250 2900 50  0000 C CNN
F 2 "" H 5250 2750 50  0001 C CNN
F 3 "" H 5250 2750 50  0001 C CNN
	1    5250 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5D59E7A6
P 5250 2050
F 0 "#PWR019" H 5250 1900 50  0001 C CNN
F 1 "+3.3V" H 5250 2200 50  0000 C CNN
F 2 "" H 5250 2050 50  0001 C CNN
F 3 "" H 5250 2050 50  0001 C CNN
	1    5250 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5D5A0661
P 5200 3050
F 0 "TP1" V 5200 3250 50  0000 L CNN
F 1 "TP_SWCLK" V 5304 3122 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5400 3050 50  0001 C CNN
F 3 "~" H 5400 3050 50  0001 C CNN
	1    5200 3050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5D5A1C0C
P 5200 3150
F 0 "TP2" V 5200 3350 50  0000 L CNN
F 1 "TP_SWDIO" V 5304 3222 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5400 3150 50  0001 C CNN
F 3 "~" H 5400 3150 50  0001 C CNN
	1    5200 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5D5A2AB3
P 4950 2400
F 0 "C4" V 4900 2350 50  0000 R CNN
F 1 "1uF" V 4900 2450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4950 2400 50  0001 C CNN
F 3 "~" H 4950 2400 50  0001 C CNN
	1    4950 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 2400 4750 2400
$Comp
L power:GND #PWR017
U 1 1 5D5A4AF3
P 4750 2400
F 0 "#PWR017" H 4750 2150 50  0001 C CNN
F 1 "GND" V 4750 2200 50  0000 C CNN
F 2 "" H 4750 2400 50  0001 C CNN
F 3 "" H 4750 2400 50  0001 C CNN
	1    4750 2400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5D5A7C53
P 4950 2100
F 0 "C2" V 4900 2050 50  0000 R CNN
F 1 "0.1uF" V 4900 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4950 2100 50  0001 C CNN
F 3 "~" H 4950 2100 50  0001 C CNN
	1    4950 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 2100 4750 2100
$Comp
L power:GND #PWR015
U 1 1 5D5A7C5E
P 4750 2100
F 0 "#PWR015" H 4750 1850 50  0001 C CNN
F 1 "GND" V 4750 1900 50  0000 C CNN
F 2 "" H 4750 2100 50  0001 C CNN
F 3 "" H 4750 2100 50  0001 C CNN
	1    4750 2100
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5D5AA734
P 4950 2200
F 0 "C3" V 4900 2150 50  0000 R CNN
F 1 "10uF" V 4900 2250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4950 2200 50  0001 C CNN
F 3 "~" H 4950 2200 50  0001 C CNN
	1    4950 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 2200 4750 2200
$Comp
L power:GND #PWR016
U 1 1 5D5AA73F
P 4750 2200
F 0 "#PWR016" H 4750 1950 50  0001 C CNN
F 1 "GND" V 4750 2000 50  0000 C CNN
F 2 "" H 4750 2200 50  0001 C CNN
F 3 "" H 4750 2200 50  0001 C CNN
	1    4750 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 2200 5250 2200
Connection ~ 5250 2200
Wire Wire Line
	5250 2100 5050 2100
$Comp
L power:GND #PWR06
U 1 1 5D57E24D
P 2000 3750
F 0 "#PWR06" H 2000 3500 50  0001 C CNN
F 1 "GND" H 2000 3600 50  0000 C CNN
F 2 "" H 2000 3750 50  0001 C CNN
F 3 "" H 2000 3750 50  0001 C CNN
	1    2000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3650 2000 3750
$Comp
L Device:C_Small C1
U 1 1 5D57D5F4
P 2000 3550
F 0 "C1" H 1908 3504 50  0000 R CNN
F 1 "1uF" H 1908 3595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2000 3550 50  0001 C CNN
F 3 "~" H 2000 3550 50  0001 C CNN
	1    2000 3550
	1    0    0    1   
$EndComp
Wire Wire Line
	1800 3400 1600 3400
Wire Wire Line
	1600 3400 1600 3350
Connection ~ 1800 3400
$Comp
L power:+5V #PWR05
U 1 1 5D5D70EE
P 2000 3100
F 0 "#PWR05" H 2000 2950 50  0001 C CNN
F 1 "+5V" H 2000 3250 50  0000 C CNN
F 2 "" H 2000 3100 50  0001 C CNN
F 3 "" H 2000 3100 50  0001 C CNN
	1    2000 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5D5E5FE7
P 7650 1950
F 0 "J2" H 7650 2150 50  0000 C CNN
F 1 "Conn_Power" V 7750 1900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7650 1950 50  0001 C CNN
F 3 "~" H 7650 1950 50  0001 C CNN
	1    7650 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 1850 7900 1850
Wire Wire Line
	7900 1850 7900 1800
Wire Wire Line
	8100 1950 8100 1800
Wire Wire Line
	7850 2150 7900 2150
Wire Wire Line
	7900 2150 7900 2200
$Comp
L power:GND #PWR025
U 1 1 5D5EF97D
P 7900 2200
F 0 "#PWR025" H 7900 1950 50  0001 C CNN
F 1 "GND" H 7900 2050 50  0000 C CNN
F 2 "" H 7900 2200 50  0001 C CNN
F 3 "" H 7900 2200 50  0001 C CNN
	1    7900 2200
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR026
U 1 1 5D5F2230
P 8100 1800
F 0 "#PWR026" H 8100 1650 50  0001 C CNN
F 1 "VBUS" H 8100 1950 50  0000 C CNN
F 2 "" H 8100 1800 50  0001 C CNN
F 3 "" H 8100 1800 50  0001 C CNN
	1    8100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1950 8100 1950
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 5D609940
P 7650 3100
F 0 "J3" H 7650 3400 50  0000 C CNN
F 1 "Conn_GPIO" V 7750 3050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7650 3100 50  0001 C CNN
F 3 "~" H 7650 3100 50  0001 C CNN
	1    7650 3100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 2900 7900 2900
Wire Wire Line
	7850 3000 7900 3000
Wire Wire Line
	7850 3100 7900 3100
Wire Wire Line
	7850 3200 7900 3200
Wire Wire Line
	7850 3300 7900 3300
Wire Wire Line
	7850 3400 7900 3400
$Comp
L Connector:TestPoint TP3
U 1 1 5D60D63C
P 7800 4200
F 0 "TP3" V 7800 4400 50  0000 L CNN
F 1 "TP_VDD" V 7904 4272 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8000 4200 50  0001 C CNN
F 3 "~" H 8000 4200 50  0001 C CNN
	1    7800 4200
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5D60E018
P 7800 4300
F 0 "TP4" V 7800 4500 50  0000 L CNN
F 1 "TP_GND" V 7904 4372 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8000 4300 50  0001 C CNN
F 3 "~" H 8000 4300 50  0001 C CNN
	1    7800 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 4200 7850 4200
Wire Wire Line
	7850 4200 7850 4150
Wire Wire Line
	7800 4300 7850 4300
Wire Wire Line
	7850 4300 7850 4350
$Comp
L power:GND #PWR023
U 1 1 5D6136B1
P 7850 4350
F 0 "#PWR023" H 7850 4100 50  0001 C CNN
F 1 "GND" H 7850 4200 50  0000 C CNN
F 2 "" H 7850 4350 50  0001 C CNN
F 3 "" H 7850 4350 50  0001 C CNN
	1    7850 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 5D613A09
P 7850 4150
F 0 "#PWR022" H 7850 4000 50  0001 C CNN
F 1 "+3.3V" H 7850 4300 50  0000 C CNN
F 2 "" H 7850 4150 50  0001 C CNN
F 3 "" H 7850 4150 50  0001 C CNN
	1    7850 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6000 2800 6000
Wire Wire Line
	2800 6000 2800 5950
$Comp
L Device:R_Small R1
U 1 1 5D64186B
P 2050 5800
F 0 "R1" V 2000 5700 50  0000 R CNN
F 1 "360R" V 2000 5900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2050 5800 50  0001 C CNN
F 3 "~" H 2050 5800 50  0001 C CNN
	1    2050 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 5800 2300 5800
$Comp
L Device:R_Small R2
U 1 1 5D6454CD
P 2050 6000
F 0 "R2" V 2000 5900 50  0000 R CNN
F 1 "150R" V 2000 6100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2050 6000 50  0001 C CNN
F 3 "~" H 2050 6000 50  0001 C CNN
	1    2050 6000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5D64563C
P 2050 6200
F 0 "R3" V 2000 6100 50  0000 R CNN
F 1 "150R" V 2000 6300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2050 6200 50  0001 C CNN
F 3 "~" H 2050 6200 50  0001 C CNN
	1    2050 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 6200 2300 6200
Wire Wire Line
	2150 6000 2300 6000
Wire Wire Line
	1950 5800 1800 5800
Text Label 1800 5800 2    50   ~ 0
LED_R
Text Label 1800 6000 2    50   ~ 0
LED_G
Text Label 1800 6200 2    50   ~ 0
LED_B
Wire Wire Line
	1800 6200 1950 6200
Wire Wire Line
	1950 6000 1800 6000
$Comp
L power:GND #PWR08
U 1 1 5D65B238
P 1650 5050
F 0 "#PWR08" H 1650 4800 50  0001 C CNN
F 1 "GND" H 1650 4900 50  0000 C CNN
F 2 "" H 1650 5050 50  0001 C CNN
F 3 "" H 1650 5050 50  0001 C CNN
	1    1650 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5D65B7B2
P 2800 5950
F 0 "#PWR010" H 2800 5800 50  0001 C CNN
F 1 "+3.3V" H 2800 6100 50  0000 C CNN
F 2 "" H 2800 5950 50  0001 C CNN
F 3 "" H 2800 5950 50  0001 C CNN
	1    2800 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5D65F467
P 1650 4450
F 0 "#PWR07" H 1650 4300 50  0001 C CNN
F 1 "+3.3V" H 1650 4600 50  0000 C CNN
F 2 "" H 1650 4450 50  0001 C CNN
F 3 "" H 1650 4450 50  0001 C CNN
	1    1650 4450
	1    0    0    -1  
$EndComp
Text Label 2650 4700 0    50   ~ 0
FLASH_MOSI
Text Label 2650 4600 0    50   ~ 0
FLASH_SCK
Text Label 2650 4500 0    50   ~ 0
FLASH_CS
Text Label 2650 4800 0    50   ~ 0
FLASH_MISO
Text Label 6350 3800 0    50   ~ 0
LED_R
Text Label 6350 4000 0    50   ~ 0
LED_G
Text Label 6350 3900 0    50   ~ 0
LED_B
Text Label 7900 3400 0    50   ~ 0
GPIO0
Text Label 7900 3300 0    50   ~ 0
GPIO1
Text Label 7900 3200 0    50   ~ 0
GPIO2
Text Label 7900 3100 0    50   ~ 0
GPIO3
Text Label 7900 3000 0    50   ~ 0
GPIO4
Text Label 7900 2900 0    50   ~ 0
GPIO5
Text Label 6350 2500 0    50   ~ 0
GPIO0
Text Label 6350 2600 0    50   ~ 0
GPIO1
Text Label 6350 2700 0    50   ~ 0
GPIO2
Text Label 6350 2800 0    50   ~ 0
GPIO3
Text Label 6350 2900 0    50   ~ 0
GPIO4
Text Label 6350 3000 0    50   ~ 0
GPIO5
Text Label 4750 3350 2    50   ~ 0
USB_D-
Text Label 4750 3450 2    50   ~ 0
USB_D+
NoConn ~ 6350 4200
NoConn ~ 6350 4100
Text Label 6350 3500 0    50   ~ 0
FLASH_MOSI
Text Label 6350 3600 0    50   ~ 0
FLASH_SCK
Text Label 6350 3400 0    50   ~ 0
FLASH_CS
Text Label 6350 3700 0    50   ~ 0
FLASH_MISO
Text Notes 8850 6250 0    60   ~ 0
SERCOM 3 is always SPI FLASH\n\nPossible configs:\nSERCOM 0: SPI\n    D5 - GPIO\n    D4 - GPIO\n    D3 - CS\n    D2 - MISO\n    D1 - SCK\n    D0 - MOSI\n    \nSERCOM 2: I2C\n    D5 - SCL\n    D4 - SDA\n    D3 - GPIO\n    D2 - GPIO\n    D1 - GPIO\n    D0 - GPIO\n\nSERCOM 0 or 2: UART\n    D1 or D5 - RX\n    D0 or D4 - TX\n    D3 - GPIO\n    D2 - GPIO\n\nSERCOM 0: UART, SERCOM 2: UART (2x UART)\n    D5 - RX2\n    D4 - TX2\n    D3 - GPIO\n    D2 - GPIO\n    D1 - RX0\n    D0 - TX0\n\nSERCOM 0: SPI, SERCOM 2: I2C\n    D5 - SCL\n    D4 - SDA\n    D3 - CS\n    D2 - MISO\n    D1 - SCK\n    D0 - MOSI\n\nSERCOM 0: SPI, SERCOM 2: UART\n    D5 - RX2\n    D4 - TX2\n    D3 - CS\n    D2 - MISO\n    D1 - SCK\n    D0 - MOSI\n\nSERCOM 0: UART, SERCOM 2: I2C\n    D5 - TX\n    D4 - RX\n    D3 - GPIO\n    D2 - GPIO\n    D1 - SDA\n    D0 - SCL\n\nAll GPIOs are PWM-enabled!
NoConn ~ 6350 2100
NoConn ~ 6350 2200
NoConn ~ 6350 2300
NoConn ~ 6350 2400
NoConn ~ 6350 3100
NoConn ~ 6350 3200
NoConn ~ 6350 3300
Wire Wire Line
	5250 3650 5300 3650
$Comp
L power:+5V #PWR0101
U 1 1 5D7C7BE6
P 6250 7300
F 0 "#PWR0101" H 6250 7150 50  0001 C CNN
F 1 "+5V" H 6250 7450 50  0000 C CNN
F 2 "" H 6250 7300 50  0001 C CNN
F 3 "" H 6250 7300 50  0001 C CNN
	1    6250 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 7300 6250 7450
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D7CCD13
P 6250 7450
F 0 "#FLG0101" H 6250 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 6250 7600 50  0000 C CNN
F 2 "" H 6250 7450 50  0001 C CNN
F 3 "~" H 6250 7450 50  0001 C CNN
	1    6250 7450
	-1   0    0    1   
$EndComp
$Comp
L power:VBUS #PWR0102
U 1 1 5D7CD0C2
P 5800 7300
F 0 "#PWR0102" H 5800 7150 50  0001 C CNN
F 1 "VBUS" H 5800 7450 50  0000 C CNN
F 2 "" H 5800 7300 50  0001 C CNN
F 3 "" H 5800 7300 50  0001 C CNN
	1    5800 7300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D7CDC89
P 5800 7450
F 0 "#FLG0102" H 5800 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 5800 7600 50  0000 C CNN
F 2 "" H 5800 7450 50  0001 C CNN
F 3 "~" H 5800 7450 50  0001 C CNN
	1    5800 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 7300 5800 7450
$Comp
L power:GND #PWR0103
U 1 1 5D7D282A
P 5350 7450
F 0 "#PWR0103" H 5350 7200 50  0001 C CNN
F 1 "GND" H 5350 7300 50  0000 C CNN
F 2 "" H 5350 7450 50  0001 C CNN
F 3 "" H 5350 7450 50  0001 C CNN
	1    5350 7450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5D7D43F1
P 5350 7300
F 0 "#FLG0103" H 5350 7375 50  0001 C CNN
F 1 "PWR_FLAG" H 5350 7450 50  0000 C CNN
F 2 "" H 5350 7300 50  0001 C CNN
F 3 "~" H 5350 7300 50  0001 C CNN
	1    5350 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 7300 5350 7450
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5D7E31E0
P 6700 7450
F 0 "#FLG0104" H 6700 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 6700 7600 50  0000 C CNN
F 2 "" H 6700 7450 50  0001 C CNN
F 3 "~" H 6700 7450 50  0001 C CNN
	1    6700 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 7300 6700 7450
$Comp
L serpente_plug-rescue:GD25Q32C-Memory_Flash_Extra U1
U 1 1 5D58BC09
P 2150 4750
F 0 "U1" H 2500 5150 50  0000 R CNN
F 1 "GD25Q32CNIGR" H 2150 4350 50  0000 C CNN
F 2 "Package_SON_Extra:USON-8_3x4mm_P0.8mm" H 2150 4250 50  0001 C CNN
F 3 "" H 2150 4150 50  0001 C CNN
	1    2150 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4500 1650 4500
Wire Wire Line
	1650 4500 1650 4450
Wire Wire Line
	1700 5000 1650 5000
Wire Wire Line
	1650 5000 1650 5050
Wire Wire Line
	2600 4500 2650 4500
Wire Wire Line
	2600 4600 2650 4600
Wire Wire Line
	2600 4700 2650 4700
Wire Wire Line
	2600 4800 2650 4800
Wire Wire Line
	2600 4900 2650 4900
Wire Wire Line
	2650 5000 2650 4900
Wire Wire Line
	2600 5000 2650 5000
$Comp
L power:+3.3V #PWR0104
U 1 1 5D5B3A8A
P 2700 4900
F 0 "#PWR0104" H 2700 4750 50  0001 C CNN
F 1 "+3.3V" V 2700 5250 50  0000 R CNN
F 2 "" H 2700 4900 50  0001 C CNN
F 3 "" H 2700 4900 50  0001 C CNN
	1    2700 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 4900 2700 4900
Connection ~ 2650 4900
$Comp
L serpente_plug-rescue:VIN-power_extra #PWR0105
U 1 1 5D5CB488
P 6700 7300
F 0 "#PWR0105" H 6700 7150 50  0001 C CNN
F 1 "VIN" H 6700 7450 50  0000 C CNN
F 2 "" H 6700 7300 50  0001 C CNN
F 3 "" H 6700 7300 50  0001 C CNN
	1    6700 7300
	1    0    0    -1  
$EndComp
$Comp
L serpente_plug-rescue:VIN-power_extra #PWR0106
U 1 1 5D5CBE1E
P 7900 1800
F 0 "#PWR0106" H 7900 1650 50  0001 C CNN
F 1 "VIN" H 7900 1950 50  0000 C CNN
F 2 "" H 7900 1800 50  0001 C CNN
F 3 "" H 7900 1800 50  0001 C CNN
	1    7900 1800
	1    0    0    -1  
$EndComp
$Comp
L serpente_plug-rescue:ATSAMD21E1xA-MCU_Microchip_SAMD_Extra U3
U 1 1 5D5905F0
P 5800 3200
F 0 "U3" H 6200 4450 50  0000 R CNN
F 1 "ATSAMD21E18A" H 5800 2050 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.6x3.6mm" H 6650 1700 50  0001 C CNN
F 3 "" H 6650 1700 50  0001 C CNN
	1    5800 3200
	1    0    0    -1  
$EndComp
$Comp
L serpente_plug-rescue:LED_RBGA-Device_Extra D3
U 1 1 5D63A1CD
P 2500 6000
F 0 "D3" H 2500 6400 50  0000 C CNN
F 1 "LED_ARGB" H 2500 5650 50  0000 C CNN
F 2 "LED_SMD:LED_Cree-PLCC4_2x2mm_CW" H 2500 5950 50  0001 C CNN
F 3 "~" H 2500 5950 50  0001 C CNN
	1    2500 6000
	1    0    0    -1  
$EndComp
$Comp
L serpente_plug-rescue:VIN-power_extra #PWR0107
U 1 1 5D636351
P 1800 3100
F 0 "#PWR0107" H 1800 2950 50  0001 C CNN
F 1 "VIN" H 1800 3250 50  0000 C CNN
F 2 "" H 1800 3100 50  0001 C CNN
F 3 "" H 1800 3100 50  0001 C CNN
	1    1800 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5D663658
P 5000 3350
F 0 "R7" V 4950 3250 50  0000 R CNN
F 1 "22R" V 4950 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5000 3350 50  0001 C CNN
F 3 "~" H 5000 3350 50  0001 C CNN
	1    5000 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5D6642A1
P 5000 3450
F 0 "R8" V 4950 3350 50  0000 R CNN
F 1 "22R" V 4950 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5000 3450 50  0001 C CNN
F 3 "~" H 5000 3450 50  0001 C CNN
	1    5000 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3450 5300 3450
Wire Wire Line
	5100 3350 5300 3350
$Comp
L Connector:TestPoint TP5
U 1 1 5D6C95EC
P 4450 3350
F 0 "TP5" V 4450 3550 50  0000 L CNN
F 1 "TP_USB_D-" V 4554 3422 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4650 3350 50  0001 C CNN
F 3 "~" H 4650 3350 50  0001 C CNN
	1    4450 3350
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5D6CB8FB
P 4450 3450
F 0 "TP6" V 4450 3650 50  0000 L CNN
F 1 "TP_USB_D+" V 4554 3522 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4650 3450 50  0001 C CNN
F 3 "~" H 4650 3450 50  0001 C CNN
	1    4450 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 3350 4900 3350
Wire Wire Line
	4450 3450 4900 3450
$Comp
L power:+3.3V #PWR0108
U 1 1 5D6FE14B
P 8350 1800
F 0 "#PWR0108" H 8350 1650 50  0001 C CNN
F 1 "+3.3V" H 8350 1950 50  0000 C CNN
F 2 "" H 8350 1800 50  0001 C CNN
F 3 "" H 8350 1800 50  0001 C CNN
	1    8350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2050 8350 2050
Wire Wire Line
	8350 2050 8350 1800
$Comp
L Connector:USB_A J1
U 1 1 5D5AF7B4
P 2150 1900
F 0 "J1" H 2300 2250 50  0000 C CNN
F 1 "USB_A" V 1900 1900 50  0000 C CNN
F 2 "Connector_USB_Extra:USB_A_Plug_PCB" H 2300 1850 50  0001 C CNN
F 3 " ~" H 2300 1850 50  0001 C CNN
	1    2150 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1900 2450 1900
Wire Wire Line
	2500 2000 2450 2000
Wire Wire Line
	2150 2300 2150 2350
NoConn ~ 2050 2300
$EndSCHEMATC
