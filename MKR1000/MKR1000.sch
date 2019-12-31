EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MKR Shield"
Date "2018-07-31"
Rev "0.1"
Comp "Electronic Cats"
Comment1 "Rocio Rodriguez"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	5745 2600 6145 2600
Wire Notes Line
	6145 2800 5745 2800
Wire Notes Line
	5535 2900 5535 3100
Wire Notes Line
	5345 3100 5345 2900
Wire Notes Line
	5445 4900 5445 3100
Wire Notes Line
	6145 2700 6445 2700
Wire Notes Line
	5445 2700 5745 2700
Wire Notes Line
	5445 2900 5445 2700
Wire Notes Line
	6545 2850 6545 3150
Wire Notes Line
	6345 3150 6345 2850
Wire Notes Line
	6345 2850 6545 2850
Wire Notes Line
	6445 2850 6445 2700
Wire Notes Line
	6445 4900 6445 3150
Wire Notes Line
	5445 4900 6445 4900
Wire Notes Line
	5745 2600 5745 2800
Wire Notes Line
	6145 2600 6145 2800
Wire Notes Line
	5345 2900 5535 2900
Wire Notes Line
	5345 3100 5535 3100
Wire Notes Line
	6345 3150 6545 3150
$Comp
L power:+5V #PWR?
U 1 1 5B6115B7
P 6595 3300
AR Path="/5B60DF55/5B6115B7" Ref="#PWR?"  Part="1" 
AR Path="/5B6115B7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6595 3150 50  0001 C CNN
F 1 "+5V" V 6610 3428 50  0000 L CNN
F 2 "" H 6595 3300 50  0001 C CNN
F 3 "" H 6595 3300 50  0001 C CNN
	1    6595 3300
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B6115BD
P 6595 3500
AR Path="/5B60DF55/5B6115BD" Ref="#PWR?"  Part="1" 
AR Path="/5B6115BD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6595 3350 50  0001 C CNN
F 1 "+3.3V" V 6610 3628 50  0000 L CNN
F 2 "" H 6595 3500 50  0001 C CNN
F 3 "" H 6595 3500 50  0001 C CNN
	1    6595 3500
	0    1    1    0   
$EndComp
Text Label 6595 3700 0    50   ~ 0
RESET
Text Label 6595 3800 0    50   ~ 0
14 <- TX
Text Label 6595 3900 0    50   ~ 0
13 -> RX
Text Label 6595 4000 0    50   ~ 0
12SCL
Text Label 6595 4100 0    50   ~ 0
11SDA
Text Label 6595 4200 0    50   ~ 0
10MISO
Text Label 6595 4300 0    50   ~ 0
9SCK
Text Label 6595 4400 0    50   ~ 0
8MOSI
Text Label 6595 4500 0    50   ~ 0
7
Text Label 6595 4600 0    50   ~ 0
6
Text Label 5295 3310 2    50   ~ 0
AREF
Text Label 5295 3410 2    50   ~ 0
DAC0/A0
Text Label 5295 3510 2    50   ~ 0
A1
Text Label 5295 3610 2    50   ~ 0
A2
Text Label 5295 3710 2    50   ~ 0
A3
Text Label 5295 3810 2    50   ~ 0
A4
Text Label 5295 3910 2    50   ~ 0
A5
Text Label 5295 4010 2    50   ~ 0
A6
Text Label 5295 4110 2    50   ~ 0
0
Text Label 5295 4210 2    50   ~ 0
1
Text Label 5295 4310 2    50   ~ 0
~~2
Text Label 5295 4410 2    50   ~ 0
~~3
Text Label 5295 4510 2    50   ~ 0
~~4
Text Label 5295 4610 2    50   ~ 0
~~5
$Comp
L Connector_Generic:Conn_01x14 J?
U 1 1 5B6115DB
P 5495 3910
AR Path="/5B60DF55/5B6115DB" Ref="J?"  Part="1" 
AR Path="/5B6115DB" Ref="J?"  Part="1" 
F 0 "J?" H 5455 3100 50  0000 L CNN
F 1 " " H 5435 3010 50  0000 L CNN
F 2 "" H 5495 3910 50  0001 C CNN
F 3 "~" H 5495 3910 50  0001 C CNN
	1    5495 3910
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x14 J?
U 1 1 5B6115E2
P 6395 4000
AR Path="/5B60DF55/5B6115E2" Ref="J?"  Part="1" 
AR Path="/5B6115E2" Ref="J?"  Part="1" 
F 0 "J?" H 6400 4710 50  0000 C CNN
F 1 " " H 6405 4790 50  0000 C CNN
F 2 "" H 6395 4000 50  0001 C CNN
F 3 "~" H 6395 4000 50  0001 C CNN
	1    6395 4000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B6115E9
P 6595 3600
AR Path="/5B60DF55/5B6115E9" Ref="#PWR?"  Part="1" 
AR Path="/5B6115E9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6595 3350 50  0001 C CNN
F 1 "GND" V 6600 3472 50  0000 R CNN
F 2 "" H 6595 3600 50  0001 C CNN
F 3 "" H 6595 3600 50  0001 C CNN
	1    6595 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5B6115EF
P 6595 3400
AR Path="/5B60DF55/5B6115EF" Ref="#PWR?"  Part="1" 
AR Path="/5B6115EF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6595 3250 50  0001 C CNN
F 1 "VCC" V 6612 3528 50  0000 L CNN
F 2 "" H 6595 3400 50  0001 C CNN
F 3 "" H 6595 3400 50  0001 C CNN
	1    6595 3400
	0    1    1    0   
$EndComp
$EndSCHEMATC
