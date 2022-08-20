EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
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
L Connector:Conn_01x14_Female J?
U 1 1 6001C077
P 1750 2150
F 0 "J?" H 1778 2126 50  0000 L CNN
F 1 "Conn_01x14_Female" H 1778 2035 50  0000 L CNN
F 2 "Connector_FFC-FPC:Hirose_FH12-14S-0.5SH_1x14-1MP_P0.50mm_Horizontal" H 1750 2150 50  0001 C CNN
F 3 "~" H 1750 2150 50  0001 C CNN
	1    1750 2150
	-1   0    0    -1  
$EndComp
Text GLabel 1950 1850 2    50   Input ~ 0
A0
Text GLabel 1950 1950 2    50   Input ~ 0
NRES
Text GLabel 1950 2050 2    50   Input ~ 0
NCS
Text GLabel 1950 2150 2    50   Input ~ 0
VDD1
Text GLabel 1950 2250 2    50   Input ~ 0
VSS
Text GLabel 1950 2450 2    50   Input ~ 0
VPP
Text GLabel 1950 2550 2    50   Input ~ 0
IREF
Text GLabel 1950 2650 2    50   Input ~ 0
VSL
Text GLabel 1950 2750 2    50   Input ~ 0
VCOMH
Text GLabel 1950 2850 2    50   Input ~ 0
VSEGM
$Comp
L power:+3V3 #PWR?
U 1 1 60022B0C
P 5400 1100
F 0 "#PWR?" H 5400 950 50  0001 C CNN
F 1 "+3V3" H 5415 1273 50  0000 C CNN
F 2 "" H 5400 1100 50  0001 C CNN
F 3 "" H 5400 1100 50  0001 C CNN
	1    5400 1100
	1    0    0    -1  
$EndComp
Text GLabel 5250 1300 0    50   Input ~ 0
VDD1
Wire Wire Line
	5250 1300 5400 1300
Wire Wire Line
	5400 1300 5400 1100
$Comp
L Device:R_Small R?
U 1 1 60023B48
P 5200 1850
F 0 "R?" H 5259 1896 50  0000 L CNN
F 1 "620k" H 5259 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5200 1850 50  0001 C CNN
F 3 "~" H 5200 1850 50  0001 C CNN
	1    5200 1850
	1    0    0    -1  
$EndComp
Text GLabel 5100 2150 0    50   Input ~ 0
IREF
Text GLabel 5100 1650 0    50   Input ~ 0
VSS
Wire Wire Line
	5100 1650 5200 1650
Wire Wire Line
	5200 1650 5200 1750
Wire Wire Line
	5200 1950 5200 2150
Wire Wire Line
	5200 2150 5100 2150
Text GLabel 3200 2750 1    50   Input ~ 0
VSL
Text GLabel 3750 2750 1    50   Input ~ 0
VCOMH
Text GLabel 4250 2750 1    50   Input ~ 0
VSEGM
$Comp
L Device:C_Small C?
U 1 1 60026BD7
P 3200 3000
F 0 "C?" H 3292 3046 50  0000 L CNN
F 1 "4u7" H 3292 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 3200 3000 50  0001 C CNN
F 3 "~" H 3200 3000 50  0001 C CNN
	1    3200 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60026E83
P 3750 3000
F 0 "C?" H 3842 3046 50  0000 L CNN
F 1 "4u7" H 3842 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 3750 3000 50  0001 C CNN
F 3 "~" H 3750 3000 50  0001 C CNN
	1    3750 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 600272D7
P 4250 3000
F 0 "C?" H 4342 3046 50  0000 L CNN
F 1 "4u7" H 4342 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4250 3000 50  0001 C CNN
F 3 "~" H 4250 3000 50  0001 C CNN
	1    4250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2750 3200 2900
Wire Wire Line
	3750 2750 3750 2900
Wire Wire Line
	4250 2750 4250 2900
Text GLabel 2900 3250 0    50   Input ~ 0
VSS
Wire Wire Line
	3200 3250 2900 3250
Wire Wire Line
	3200 3250 3750 3250
Wire Wire Line
	3750 3250 3750 3100
Connection ~ 3200 3250
Wire Wire Line
	3750 3250 4250 3250
Wire Wire Line
	4250 3250 4250 3100
Connection ~ 3750 3250
$Comp
L fx502-recreate-rescue:GND-Microtan_65_CPU-cache #PWR?
U 1 1 6002969F
P 3200 3550
F 0 "#PWR?" H 3200 3550 30  0001 C CNN
F 1 "GND" H 3200 3480 30  0001 C CNN
F 2 "" H 3200 3550 60  0000 C CNN
F 3 "" H 3200 3550 60  0000 C CNN
	1    3200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3100 3200 3250
Wire Wire Line
	3200 3550 3200 3250
Text GLabel 4750 2750 1    50   Input ~ 0
VDD1
$Comp
L Device:C_Small C?
U 1 1 6002B703
P 4750 3000
F 0 "C?" H 4842 3046 50  0000 L CNN
F 1 "4u7" H 4842 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4750 3000 50  0001 C CNN
F 3 "~" H 4750 3000 50  0001 C CNN
	1    4750 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2750 4750 2900
