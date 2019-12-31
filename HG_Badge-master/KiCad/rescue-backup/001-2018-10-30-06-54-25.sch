EESchema Schematic File Version 2
LIBS:001-rescue
LIBS:bbd
LIBS:battery_management
LIBS:Worldsemi
LIBS:Power_Management
LIBS:ESD_Protection
LIBS:xilinx
LIBS:video
LIBS:valves
LIBS:ttl_ieee
LIBS:transistors
LIBS:transf
LIBS:texas
LIBS:switches
LIBS:supertex
LIBS:stm8
LIBS:stm32
LIBS:siliconi
LIBS:silabs
LIBS:sensors
LIBS:rfcom
LIBS:relays
LIBS:regul
LIBS:references
LIBS:pspice
LIBS:powerint
LIBS:power
LIBS:philips
LIBS:opto
LIBS:onsemi
LIBS:nxp_armmcu
LIBS:nordicsemi
LIBS:msp430
LIBS:motorola
LIBS:motor_drivers
LIBS:microcontrollers
LIBS:microchip_pic32mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic10mcu
LIBS:microchip_dspic33dsc
LIBS:microchip
LIBS:memory
LIBS:maxim
LIBS:logo
LIBS:linear
LIBS:ir
LIBS:interface
LIBS:intel
LIBS:hc11
LIBS:graphic
LIBS:gennum
LIBS:ftdi
LIBS:elec-unifil
LIBS:dsp
LIBS:display
LIBS:diode
LIBS:digital-audio
LIBS:device
LIBS:dc-dc
LIBS:cypress
LIBS:contrib
LIBS:conn
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:brooktre
LIBS:audio
LIBS:atmel
LIBS:analog_switches
LIBS:analog_devices
LIBS:adc-dac
LIBS:actel
LIBS:ac-dc
LIBS:Zilog
LIBS:Xicor
LIBS:Oscillators
LIBS:Lattice
LIBS:Altera
LIBS:74xx
LIBS:74xgxx
LIBS:001-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "GRANABOT BADGE"
Date "2017-09-23"
Rev "1"
Comp "MAZMAKER GReynaga"
Comment1 "Gustavo Reynaga Aguilar @gsreynaga"
Comment2 "Jorge Perez Pariente @akirasan, "
Comment3 "Designed and Developed by: Federico Coca Caba @fgcoca,"
Comment4 ""
$EndDescr
Text GLabel 4010 1435 2    50   Input ~ 0
GND
$Comp
L GND #PWR01
U 1 1 5959B226
P 7670 2605
F 0 "#PWR01" H 7670 2355 50  0001 C CNN
F 1 "GND" H 7675 2432 50  0000 C CNN
F 2 "" H 7670 2605 50  0001 C CNN
F 3 "" H 7670 2605 50  0001 C CNN
	1    7670 2605
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5959B39B
P 7670 2505
F 0 "#FLG02" H 7670 2580 50  0001 C CNN
F 1 "PWR_FLAG" H 7670 2679 50  0000 C CNN
F 2 "" H 7670 2505 50  0001 C CNN
F 3 "" H 7670 2505 50  0001 C CNN
	1    7670 2505
	1    0    0    -1  
$EndComp
Text GLabel 3870 6330 0    50   Input ~ 0
SCK-2-A1
Text GLabel 3870 6230 0    50   Input ~ 0
MISO-1-PWM
Text GLabel 4370 6330 2    50   Input ~ 0
MOSI-0-PWM
$Comp
L GND #PWR03
U 1 1 595C807D
P 2230 4305
F 0 "#PWR03" H 2230 4055 50  0001 C CNN
F 1 "GND" H 2235 4132 50  0000 C CNN
F 2 "" H 2230 4305 50  0001 C CNN
F 3 "" H 2230 4305 50  0001 C CNN
	1    2230 4305
	1    0    0    -1  
