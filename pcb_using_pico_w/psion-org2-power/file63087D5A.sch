EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L power:+3V3 #PWR?
U 1 1 6308E244
P 3600 1675
AR Path="/6001B7D3/60296A19/6308E244" Ref="#PWR?"  Part="1" 
AR Path="/6001B7D3/6308E244" Ref="#PWR?"  Part="1" 
AR Path="/61535A67/6308E244" Ref="#PWR?"  Part="1" 
AR Path="/6308E244" Ref="#PWR?"  Part="1" 
AR Path="/630BAFD1/6308E244" Ref="#PWR?"  Part="1" 
AR Path="/630649A6/6308E244" Ref="#PWR?"  Part="1" 
AR Path="/63087D5B/6308E244" Ref="#PWR0173"  Part="1" 
F 0 "#PWR0173" H 3600 1525 50  0001 C CNN
F 1 "+3V3" H 3615 1848 50  0000 C CNN
F 2 "" H 3600 1675 50  0001 C CNN
F 3 "" H 3600 1675 50  0001 C CNN
	1    3600 1675
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5225 3100 5225 5075
Wire Wire Line
	4525 2700 4925 2700
Connection ~ 4525 2700
$Comp
L Device:R_Small R?
U 1 1 6308E24F
P 6525 2950
AR Path="/6001B7D3/60296A19/6308E24F" Ref="R?"  Part="1" 
AR Path="/6001B7D3/6308E24F" Ref="R?"  Part="1" 
AR Path="/61535A67/6308E24F" Ref="R?"  Part="1" 
AR Path="/6308E24F" Ref="R?"  Part="1" 
AR Path="/630BAFD1/6308E24F" Ref="R?"  Part="1" 
AR Path="/630649A6/6308E24F" Ref="R?"  Part="1" 
AR Path="/63087D5B/6308E24F" Ref="R47"  Part="1" 
F 0 "R47" H 6584 2996 50  0000 L CNN
F 1 "5k1" H 6584 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6525 2950 50  0001 C CNN
F 3 "~" H 6525 2950 50  0001 C CNN
	1    6525 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6308E255
P 4525 4750
AR Path="/6001B7D3/60296A19/6308E255" Ref="C?"  Part="1" 
AR Path="/6001B7D3/6308E255" Ref="C?"  Part="1" 
AR Path="/61535A67/6308E255" Ref="C?"  Part="1" 
AR Path="/6308E255" Ref="C?"  Part="1" 
AR Path="/630BAFD1/6308E255" Ref="C?"  Part="1" 
AR Path="/630649A6/6308E255" Ref="C?"  Part="1" 
AR Path="/63087D5B/6308E255" Ref="C27"  Part="1" 
F 0 "C27" H 4617 4796 50  0000 L CNN
F 1 "22uF" H 4617 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 4525 4750 50  0001 C CNN
F 3 "~" H 4525 4750 50  0001 C CNN
	1    4525 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6308E25B
P 7175 2950
AR Path="/6001B7D3/60296A19/6308E25B" Ref="C?"  Part="1" 
AR Path="/6001B7D3/6308E25B" Ref="C?"  Part="1" 
AR Path="/61535A67/6308E25B" Ref="C?"  Part="1" 
AR Path="/6308E25B" Ref="C?"  Part="1" 
AR Path="/630BAFD1/6308E25B" Ref="C?"  Part="1" 
AR Path="/630649A6/6308E25B" Ref="C?"  Part="1" 
AR Path="/63087D5B/6308E25B" Ref="C28"  Part="1" 
F 0 "C28" H 7267 2996 50  0000 L CNN
F 1 "22uF" H 7267 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 7175 2950 50  0001 C CNN
F 3 "~" H 7175 2950 50  0001 C CNN
	1    7175 2950
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L?
U 1 1 6308E261
P 5225 2300
AR Path="/6001B7D3/60296A19/6308E261" Ref="L?"  Part="1" 
AR Path="/6001B7D3/6308E261" Ref="L?"  Part="1" 
AR Path="/61535A67/6308E261" Ref="L?"  Part="1" 
AR Path="/6308E261" Ref="L?"  Part="1" 
AR Path="/630BAFD1/6308E261" Ref="L?"  Part="1" 
AR Path="/630649A6/6308E261" Ref="L?"  Part="1" 
AR Path="/63087D5B/6308E261" Ref="L2"  Part="1" 
F 0 "L2" H 5225 2515 50  0000 C CNN
F 1 "22uH" H 5225 2424 50  0000 C CNN
F 2 "Inductor_SMD:L_Coilcraft_LPS5030" H 5225 2300 50  0001 C CNN
F 3 "~" H 5225 2300 50  0001 C CNN
	1    5225 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 2300 4525 2300