Wire Wire Line
	4750 3250 4750 3100
Text GLabel 5250 2750 1    50   Input ~ 0
VPP
$Comp
L Device:C_Small C?
U 1 1 6002BE57
P 5250 3000
F 0 "C?" H 5342 3046 50  0000 L CNN
F 1 "4u7" H 5342 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5250 3000 50  0001 C CNN
F 3 "~" H 5250 3000 50  0001 C CNN
	1    5250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2750 5250 2900
Wire Wire Line
	5250 3250 5250 3100
Wire Wire Line
	4250 3250 4750 3250
Connection ~ 4250 3250
Wire Wire Line
	4750 3250 5250 3250
Connection ~ 4750 3250
Text GLabel 1950 1750 2    50   Input ~ 0
SCLK
Text GLabel 1950 1650 2    50   Input ~ 0
SDIN
Text GLabel 1950 1550 2    50   Input ~ 0
VSS
$Comp
L fx502-recreate-rescue:GND-Microtan_65_CPU-cache #PWR?
U 1 1 602AEF00
P 3600 6350
AR Path="/6001B7D3/60296A19/602AEF00" Ref="#PWR?"  Part="1" 
AR Path="/6001B7D3/602AEF00" Ref="#PWR0103"  Part="1" 
AR Path="/61535A67/602AEF00" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 6350 30  0001 C CNN
F 1 "GND" H 3600 6280 30  0001 C CNN
F 2 "" H 3600 6350 60  0000 C CNN
F 3 "" H 3600 6350 60  0000 C CNN
	1    3600 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 602AEF06
P 1850 4250
AR Path="/6001B7D3/60296A19/602AEF06" Ref="#PWR?"  Part="1" 
AR Path="/6001B7D3/602AEF06" Ref="#PWR0104"  Part="1" 
AR Path="/61535A67/602AEF06" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 4100 50  0001 C CNN
F 1 "+3V3" H 1865 4423 50  0000 C CNN
F 2 "" H 1850 4250 50  0001 C CNN
F 3 "" H 1850 4250 50  0001 C CNN
	1    1850 4250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 602AEF0C
P 3300 5500
AR Path="/6001B7D3/60296A19/602AEF0C" Ref="R?"  Part="1" 
AR Path="/6001B7D3/602AEF0C" Ref="R3"  Part="1" 
AR Path="/61535A67/602AEF0C" Ref="R?"  Part="1" 
F 0 "R?" H 3359 5546 50  0000 L CNN
F 1 "49R" H 3359 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3300 5500 50  0001 C CNN
F 3 "~" H 3300 5500 50  0001 C CNN
	1    3300 5500
	0    1    -1   0   
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 602AEF12
P 3700 5850
AR Path="/6001B7D3/60296A19/602AEF12" Ref="TR?"  Part="1" 
AR Path="/6001B7D3/602AEF12" Ref="TR1"  Part="1" 
AR Path="/61535A67/602AEF12" Ref="TR?"  Part="1" 
F 0 "TR?" H 3977 5896 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 3977 5805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3730 6000 20  0001 C CNN
F 3 "" H 3700 5850 50  0001 C CNN
	1    3700 5850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 6150 3600 6350
Text GLabel 4150 5950 2    50   Input ~ 0
DRV_HV
Wire Wire Line
	4150 5950 3900 5950
Wire Wire Line
	2550 5250 2550 5300
Wire Wire Line
	2550 5500 3200 5500
Wire Wire Line
	3400 5500 3600 5500
Wire Wire Line
	3600 5500 3600 5550
Wire Wire Line
	1850 4250 1850 4450
Wire Wire Line
	1850 4850 2250 4850
Wire Wire Line
	1850 4850 1850 5050
Wire Wire Line
	1850 5050 2250 5050
Connection ~ 1850 4850
$Comp
L Device:R_Small R?
U 1 1 602AEF30
P 3850 5100
AR Path="/6001B7D3/60296A19/602AEF30" Ref="R?"  Part="1" 
AR Path="/6001B7D3/602AEF30" Ref="R5"  Part="1" 
AR Path="/61535A67/602AEF30" Ref="R?"  Part="1" 
F 0 "R?" H 3909 5146 50  0000 L CNN
F 1 "18k" H 3909 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3850 5100 50  0001 C CNN
F 3 "~" H 3850 5100 50  0001 C CNN
	1    3850 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 602AEF36
P 1850 5300
AR Path="/6001B7D3/60296A19/602AEF36" Ref="C?"  Part="1" 
AR Path="/6001B7D3/602AEF36" Ref="C13"  Part="1" 
AR Path="/61535A67/602AEF36" Ref="C?"  Part="1" 
F 0 "C?" H 1942 5346 50  0000 L CNN
F 1 "22uF" H 1942 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 1850 5300 50  0001 C CNN
F 3 "~" H 1850 5300 50  0001 C CNN
	1    1850 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 602AEF3C
