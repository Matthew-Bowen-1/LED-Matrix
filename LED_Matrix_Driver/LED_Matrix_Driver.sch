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
L hef4794b:HEF4794B U5
U 1 1 650A2D21
P 8750 1450
F 0 "U5" H 8775 2075 50  0000 C CNN
F 1 "HEF4794B" H 8775 1984 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 8250 2200 50  0001 C CNN
F 3 "" H 8250 2200 50  0001 C CNN
	1    8750 1450
	1    0    0    -1  
$EndComp
$Comp
L Custom_Symbols:MIC2981 U3
U 1 1 650A5F77
P 7200 5700
F 0 "U3" H 7200 6275 50  0000 C CNN
F 1 "MIC2981" H 7200 6184 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm_Socket" H 7200 5700 50  0001 C CNN
F 3 "" H 7200 5700 50  0001 C CNN
	1    7200 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R15
U 1 1 650C7069
P 6650 5350
F 0 "R15" V 6600 5250 50  0000 C CNN
F 1 "3k3" V 6700 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6650 5350 50  0001 C CNN
F 3 "~" H 6650 5350 50  0001 C CNN
	1    6650 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R14
U 1 1 650C9852
P 6600 5450
F 0 "R14" V 6550 5350 50  0000 C CNN
F 1 "3k3" V 6650 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6600 5450 50  0001 C CNN
F 3 "~" H 6600 5450 50  0001 C CNN
	1    6600 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R13
U 1 1 650C9D3A
P 6550 5550
F 0 "R13" V 6500 5450 50  0000 C CNN
F 1 "3k3" V 6600 5700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6550 5550 50  0001 C CNN
F 3 "~" H 6550 5550 50  0001 C CNN
	1    6550 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R12
U 1 1 650CA077
P 6500 5650
F 0 "R12" V 6450 5550 50  0000 C CNN
F 1 "3k3" V 6550 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6500 5650 50  0001 C CNN
F 3 "~" H 6500 5650 50  0001 C CNN
	1    6500 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R11
U 1 1 650CA2B0
P 6450 5750
F 0 "R11" V 6400 5650 50  0000 C CNN
F 1 "3k3" V 6500 5900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6450 5750 50  0001 C CNN
F 3 "~" H 6450 5750 50  0001 C CNN
	1    6450 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 650CA4D8
P 6400 5850
F 0 "R10" V 6350 5750 50  0000 C CNN
F 1 "3k3" V 6450 6000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6400 5850 50  0001 C CNN
F 3 "~" H 6400 5850 50  0001 C CNN
	1    6400 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 650CA786
P 6350 5950
F 0 "R9" V 6300 5850 50  0000 C CNN
F 1 "3k3" V 6400 6100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6350 5950 50  0001 C CNN
F 3 "~" H 6350 5950 50  0001 C CNN
	1    6350 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 650CA954
P 6300 6050
F 0 "R8" V 6250 5950 50  0000 C CNN
F 1 "3k3" V 6350 6200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6300 6050 50  0001 C CNN
F 3 "~" H 6300 6050 50  0001 C CNN
	1    6300 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 5350 6850 5350
Wire Wire Line
	6850 5450 6700 5450
Wire Wire Line
	6650 5550 6850 5550
Wire Wire Line
	6850 5650 6600 5650
Wire Wire Line
	6550 5750 6850 5750
Wire Wire Line
	6850 5850 6500 5850
Wire Wire Line
	6450 5950 6850 5950
Wire Wire Line
	6850 6050 6400 6050
$Comp
L power:Earth #PWR010
U 1 1 650F569D
P 7550 6300
F 0 "#PWR010" H 7550 6050 50  0001 C CNN
F 1 "Earth" H 7550 6150 50  0001 C CNN
F 2 "" H 7550 6300 50  0001 C CNN
F 3 "~" H 7550 6300 50  0001 C CNN
	1    7550 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 650F6043
P 6850 6300
F 0 "#PWR09" H 6850 6150 50  0001 C CNN
F 1 "+5V" H 6865 6473 50  0000 C CNN
F 2 "" H 6850 6300 50  0001 C CNN
F 3 "" H 6850 6300 50  0001 C CNN
	1    6850 6300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x08 J2
U 1 1 650BC252
P 7750 5650
F 0 "J2" H 7700 6100 50  0000 L CNN
F 1 "LED Anode Rows" V 7850 5350 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-8-5.08_1x08_P5.08mm_Horizontal" H 7750 5650 50  0001 C CNN
F 3 "~" H 7750 5650 50  0001 C CNN
	1    7750 5650
	1    0    0    -1  
$EndComp
$Comp
L hef4794b:HEF4794B U6
U 1 1 650C922B
P 8750 2800
F 0 "U6" H 8775 3425 50  0000 C CNN
F 1 "HEF4794B" H 8775 3334 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 8250 3550 50  0001 C CNN
F 3 "" H 8250 3550 50  0001 C CNN
	1    8750 2800
	1    0    0    -1  
$EndComp
$Comp
L hef4794b:HEF4794B U7
U 1 1 650CA1A9
P 8750 4150
F 0 "U7" H 8775 4775 50  0000 C CNN
F 1 "HEF4794B" H 8775 4684 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 8250 4900 50  0001 C CNN
F 3 "" H 8250 4900 50  0001 C CNN
	1    8750 4150
	1    0    0    -1  
$EndComp
$Comp
L hef4794b:HEF4794B U8
U 1 1 651067A1
P 8750 5500
F 0 "U8" H 8775 6125 50  0000 C CNN
F 1 "HEF4794B" H 8775 6034 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 8250 6250 50  0001 C CNN
F 3 "" H 8250 6250 50  0001 C CNN
	1    8750 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1900 8350 1900