Connection ~ 4525 2300
Wire Wire Line
	4525 2300 4525 2700
Wire Wire Line
	5525 2700 5525 2300
Wire Wire Line
	5525 2300 5625 2300
Wire Wire Line
	5525 2300 5475 2300
Connection ~ 5525 2300
Wire Wire Line
	6525 2300 6525 2500
Connection ~ 6525 2300
Wire Wire Line
	6525 2700 6525 2750
Connection ~ 5225 5075
Wire Wire Line
	5225 3000 5225 3100
Wire Wire Line
	5525 2900 6025 2900
Wire Wire Line
	6025 2900 6025 2750
Wire Wire Line
	6025 2750 6525 2750
Connection ~ 6525 2750
Wire Wire Line
	6525 2750 6525 2850
Wire Wire Line
	7175 2850 7175 2300
Wire Wire Line
	7175 3050 7175 5075
$Comp
L Device:R_Small R?
U 1 1 6308E282
P 6525 2600
AR Path="/6001B7D3/60296A19/6308E282" Ref="R?"  Part="1" 
AR Path="/6001B7D3/6308E282" Ref="R?"  Part="1" 
AR Path="/61535A67/6308E282" Ref="R?"  Part="1" 
AR Path="/6308E282" Ref="R?"  Part="1" 
AR Path="/630BAFD1/6308E282" Ref="R?"  Part="1" 
AR Path="/630649A6/6308E282" Ref="R?"  Part="1" 
AR Path="/63087D5B/6308E282" Ref="R46"  Part="1" 
F 0 "R46" H 6584 2646 50  0000 L CNN
F 1 "180k" H 6584 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6525 2600 50  0001 C CNN
F 3 "~" H 6525 2600 50  0001 C CNN
	1    6525 2600
	1    0    0    -1  
$EndComp
Text Notes 5875 2600 0    50   ~ 0
Check values\n
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 6308E289
P 7525 2300
AR Path="/6001B7D3/60296A19/6308E289" Ref="JP?"  Part="1" 
AR Path="/6001B7D3/6308E289" Ref="JP?"  Part="1" 
AR Path="/61535A67/6308E289" Ref="JP?"  Part="1" 
AR Path="/6308E289" Ref="JP?"  Part="1" 
AR Path="/630BAFD1/6308E289" Ref="JP?"  Part="1" 
AR Path="/630649A6/6308E289" Ref="JP?"  Part="1" 
AR Path="/63087D5B/6308E289" Ref="JP7"  Part="1" 
F 0 "JP7" H 7525 2505 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 7525 2414 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7525 2300 50  0001 C CNN
F 3 "~" H 7525 2300 50  0001 C CNN
	1    7525 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6525 2300 7175 2300
Wire Wire Line
	7175 2300 7375 2300