P 4500 5100
AR Path="/6001B7D3/60296A19/602AEF3C" Ref="C?"  Part="1" 
AR Path="/6001B7D3/602AEF3C" Ref="C17"  Part="1" 
AR Path="/61535A67/602AEF3C" Ref="C?"  Part="1" 
F 0 "C?" H 4592 5146 50  0000 L CNN
F 1 "22uF" H 4592 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4500 5100 50  0001 C CNN
F 3 "~" H 4500 5100 50  0001 C CNN
	1    4500 5100
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L?
U 1 1 602AEF42
P 2550 4450
AR Path="/6001B7D3/60296A19/602AEF42" Ref="L?"  Part="1" 
AR Path="/6001B7D3/602AEF42" Ref="L1"  Part="1" 
AR Path="/61535A67/602AEF42" Ref="L?"  Part="1" 
F 0 "L?" H 2550 4665 50  0000 C CNN
F 1 "22uH" H 2550 4574 50  0000 C CNN
F 2 "Inductor_SMD:L_Coilcraft_LPS5030" H 2550 4450 50  0001 C CNN
F 3 "~" H 2550 4450 50  0001 C CNN
	1    2550 4450
	1    0    0    -1  
$EndComp
$Comp
L fx502-recreate-rescue:DIODE-Microtan_65_CPU-cache D?
U 1 1 602AEF48
P 3150 4450
AR Path="/6001B7D3/60296A19/602AEF48" Ref="D?"  Part="1" 
AR Path="/6001B7D3/602AEF48" Ref="D1"  Part="1" 
AR Path="/602AEF48" Ref="D1"  Part="1" 
AR Path="/61535A67/602AEF48" Ref="D?"  Part="1" 
F 0 "D?" H 3150 4642 40  0000 C CNN
F 1 "SS36" H 3150 4566 40  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3150 4450 60  0001 C CNN
F 3 "" H 3150 4450 60  0000 C CNN
	1    3150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5050 1850 5200
Connection ~ 1850 5050
Wire Wire Line
	2300 4450 1850 4450
Connection ~ 1850 4450
Wire Wire Line
	1850 4450 1850 4850
Wire Wire Line
	2850 4850 2850 4450
Wire Wire Line
	2850 4450 2950 4450
Wire Wire Line
	2850 4450 2800 4450
Connection ~ 2850 4450
Wire Wire Line
	3350 4450 3850 4450
Wire Wire Line
	3850 4450 3850 4650
Connection ~ 3850 4450
Wire Wire Line
	3850 4850 3850 4900
Wire Wire Line
	2550 5300 3850 5300
Wire Wire Line
	3850 5300 3850 5200
Connection ~ 2550 5300
Wire Wire Line
	2550 5300 2550 5500
Wire Wire Line
	2850 5050 3350 5050
Wire Wire Line
	3350 5050 3350 4900
Wire Wire Line
	3350 4900 3850 4900
Connection ~ 3850 4900
Wire Wire Line
	3850 4900 3850 5000
Wire Wire Line
	4500 5000 4500 4450
Wire Wire Line
	4500 5200 4500 5300
Wire Wire Line
	4500 5300 3850 5300
Connection ~ 3850 5300
Wire Wire Line
	1850 5400 1850 5500
Wire Wire Line
	1850 5500 2550 5500
Connection ~ 2550 5500
$Comp
L Device:R_Small R?
U 1 1 602AEF6B
P 3850 4750
AR Path="/6001B7D3/60296A19/602AEF6B" Ref="R?"  Part="1" 
AR Path="/6001B7D3/602AEF6B" Ref="R4"  Part="1" 
AR Path="/61535A67/602AEF6B" Ref="R?"  Part="1" 
F 0 "R?" H 3909 4796 50  0000 L CNN
F 1 "120k" H 3909 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3850 4750 50  0001 C CNN
F 3 "~" H 3850 4750 50  0001 C CNN
	1    3850 4750
	1    0    0    -1  
$EndComp
Text Notes 3200 4750 0    50   ~ 0
Check values\n
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 602AEF72
P 4850 4450
AR Path="/6001B7D3/60296A19/602AEF72" Ref="JP?"  Part="1" 
AR Path="/6001B7D3/602AEF72" Ref="JP1"  Part="1" 
AR Path="/61535A67/602AEF72" Ref="JP?"  Part="1" 
F 0 "JP?" H 4850 4655 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4850 4564 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4850 4450 50  0001 C CNN
F 3 "~" H 4850 4450 50  0001 C CNN
	1    4850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4450 4500 4450
Wire Wire Line
	4500 4450 4700 4450
Connection ~ 4500 4450
Wire Wire Line
	5000 4450 5650 4450
Text Notes 2950 6500 0    50   ~ 0
Check transistor pinout footprint
Text GLabel 5650 4450 2    50   Input ~ 0
VPP
$Comp
L cq1re1-cache:Regulator_Switching_MT3608 U?
U 1 1 61539E71
P 2550 4950
F 0 "U?" H 2550 5317 50  0000 C CNN
F 1 "Regulator_Switching_MT3608" H 2550 5226 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2600 4700 50  0001 L CIN
F 3 "" H 2300 5400 50  0001 C CNN
	1    2550 4950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