$EndComp
$Comp
L LED-RGB-WS2812B-4SMD LED1
U 1 1 595D0515
P 2180 3595
F 0 "LED1" H 2230 3970 50  0000 C CNN
F 1 "WS2812B" H 2230 3879 50  0000 C CNN
F 2 "OSHwi:WS2812B" H 2180 3245 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 2180 3595 5   0001 C CNN
F 4 "LED RGB WS2812B W/DVR 4SMD" H 2180 3245 50  0001 C CIN "Description"
F 5 "Adafruit" H 2180 3245 50  0001 C CIN "MF_Name"
F 6 "1655" H 2180 3245 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 2180 3245 50  0001 C CIN "S1_Name"
F 8 "1528-1104-ND" H 2180 3245 50  0001 C CIN "S1_PN"
	1    2180 3595
	1    0    0    -1  
$EndComp
$Comp
L LED-RGB-WS2812B-4SMD LED2
U 1 1 595D08CE
P 3455 3595
F 0 "LED2" H 3505 3970 50  0000 C CNN
F 1 "WS2812B" H 3505 3879 50  0000 C CNN
F 2 "OSHwi:WS2812B" H 3455 3245 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 3455 3595 5   0001 C CNN
F 4 "LED RGB WS2812B W/DVR 4SMD" H 3455 3245 50  0001 C CIN "Description"
F 5 "Adafruit" H 3455 3245 50  0001 C CIN "MF_Name"
F 6 "1655" H 3455 3245 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 3455 3245 50  0001 C CIN "S1_Name"
F 8 "1528-1104-ND" H 3455 3245 50  0001 C CIN "S1_PN"
	1    3455 3595
	1    0    0    -1  
$EndComp
$Comp
L LED-RGB-WS2812B-4SMD LED3
U 1 1 595D1904
P 4705 3595
F 0 "LED3" H 4755 3970 50  0000 C CNN
F 1 "WS2812B" H 4755 3879 50  0000 C CNN
F 2 "OSHwi:WS2812B" H 4705 3245 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 4705 3595 5   0001 C CNN
F 4 "LED RGB WS2812B W/DVR 4SMD" H 4705 3245 50  0001 C CIN "Description"
F 5 "Adafruit" H 4705 3245 50  0001 C CIN "MF_Name"
F 6 "1655" H 4705 3245 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4705 3245 50  0001 C CIN "S1_Name"
F 8 "1528-1104-ND" H 4705 3245 50  0001 C CIN "S1_PN"
	1    4705 3595
	1    0    0    -1  
$EndComp
$Comp
L LED-RGB-WS2812B-4SMD LED4
U 1 1 595D190F
P 5980 3595
F 0 "LED4" H 6030 3970 50  0000 C CNN
F 1 "WS2812B" H 6030 3879 50  0000 C CNN
F 2 "OSHwi:WS2812B" H 5980 3245 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 5980 3595 5   0001 C CNN
F 4 "LED RGB WS2812B W/DVR 4SMD" H 5980 3245 50  0001 C CIN "Description"
F 5 "Adafruit" H 5980 3245 50  0001 C CIN "MF_Name"
F 6 "1655" H 5980 3245 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 5980 3245 50  0001 C CIN "S1_Name"
F 8 "1528-1104-ND" H 5980 3245 50  0001 C CIN "S1_PN"
	1    5980 3595
	1    0    0    -1  
$EndComp
$Comp
L LED-RGB-WS2812B-4SMD LED5
U 1 1 595D1F1E
P 7130 3595
F 0 "LED5" H 7180 3970 50  0000 C CNN
F 1 "WS2812B" H 7180 3879 50  0000 C CNN
F 2 "OSHwi:WS2812B" H 7130 3245 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 7130 3595 5   0001 C CNN
F 4 "LED RGB WS2812B W/DVR 4SMD" H 7130 3245 50  0001 C CIN "Description"
F 5 "Adafruit" H 7130 3245 50  0001 C CIN "MF_Name"
F 6 "1655" H 7130 3245 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 7130 3245 50  0001 C CIN "S1_Name"
F 8 "1528-1104-ND" H 7130 3245 50  0001 C CIN "S1_PN"
	1    7130 3595
	1    0    0    -1  