$Comp
L Connector:Screw_Terminal_01x08 J6
U 1 1 651A29B9
P 9950 5400
F 0 "J6" H 10030 5392 50  0000 L CNN
F 1 "Columns 0-7 LED Cathodes" H 10030 5301 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-8-5.08_1x08_P5.08mm_Horizontal" H 9950 5400 50  0001 C CNN
F 3 "~" H 9950 5400 50  0001 C CNN
	1    9950 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R40
U 1 1 651A5838
P 9500 5100
F 0 "R40" V 9450 4950 50  0000 C CNN
F 1 "200" V 9550 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 5100 50  0001 C CNN
F 3 "~" H 9500 5100 50  0001 C CNN
	1    9500 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R41
U 1 1 651A8347
P 9500 5200
F 0 "R41" V 9450 5050 50  0000 C CNN
F 1 "200" V 9550 5350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 5200 50  0001 C CNN
F 3 "~" H 9500 5200 50  0001 C CNN
	1    9500 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R42
U 1 1 651A8F5A
P 9500 5300
F 0 "R42" V 9450 5150 50  0000 C CNN
F 1 "200" V 9550 5450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 5300 50  0001 C CNN
F 3 "~" H 9500 5300 50  0001 C CNN
	1    9500 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R43
U 1 1 651A9375
P 9500 5400
F 0 "R43" V 9450 5250 50  0000 C CNN
F 1 "200" V 9550 5550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 5400 50  0001 C CNN
F 3 "~" H 9500 5400 50  0001 C CNN
	1    9500 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R44
U 1 1 651A96FC
P 9500 5500
F 0 "R44" V 9450 5350 50  0000 C CNN
F 1 "200" V 9550 5650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 5500 50  0001 C CNN
F 3 "~" H 9500 5500 50  0001 C CNN
	1    9500 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R45
U 1 1 651A9BD5
P 9500 5600
F 0 "R45" V 9450 5450 50  0000 C CNN
F 1 "200" V 9550 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 5600 50  0001 C CNN
F 3 "~" H 9500 5600 50  0001 C CNN
	1    9500 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R46
U 1 1 651A9DF2
P 9500 5700
F 0 "R46" V 9450 5550 50  0000 C CNN
F 1 "200" V 9550 5850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 5700 50  0001 C CNN
F 3 "~" H 9500 5700 50  0001 C CNN
	1    9500 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R47
U 1 1 651AA04E
P 9500 5800
F 0 "R47" V 9450 5650 50  0000 C CNN
F 1 "200" V 9550 5950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 5800 50  0001 C CNN
F 3 "~" H 9500 5800 50  0001 C CNN
	1    9500 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 5800 9600 5800
Wire Wire Line
	9750 5700 9600 5700
Wire Wire Line
	9750 5600 9600 5600
Wire Wire Line
	9750 5500 9600 5500
Wire Wire Line
	9750 5400 9600 5400
Wire Wire Line
	9750 5300 9600 5300
Wire Wire Line
	9750 5200 9600 5200
Wire Wire Line
	9750 5100 9600 5100
Wire Wire Line
	9150 5100 9400 5100
Wire Wire Line
	9400 5200 9150 5200
Wire Wire Line
	9150 5300 9400 5300
Wire Wire Line
	9400 5400 9150 5400
Wire Wire Line
	9150 5500 9400 5500
Wire Wire Line
	9400 5600 9150 5600
Wire Wire Line
	9150 5700 9400 5700
Wire Wire Line
	9400 5800 9150 5800
$Comp
L Device:R_Small_US R16
U 1 1 65224202
P 9500 1050
F 0 "R16" V 9450 900 50  0000 C CNN
F 1 "200" V 9550 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 1050 50  0001 C CNN
F 3 "~" H 9500 1050 50  0001 C CNN
	1    9500 1050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R17
U 1 1 65224208
P 9500 1150
F 0 "R17" V 9450 1000 50  0000 C CNN
F 1 "200" V 9550 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 1150 50  0001 C CNN
F 3 "~" H 9500 1150 50  0001 C CNN
	1    9500 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R18
U 1 1 6522420E
P 9500 1250
F 0 "R18" V 9450 1100 50  0000 C CNN
F 1 "200" V 9550 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 1250 50  0001 C CNN
F 3 "~" H 9500 1250 50  0001 C CNN
	1    9500 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R19
U 1 1 65224214
P 9500 1350
F 0 "R19" V 9450 1200 50  0000 C CNN
F 1 "200" V 9550 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 1350 50  0001 C CNN
F 3 "~" H 9500 1350 50  0001 C CNN
	1    9500 1350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R20
U 1 1 6522421A
P 9500 1450
F 0 "R20" V 9450 1300 50  0000 C CNN
F 1 "200" V 9550 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 1450 50  0001 C CNN
F 3 "~" H 9500 1450 50  0001 C CNN
	1    9500 1450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R21
U 1 1 65224220
P 9500 1550
F 0 "R21" V 9450 1400 50  0000 C CNN
F 1 "200" V 9550 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 1550 50  0001 C CNN
F 3 "~" H 9500 1550 50  0001 C CNN
	1    9500 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R22
U 1 1 65224226
P 9500 1650
F 0 "R22" V 9450 1500 50  0000 C CNN
F 1 "200" V 9550 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 1650 50  0001 C CNN
F 3 "~" H 9500 1650 50  0001 C CNN
	1    9500 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R23
U 1 1 6522422C
P 9500 1750
F 0 "R23" V 9450 1600 50  0000 C CNN
F 1 "200" V 9550 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 1750 50  0001 C CNN
F 3 "~" H 9500 1750 50  0001 C CNN
	1    9500 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 1750 9600 1750