Connection ~ 7175 2300
Text GLabel 8675 2300 2    50   Input ~ 0
VPP_DRIVE
$Comp
L cq1re1-cache:Regulator_Switching_MT3608 U?
U 1 1 6308E293
P 5225 2800
AR Path="/61535A67/6308E293" Ref="U?"  Part="1" 
AR Path="/6308E293" Ref="U?"  Part="1" 
AR Path="/630BAFD1/6308E293" Ref="U?"  Part="1" 
AR Path="/630649A6/6308E293" Ref="U?"  Part="1" 
AR Path="/63087D5B/6308E293" Ref="U16"  Part="1" 
F 0 "U16" H 5225 3167 50  0000 C CNN
F 1 "Regulator_Switching_MT3608" H 5225 3076 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 5275 2550 50  0001 L CIN
F 3 "" H 4975 3250 50  0001 C CNN
	1    5225 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 6308E299
P 5775 2300
AR Path="/630649A6/6308E299" Ref="D?"  Part="1" 
AR Path="/63087D5B/6308E299" Ref="D21"  Part="1" 
F 0 "D21" H 5775 2084 50  0000 C CNN
F 1 "SS36" H 5775 2175 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 5775 2300 50  0001 C CNN
F 3 "~" H 5775 2300 50  0001 C CNN
	1    5775 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5925 2300 6525 2300
$Comp
L Device:C_Small C?
U 1 1 6308E2A0
P 7900 2800
AR Path="/6001B7D3/60296A19/6308E2A0" Ref="C?"  Part="1" 
AR Path="/6001B7D3/6308E2A0" Ref="C?"  Part="1" 
AR Path="/61535A67/6308E2A0" Ref="C?"  Part="1" 
AR Path="/6308E2A0" Ref="C?"  Part="1" 
AR Path="/630BAFD1/6308E2A0" Ref="C?"  Part="1" 
AR Path="/630649A6/6308E2A0" Ref="C?"  Part="1" 
AR Path="/63087D5B/6308E2A0" Ref="C29"  Part="1" 
F 0 "C29" H 7992 2846 50  0000 L CNN
F 1 "10uF" H 7992 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 7900 2800 50  0001 C CNN
F 3 "~" H 7900 2800 50  0001 C CNN
	1    7900 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6308E2A6
P 8325 2800
AR Path="/6001B7D3/60296A19/6308E2A6" Ref="C?"  Part="1" 
AR Path="/6001B7D3/6308E2A6" Ref="C?"  Part="1" 
AR Path="/61535A67/6308E2A6" Ref="C?"  Part="1" 
AR Path="/6308E2A6" Ref="C?"  Part="1" 
AR Path="/630BAFD1/6308E2A6" Ref="C?"  Part="1" 
AR Path="/630649A6/6308E2A6" Ref="C?"  Part="1" 
AR Path="/63087D5B/6308E2A6" Ref="C30"  Part="1" 
F 0 "C30" H 8417 2846 50  0000 L CNN
F 1 "100nF" H 8417 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8325 2800 50  0001 C CNN
F 3 "~" H 8325 2800 50  0001 C CNN
	1    8325 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7675 2300 7900 2300
Wire Wire Line
	7175 5075 7900 5075
Wire Wire Line
	7900 5075 7900 2900
Connection ~ 7175 5075
Wire Wire Line
	7900 5075 8325 5075
Wire Wire Line
	8325 5075 8325 2900
Connection ~ 7900 5075
Connection ~ 7900 2300
Wire Wire Line
	7900 2300 8325 2300
Wire Wire Line
	8325 2700 8325 2300
Connection ~ 8325 2300
Wire Wire Line
	8325 2300 8675 2300
Wire Wire Line
	7900 2300 7900 2700
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 6308E2B9
P 4100 1725
AR Path="/630649A6/6308E2B9" Ref="JP?"  Part="1" 
AR Path="/63087D5B/6308E2B9" Ref="JP6"  Part="1" 
F 0 "JP6" H 4100 1910 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4100 1819 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4100 1725 50  0001 C CNN
F 3 "~" H 4100 1725 50  0001 C CNN
	1    4100 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1675 3600 1725
Wire Wire Line
	3600 1725 4000 1725
Wire Wire Line
	4200 1725 4525 1725