$EndComp
Text GLabel 1730 6455 0    50   Input ~ 0
3-A3
$Comp
L GND #PWR04
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
Text GLabel 790  3585 0    50   Input ~ 0
+5V
Text GLabel 7245 2530 1    50   Input ~ 0
GND
$Comp
L CONN_01X02 J1
U 1 1 5961A222
P 9625 2550
F 0 "J1" H 9625 2825 50  0000 C CNN
F 1 "CONN_01X02" H 9800 2725 50  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53261-0271_02x1.25mm_Angled" H 9625 2550 50  0001 C CNN
F 3 "" H 9625 2550 50  0001 C CNN
	1    9625 2550
	-1   0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 59624869
P 6970 2605
F 0 "#FLG05" H 6970 2680 50  0001 C CNN
F 1 "PWR_FLAG" H 6970 2778 50  0000 C CNN
F 2 "" H 6970 2605 50  0001 C CNN
F 3 "" H 6970 2605 50  0001 C CNN
	1    6970 2605
	-1   0    0    1   
$EndComp
$Comp
L CAP C1
U 1 1 597E71A3
P 7305 1425
F 0 "C1" H 7483 1471 50  0000 L CNN
F 1 "4.7uF" H 7483 1380 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7305 1425 50  0001 C CNN
F 3 "" H 7305 1425 50  0001 C CNN
	1    7305 1425
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 597EC094
P 3165 7555
F 0 "R1" H 3233 7601 50  0000 L CNN
F 1 "1k" H 3233 7510 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 3165 7555 50  0001 C CNN
F 3 "" H 3165 7555 50  0001 C CNN
	1    3165 7555
	0    -1   -1   0   
$EndComp
$Comp
L LED-RESCUE-001 D2
U 1 1 597EC09A
P 3665 7555
F 0 "D2" V 3705 7375 50  0000 R CNN
F 1 "ON" V 3615 7380 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 3665 7555 50  0001 C CNN
F 3 "" H 3665 7555 50  0001 C CNN
	1    3665 7555
	-1   0    0    1   
$EndComp
Text Label 2815 7555 2    50   ~ 0
+5V
$Comp
L GND #PWR06
U 1 1 597EE12E
P 3915 7555
F 0 "#PWR06" H 3915 7305 50  0001 C CNN
F 1 "GND" H 3920 7382 50  0000 C CNN
F 2 "" H 3915 7555 50  0001 C CNN
F 3 "" H 3915 7555 50  0001 C CNN
	1    3915 7555
	1    0    0    -1  
$EndComp
NoConn ~ 9085 4555
Text GLabel 4370 6230 2    50   Input ~ 0
+5V
Text GLabel 6775 900  1    50   Input ~ 0
VBAT
$Comp
L DIODE-SCHOTTKY-40V-1A-MBRA140-SMA D1
U 1 1 598120B7
P 6775 1075
F 0 "D1" H 6707 1075 50  0000 R CNN
F 1 "MBRA140" H 6707 1120 50  0001 R CNN
F 2 "Wickerlib:DIODE-SMA" H 6775 725 50  0001 C CIN
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
L CAP C2
U 1 1 5981D4E1
P 8995 1435
F 0 "C2" H 9173 1481 50  0000 L CNN
F 1 "4.7uF" H 9173 1390 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 8995 1435 50  0001 C CNN
F 3 "" H 8995 1435 50  0001 C CNN
	1    8995 1435
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 59820FE1
P 8040 1625
F 0 "#PWR07" H 8040 1375 50  0001 C CNN
F 1 "GND" H 8045 1452 50  0000 C CNN
F 2 "" H 8040 1625 50  0001 C CNN
F 3 "" H 8040 1625 50  0001 C CNN
	1    8040 1625
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 598213B8
P 7305 1775
F 0 "#PWR08" H 7305 1525 50  0001 C CNN
F 1 "GND" H 7310 1602 50  0000 C CNN
F 2 "" H 7305 1775 50  0001 C CNN
F 3 "" H 7305 1775 50  0001 C CNN
	1    7305 1775
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5982188B
P 8995 1785
F 0 "#PWR09" H 8995 1535 50  0001 C CNN
F 1 "GND" H 9000 1612 50  0000 C CNN
F 2 "" H 8995 1785 50  0001 C CNN
F 3 "" H 8995 1785 50  0001 C CNN
	1    8995 1785
	1    0    0    -1  