Wire Wire Line
	9750 1650 9600 1650
Wire Wire Line
	9750 1550 9600 1550
Wire Wire Line
	9750 1450 9600 1450
Wire Wire Line
	9750 1350 9600 1350
Wire Wire Line
	9750 1250 9600 1250
Wire Wire Line
	9750 1150 9600 1150
Wire Wire Line
	9750 1050 9600 1050
Wire Wire Line
	9150 1050 9400 1050
Wire Wire Line
	9400 1150 9150 1150
Wire Wire Line
	9150 1250 9400 1250
Wire Wire Line
	9400 1350 9150 1350
Wire Wire Line
	9150 1450 9400 1450
Wire Wire Line
	9400 1550 9150 1550
Wire Wire Line
	9150 1650 9400 1650
Wire Wire Line
	9400 1750 9150 1750
$Comp
L Connector:Screw_Terminal_01x08 J3
U 1 1 6522E250
P 9950 1350
F 0 "J3" H 10030 1342 50  0000 L CNN
F 1 "Columns 24-31 LED Cathodes" H 10030 1251 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-8-5.08_1x08_P5.08mm_Horizontal" H 9950 1350 50  0001 C CNN
F 3 "~" H 9950 1350 50  0001 C CNN
	1    9950 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 6524EDBD
P 8350 900
F 0 "#PWR013" H 8350 750 50  0001 C CNN
F 1 "+5V" H 8365 1073 50  0000 C CNN
F 2 "" H 8350 900 50  0001 C CNN
F 3 "" H 8350 900 50  0001 C CNN
	1    8350 900 
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR012
U 1 1 6525992E
P 8150 6250
F 0 "#PWR012" H 8150 6000 50  0001 C CNN
F 1 "Earth" H 8150 6100 50  0001 C CNN
F 2 "" H 8150 6250 50  0001 C CNN
F 3 "~" H 8150 6250 50  0001 C CNN
	1    8150 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 5950 8400 5950
Wire Wire Line
	8350 5950 8350 4600
Wire Wire Line
	8350 4600 8400 4600
Wire Wire Line
	8400 4700 8150 4700
Connection ~ 8350 4600
Wire Wire Line
	8350 4600 8350 3250
Wire Wire Line
	8400 3250 8350 3250
Connection ~ 8350 3250
Wire Wire Line
	8350 1900 8350 3250
Connection ~ 8350 1900
Wire Wire Line
	8300 2100 8300 2500
Wire Wire Line
	8300 2500 8400 2500
Wire Wire Line
	9150 3250 9250 3250
Wire Wire Line
	9250 3250 9250 3450
Wire Wire Line
	9250 3450 8300 3450
Wire Wire Line
	8300 3450 8300 3850
Wire Wire Line
	8300 3850 8400 3850
Wire Wire Line
	9150 4600 9200 4600
Wire Wire Line
	9200 4600 9200 4800
Wire Wire Line
	9200 4800 8300 4800
Wire Wire Line
	8300 4800 8300 5200
Wire Wire Line
	8300 5200 8400 5200
Wire Wire Line
	8400 1550 8050 1550
Wire Wire Line
	8400 2900 8050 2900
Wire Wire Line
	8400 4250 8050 4250
Wire Wire Line
	8400 5600 8050 5600
Wire Wire Line
	7950 1050 7950 2400
Wire Wire Line
	7950 1050 8400 1050
Wire Wire Line
	7950 2400 8400 2400
Wire Wire Line
	7950 2400 7950 3750
Wire Wire Line
	7950 3750 8400 3750
Connection ~ 7950 2400
Wire Wire Line
	7950 5100 8400 5100
Connection ~ 7950 3750
Wire Wire Line
	8000 1250 8000 2600
Wire Wire Line
	8000 2600 8400 2600
Wire Wire Line
	8000 1250 8400 1250
Wire Wire Line
	8000 2600 8000 3950
Wire Wire Line
	8000 3950 8400 3950
Connection ~ 8000 2600
Wire Wire Line
	8000 5300 8400 5300
Connection ~ 8000 3950
Wire Wire Line
	8050 1550 8050 2900
Wire Wire Line
	8050 2900 8050 4250
Connection ~ 8050 2900
Connection ~ 8050 4250
Connection ~ 8150 4700
Wire Wire Line
	8400 6050 8150 6050
Connection ~ 8150 6050
Wire Wire Line
	8150 6050 8150 6250
Wire Wire Line
	8400 3350 8150 3350
Connection ~ 8150 3350
Wire Wire Line
	8150 2000 8400 2000
Wire Wire Line
	9400 4450 9150 4450
Wire Wire Line
	9150 4350 9400 4350
Wire Wire Line
	9400 4250 9150 4250
Wire Wire Line
	9150 4150 9400 4150
Wire Wire Line
	9400 4050 9150 4050
Wire Wire Line
	9150 3950 9400 3950
Wire Wire Line
	9400 3850 9150 3850
Wire Wire Line
	9150 3750 9400 3750
Wire Wire Line
	9750 3750 9600 3750
Wire Wire Line
	9750 3850 9600 3850
Wire Wire Line
	9750 3950 9600 3950
Wire Wire Line
	9750 4050 9600 4050
Wire Wire Line
	9750 4150 9600 4150
Wire Wire Line
	9750 4250 9600 4250
Wire Wire Line
	9750 4350 9600 4350
Wire Wire Line
	9750 4450 9600 4450
$Comp
L Device:R_Small_US R39
U 1 1 651FF4F2
P 9500 4450
F 0 "R39" V 9450 4300 50  0000 C CNN
F 1 "200" V 9550 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 4450 50  0001 C CNN
F 3 "~" H 9500 4450 50  0001 C CNN
	1    9500 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R38