$Comp
L power:GND #PWR?
U 1 1 6308E2C5
P 5225 5525
AR Path="/630649A6/6308E2C5" Ref="#PWR?"  Part="1" 
AR Path="/63087D5B/6308E2C5" Ref="#PWR0174"  Part="1" 
F 0 "#PWR0174" H 5225 5275 50  0001 C CNN
F 1 "GND" H 5230 5352 50  0000 C CNN
F 2 "" H 5225 5525 50  0001 C CNN
F 3 "" H 5225 5525 50  0001 C CNN
	1    5225 5525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4525 1725 4525 2300
Text Notes 6625 1950 0    50   ~ 0
Leave jumper open until output of VPP regukator is confirmed\nat 21V and 5V.
$Comp
L Device:R_Small R?
U 1 1 6308F543
P 6525 4100
AR Path="/6001B7D3/60296A19/6308F543" Ref="R?"  Part="1" 
AR Path="/6001B7D3/6308F543" Ref="R?"  Part="1" 
AR Path="/61535A67/6308F543" Ref="R?"  Part="1" 
AR Path="/6308F543" Ref="R?"  Part="1" 
AR Path="/630BAFD1/6308F543" Ref="R?"  Part="1" 
AR Path="/630649A6/6308F543" Ref="R?"  Part="1" 
AR Path="/63087D5B/6308F543" Ref="R50"  Part="1" 
F 0 "R50" H 6584 4146 50  0000 L CNN
F 1 "1k2" H 6584 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6525 4100 50  0001 C CNN
F 3 "~" H 6525 4100 50  0001 C CNN
	1    6525 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 5075 6525 5075
Wire Wire Line
	5225 5075 4525 5075
Wire Wire Line
	4525 5075 4525 4850
Wire Wire Line
	4525 2700 4525 4650
Text GLabel 1700 3975 0    50   Input ~ 0
VPP_ON
$Comp
L power:GND #PWR?
U 1 1 63099F0A
P 2475 4700
AR Path="/63099F0A" Ref="#PWR?"  Part="1" 
AR Path="/63087D5B/63099F0A" Ref="#PWR0175"  Part="1" 
F 0 "#PWR0175" H 2475 4450 50  0001 C CNN
F 1 "GND" H 2480 4527 50  0000 C CNN
F 2 "" H 2475 4700 50  0001 C CNN
F 3 "" H 2475 4700 50  0001 C CNN
	1    2475 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2475 4700 2475 4175
$Comp
L Device:R_Small R?
U 1 1 63099F11
P 2925 2700
AR Path="/63099F11" Ref="R?"  Part="1" 
AR Path="/63087D5B/63099F11" Ref="R45"  Part="1" 
F 0 "R45" H 2984 2746 50  0000 L CNN
F 1 "10k" H 2984 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2925 2700 50  0001 C CNN
F 3 "~" H 2925 2700 50  0001 C CNN
	1    2925 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2925 2800 2925 2900
Connection ~ 2925 2900
Wire Wire Line
	2475 3575 2475 2900
Wire Wire Line
	2475 2900 2925 2900
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 63099F30
P 2375 3875
AR Path="/63099F30" Ref="TR?"  Part="1" 
AR Path="/63087D5B/63099F30" Ref="TR6"  Part="1" 
F 0 "TR6" H 2025 3600 50  0000 L CNN
F 1 "Si2302CDS-n-ch" H 1700 3500 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2405 4025 20  0001 C CNN
F 3 "" H 2375 3875 50  0001 C CNN
	1    2375 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	2925 2900 4925 2900
Wire Wire Line
	2925 2300 4525 2300
Wire Wire Line
	2925 2300 2925 2600
Wire Wire Line
	1700 3975 2175 3975
Connection ~ 6525 5075
Wire Wire Line
	6525 5075 7175 5075