$EndComp
Wire Wire Line
	7670 2505 7670 2605
Wire Wire Line
	1730 3845 1630 3845
Wire Wire Line
	2730 3845 3005 3845
Wire Wire Line
	4005 3845 4255 3845
Wire Wire Line
	5255 3845 5530 3845
Wire Wire Line
	6530 3845 6680 3845
Wire Wire Line
	1655 3585 1655 3120
Wire Wire Line
	5530 3445 5405 3445
Wire Wire Line
	5405 3445 5405 3120
Connection ~ 5405 3120
Wire Wire Line
	4255 3445 4130 3445
Wire Wire Line
	4130 3445 4130 3120
Connection ~ 4130 3120
Wire Wire Line
	3005 3445 2880 3445
Wire Wire Line
	2880 3445 2880 3120
Connection ~ 2880 3120
Wire Wire Line
	2230 4095 2230 4305
Wire Wire Line
	3505 4095 3505 4305
Wire Wire Line
	4755 4305 4755 4095
Wire Wire Line
	6030 4305 6030 4095
Wire Wire Line
	6970 2480 6970 2605
Wire Wire Line
	7245 2530 7245 2580
Wire Wire Line
	7245 2580 7670 2580
Connection ~ 7670 2580
Wire Wire Line
	3415 7555 3515 7555
Wire Wire Line
	2915 7555 2815 7555
Wire Wire Line
	3815 7555 3915 7555
Wire Wire Line
	6680 3120 6680 3445
Wire Wire Line
	7180 4305 7180 4095
Wire Notes Line
	5750 2950 5750 475 
Wire Wire Line
	1655 3120 9085 3120
Wire Wire Line
	6600 1175 7740 1175
Wire Wire Line
	6600 900  6600 1175
Wire Wire Line
	6775 900  6775 975 
Connection ~ 6775 1175
Wire Wire Line
	7305 1675 7305 1775
Wire Wire Line
	8995 1685 8995 1785
Wire Wire Line
	8995 1185 8995 1085
Wire Notes Line
	500  2950 10500 2950
Text Notes 7725 650  0    50   ~ 0
POWER & FILTERING
Text Notes 2850 700  0    50   ~ 0
ATTINY 85
Text Notes 5340 3065 0    50   ~ 0
NEOPIXELS
Text Notes 2700 5745 0    50   ~ 0
PROGRAMING PORT & I/O PINS
Wire Wire Line
	790  3585 1655 3585
Wire Wire Line
	945  3585 945  3660
Wire Wire Line
	2230 4305 9585 4305
Connection ~ 6030 4305
Connection ~ 4755 4305
Connection ~ 3505 4305
$Comp
L GND #PWR010
U 1 1 59894DC3
P 945 4160
F 0 "#PWR010" H 945 3910 50  0001 C CNN
F 1 "GND" H 950 3987 50  0000 C CNN
F 2 "" H 945 4160 50  0001 C CNN
F 3 "" H 945 4160 50  0001 C CNN
	1    945  4160
	1    0    0    -1  
$EndComp
Wire Wire Line
	1730 3445 1655 3445
Connection ~ 1655 3445
Connection ~ 945  3585
Wire Notes Line
	6910 6765 6915 6765
Text Notes 8150 5725 0    50   ~ 0
CAPACITIVE SENSOR
$Comp
L CAP C3
U 1 1 59C7B9C8
P 945 3910
F 0 "C3" H 1110 3920 50  0000 L CNN
F 1 "22nF" V 735 3830 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 945 3910 50  0001 C CNN
F 3 "" H 945 3910 50  0001 C CNN
	1    945  3910
	1    0    0    -1  