U 1 1 651FF4EC
P 9500 4350
F 0 "R38" V 9450 4200 50  0000 C CNN
F 1 "200" V 9550 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 4350 50  0001 C CNN
F 3 "~" H 9500 4350 50  0001 C CNN
	1    9500 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R37
U 1 1 651FF4E6
P 9500 4250
F 0 "R37" V 9450 4100 50  0000 C CNN
F 1 "200" V 9550 4400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 4250 50  0001 C CNN
F 3 "~" H 9500 4250 50  0001 C CNN
	1    9500 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R36
U 1 1 651FF4E0
P 9500 4150
F 0 "R36" V 9450 4000 50  0000 C CNN
F 1 "200" V 9550 4300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 4150 50  0001 C CNN
F 3 "~" H 9500 4150 50  0001 C CNN
	1    9500 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R35
U 1 1 651FF4DA
P 9500 4050
F 0 "R35" V 9450 3900 50  0000 C CNN
F 1 "200" V 9550 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 4050 50  0001 C CNN
F 3 "~" H 9500 4050 50  0001 C CNN
	1    9500 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R34
U 1 1 651FF4D4
P 9500 3950
F 0 "R34" V 9450 3800 50  0000 C CNN
F 1 "200" V 9550 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 3950 50  0001 C CNN
F 3 "~" H 9500 3950 50  0001 C CNN
	1    9500 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R33
U 1 1 651FF4CE
P 9500 3850
F 0 "R33" V 9450 3700 50  0000 C CNN
F 1 "200" V 9550 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 3850 50  0001 C CNN
F 3 "~" H 9500 3850 50  0001 C CNN
	1    9500 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R32
U 1 1 651FF4C8
P 9500 3750
F 0 "R32" V 9450 3600 50  0000 C CNN
F 1 "200" V 9550 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 3750 50  0001 C CNN
F 3 "~" H 9500 3750 50  0001 C CNN
	1    9500 3750
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x08 J5
U 1 1 651FF4C2
P 9950 4050
F 0 "J5" H 10030 4042 50  0000 L CNN
F 1 "Columns 8-15 LED Cathodes" H 10030 3951 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-8-5.08_1x08_P5.08mm_Horizontal" H 9950 4050 50  0001 C CNN
F 3 "~" H 9950 4050 50  0001 C CNN
	1    9950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2100 8300 2100
Wire Wire Line
	9200 1900 9200 2100
Wire Wire Line
	9150 1900 9200 1900
$Comp
L Device:R_Small_US R24
U 1 1 65216118
P 9500 2400
F 0 "R24" V 9450 2250 50  0000 C CNN
F 1 "200" V 9550 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 2400 50  0001 C CNN
F 3 "~" H 9500 2400 50  0001 C CNN
	1    9500 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R25
U 1 1 6521611E
P 9500 2500
F 0 "R25" V 9450 2350 50  0000 C CNN
F 1 "200" V 9550 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 2500 50  0001 C CNN
F 3 "~" H 9500 2500 50  0001 C CNN
	1    9500 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R26
U 1 1 65216124
P 9500 2600
F 0 "R26" V 9450 2450 50  0000 C CNN
F 1 "200" V 9550 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 2600 50  0001 C CNN
F 3 "~" H 9500 2600 50  0001 C CNN
	1    9500 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R27
U 1 1 6521612A
P 9500 2700
F 0 "R27" V 9450 2550 50  0000 C CNN
F 1 "200" V 9550 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 2700 50  0001 C CNN
F 3 "~" H 9500 2700 50  0001 C CNN
	1    9500 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R28
U 1 1 65216130
P 9500 2800
F 0 "R28" V 9450 2650 50  0000 C CNN
F 1 "200" V 9550 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 2800 50  0001 C CNN
F 3 "~" H 9500 2800 50  0001 C CNN
	1    9500 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R29
U 1 1 65216136
P 9500 2900
F 0 "R29" V 9450 2750 50  0000 C CNN
F 1 "200" V 9550 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 2900 50  0001 C CNN
F 3 "~" H 9500 2900 50  0001 C CNN
	1    9500 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R30
U 1 1 6521613C
P 9500 3000
F 0 "R30" V 9450 2850 50  0000 C CNN
F 1 "200" V 9550 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 3000 50  0001 C CNN
F 3 "~" H 9500 3000 50  0001 C CNN
	1    9500 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R31
U 1 1 65216142
P 9500 3100
F 0 "R31" V 9450 2950 50  0000 C CNN
F 1 "200" V 9550 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9500 3100 50  0001 C CNN
F 3 "~" H 9500 3100 50  0001 C CNN
	1    9500 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 3100 9600 3100
Wire Wire Line
	9750 3000 9600 3000
Wire Wire Line
	9750 2900 9600 2900
Wire Wire Line
	9750 2800 9600 2800
Wire Wire Line
	9750 2700 9600 2700
Wire Wire Line
	9750 2600 9600 2600
Wire Wire Line
	9750 2500 9600 2500
Wire Wire Line
	9750 2400 9600 2400
Wire Wire Line
	9150 2400 9400 2400
Wire Wire Line
	9400 2500 9150 2500
Wire Wire Line
	9150 2600 9400 2600
Wire Wire Line
	9400 2700 9150 2700
Wire Wire Line
	9150 2800 9400 2800
Wire Wire Line
	9400 2900 9150 2900
Wire Wire Line
	9150 3000 9400 3000
Wire Wire Line
	9400 3100 9150 3100
