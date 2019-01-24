EESchema Schematic File Version 4
LIBS:Base-cache
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
Text GLabel 5125 1500 0    50   Input ~ 0
VDD
Text GLabel 5725 1600 2    50   Input ~ 0
VSS
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5C49958D
P 9825 950
F 0 "#FLG01" H 9825 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 9825 1123 50  0000 C CNN
F 2 "" H 9825 950 50  0001 C CNN
F 3 "~" H 9825 950 50  0001 C CNN
	1    9825 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9825 950  9825 1075
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5C499E58
P 10225 1075
F 0 "#FLG02" H 10225 1150 50  0001 C CNN
F 1 "PWR_FLAG" H 10225 1248 50  0000 C CNN
F 2 "" H 10225 1075 50  0001 C CNN
F 3 "~" H 10225 1075 50  0001 C CNN
	1    10225 1075
	-1   0    0    1   
$EndComp
Wire Wire Line
	10225 1075 10225 950 
Text GLabel 9825 1075 3    50   Input ~ 0
VSS
Text GLabel 10225 950  1    50   Input ~ 0
VDD
$Comp
L Base-rescue:NeoReverse-Neo_Reverse U1
U 1 1 5C4A5F1C
P 5425 1550
F 0 "U1" H 5425 1825 50  0000 C CNN
F 1 "NeoReverse-Neo_Reverse" H 5425 1734 50  0000 C CNN
F 2 "neo-reverse:Neo-reverse_SMD_4Pin" H 5425 1550 50  0001 C CNN
F 3 "" H 5425 1550 50  0001 C CNN
	1    5425 1550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