$Comp
L power:GND #PWR?
U 1 1 630AC2A9
P 5800 6675
AR Path="/630AC2A9" Ref="#PWR?"  Part="1" 
AR Path="/63087D5B/630AC2A9" Ref="#PWR0176"  Part="1" 
F 0 "#PWR0176" H 5800 6425 50  0001 C CNN
F 1 "GND" H 5805 6502 50  0000 C CNN
F 2 "" H 5800 6675 50  0001 C CNN
F 3 "" H 5800 6675 50  0001 C CNN
	1    5800 6675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6675 5800 6150
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 630AC2B1
P 5700 5850
AR Path="/630AC2B1" Ref="TR?"  Part="1" 
AR Path="/63087D5B/630AC2B1" Ref="TR7"  Part="1" 
F 0 "TR7" H 5350 5575 50  0000 L CNN
F 1 "Si2302CDS-n-ch" H 5025 5475 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5730 6000 20  0001 C CNN
F 3 "" H 5700 5850 50  0001 C CNN
	1    5700 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5025 5950 5500 5950
Text GLabel 5025 5950 0    50   Input ~ 0
VPP_VOLT_SELECT
Connection ~ 5225 3100
Wire Wire Line
	5225 5075 5225 5525
$Comp
L Device:R_Small R?
U 1 1 630BB7B6
P 6525 3750
AR Path="/6001B7D3/60296A19/630BB7B6" Ref="R?"  Part="1" 
AR Path="/6001B7D3/630BB7B6" Ref="R?"  Part="1" 
AR Path="/61535A67/630BB7B6" Ref="R?"  Part="1" 
AR Path="/630BB7B6" Ref="R?"  Part="1" 
AR Path="/630BAFD1/630BB7B6" Ref="R?"  Part="1" 
AR Path="/630649A6/630BB7B6" Ref="R?"  Part="1" 
AR Path="/63087D5B/630BB7B6" Ref="R49"  Part="1" 
F 0 "R49" H 6584 3796 50  0000 L CNN
F 1 "18k" H 6584 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6525 3750 50  0001 C CNN
F 3 "~" H 6525 3750 50  0001 C CNN
	1    6525 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 630BC410
P 6525 4500
AR Path="/6001B7D3/60296A19/630BC410" Ref="R?"  Part="1" 
AR Path="/6001B7D3/630BC410" Ref="R?"  Part="1" 
AR Path="/61535A67/630BC410" Ref="R?"  Part="1" 
AR Path="/630BC410" Ref="R?"  Part="1" 
AR Path="/630BAFD1/630BC410" Ref="R?"  Part="1" 
AR Path="/630649A6/630BC410" Ref="R?"  Part="1" 
AR Path="/63087D5B/630BC410" Ref="R51"  Part="1" 
F 0 "R51" H 6584 4546 50  0000 L CNN
F 1 "100R" H 6584 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6525 4500 50  0001 C CNN
F 3 "~" H 6525 4500 50  0001 C CNN
	1    6525 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 630BD040
P 6525 3300
AR Path="/6001B7D3/60296A19/630BD040" Ref="R?"  Part="1" 
AR Path="/6001B7D3/630BD040" Ref="R?"  Part="1" 
AR Path="/61535A67/630BD040" Ref="R?"  Part="1" 
AR Path="/630BD040" Ref="R?"  Part="1" 
AR Path="/630BAFD1/630BD040" Ref="R?"  Part="1" 
AR Path="/630649A6/630BD040" Ref="R?"  Part="1" 
AR Path="/63087D5B/630BD040" Ref="R48"  Part="1" 
F 0 "R48" H 6584 3346 50  0000 L CNN
F 1 "100R" H 6584 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6525 3300 50  0001 C CNN
F 3 "~" H 6525 3300 50  0001 C CNN
	1    6525 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6525 3050 6525 3200
Wire Wire Line
	6525 3400 6525 3525
Wire Wire Line
	6525 3850 6525 4000
Wire Wire Line
	6525 4200 6525 4400
Wire Wire Line
	6525 4600 6525 5075
Wire Wire Line
	5800 3525 6525 3525
Wire Wire Line
	5800 3525 5800 5550
Connection ~ 6525 3525
Wire Wire Line
	6525 3525 6525 3650
$EndSCHEMATC