$Comp
L Connector:Screw_Terminal_01x08 J4
U 1 1 6522CFD8
P 9950 2700
F 0 "J4" H 10030 2692 50  0000 L CNN
F 1 "Columns 16-23 LED Cathodes" H 10030 2601 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-8-5.08_1x08_P5.08mm_Horizontal" H 9950 2700 50  0001 C CNN
F 3 "~" H 9950 2700 50  0001 C CNN
	1    9950 2700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT244 U2
U 1 1 652248FF
P 6500 1550
F 0 "U2" H 6500 1750 50  0000 C CNN
F 1 "74HCT244" H 6500 1250 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 6500 1550 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 6500 1550 50  0001 C CNN
	1    6500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3750 7950 5100
Wire Wire Line
	8000 3950 8000 5300
Wire Wire Line
	8050 4250 8050 5600
Wire Wire Line
	8350 1900 8350 900 
Wire Wire Line
	7550 6300 7550 6150
Wire Wire Line
	6000 1950 6000 2050
Wire Wire Line
	6000 2050 6000 2350
Wire Wire Line
	6000 2350 6500 2350
Connection ~ 6000 2050
$Comp
L power:Earth #PWR07
U 1 1 653BD2E0
P 6500 2450
F 0 "#PWR07" H 6500 2200 50  0001 C CNN
F 1 "Earth" H 6500 2300 50  0001 C CNN
F 2 "" H 6500 2450 50  0001 C CNN
F 3 "~" H 6500 2450 50  0001 C CNN
	1    6500 2450
	1    0    0    -1  
$EndComp
Connection ~ 6500 2350
Wire Wire Line
	6500 2450 6500 2400
$Comp
L power:+5V #PWR06
U 1 1 653C6F5E
P 6500 750
F 0 "#PWR06" H 6500 600 50  0001 C CNN
F 1 "+5V" H 6515 923 50  0000 C CNN
F 2 "" H 6500 750 50  0001 C CNN
F 3 "" H 6500 750 50  0001 C CNN
	1    6500 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1050 7950 1050
Connection ~ 7950 1050
Wire Wire Line
	7000 1150 8400 1150
Wire Wire Line
	8000 1250 7000 1250
Connection ~ 8000 1250
Wire Wire Line
	8050 1550 8050 1350
Wire Wire Line
	8050 1350 7000 1350
Connection ~ 8050 1550
$Comp
L 74xx_IEEE:74HC238 U4
U 1 1 654DBBED
P 7250 3450
F 0 "U4" H 7300 3350 50  0000 C CNN
F 1 "74HC238" H 7200 3200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 7250 3450 50  0001 C CNN
F 3 "" H 7250 3450 50  0001 C CNN
	1    7250 3450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 654DDAD0
P 7700 3400
F 0 "#PWR011" H 7700 3250 50  0001 C CNN
F 1 "+5V" H 7715 3573 50  0000 C CNN
F 2 "" H 7700 3400 50  0001 C CNN
F 3 "" H 7700 3400 50  0001 C CNN
	1    7700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3450 7600 2800
Wire Wire Line
	7600 2800 7150 2800
Wire Wire Line
	7150 2800 7150 2900
Connection ~ 7600 3450
Wire Wire Line
	7600 3450 7550 3450
Wire Wire Line
	7450 2900 7450 2850
Wire Wire Line
	7450 2850 7300 2850
Wire Wire Line
	7300 2850 7300 2900
Wire Wire Line
	6550 2850 6550 3450
Connection ~ 7300 2850
Wire Wire Line
	7600 3450 7650 3450
$Comp
L power:Earth #PWR08
U 1 1 65533632
P 6550 4100
F 0 "#PWR08" H 6550 3850 50  0001 C CNN
F 1 "Earth" H 6550 3950 50  0001 C CNN
F 2 "" H 6550 4100 50  0001 C CNN
F 3 "~" H 6550 4100 50  0001 C CNN
	1    6550 4100
	1    0    0    -1  
$EndComp
Connection ~ 6550 3450
Wire Wire Line
	6550 3450 6650 3450
Wire Wire Line
	6550 2850 7300 2850
Wire Wire Line
	7700 3450 7700 3400
Wire Wire Line
	6800 2300 6800 2900
Wire Wire Line
	6900 2350 6900 2900
Wire Wire Line
	7000 1650 7100 1650
Wire Wire Line
	6800 2300 7150 2300
Wire Wire Line
	7150 2300 7150 1550
Wire Wire Line
	7150 1550 7000 1550
Wire Wire Line
	7000 1450 7200 1450
Wire Wire Line
	7200 1450 7200 2350
Wire Wire Line
	7200 2350 6900 2350
Wire Wire Line
	7100 2250 6700 2250
Wire Wire Line
	7100 1650 7100 2250
Wire Wire Line
	6700 2250 6700 2900
Wire Wire Line
	6200 6050 6100 6050
Wire Wire Line
	6250 5950 6150 5950
Wire Wire Line
	6300 5850 6200 5850
Wire Wire Line
	6350 5750 6250 5750
Wire Wire Line
	6400 5650 6300 5650
Wire Wire Line
	6450 5550 6350 5550
Wire Wire Line
	6500 5450 6400 5450
Wire Wire Line
	6550 5350 6450 5350
Wire Wire Line
	6450 5350 6450 5050
Wire Wire Line
	7450 4000 7450 5050
Wire Wire Line
	7450 5050 6450 5050
Wire Wire Line
	6400 5000 7350 5000
Wire Wire Line
	7350 5000 7350 4000
Wire Wire Line
	6400 5000 6400 5450
Wire Wire Line
	7250 4000 7250 4950
Wire Wire Line
	7250 4950 6350 4950
Wire Wire Line
	6350 4950 6350 5550