$EndComp
$Comp
L LED-RGB-WS2812B-4SMD LED6
U 1 1 5A88A32B
P 8330 3595
F 0 "LED6" H 8380 3970 50  0000 C CNN
F 1 "WS2812B" H 8380 3879 50  0000 C CNN
F 2 "OSHwi:WS2812B" H 8330 3245 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 8330 3595 5   0001 C CNN
F 4 "LED RGB WS2812B W/DVR 4SMD" H 8330 3245 50  0001 C CIN "Description"
F 5 "Adafruit" H 8330 3245 50  0001 C CIN "MF_Name"
F 6 "1655" H 8330 3245 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 8330 3245 50  0001 C CIN "S1_Name"
F 8 "1528-1104-ND" H 8330 3245 50  0001 C CIN "S1_PN"
	1    8330 3595
	1    0    0    -1  
$EndComp
Connection ~ 7180 4305
Wire Wire Line
	7680 3845 7880 3845
Wire Wire Line
	7880 3120 7880 3445
Connection ~ 6680 3120
$Comp
L ATTINY85-20SU U2
U 1 1 5A88CA82
P 3290 1675
F 0 "U2" H 2140 2075 50  0000 C CNN
F 1 "ATTINY85-20SU" H 4290 1275 50  0000 C CNN
F 2 "Housings_SOIC:SOIJ-8_5.3x5.3mm_Pitch1.27mm" H 4240 1675 50  0001 C CIN
F 3 "" H 3290 1675 50  0001 C CNN
	1    3290 1675
	1    0    0    -1  
$EndComp
$Comp
L LM7805_TO220 U1
U 1 1 5A88EF0C
P 8040 1175
F 0 "U1" H 8040 1420 50  0000 C CNN
F 1 "LM340MP-5.0/NOPB" H 7670 1320 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3Lead_TabPin2" H 8040 1400 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm340.pdf" H 8040 1125 50  0001 C CNN
	1    8040 1175
	1    0    0    -1  
$EndComp
Wire Wire Line
	8040 1475 8040 1625
Text GLabel 3870 6430 0    50   Input ~ 0
RESET
Text GLabel 4370 6430 2    50   Input ~ 0
GND
Text GLabel 1630 3845 0    50   Input ~ 0
4-A2
$Comp
L CONN_02X03 J4
U 1 1 5A89332C
P 4120 6330
F 0 "J4" H 4120 6530 50  0000 C CNN
F 1 "CONN_02X03" H 4120 6130 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm_SMD" H 4120 5130 50  0001 C CNN
F 3 "" H 4120 5130 50  0001 C CNN
	1    4120 6330
	1    0    0    -1  
$EndComp
Text Notes 4050 6070 0    50   ~ 0
ISCP
Text Notes 1975 6075 0    50   ~ 0
USER PINS
$Comp
L R R2
U 1 1 5A8951D6
P 7960 6420
F 0 "R2" H 8028 6466 50  0000 L CNN
F 1 "1M Ohms" H 8028 6375 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 7960 6420 50  0001 C CNN
F 3 "" H 7960 6420 50  0001 C CNN
	1    7960 6420
	0    -1   -1   0   
$EndComp
Wire Notes Line
	6275 6770 475  6770
$Comp
L CAPSENSE_CIRCLE CAP1
U 1 1 5A895C76
P 8815 6420
F 0 "CAP1" H 9065 6520 60  0000 L CNN
F 1 "CAPSENSE_CIRCLE" H 9065 6320 60  0000 L CNN
F 2 "Granabot:CAPSENSE-CIRCLE2-D10MM" H 8815 6420 60  0001 C CNN
F 3 "" H 8815 6420 60  0000 C CNN
	1    8815 6420
	1    0    0    -1  
$EndComp
Text GLabel 7710 5920 0    50   Input ~ 0
MOSI-0-PWM
Text GLabel 8210 5920 2    50   Input ~ 0
MISO-1-PWM
Wire Wire Line
	8210 6420 8210 5920
Wire Wire Line
	7710 6420 7710 5920
