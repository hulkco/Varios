EESchema Schematic File Version 5
LIBS:wickerlib
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp "Released under the CERN Open Hardware License v1.2"
Comment1 "jenner@wickerbox.net - http://wickerbox.net"
Comment2 "Designed by Jenner at Wickerbox Electronics"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L spiflash_soic8208mil:SPIFLASH_SOIC8208MIL U1
U 1 1 5CCC88B2
P 5400 3600
F 0 "U1" H 5400 4186 59  0000 C CNN
F 1 "SPIFLASH_SOIC8208MIL" H 5400 4081 59  0000 C CNN
F 2 "" H 5400 3600 50  0001 C CNN
F 3 "" H 5400 3600 50  0001 C CNN
	1    5400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3300 4500 3300
Wire Wire Line
	4800 3400 4500 3400
Wire Wire Line
	4800 3500 4500 3500
Wire Wire Line
	4800 3700 4500 3700
Wire Wire Line
	6300 3300 6000 3300
Wire Wire Line
	6300 3800 6000 3800
$Comp
L power:+3V3 #PWR02
U 1 1 5CCCC87C
P 6300 3200
F 0 "#PWR02" H 6300 3050 50  0001 C CNN
F 1 "+3V3" H 6315 3373 50  0000 C CNN
F 2 "" H 6300 3200 50  0001 C CNN
F 3 "" H 6300 3200 50  0001 C CNN
	1    6300 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3300 6300 3200
$Comp
L power:GND #PWR03
U 1 1 5CCCD92E
P 6300 3900
F 0 "#PWR03" H 6300 3650 50  0001 C CNN
F 1 "GND" H 6305 3727 50  0000 C CNN
F 2 "" H 6300 3900 50  0001 C CNN
F 3 "" H 6300 3900 50  0001 C CNN
	1    6300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3800 6300 3900
Text Label 4500 3300 2    50   ~ 0
SCK
Text Label 4500 3400 2    50   ~ 0
MOSI
Text Label 4500 3600 2    50   ~ 0
CS
$Comp
L power:+3V3 #PWR01
U 1 1 5CCCFB70
P 4500 3700
F 0 "#PWR01" H 4500 3550 50  0001 C CNN
F 1 "+3V3" V 4515 3828 50  0000 L CNN
F 2 "" H 4500 3700 50  0001 C CNN
F 3 "" H 4500 3700 50  0001 C CNN
	1    4500 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 3800 4500 3800
Wire Wire Line
	4500 3800 4500 3700
Connection ~ 4500 3700
Text Label 4500 3500 2    50   ~ 0
MISO
$Comp
L device:R R1
U 1 1 5CCD4064
P 4075 3325
F 0 "R1" H 3925 3400 50  0000 L CNN
F 1 "R" H 3925 3250 50  0000 L CNN
F 2 "" V 4005 3325 50  0001 C CNN
F 3 "" H 4075 3325 50  0001 C CNN
	1    4075 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 3600 4075 3475
Wire Wire Line
	4075 3600 4800 3600
Wire Wire Line
	4075 3175 4075 3075
$Comp
L power:+3V3 #PWR04
U 1 1 5CCD5CEF
P 4075 3075
F 0 "#PWR04" H 4075 2925 50  0001 C CNN
F 1 "+3V3" H 4090 3248 50  0000 C CNN
F 2 "" H 4075 3075 50  0001 C CNN
F 3 "" H 4075 3075 50  0001 C CNN
	1    4075 3075
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 5CCD68B4
P 9650 875
F 0 "#PWR05" H 9650 725 50  0001 C CNN
F 1 "+3V3" H 9665 1048 50  0000 C CNN
F 2 "" H 9650 875 50  0001 C CNN
F 3 "" H 9650 875 50  0001 C CNN
	1    9650 875 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5CCD7B5D
P 10050 1050
F 0 "#PWR06" H 10050 800 50  0001 C CNN
F 1 "GND" H 10055 877 50  0000 C CNN
F 2 "" H 10050 1050 50  0001 C CNN
F 3 "" H 10050 1050 50  0001 C CNN
	1    10050 1050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5CCD8A88
P 10050 875
F 0 "#FLG02" H 10050 950 50  0001 C CNN
F 1 "PWR_FLAG" H 10050 1048 50  0000 C CNN
F 2 "" H 10050 875 50  0001 C CNN
F 3 "" H 10050 875 50  0001 C CNN
	1    10050 875 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5CCD9078
P 9650 1050
F 0 "#FLG01" H 9650 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 9650 1223 50  0000 C CNN
F 2 "" H 9650 1050 50  0001 C CNN
F 3 "" H 9650 1050 50  0001 C CNN
	1    9650 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 875  9650 1050
Wire Wire Line
	10050 1050 10050 875 
$EndSCHEMATC