Wire Wire Line
	6300 4900 7150 4900
Wire Wire Line
	7150 4900 7150 4000
Wire Wire Line
	6300 4900 6300 5650
Wire Wire Line
	7050 4000 7050 4850
Wire Wire Line
	7050 4850 6250 4850
Wire Wire Line
	6250 4850 6250 5750
Wire Wire Line
	6200 4800 6950 4800
Wire Wire Line
	6950 4800 6950 4000
Wire Wire Line
	6200 4800 6200 5850
Wire Wire Line
	6850 4000 6850 4750
Wire Wire Line
	6850 4750 6150 4750
Wire Wire Line
	6150 4750 6150 5950
Wire Wire Line
	6100 4700 6750 4700
Wire Wire Line
	6750 4700 6750 4000
Wire Wire Line
	6100 4700 6100 6050
Connection ~ 6350 3050
Wire Wire Line
	6350 3200 6350 3050
$Comp
L power:Earth #PWR05
U 1 1 654A3738
P 6350 3200
F 0 "#PWR05" H 6350 2950 50  0001 C CNN
F 1 "Earth" H 6350 3050 50  0001 C CNN
F 2 "" H 6350 3200 50  0001 C CNN
F 3 "~" H 6350 3200 50  0001 C CNN
	1    6350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2950 6350 2850
Connection ~ 6350 2950
Wire Wire Line
	6250 2950 6350 2950
Wire Wire Line
	6350 2850 6350 2750
Connection ~ 6350 2850
Wire Wire Line
	6250 2850 6350 2850
Wire Wire Line
	6350 2750 6350 2650
Connection ~ 6350 2750
Wire Wire Line
	6250 2750 6350 2750
Wire Wire Line
	6350 2650 6350 2550
Connection ~ 6350 2650
Wire Wire Line
	6250 2650 6350 2650
Wire Wire Line
	6350 2550 6350 2450
Connection ~ 6350 2550
Wire Wire Line
	6250 2550 6350 2550
Wire Wire Line
	6350 2450 6250 2450
Wire Wire Line
	6350 3050 6350 2950
Wire Wire Line
	6250 3050 6350 3050
$Comp
L Device:R_Small_US R1
U 1 1 65394B3F
P 6150 2450
F 0 "R1" V 6200 2550 50  0000 C CNN
F 1 "1M" V 6100 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6150 2450 50  0001 C CNN
F 3 "~" H 6150 2450 50  0001 C CNN
	1    6150 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 65394837
P 6150 2550
F 0 "R2" V 6200 2650 50  0000 C CNN
F 1 "1M" V 6100 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6150 2550 50  0001 C CNN
F 3 "~" H 6150 2550 50  0001 C CNN
	1    6150 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 6537F1BB
P 6150 2650
F 0 "R3" V 6200 2750 50  0000 C CNN
F 1 "1M" V 6100 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6150 2650 50  0001 C CNN
F 3 "~" H 6150 2650 50  0001 C CNN
	1    6150 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 6537EF0B
P 6150 2750
F 0 "R4" V 6200 2850 50  0000 C CNN
F 1 "1M" V 6100 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6150 2750 50  0001 C CNN
F 3 "~" H 6150 2750 50  0001 C CNN
	1    6150 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 6537EC32
P 6150 2850
F 0 "R5" V 6200 2950 50  0000 C CNN
F 1 "1M" V 6100 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6150 2850 50  0001 C CNN
F 3 "~" H 6150 2850 50  0001 C CNN
	1    6150 2850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 6537CB69
P 6150 2950
F 0 "R6" V 6200 3050 50  0000 C CNN
F 1 "1M" V 6100 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6150 2950 50  0001 C CNN
F 3 "~" H 6150 2950 50  0001 C CNN
	1    6150 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 6533D909
P 6150 3050
F 0 "R7" V 6200 3150 50  0000 C CNN
F 1 "1M" V 6100 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6150 3050 50  0001 C CNN
F 3 "~" H 6150 3050 50  0001 C CNN
	1    6150 3050
	0    -1   -1   0   
$EndComp
Text Notes 6900 725  0    50   ~ 0
Note: Purpose of 74HCT244 is to translate 3V3 \nlogic from ESP32 to 5V logic for the control ICs. \nUnidirectional operation only. 
Wire Wire Line
	4450 3850 4450 3900
$Comp
L power:Earth #PWR04
U 1 1 6583D4E7
P 4450 3900
F 0 "#PWR04" H 4450 3650 50  0001 C CNN
F 1 "Earth" H 4450 3750 50  0001 C CNN
F 2 "" H 4450 3900 50  0001 C CNN
F 3 "~" H 4450 3900 50  0001 C CNN
	1    4450 3900
	1    0    0    -1  
$EndComp
Connection ~ 4450 3850
Wire Wire Line
	4550 3850 4550 3800
Wire Wire Line
	4450 3850 4550 3850
Wire Wire Line
	4450 3850 4450 3800
Wire Wire Line
	4350 3850 4450 3850
Wire Wire Line
	4350 3800 4350 3850
$Comp
L power:+5V #PWR03
U 1 1 6580F9E1
P 4450 1000
F 0 "#PWR03" H 4450 850 50  0001 C CNN
F 1 "+5V" H 4350 1100 50  0000 C CNN
F 2 "" H 4450 1000 50  0001 C CNN
F 3 "" H 4450 1000 50  0001 C CNN
	1    4450 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1050 6000 1050
Wire Wire Line
	6000 1150 5700 1150
Wire Wire Line
	5750 1250 6000 1250
Wire Wire Line
	6000 1350 5800 1350
Wire Wire Line
	5850 1450 6000 1450