Wire Wire Line
	8210 6420 8465 6420
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
Text Notes 3045 7040 0    50   ~ 0
POWER LED
Text GLabel 6970 2480 1    50   Input ~ 0
VCC
$Comp
L CONN_01X02 J5
U 1 1 5A89FE6F
P 6010 1110
F 0 "J5" H 6010 1260 50  0000 C CNN
F 1 "CONN_01X02" V 6110 1110 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm_SMD_Pin1Left" H 6010 1110 50  0001 C CNN
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
$Comp
L LED-RGB-WS2812B-4SMD LED7
U 1 1 5A8A2E7D
P 9535 3595
F 0 "LED7" H 9585 3970 50  0000 C CNN
F 1 "WS2812B" H 9585 3879 50  0000 C CNN
F 2 "OSHwi:WS2812B" H 9535 3245 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 9535 3595 5   0001 C CNN
F 4 "LED RGB WS2812B W/DVR 4SMD" H 9535 3245 50  0001 C CIN "Description"
F 5 "Adafruit" H 9535 3245 50  0001 C CIN "MF_Name"
F 6 "1655" H 9535 3245 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 9535 3245 50  0001 C CIN "S1_Name"
F 8 "1528-1104-ND" H 9535 3245 50  0001 C CIN "S1_PN"
	1    9535 3595
	1    0    0    -1  
$EndComp
$Comp
L LED-RGB-WS2812B-4SMD LED8
U 1 1 5A8A2FAB
P 9635 4805
F 0 "LED8" H 9685 5180 50  0000 C CNN
F 1 "WS2812B" H 9685 5089 50  0000 C CNN
F 2 "OSHwi:WS2812B" H 9635 4455 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 9635 4805 5   0001 C CNN
F 4 "LED RGB WS2812B W/DVR 4SMD" H 9635 4455 50  0001 C CIN "Description"
F 5 "Adafruit" H 9635 4455 50  0001 C CIN "MF_Name"
F 6 "1655" H 9635 4455 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 9635 4455 50  0001 C CIN "S1_Name"
F 8 "1528-1104-ND" H 9635 4455 50  0001 C CIN "S1_PN"
	1    9635 4805
	-1   0    0    1   
$EndComp
Wire Wire Line
	8880 3845 9085 3845
Wire Wire Line
	10085 3845 10440 3845
Wire Wire Line
	9085 3120 9085 3445
Connection ~ 7880 3120
Text GLabel 10085 4955 2    50   Input ~ 0
+5V
Connection ~ 8380 4305
Wire Wire Line
	9585 4305 9585 4095
Wire Wire Line
	10085 4555 10440 4555
Wire Wire Line
	10440 4555 10440 3845
Wire Wire Line
	8380 4095 8380 4305
Wire Notes Line
	10525 5600 475  5600
Wire Notes Line
	6275 6770 6275 5600
$Comp
L CONN_01X03 J2
U 1 1 5A88EF7D
P 1930 6355
F 0 "J2" H 1930 6555 50  0000 C CNN
F 1 "CONN_01X03" V 2030 6355 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm_SMD_Pin1Left" H 1930 6355 50  0001 C CNN
F 3 "" H 1930 6355 50  0001 C CNN
	1    1930 6355
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 J3
U 1 1 5A88F449
P 2310 6355
F 0 "J3" H 2310 6555 50  0000 C CNN
F 1 "CONN_01X03" V 2410 6355 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm_SMD_Pin1Right" H 2310 6355 50  0001 C CNN
F 3 "" H 2310 6355 50  0001 C CNN
	1    2310 6355
	-1   0    0    -1  
$EndComp
Text GLabel 2510 6255 2    50   Input ~ 0
+5V
Text GLabel 1730 6255 0    50   Input ~ 0
+5V
Text GLabel 2510 6355 2    50   Input ~ 0
GND
Text GLabel 1730 6355 0    50   Input ~ 0
GND
Text GLabel 2510 6455 2    50   Input ~ 0
SCK-2-A1
Wire Wire Line
	8340 1175 8995 1175
Connection ~ 8995 1175
Connection ~ 7305 1175
$EndSCHEMATC
