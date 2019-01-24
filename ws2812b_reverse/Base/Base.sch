EESchema Schematic File Version 4
EELAYER 29 0
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
Text GLabel 5075 2975 0    50   Input ~ 0
VDD
Text GLabel 5675 2975 2    50   Input ~ 0
VSS
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5C49958D
P 7825 2575
F 0 "#FLG01" H 7825 2650 50  0001 C CNN
F 1 "PWR_FLAG" H 7825 2748 50  0000 C CNN
F 2 "" H 7825 2575 50  0001 C CNN
F 3 "~" H 7825 2575 50  0001 C CNN
	1    7825 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	7825 2575 7825 2700
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5C499E58
P 8225 2700
F 0 "#FLG02" H 8225 2775 50  0001 C CNN
F 1 "PWR_FLAG" H 8225 2873 50  0000 C CNN
F 2 "" H 8225 2700 50  0001 C CNN
F 3 "~" H 8225 2700 50  0001 C CNN
	1    8225 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8225 2700 8225 2575
Text GLabel 5675 3075 2    50   Input ~ 0
DIN
Text GLabel 7825 2700 3    50   Input ~ 0
VSS
Text GLabel 8225 2575 1    50   Input ~ 0
VDD
$Comp
L Neo_Reverse:NeoReverse U1
U 1 1 5C49DB8A
P 5375 3025
F 0 "U1" H 5375 3300 50  0000 C CNN
F 1 "NeoReverse" H 5375 3209 50  0000 C CNN
F 2 "neo-reverse:Neo-reverse_SMD_4Pin" H 5375 3025 50  0001 C CNN
F 3 "" H 5375 3025 50  0001 C CNN
	1    5375 3025
	1    0    0    -1  
$EndComp
Text GLabel 5075 3075 0    50   Input ~ 0
DOUT
$EndSCHEMATC