Wire Wire Line
	5900 1550 6000 1550
Wire Wire Line
	5950 1650 6000 1650
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 65592254
P 5150 6000
F 0 "J1" H 5230 5992 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 5230 5901 50  0000 L CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 5150 6000 50  0001 C CNN
F 3 "~" H 5150 6000 50  0001 C CNN
	1    5150 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 65595134
P 4850 5900
F 0 "#PWR01" H 4850 5750 50  0001 C CNN
F 1 "+5V" H 4865 6073 50  0000 C CNN
F 2 "" H 4850 5900 50  0001 C CNN
F 3 "" H 4850 5900 50  0001 C CNN
	1    4850 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6000 4950 6000
Wire Wire Line
	4850 5900 4850 6000
$Comp
L power:Earth #PWR02
U 1 1 655C38DD
P 4850 6150
F 0 "#PWR02" H 4850 5900 50  0001 C CNN
F 1 "Earth" H 4850 6000 50  0001 C CNN
F 2 "" H 4850 6150 50  0001 C CNN
F 3 "~" H 4850 6150 50  0001 C CNN
	1    4850 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6150 4850 6100
Wire Wire Line
	4850 6100 4950 6100
Wire Wire Line
	8150 2000 8150 3250
Wire Wire Line
	8150 3350 8150 4600
Wire Wire Line
	8150 4700 8150 5950
$Comp
L Device:C_Small C1
U 1 1 656ACBE6
P 6700 750
F 0 "C1" V 6471 750 50  0000 C CNN
F 1 "0.1uF" V 6562 750 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 6700 750 50  0001 C CNN
F 3 "~" H 6700 750 50  0001 C CNN
	1    6700 750 
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 2400 6500 2400
Connection ~ 6500 2400
Wire Wire Line
	6500 2400 6500 2350
$Comp
L Device:C_Small C4
U 1 1 656DD45F
P 8250 1900
F 0 "C4" V 8021 1900 50  0000 C CNN
F 1 "0.1uF" V 8112 1900 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 8250 1900 50  0001 C CNN
F 3 "~" H 8250 1900 50  0001 C CNN
	1    8250 1900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 656DE70C
P 8250 3250
F 0 "C5" V 8021 3250 50  0000 C CNN
F 1 "0.1uF" V 8112 3250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 8250 3250 50  0001 C CNN
F 3 "~" H 8250 3250 50  0001 C CNN
	1    8250 3250
	0    1    1    0   
$EndComp
Connection ~ 8150 3250
Wire Wire Line
	8150 3250 8150 3350
$Comp
L Device:C_Small C6
U 1 1 656DF0C7
P 8250 4600
F 0 "C6" V 8021 4600 50  0000 C CNN
F 1 "0.1uF" V 8112 4600 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 8250 4600 50  0001 C CNN
F 3 "~" H 8250 4600 50  0001 C CNN
	1    8250 4600
	0    1    1    0   
$EndComp
Connection ~ 8150 4600
Wire Wire Line
	8150 4600 8150 4700
$Comp
L Device:C_Small C7
U 1 1 656DFE0F
P 8250 5950
F 0 "C7" V 8021 5950 50  0000 C CNN
F 1 "0.1uF" V 8112 5950 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 8250 5950 50  0001 C CNN
F 3 "~" H 8250 5950 50  0001 C CNN
	1    8250 5950
	0    1    1    0   
$EndComp
Connection ~ 8350 5950
Connection ~ 8150 5950
Wire Wire Line
	8150 5950 8150 6050
$Comp
L Device:C_Small C2
U 1 1 656E07C6
P 7200 6300
F 0 "C2" V 7300 6200 50  0000 C CNN
F 1 "0.1uF" V 7300 6400 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 7200 6300 50  0001 C CNN
F 3 "~" H 7200 6300 50  0001 C CNN
	1    7200 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 6300 6850 6150
Wire Wire Line
	7100 6300 6850 6300
Connection ~ 6850 6300
Wire Wire Line
	7300 6300 7550 6300
Connection ~ 7550 6300
$Comp
L Device:C_Small C3
U 1 1 6572E66B
P 7650 3600
F 0 "C3" H 7700 3700 50  0000 L CNN
F 1 "0.1uF" H 7700 3500 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 7650 3600 50  0001 C CNN
F 3 "~" H 7650 3600 50  0001 C CNN
	1    7650 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3500 7650 3450
Connection ~ 7650 3450
Wire Wire Line
	7650 3450 7700 3450
Wire Wire Line
	6550 4050 7650 4050
Wire Wire Line
	7650 4050 7650 3700
Wire Wire Line
	6550 3450 6550 4050
Wire Wire Line
	6550 4100 6550 4050
Connection ~ 6550 4050
Wire Wire Line
	8150 2000 8150 1900
Connection ~ 8150 2000
Wire Wire Line
	6600 750  6500 750 
Connection ~ 6500 750 
Wire Wire Line
	6800 750  7300 750 
Wire Wire Line
	7300 750  7300 2400
Wire Wire Line
	5850 1450 5850 2650
Wire Wire Line
	5950 1650 5950 2450
Wire Wire Line
	5900 1550 5900 2550
Wire Wire Line
	5800 1350 5800 2750
Wire Wire Line
	5650 3050 6050 3050
Wire Wire Line
	5700 2950 6050 2950
Wire Wire Line
	6050 2850 5750 2850
Wire Wire Line
	5800 2750 6050 2750
Wire Wire Line
	6050 2650 5850 2650
Wire Wire Line
	5900 2550 6050 2550
Wire Wire Line
	6050 2450 5950 2450
Wire Wire Line
	5750 1250 5750 2850
Wire Wire Line
	5700 1150 5700 2950
Wire Wire Line
	5650 1050 5650 3050
Connection ~ 5650 3050
Wire Wire Line
	5000 3050 5650 3050
Connection ~ 5700 2950
Wire Wire Line
	5000 2950 5700 2950
Connection ~ 5750 2850
Wire Wire Line
	5000 2850 5750 2850
Connection ~ 5800 2750
Wire Wire Line
	5000 2750 5800 2750
Connection ~ 5850 2650
Wire Wire Line
	5000 2650 5850 2650
Connection ~ 5900 2550
Wire Wire Line
	5000 2550 5900 2550
Connection ~ 5950 2450
Wire Wire Line
	5000 2450 5950 2450
$Comp
L Custom_Symbols:ESP32-DEVKITC-32E U1
U 1 1 6539A849
P 4350 2400
F 0 "U1" H 4100 3000 50  0000 C CNN
F 1 "ESP32-DEVKITC-32E" V 4400 2850 50  0000 C CNN
F 2 "Arduino:ESP32-DevkitC" H 4300 2400 50  0001 C CNN
F 3 "" H 4300 2400 50  0001 C CNN
	1    4350 2400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 658676FC
P 3250 1400
F 0 "SW6" V 3100 1600 50  0000 R CNN
F 1 "RIGHT" V 3250 1450 50  0000 R CNN
F 2 "Arduino:Custom_Pin_Header" H 3250 1600 50  0001 C CNN
F 3 "~" H 3250 1600 50  0001 C CNN
	1    3250 1400
	0    -1   1    0   
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 6586BF68
P 2850 1400
F 0 "SW5" V 2700 1600 50  0000 R CNN
F 1 "LEFT" V 2850 1450 50  0000 R CNN
F 2 "Arduino:Custom_Pin_Header" H 2850 1600 50  0001 C CNN
F 3 "~" H 2850 1600 50  0001 C CNN
	1    2850 1400
	0    -1   1    0   
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 6586C49E
P 2450 1400
F 0 "SW4" V 2300 1600 50  0000 R CNN
F 1 "DOWN" V 2450 1450 50  0000 R CNN
F 2 "Arduino:Custom_Pin_Header" H 2450 1600 50  0001 C CNN
F 3 "~" H 2450 1600 50  0001 C CNN
	1    2450 1400
	0    -1   1    0   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 6586C73A
P 2050 1400
F 0 "SW3" V 1900 1600 50  0000 R CNN
F 1 "UP" V 2050 1450 50  0000 R CNN
F 2 "Arduino:Custom_Pin_Header" H 2050 1600 50  0001 C CNN
F 3 "~" H 2050 1600 50  0001 C CNN
	1    2050 1400
	0    -1   1    0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 6586CCB3
P 1650 1400
F 0 "SW2" V 1500 1600 50  0000 R CNN
F 1 "BACK" V 1650 1450 50  0000 R CNN
F 2 "Arduino:Custom_Pin_Header" H 1650 1600 50  0001 C CNN
F 3 "~" H 1650 1600 50  0001 C CNN
	1    1650 1400
	0    -1   1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 6590598D
P 1250 1400
F 0 "SW1" V 1100 1600 50  0000 R CNN
F 1 "OK" V 1250 1450 50  0000 R CNN
F 2 "Arduino:Custom_Pin_Header" H 1250 1600 50  0001 C CNN
F 3 "~" H 1250 1600 50  0001 C CNN
	1    1250 1400
	0    -1   1    0   
$EndComp
Wire Wire Line
	3250 1200 3250 850 
Wire Wire Line
	3250 850  5050 850 
Wire Wire Line
	5050 850  5050 1750
Wire Wire Line
	5050 1750 5000 1750
Wire Wire Line
	2850 1200 2850 800 
Wire Wire Line
	2850 800  5100 800 
Wire Wire Line
	5100 800  5100 1850
Wire Wire Line
	5100 1850 5000 1850
Wire Wire Line
	2450 1200 2450 750 
Wire Wire Line
	2450 750  5150 750 
Wire Wire Line
	5150 750  5150 2000
Wire Wire Line
	5150 2000 5000 2000
Wire Wire Line
	2050 1200 2050 700 
Wire Wire Line
	2050 700  5200 700 
Wire Wire Line
	5200 700  5200 2100
Wire Wire Line
	5200 2100 5000 2100
Wire Wire Line
	5000 2200 5250 2200
Wire Wire Line
	5250 2200 5250 650 
Wire Wire Line
	5250 650  1650 650 
Wire Wire Line
	1650 650  1650 1200
Wire Wire Line
	1250 1200 1250 600 
Wire Wire Line
	1250 600  5300 600 
Wire Wire Line
	5300 600  5300 2350
Wire Wire Line
	5300 2350 5000 2350
Wire Wire Line
	1250 1600 1650 1600
Connection ~ 2850 1600
Wire Wire Line
	2850 1600 3250 1600
Connection ~ 2450 1600
Wire Wire Line
	2450 1600 2850 1600
Connection ~ 1650 1600
Wire Wire Line
	1650 1600 2050 1600
Wire Wire Line
	2050 1600 2250 1600
Connection ~ 2050 1600
Wire Wire Line
	2250 1600 2250 1750
Connection ~ 2250 1600
Wire Wire Line
	2250 1600 2450 1600
$Comp
L power:Earth #PWR014
U 1 1 65AE4D92
P 2250 1750
F 0 "#PWR014" H 2250 1500 50  0001 C CNN
F 1 "Earth" H 2250 1600 50  0001 C CNN
F 2 "" H 2250 1750 50  0001 C CNN
F 3 "~" H 2250 1750 50  0001 C CNN
	1    2250 1750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
