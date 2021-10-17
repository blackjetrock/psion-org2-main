EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 6
Title "RP2040 Minimal Design Example"
Date "2020-12-18"
Rev "REV1"
Comp "Raspberry Pi (Trading) Ltd"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3V3 #PWR014
U 1 1 5EED9BA4
P 7875 1000
F 0 "#PWR014" H 7875 850 50  0001 C CNN
F 1 "+3V3" H 7890 1173 50  0000 C CNN
F 2 "" H 7875 1000 50  0001 C CNN
F 3 "" H 7875 1000 50  0001 C CNN
	1    7875 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6133A297
P 8400 1550
F 0 "C6" H 8515 1596 50  0000 L CNN
F 1 "100n" H 8515 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8438 1400 50  0001 C CNN
F 3 "~" H 8400 1550 50  0001 C CNN
	1    8400 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6133A298
P 8850 1550
F 0 "C7" H 8965 1596 50  0000 L CNN
F 1 "100n" H 8965 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8888 1400 50  0001 C CNN
F 3 "~" H 8850 1550 50  0001 C CNN
	1    8850 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 6133A299
P 9300 1550
F 0 "C8" H 9415 1596 50  0000 L CNN
F 1 "100n" H 9415 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9338 1400 50  0001 C CNN
F 3 "~" H 9300 1550 50  0001 C CNN
	1    9300 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 6133A29D
P 7875 1575
F 0 "C5" H 7990 1621 50  0000 L CNN
F 1 "1u" H 7990 1530 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7913 1425 50  0001 C CNN
F 3 "~" H 7875 1575 50  0001 C CNN
	1    7875 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1400 9300 1350
Wire Wire Line
	8850 1400 8850 1350
Connection ~ 8850 1350
Wire Wire Line
	8850 1350 9300 1350
Wire Wire Line
	8400 1400 8400 1350
Wire Wire Line
	8400 1350 8850 1350
$Comp
L power:GND #PWR018
U 1 1 6133A29E
P 9300 1850
F 0 "#PWR018" H 9300 1600 50  0001 C CNN
F 1 "GND" H 9305 1677 50  0000 C CNN
F 2 "" H 9300 1850 50  0001 C CNN
F 3 "" H 9300 1850 50  0001 C CNN
	1    9300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1700 8400 1800
Wire Wire Line
	8850 1700 8850 1800
Wire Wire Line
	8850 1800 8400 1800
Wire Wire Line
	9300 1700 9300 1800
Wire Wire Line
	7875 1725 7875 1800
$Comp
L power:GND #PWR015
U 1 1 5F00B2D4
P 7875 1875
F 0 "#PWR015" H 7875 1625 50  0001 C CNN
F 1 "GND" H 7880 1702 50  0000 C CNN
F 2 "" H 7875 1875 50  0001 C CNN
F 3 "" H 7875 1875 50  0001 C CNN
	1    7875 1875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F2F6ECF
P 2875 4975
F 0 "#PWR08" H 2875 4725 50  0001 C CNN
F 1 "GND" H 2880 4802 50  0000 C CNN
F 2 "" H 2875 4975 50  0001 C CNN
F 3 "" H 2875 4975 50  0001 C CNN
	1    2875 4975
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1800 9300 1800
Connection ~ 8850 1800
Connection ~ 9300 1800
Wire Wire Line
	9300 1800 9300 1850
Text GLabel 4200 8150 2    50   Input ~ 0
SD1
Text GLabel 4200 8350 2    50   Input ~ 0
SD3
Text GLabel 4200 8550 2    50   Input ~ 0
SD5
Text GLabel 4200 8750 2    50   Input ~ 0
SD7
Text GLabel 4200 9250 2    50   Input ~ 0
SMR
Text GLabel 4200 9150 2    50   Input ~ 0
SOE
Text GLabel 4200 8850 2    50   Input ~ 0
SPGM
Text GLabel 4200 8950 2    50   Input ~ 0
SS
Text GLabel 4200 9050 2    50   Input ~ 0
SCLK
Text GLabel 4200 8050 2    50   Input ~ 0
SD0
Text GLabel 4200 8650 2    50   Input ~ 0
SD6
Text GLabel 4200 8450 2    50   Input ~ 0
SD4
Text GLabel 4200 8250 2    50   Input ~ 0
SD2
$Comp
L power:GND #PWR?
U 1 1 61058D25
P 4925 7950
AR Path="/6104FF77/61058D25" Ref="#PWR?"  Part="1" 
AR Path="/61058D25" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 4925 7700 50  0001 C CNN
F 1 "GND" H 4925 7775 50  0000 C CNN
F 2 "" H 4925 7950 50  0001 C CNN
F 3 "" H 4925 7950 50  0001 C CNN
	1    4925 7950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 6133A2AF
P 1675 6800
F 0 "J2" H 1703 6826 50  0000 L CNN
F 1 "Conn_01x03_Female" H 1703 6735 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x03_P1.00mm_Vertical_SMD_Pin1Left" H 1675 6800 50  0001 C CNN
F 3 "~" H 1675 6800 50  0001 C CNN
	1    1675 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2875 4775 2875 4975
Text GLabel 14325 3975 0    50   Input ~ 0
SD0
Text GLabel 14325 4075 0    50   Input ~ 0
SD1
Text GLabel 14325 4175 0    50   Input ~ 0
SD2
Text GLabel 14325 4275 0    50   Input ~ 0
SD3
Text GLabel 14325 4375 0    50   Input ~ 0
SD4
Text GLabel 14325 4475 0    50   Input ~ 0
SD5
Text GLabel 14325 4575 0    50   Input ~ 0
SD6
Text GLabel 14325 4675 0    50   Input ~ 0
SD7
Text GLabel 14300 1775 0    50   Input ~ 0
SMR
Text GLabel 14300 1875 0    50   Input ~ 0
SCLK
Text GLabel 14300 1675 0    50   Input ~ 0
SOE
Text GLabel 14300 1575 0    50   Input ~ 0
SS
Text GLabel 14300 1475 0    50   Input ~ 0
SPGM
Text GLabel 15325 3975 2    50   Input ~ 0
P_SD0
Text GLabel 15325 4075 2    50   Input ~ 0
P_SD1
Text GLabel 15325 4175 2    50   Input ~ 0
P_SD2
Text GLabel 15325 4275 2    50   Input ~ 0
P_SD3
Text GLabel 15325 4375 2    50   Input ~ 0
P_SD4
Text GLabel 15325 4475 2    50   Input ~ 0
P_SD5
Text GLabel 15325 4575 2    50   Input ~ 0
P_SD6
Text GLabel 15325 4675 2    50   Input ~ 0
P_SD7
Text GLabel 15300 1775 2    50   Input ~ 0
P_SMR
Text GLabel 15300 1875 2    50   Input ~ 0
P_SCLK
Text GLabel 15300 1675 2    50   Input ~ 0
P_SOE
Text GLabel 15300 1575 2    50   Input ~ 0
P_SS
Text GLabel 15300 1475 2    50   Input ~ 0
P_SPGM
$Comp
L power:GND #PWR?
U 1 1 6133A2B0
P 14825 5375
AR Path="/6104FF77/6133A2B0" Ref="#PWR?"  Part="1" 
AR Path="/6133A2B0" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 14825 5125 50  0001 C CNN
F 1 "GND" H 14830 5202 50  0000 C CNN
F 2 "" H 14825 5375 50  0001 C CNN
F 3 "" H 14825 5375 50  0001 C CNN
	1    14825 5375
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 611C2F85
P 14825 4475
AR Path="/6104FF77/611C2F85" Ref="U?"  Part="1" 
AR Path="/611C2F85" Ref="U7"  Part="1" 
F 0 "U7" H 14825 5456 50  0000 C CNN
F 1 "74LS245" H 14825 5365 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 14825 4475 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 14825 4475 50  0001 C CNN
	1    14825 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	14825 3400 14825 3525
Wire Wire Line
	14825 5375 14825 5325
$Comp
L mirotan-due-cassette-shield-cache:+3.3V #PWR?
U 1 1 611C2F8D
P 14825 3400
AR Path="/6104FF77/611C2F8D" Ref="#PWR?"  Part="1" 
AR Path="/611C2F8D" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 14825 3250 50  0001 C CNN
F 1 "+3.3V" H 14840 3573 50  0000 C CNN
F 2 "" H 14825 3400 50  0001 C CNN
F 3 "" H 14825 3400 50  0001 C CNN
	1    14825 3400
	1    0    0    -1  
$EndComp
Text GLabel 13275 4875 0    50   Input ~ 0
LS_DIR
Wire Wire Line
	14325 5325 14825 5325
Wire Wire Line
	14325 4975 14325 5325
Connection ~ 14825 5325
Wire Wire Line
	14825 5325 14825 5275
$Comp
L Device:R_Small R?
U 1 1 611C2F98
P 13550 4425
AR Path="/60C45767/611C2F98" Ref="R?"  Part="1" 
AR Path="/611C2F98" Ref="R15"  Part="1" 
AR Path="/6104FF77/611C2F98" Ref="R?"  Part="1" 
F 0 "R15" H 13609 4471 50  0000 L CNN
F 1 "R_Small" H 13609 4380 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 13550 4425 50  0001 C CNN
F 3 "~" H 13550 4425 50  0001 C CNN
	1    13550 4425
	1    0    0    -1  
$EndComp
Wire Wire Line
	14825 3525 13550 3525
Wire Wire Line
	13550 3525 13550 4325
Connection ~ 14825 3525
Wire Wire Line
	14825 3525 14825 3675
Wire Wire Line
	13550 4525 13550 4875
Wire Wire Line
	13550 4875 14325 4875
Wire Wire Line
	13275 4875 13550 4875
Connection ~ 13550 4875
$Comp
L 74xx:74LS245 U?
U 1 1 611C2FA6
P 14800 1975
AR Path="/6104FF77/611C2FA6" Ref="U?"  Part="1" 
AR Path="/611C2FA6" Ref="U6"  Part="1" 
F 0 "U6" H 14975 2825 50  0000 C CNN
F 1 "74LS245" H 15075 2725 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 14800 1975 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 14800 1975 50  0001 C CNN
	1    14800 1975
	1    0    0    -1  
$EndComp
$Comp
L mirotan-due-cassette-shield-cache:+3.3V #PWR?
U 1 1 6133A2B5
P 14800 925
AR Path="/6104FF77/6133A2B5" Ref="#PWR?"  Part="1" 
AR Path="/6133A2B5" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 14800 775 50  0001 C CNN
F 1 "+3.3V" H 14815 1098 50  0000 C CNN
F 2 "" H 14800 925 50  0001 C CNN
F 3 "" H 14800 925 50  0001 C CNN
	1    14800 925 
	1    0    0    -1  
$EndComp
Wire Wire Line
	14800 925  14800 1050
Wire Wire Line
	14800 1050 13675 1050
Wire Wire Line
	13675 1050 13675 2375
Wire Wire Line
	13675 2375 14300 2375
Connection ~ 14800 1050
Wire Wire Line
	14800 1050 14800 1175
Wire Wire Line
	14800 2775 14800 2800
Wire Wire Line
	14800 2800 14300 2800
Wire Wire Line
	14300 2800 14300 2475
Text GLabel 2175 3675 0    50   Input ~ 0
P_SPGM
Text GLabel 2175 3775 0    50   Input ~ 0
P_SS
Text GLabel 2175 3975 0    50   Input ~ 0
P_SCLK
Text GLabel 2175 2675 0    50   Input ~ 0
P_SD0
Text GLabel 2175 3475 0    50   Input ~ 0
P_SD6
Text GLabel 2175 3175 0    50   Input ~ 0
P_SD4
Text GLabel 2175 2975 0    50   Input ~ 0
P_SD2
Text GLabel 2175 2775 0    50   Input ~ 0
P_SD1
Text GLabel 2175 3075 0    50   Input ~ 0
P_SD3
Text GLabel 2175 3275 0    50   Input ~ 0
P_SD5
Text GLabel 2175 3575 0    50   Input ~ 0
P_SD7
Text GLabel 2175 4175 0    50   Input ~ 0
P_SMR
Text GLabel 2175 4075 0    50   Input ~ 0
P_SOE
$Comp
L power:GND #PWR022
U 1 1 613BABD8
P 14800 2800
F 0 "#PWR022" H 14800 2550 50  0001 C CNN
F 1 "GND" H 14805 2627 50  0000 C CNN
F 2 "" H 14800 2800 50  0001 C CNN
F 3 "" H 14800 2800 50  0001 C CNN
	1    14800 2800
	1    0    0    -1  
$EndComp
Connection ~ 14800 2800
$Sheet
S 13350 6250 1325 700 
U 612F7BBE
F0 "Sheet612F7BBD" 50
F1 "file612F7BBD.sch" 50
$EndSheet
$Comp
L rp2040:Pico U1
U 1 1 613CA06A
P 2875 3625
F 0 "U1" H 2875 4840 50  0000 C CNN
F 1 "Pico" H 2875 4749 50  0000 C CNN
F 2 "RPi_Pico:RPi_Pico_SMD_TH" V 2875 3625 50  0001 C CNN
F 3 "" H 2875 3625 50  0001 C CNN
	1    2875 3625
	1    0    0    -1  
$EndComp
Text GLabel 3150 4950 2    50   Input ~ 0
SWD
Text GLabel 1475 6900 0    50   Input ~ 0
SWD
Wire Wire Line
	3150 4950 2975 4950
Wire Wire Line
	2975 4950 2975 4775
Text GLabel 1475 6700 0    50   Input ~ 0
SWCLK
Text GLabel 2600 4950 0    50   Input ~ 0
SWCLK
Wire Wire Line
	2600 4950 2775 4950
Wire Wire Line
	2775 4950 2775 4775
$Comp
L power:GND #PWR01
U 1 1 6143EEDD
P 875 6900
F 0 "#PWR01" H 875 6650 50  0001 C CNN
F 1 "GND" H 880 6727 50  0000 C CNN
F 2 "" H 875 6900 50  0001 C CNN
F 3 "" H 875 6900 50  0001 C CNN
	1    875  6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1475 6800 875  6800
Wire Wire Line
	875  6800 875  6900
$Comp
L 74xx:74HC595 U2
U 1 1 61452301
P 5925 3600
F 0 "U2" H 6225 4375 50  0000 C CNN
F 1 "74HC595" H 6300 4300 50  0000 C CNN
F 2 "" H 5925 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5925 3600 50  0001 C CNN
	1    5925 3600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS165 U4
U 1 1 61452BA7
P 9500 3825
F 0 "U4" H 9825 4950 50  0000 C CNN
F 1 "74LS165" H 9925 4850 50  0000 C CNN
F 2 "" H 9500 3825 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS165" H 9500 3825 50  0001 C CNN
	1    9500 3825
	1    0    0    -1  
$EndComp
$Sheet
S 5600 -2450 2275 1200
U 61520520
F0 "Sheet6152051F" 50
F1 "a.sch" 50
$EndSheet
$Comp
L power:+3V3 #PWR?
U 1 1 615452F2
P 7175 8475
AR Path="/6001B7D3/60296A19/615452F2" Ref="#PWR?"  Part="1" 
AR Path="/6001B7D3/615452F2" Ref="#PWR?"  Part="1" 
AR Path="/61535A67/615452F2" Ref="#PWR?"  Part="1" 
AR Path="/615452F2" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 7175 8325 50  0001 C CNN
F 1 "+3V3" H 7190 8648 50  0000 C CNN
F 2 "" H 7175 8475 50  0001 C CNN
F 3 "" H 7175 8475 50  0001 C CNN
	1    7175 8475
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 615452F8
P 8625 9725
AR Path="/6001B7D3/60296A19/615452F8" Ref="R?"  Part="1" 
AR Path="/6001B7D3/615452F8" Ref="R?"  Part="1" 
AR Path="/61535A67/615452F8" Ref="R?"  Part="1" 
AR Path="/615452F8" Ref="R10"  Part="1" 
F 0 "R10" H 8684 9771 50  0000 L CNN
F 1 "49R" H 8684 9680 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8625 9725 50  0001 C CNN
F 3 "~" H 8625 9725 50  0001 C CNN
	1    8625 9725
	0    1    -1   0   
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 615452FE
P 9025 10075
AR Path="/6001B7D3/60296A19/615452FE" Ref="TR?"  Part="1" 
AR Path="/6001B7D3/615452FE" Ref="TR?"  Part="1" 
AR Path="/61535A67/615452FE" Ref="TR?"  Part="1" 
AR Path="/615452FE" Ref="TR1"  Part="1" 
F 0 "TR1" H 9302 10121 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 9302 10030 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9055 10225 20  0001 C CNN
F 3 "" H 9025 10075 50  0001 C CNN
	1    9025 10075
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8925 10375 8925 10575
Text GLabel 9475 10175 2    50   Input ~ 0
DRV_HV
Wire Wire Line
	9475 10175 9225 10175
Wire Wire Line
	7875 9475 7875 9525
Wire Wire Line
	7875 9725 8525 9725
Wire Wire Line
	8725 9725 8925 9725
Wire Wire Line
	8925 9725 8925 9775
Wire Wire Line
	7175 8475 7175 8675
Wire Wire Line
	7175 9075 7575 9075
Wire Wire Line
	7175 9075 7175 9275
Wire Wire Line
	7175 9275 7575 9275
Connection ~ 7175 9075
$Comp
L Device:R_Small R?
U 1 1 61545310
P 9175 9325
AR Path="/6001B7D3/60296A19/61545310" Ref="R?"  Part="1" 
AR Path="/6001B7D3/61545310" Ref="R?"  Part="1" 
AR Path="/61535A67/61545310" Ref="R?"  Part="1" 
AR Path="/61545310" Ref="R12"  Part="1" 
F 0 "R12" H 9234 9371 50  0000 L CNN
F 1 "18k" H 9234 9280 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9175 9325 50  0001 C CNN
F 3 "~" H 9175 9325 50  0001 C CNN
	1    9175 9325
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61545316
P 7175 9525
AR Path="/6001B7D3/60296A19/61545316" Ref="C?"  Part="1" 
AR Path="/6001B7D3/61545316" Ref="C?"  Part="1" 
AR Path="/61535A67/61545316" Ref="C?"  Part="1" 
AR Path="/61545316" Ref="C4"  Part="1" 
F 0 "C4" H 7267 9571 50  0000 L CNN
F 1 "22uF" H 7267 9480 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 7175 9525 50  0001 C CNN
F 3 "~" H 7175 9525 50  0001 C CNN
	1    7175 9525
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6154531C
P 9825 9325
AR Path="/6001B7D3/60296A19/6154531C" Ref="C?"  Part="1" 
AR Path="/6001B7D3/6154531C" Ref="C?"  Part="1" 
AR Path="/61535A67/6154531C" Ref="C?"  Part="1" 
AR Path="/6154531C" Ref="C10"  Part="1" 
F 0 "C10" H 9917 9371 50  0000 L CNN
F 1 "22uF" H 9917 9280 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 9825 9325 50  0001 C CNN
F 3 "~" H 9825 9325 50  0001 C CNN
	1    9825 9325
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L?
U 1 1 61545322
P 7875 8675
AR Path="/6001B7D3/60296A19/61545322" Ref="L?"  Part="1" 
AR Path="/6001B7D3/61545322" Ref="L?"  Part="1" 
AR Path="/61535A67/61545322" Ref="L?"  Part="1" 
AR Path="/61545322" Ref="L1"  Part="1" 
F 0 "L1" H 7875 8890 50  0000 C CNN
F 1 "22uH" H 7875 8799 50  0000 C CNN
F 2 "Inductor_SMD:L_Coilcraft_LPS5030" H 7875 8675 50  0001 C CNN
F 3 "~" H 7875 8675 50  0001 C CNN
	1    7875 8675
	1    0    0    -1  
$EndComp
Wire Wire Line
	7175 9275 7175 9425
Connection ~ 7175 9275
Wire Wire Line
	7625 8675 7175 8675
Connection ~ 7175 8675
Wire Wire Line
	7175 8675 7175 9075
Wire Wire Line
	8175 9075 8175 8675
Wire Wire Line
	8175 8675 8275 8675
Wire Wire Line
	8175 8675 8125 8675
Connection ~ 8175 8675
Wire Wire Line
	9175 8675 9175 8875
Connection ~ 9175 8675
Wire Wire Line
	9175 9075 9175 9125
Wire Wire Line
	7875 9525 9175 9525
Wire Wire Line
	9175 9525 9175 9425
Connection ~ 7875 9525
Wire Wire Line
	7875 9525 7875 9725
Wire Wire Line
	8175 9275 8675 9275
Wire Wire Line
	8675 9275 8675 9125
Wire Wire Line
	8675 9125 9175 9125
Connection ~ 9175 9125
Wire Wire Line
	9175 9125 9175 9225
Wire Wire Line
	9825 9225 9825 8675
Wire Wire Line
	9825 9425 9825 9525
Wire Wire Line
	9825 9525 9175 9525
Connection ~ 9175 9525
Wire Wire Line
	7175 9625 7175 9725
Wire Wire Line
	7175 9725 7875 9725
Connection ~ 7875 9725
$Comp
L Device:R_Small R?
U 1 1 6154534B
P 9175 8975
AR Path="/6001B7D3/60296A19/6154534B" Ref="R?"  Part="1" 
AR Path="/6001B7D3/6154534B" Ref="R?"  Part="1" 
AR Path="/61535A67/6154534B" Ref="R?"  Part="1" 
AR Path="/6154534B" Ref="R11"  Part="1" 
F 0 "R11" H 9234 9021 50  0000 L CNN
F 1 "120k" H 9234 8930 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9175 8975 50  0001 C CNN
F 3 "~" H 9175 8975 50  0001 C CNN
	1    9175 8975
	1    0    0    -1  
$EndComp
Text Notes 8525 8975 0    50   ~ 0
Check values\n
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 61545352
P 10175 8675
AR Path="/6001B7D3/60296A19/61545352" Ref="JP?"  Part="1" 
AR Path="/6001B7D3/61545352" Ref="JP?"  Part="1" 
AR Path="/61535A67/61545352" Ref="JP?"  Part="1" 
AR Path="/61545352" Ref="JP1"  Part="1" 
F 0 "JP1" H 10175 8880 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 10175 8789 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10175 8675 50  0001 C CNN
F 3 "~" H 10175 8675 50  0001 C CNN
	1    10175 8675
	1    0    0    -1  
$EndComp
Wire Wire Line
	9175 8675 9825 8675
Wire Wire Line
	9825 8675 10025 8675
Connection ~ 9825 8675
Wire Wire Line
	10325 8675 10975 8675
Text GLabel 10975 8675 2    50   Input ~ 0
VOLED
$Comp
L cq1re1-cache:Regulator_Switching_MT3608 U?
U 1 1 6154535E
P 7875 9175
AR Path="/61535A67/6154535E" Ref="U?"  Part="1" 
AR Path="/6154535E" Ref="U3"  Part="1" 
F 0 "U3" H 7875 9542 50  0000 C CNN
F 1 "Regulator_Switching_MT3608" H 7875 9451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 7925 8925 50  0001 L CIN
F 3 "" H 7625 9625 50  0001 C CNN
	1    7875 9175
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 615569F8
P 8425 8675
F 0 "D1" H 8425 8459 50  0000 C CNN
F 1 "SS36" H 8425 8550 50  0000 C CNN
F 2 "" H 8425 8675 50  0001 C CNN
F 3 "~" H 8425 8675 50  0001 C CNN
	1    8425 8675
	-1   0    0    1   
$EndComp
Wire Wire Line
	8575 8675 9175 8675
$Comp
L power:GND #PWR017
U 1 1 61560024
P 8925 10575
F 0 "#PWR017" H 8925 10325 50  0001 C CNN
F 1 "GND" H 8930 10402 50  0000 C CNN
F 2 "" H 8925 10575 50  0001 C CNN
F 3 "" H 8925 10575 50  0001 C CNN
	1    8925 10575
	1    0    0    -1  
$EndComp
Text GLabel 3575 3275 2    50   Input ~ 0
DRV_HV
$Comp
L Device:R_Small R1
U 1 1 61562BA4
P 1350 5025
F 0 "R1" H 1409 5071 50  0000 L CNN
F 1 "10k" H 1409 4980 50  0000 L CNN
F 2 "" H 1350 5025 50  0001 C CNN
F 3 "~" H 1350 5025 50  0001 C CNN
	1    1350 5025
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 615654E9
P 7900 4800
F 0 "R5" H 7775 4175 50  0000 L CNN
F 1 "100k" H 7750 4100 50  0000 L CNN
F 2 "" H 7900 4800 50  0001 C CNN
F 3 "~" H 7900 4800 50  0001 C CNN
	1    7900 4800
	1    0    0    -1  
$EndComp
Text GLabel 5525 3200 0    50   Input ~ 0
SDAOUT
Text GLabel 5525 3700 0    50   Input ~ 0
LATCHOUT
Text GLabel 5525 3400 0    50   Input ~ 0
SCLKOUT
$Comp
L power:GND #PWR012
U 1 1 615671E0
P 5925 4425
F 0 "#PWR012" H 5925 4175 50  0001 C CNN
F 1 "GND" H 5930 4252 50  0000 C CNN
F 2 "" H 5925 4425 50  0001 C CNN
F 3 "" H 5925 4425 50  0001 C CNN
	1    5925 4425
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 4425 5925 4375
Wire Wire Line
	5925 4375 5450 4375
Wire Wire Line
	5450 4375 5450 3800
Wire Wire Line
	5450 3800 5525 3800
Connection ~ 5925 4375
Wire Wire Line
	5925 4375 5925 4300
$Comp
L power:+3V3 #PWR011
U 1 1 61579B77
P 5925 2875
F 0 "#PWR011" H 5925 2725 50  0001 C CNN
F 1 "+3V3" H 5925 3050 50  0000 C CNN
F 2 "" H 5925 2875 50  0001 C CNN
F 3 "" H 5925 2875 50  0001 C CNN
	1    5925 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 2875 5925 2925
Wire Wire Line
	5525 3500 4975 3500
Wire Wire Line
	4975 3500 4975 2925
Wire Wire Line
	4975 2925 5925 2925
Connection ~ 5925 2925
Wire Wire Line
	5925 2925 5925 3000
Text GLabel 3575 3475 2    50   Input ~ 0
SDAOUT
Text GLabel 3575 3775 2    50   Input ~ 0
LATCHOUT
Text GLabel 3575 3575 2    50   Input ~ 0
SCLKOUT
$Comp
L power:+3V3 #PWR019
U 1 1 6158E1DA
P 9500 2825
F 0 "#PWR019" H 9500 2675 50  0001 C CNN
F 1 "+3V3" H 9500 3000 50  0000 C CNN
F 2 "" H 9500 2825 50  0001 C CNN
F 3 "" H 9500 2825 50  0001 C CNN
	1    9500 2825
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2825 9500 2925
Text GLabel 1150 4275 0    50   Input ~ 0
KR0
Text GLabel 7900 2800 1    50   Input ~ 0
KR1
Text GLabel 8075 2800 1    50   Input ~ 0
KR2
Text GLabel 8250 2800 1    50   Input ~ 0
KR3
Text GLabel 8425 2800 1    50   Input ~ 0
KR4
Text GLabel 8600 2800 1    50   Input ~ 0
KR5
Wire Wire Line
	8600 4700 8600 3725
Wire Wire Line
	8600 3725 9000 3725
Wire Wire Line
	9000 3625 8425 3625
Wire Wire Line
	8425 3625 8425 4700
Wire Wire Line
	8250 4700 8250 3525
Wire Wire Line
	8250 3525 9000 3525
Wire Wire Line
	9000 3425 8075 3425
Wire Wire Line
	8075 3425 8075 4700
Wire Wire Line
	7900 4700 7900 3325
Wire Wire Line
	7900 3325 9000 3325
$Comp
L power:GND #PWR016
U 1 1 615EC998
P 7900 5150
F 0 "#PWR016" H 7900 4900 50  0001 C CNN
F 1 "GND" H 7850 5000 50  0000 C CNN
F 2 "" H 7900 5150 50  0001 C CNN
F 3 "" H 7900 5150 50  0001 C CNN
	1    7900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5150 7900 5025
Wire Wire Line
	7900 5025 8075 5025
Wire Wire Line
	8075 5025 8075 4900
Connection ~ 7900 5025
Wire Wire Line
	7900 5025 7900 4900
Wire Wire Line
	8075 5025 8250 5025
Wire Wire Line
	8250 5025 8250 4900
Connection ~ 8075 5025
Wire Wire Line
	8250 5025 8425 5025
Wire Wire Line
	8425 5025 8425 4900
Connection ~ 8250 5025
Wire Wire Line
	8425 5025 8600 5025
Wire Wire Line
	8600 5025 8600 4900
Connection ~ 8425 5025
Connection ~ 8600 5025
Wire Wire Line
	9500 5025 9500 4825
Text GLabel 10000 3225 2    50   Input ~ 0
SDAIN
Text GLabel 7525 4225 0    50   Input ~ 0
LATCHIN
Wire Wire Line
	9000 4225 7525 4225
Wire Wire Line
	9000 3225 8900 3225
Wire Wire Line
	8900 3225 8900 4525
Connection ~ 8900 5025
Wire Wire Line
	8900 5025 9500 5025
Wire Wire Line
	9000 4525 8900 4525
Connection ~ 8900 4525
Wire Wire Line
	8900 4525 8900 5025
Wire Wire Line
	9000 4425 7550 4425
Text GLabel 7550 4425 0    50   Input ~ 0
SCLKIN
Text GLabel 3575 3975 2    50   Input ~ 0
SDAIN
Text GLabel 3575 4175 2    50   Input ~ 0
LATCHIN
Text GLabel 3575 4075 2    50   Input ~ 0
SCLKIN
$Comp
L Connector:Conn_01x24_Female J1
U 1 1 61642AEB
P 950 9250
F 0 "J1" H 842 10535 50  0000 C CNN
F 1 "Conn_01x24_Female" H 842 10444 50  0000 C CNN
F 2 "" H 950 9250 50  0001 C CNN
F 3 "~" H 950 9250 50  0001 C CNN
	1    950  9250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 616470AE
P 1725 10675
F 0 "#PWR04" H 1725 10425 50  0001 C CNN
F 1 "GND" H 1730 10502 50  0000 C CNN
F 2 "" H 1725 10675 50  0001 C CNN
F 3 "" H 1725 10675 50  0001 C CNN
	1    1725 10675
	1    0    0    -1  
$EndComp
Wire Wire Line
	1725 10675 1725 10650
Wire Wire Line
	1725 8150 1150 8150
Wire Wire Line
	1150 8250 1725 8250
Connection ~ 1725 8250
Wire Wire Line
	1725 8250 1725 8150
Connection ~ 1725 8350
Wire Wire Line
	1725 8350 1725 8250
Wire Wire Line
	1150 8350 1725 8350
Wire Wire Line
	1150 8750 1725 8750
Connection ~ 1725 8750
Wire Wire Line
	1725 8750 1725 8350
$Comp
L power:+3V3 #PWR05
U 1 1 61672821
P 5000 10475
F 0 "#PWR05" H 5000 10325 50  0001 C CNN
F 1 "+3V3" H 5015 10648 50  0000 C CNN
F 2 "" H 5000 10475 50  0001 C CNN
F 3 "" H 5000 10475 50  0001 C CNN
	1    5000 10475
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 8650 2125 8650
Wire Wire Line
	2125 8650 2125 8550
Connection ~ 2125 8550
Wire Wire Line
	2125 8550 2125 7950
Wire Wire Line
	1150 8550 2125 8550
Text GLabel 1150 10350 2    50   Input ~ 0
VOLED
Wire Wire Line
	1150 8850 1725 8850
Connection ~ 1725 8850
Wire Wire Line
	1725 8850 1725 8750
Wire Wire Line
	1150 9150 1725 9150
Connection ~ 1725 9150
Wire Wire Line
	1725 9150 1725 8850
Wire Wire Line
	1150 9250 1725 9250
Connection ~ 1725 9250
Wire Wire Line
	1725 9250 1725 9150
Text GLabel 1150 8950 2    50   Input ~ 0
OLED_RES
Wire Wire Line
	1150 9650 1725 9650
Connection ~ 1725 9650
Wire Wire Line
	1725 9650 1725 9250
Wire Wire Line
	1150 9750 1725 9750
Connection ~ 1725 9750
Wire Wire Line
	1725 9750 1725 9650
Wire Wire Line
	1150 9850 1725 9850
Connection ~ 1725 9850
Wire Wire Line
	1725 9850 1725 9750
Wire Wire Line
	1150 9950 1725 9950
Connection ~ 1725 9950
Wire Wire Line
	1725 9950 1725 9850
Wire Wire Line
	1150 10050 1725 10050
Connection ~ 1725 10050
Wire Wire Line
	1725 10050 1725 9950
Wire Wire Line
	1150 10450 1725 10450
Connection ~ 1725 10450
Wire Wire Line
	1725 10450 1725 10050
$Comp
L Device:R_Small R2
U 1 1 616DB515
P 2025 10425
F 0 "R2" H 2084 10471 50  0000 L CNN
F 1 "910k" H 2084 10380 50  0000 L CNN
F 2 "" H 2025 10425 50  0001 C CNN
F 3 "~" H 2025 10425 50  0001 C CNN
	1    2025 10425
	1    0    0    -1  
$EndComp
Wire Wire Line
	2025 10525 2025 10650
Wire Wire Line
	2025 10650 1725 10650
Connection ~ 1725 10650
Wire Wire Line
	1725 10650 1725 10450
Wire Wire Line
	2025 10325 2025 10150
Wire Wire Line
	2025 10150 1150 10150
Text GLabel 2650 9450 2    50   Input ~ 0
OLED_SDA
Text GLabel 2650 9350 2    50   Input ~ 0
OLED_SCL
Wire Wire Line
	1150 9350 2300 9350
Wire Wire Line
	1150 9450 1425 9450
Wire Wire Line
	1150 9550 1425 9550
Wire Wire Line
	1425 9550 1425 9450
Connection ~ 1425 9450
Wire Wire Line
	1425 9450 2525 9450
$Comp
L Device:R_Small R4
U 1 1 617469B1
P 2525 9650
F 0 "R4" H 2584 9696 50  0000 L CNN
F 1 "10k" H 2584 9605 50  0000 L CNN
F 2 "" H 2525 9650 50  0001 C CNN
F 3 "~" H 2525 9650 50  0001 C CNN
	1    2525 9650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 61746F5E
P 2300 9650
F 0 "R3" H 2359 9696 50  0000 L CNN
F 1 "10k" H 2359 9605 50  0000 L CNN
F 2 "" H 2300 9650 50  0001 C CNN
F 3 "~" H 2300 9650 50  0001 C CNN
	1    2300 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 9550 2300 9350
Connection ~ 2300 9350
Wire Wire Line
	2300 9350 2650 9350
Wire Wire Line
	2525 9550 2525 9450
Connection ~ 2525 9450
Wire Wire Line
	2525 9450 2650 9450
$Comp
L power:GND #PWR06
U 1 1 6175E04F
P 2525 10025
F 0 "#PWR06" H 2525 9775 50  0001 C CNN
F 1 "GND" H 2530 9852 50  0000 C CNN
F 2 "" H 2525 10025 50  0001 C CNN
F 3 "" H 2525 10025 50  0001 C CNN
	1    2525 10025
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 10025 2525 9975
Wire Wire Line
	2300 9750 2300 9975
Wire Wire Line
	2300 9975 2525 9975
Connection ~ 2525 9975
Wire Wire Line
	2525 9975 2525 9750
$Comp
L Device:C_Small C2
U 1 1 617822A0
P 2550 10475
F 0 "C2" H 2642 10521 50  0000 L CNN
F 1 "4u7 25V" H 2642 10430 50  0000 L CNN
F 2 "" H 2550 10475 50  0001 C CNN
F 3 "~" H 2550 10475 50  0001 C CNN
	1    2550 10475
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 10575 2550 10650
Wire Wire Line
	2550 10650 2025 10650
Connection ~ 2025 10650
Wire Wire Line
	2550 10375 2550 10250
Wire Wire Line
	2550 10250 1150 10250
$Comp
L Device:C_Small C1
U 1 1 6179CC25
P 2550 8750
F 0 "C1" H 2642 8796 50  0000 L CNN
F 1 "4u7" H 2642 8705 50  0000 L CNN
F 2 "" H 2550 8750 50  0001 C CNN
F 3 "~" H 2550 8750 50  0001 C CNN
	1    2550 8750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 6179DAF3
P 3050 8750
F 0 "C3" H 3142 8796 50  0000 L CNN
F 1 "100nF" H 3142 8705 50  0000 L CNN
F 2 "" H 3050 8750 50  0001 C CNN
F 3 "~" H 3050 8750 50  0001 C CNN
	1    3050 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 8650 2550 8550
Wire Wire Line
	2550 8550 2125 8550
Wire Wire Line
	2550 8550 3050 8550
Wire Wire Line
	3050 8550 3050 8650
Connection ~ 2550 8550
$Comp
L power:GND #PWR07
U 1 1 617B80A0
P 2550 8850
F 0 "#PWR07" H 2550 8600 50  0001 C CNN
F 1 "GND" H 2555 8677 50  0000 C CNN
F 2 "" H 2550 8850 50  0001 C CNN
F 3 "" H 2550 8850 50  0001 C CNN
	1    2550 8850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 617B8AFD
P 3050 8850
F 0 "#PWR09" H 3050 8600 50  0001 C CNN
F 1 "GND" H 3055 8677 50  0000 C CNN
F 2 "" H 3050 8850 50  0001 C CNN
F 3 "" H 3050 8850 50  0001 C CNN
	1    3050 8850
	1    0    0    -1  
$EndComp
Text GLabel 6325 3800 2    50   Input ~ 0
OLED_RES
Text GLabel 3575 4575 2    50   Input ~ 0
OLED_SDA
Text GLabel 3575 4475 2    50   Input ~ 0
OLED_SCL
Text GLabel 9950 -1175 2    50   Input ~ 0
MISO
Text GLabel 9950 -1775 2    50   Input ~ 0
MOSI
$Comp
L Timer:MCP7940N-xSN U?
U 1 1 61834067
P 12025 -2325
AR Path="/61520520/61834067" Ref="U?"  Part="1" 
AR Path="/61834067" Ref="U5"  Part="1" 
F 0 "U5" H 12025 -2814 50  0000 C CNN
F 1 "MCP7940N-xSN" H 12025 -2905 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 12025 -2325 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005010F.pdf" H 12025 -2325 50  0001 C CNN
	1    12025 -2325
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 6183406D
P 12025 -3325
AR Path="/61520520/6183406D" Ref="#PWR?"  Part="1" 
AR Path="/6183406D" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 12025 -3475 50  0001 C CNN
F 1 "+3V3" H 12040 -3152 50  0000 C CNN
F 2 "" H 12025 -3325 50  0001 C CNN
F 3 "" H 12025 -3325 50  0001 C CNN
	1    12025 -3325
	1    0    0    -1  
$EndComp
Text GLabel 12450 -2925 2    50   Input ~ 0
VBAT
Wire Wire Line
	12450 -2925 12125 -2925
Wire Wire Line
	12125 -2925 12125 -2725
$Comp
L fx502-recreate-rescue:GND-Microtan_65_CPU-cache #PWR?
U 1 1 61834076
P 12025 -1575
AR Path="/61520520/61834076" Ref="#PWR?"  Part="1" 
AR Path="/61834076" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12025 -1575 30  0001 C CNN
F 1 "GND" H 12025 -1645 30  0001 C CNN
F 2 "" H 12025 -1575 60  0000 C CNN
F 3 "" H 12025 -1575 60  0000 C CNN
	1    12025 -1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	12025 -1575 12025 -1925
$Comp
L Device:R_Small R?
U 1 1 6183407D
P 10925 -2900
AR Path="/61520520/6183407D" Ref="R?"  Part="1" 
AR Path="/6183407D" Ref="R13"  Part="1" 
F 0 "R13" H 10984 -2854 50  0000 L CNN
F 1 "4k7" H 10984 -2945 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 10925 -2900 50  0001 C CNN
F 3 "~" H 10925 -2900 50  0001 C CNN
	1    10925 -2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61834083
P 11175 -2900
AR Path="/61520520/61834083" Ref="R?"  Part="1" 
AR Path="/61834083" Ref="R14"  Part="1" 
F 0 "R14" H 11234 -2854 50  0000 L CNN
F 1 "4k7" H 11234 -2945 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 11175 -2900 50  0001 C CNN
F 3 "~" H 11175 -2900 50  0001 C CNN
	1    11175 -2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	11625 -2525 11175 -2525
Wire Wire Line
	11175 -2525 11175 -2800
Wire Wire Line
	11625 -2425 10925 -2425
Wire Wire Line
	10925 -2425 10925 -2800
Wire Wire Line
	12025 -3325 12025 -3200
Wire Wire Line
	12025 -3200 11175 -3200
Wire Wire Line
	11175 -3200 11175 -3000
Connection ~ 12025 -3200
Wire Wire Line
	12025 -3200 12025 -2725
Wire Wire Line
	11175 -3200 10925 -3200
Wire Wire Line
	10925 -3200 10925 -3000
Connection ~ 11175 -3200
$Comp
L Device:Crystal Y?
U 1 1 61834095
P 13100 -2300
AR Path="/61520520/61834095" Ref="Y?"  Part="1" 
AR Path="/61834095" Ref="Y1"  Part="1" 
F 0 "Y1" V 13054 -2169 50  0000 L CNN
F 1 "32k768Hz" V 13145 -2169 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 13100 -2300 50  0001 C CNN
F 3 "~" H 13100 -2300 50  0001 C CNN
	1    13100 -2300
	0    1    1    0   
$EndComp
Wire Wire Line
	12425 -2425 12575 -2425
Wire Wire Line
	12575 -2425 12575 -2575
Wire Wire Line
	12575 -2575 13100 -2575
Wire Wire Line
	12425 -2225 12575 -2225
Wire Wire Line
	12575 -2225 12575 -2050
Wire Wire Line
	12575 -2050 13100 -2050
Wire Wire Line
	13100 -2050 13100 -2150
$Comp
L Device:C C?
U 1 1 618340A2
P 13100 -1900
AR Path="/61520520/618340A2" Ref="C?"  Part="1" 
AR Path="/618340A2" Ref="C13"  Part="1" 
F 0 "C13" H 13215 -1854 50  0000 L CNN
F 1 "C" H 13215 -1945 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 13138 -2050 50  0001 C CNN
F 3 "~" H 13100 -1900 50  0001 C CNN
	1    13100 -1900
	1    0    0    -1  
$EndComp
Connection ~ 13100 -2050
$Comp
L Device:C C?
U 1 1 618340A9
P 13625 -1900
AR Path="/61520520/618340A9" Ref="C?"  Part="1" 
AR Path="/618340A9" Ref="C14"  Part="1" 
F 0 "C14" H 13740 -1854 50  0000 L CNN
F 1 "C" H 13740 -1945 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 13663 -2050 50  0001 C CNN
F 3 "~" H 13625 -1900 50  0001 C CNN
	1    13625 -1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	13100 -2575 13100 -2450
Wire Wire Line
	13625 -2050 13625 -2575
Wire Wire Line
	13625 -2575 13100 -2575
Connection ~ 13100 -2575
$Comp
L fx502-recreate-rescue:GND-Microtan_65_CPU-cache #PWR?
U 1 1 618340B3
P 13100 -1625
AR Path="/61520520/618340B3" Ref="#PWR?"  Part="1" 
AR Path="/618340B3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13100 -1625 30  0001 C CNN
F 1 "GND" H 13100 -1695 30  0001 C CNN
F 2 "" H 13100 -1625 60  0000 C CNN
F 3 "" H 13100 -1625 60  0000 C CNN
	1    13100 -1625
	1    0    0    -1  
$EndComp
$Comp
L fx502-recreate-rescue:GND-Microtan_65_CPU-cache #PWR?
U 1 1 618340B9
P 13625 -1625
AR Path="/61520520/618340B9" Ref="#PWR?"  Part="1" 
AR Path="/618340B9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13625 -1625 30  0001 C CNN
F 1 "GND" H 13625 -1695 30  0001 C CNN
F 2 "" H 13625 -1625 60  0000 C CNN
F 3 "" H 13625 -1625 60  0000 C CNN
	1    13625 -1625
	1    0    0    -1  
$EndComp
Wire Wire Line
	13625 -1625 13625 -1750
Wire Wire Line
	13100 -1625 13100 -1750
Text GLabel 11625 -2225 0    50   Input ~ 0
RTC_MFP
Text GLabel 10825 -2425 0    50   Input ~ 0
RTC_SDA
Text GLabel 10830 -2530 0    50   Input ~ 0
RTC_SCL
Wire Wire Line
	10925 -2425 10825 -2425
Connection ~ 10925 -2425
Wire Wire Line
	11175 -2525 10830 -2525
Wire Wire Line
	10830 -2525 10830 -2530
Connection ~ 11175 -2525
Wire Wire Line
	7875 1000 7875 1350
Wire Wire Line
	8400 1350 7875 1350
Connection ~ 8400 1350
Connection ~ 7875 1350
Wire Wire Line
	7875 1350 7875 1425
Wire Wire Line
	8400 1800 7875 1800
Connection ~ 8400 1800
Connection ~ 7875 1800
Wire Wire Line
	7875 1800 7875 1875
$Comp
L Device:C C9
U 1 1 618F987C
P 9800 1575
F 0 "C9" H 9915 1621 50  0000 L CNN
F 1 "100n" H 9915 1530 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9838 1425 50  0001 C CNN
F 3 "~" H 9800 1575 50  0001 C CNN
	1    9800 1575
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 61905E9B
P 10300 1575
F 0 "C11" H 10415 1621 50  0000 L CNN
F 1 "100n" H 10415 1530 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10338 1425 50  0001 C CNN
F 3 "~" H 10300 1575 50  0001 C CNN
	1    10300 1575
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 619124A6
P 10725 1575
F 0 "C12" H 10840 1621 50  0000 L CNN
F 1 "100n" H 10840 1530 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10763 1425 50  0001 C CNN
F 3 "~" H 10725 1575 50  0001 C CNN
	1    10725 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1350 9800 1350
Wire Wire Line
	9800 1350 9800 1425
Connection ~ 9300 1350
Wire Wire Line
	9800 1350 10300 1350
Wire Wire Line
	10300 1350 10300 1425
Connection ~ 9800 1350
Wire Wire Line
	10300 1350 10725 1350
Wire Wire Line
	10725 1350 10725 1425
Connection ~ 10300 1350
Wire Wire Line
	9300 1800 9800 1800
Wire Wire Line
	9800 1800 9800 1725
Wire Wire Line
	9800 1800 10300 1800
Wire Wire Line
	10300 1800 10300 1725
Connection ~ 9800 1800
Wire Wire Line
	10300 1800 10725 1800
Wire Wire Line
	10725 1800 10725 1725
Connection ~ 10300 1800
$Comp
L power:GND #PWR02
U 1 1 619A7DCD
P 1350 5225
F 0 "#PWR02" H 1350 4975 50  0001 C CNN
F 1 "GND" H 1355 5052 50  0000 C CNN
F 2 "" H 1350 5225 50  0001 C CNN
F 3 "" H 1350 5225 50  0001 C CNN
	1    1350 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5025 8900 5025
Wire Wire Line
	1350 5125 1350 5225
Wire Wire Line
	1350 4925 1350 4275
Text GLabel 6325 3200 2    50   Input ~ 0
KC0
Text GLabel 6325 3300 2    50   Input ~ 0
KC1
Text GLabel 6325 3400 2    50   Input ~ 0
KC2
Text GLabel 6325 3500 2    50   Input ~ 0
KC3
Text GLabel 6325 3600 2    50   Input ~ 0
KC4
Text GLabel 6325 3700 2    50   Input ~ 0
KC5
Wire Wire Line
	1150 4275 1350 4275
Connection ~ 1350 4275
Text Notes 400  4125 0    50   ~ 0
KR0 used for power on
Wire Wire Line
	7900 2800 7900 3325
Connection ~ 7900 3325
Wire Wire Line
	8075 3425 8075 2800
Connection ~ 8075 3425
Wire Wire Line
	8250 3525 8250 2800
Connection ~ 8250 3525
Wire Wire Line
	8425 3625 8425 2800
Connection ~ 8425 3625
Wire Wire Line
	8600 3725 8600 2800
Connection ~ 8600 3725
$Comp
L power:GND #PWR010
U 1 1 61B18C1C
P 4200 4875
F 0 "#PWR010" H 4200 4625 50  0001 C CNN
F 1 "GND" H 4205 4702 50  0000 C CNN
F 2 "" H 4200 4875 50  0001 C CNN
F 3 "" H 4200 4875 50  0001 C CNN
	1    4200 4875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61B26DCB
P 1700 4450
F 0 "#PWR03" H 1700 4200 50  0001 C CNN
F 1 "GND" H 1705 4277 50  0000 C CNN
F 2 "" H 1700 4450 50  0001 C CNN
F 3 "" H 1700 4450 50  0001 C CNN
	1    1700 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2175 4375 1700 4375
Wire Wire Line
	1700 4375 1700 4450
Wire Wire Line
	2175 3875 1700 3875
Wire Wire Line
	1700 3875 1700 4375
Connection ~ 1700 4375
Wire Wire Line
	2175 3375 1700 3375
Wire Wire Line
	1700 3375 1700 3875
Connection ~ 1700 3875
Wire Wire Line
	2175 2875 1700 2875
Wire Wire Line
	1700 2875 1700 3375
Connection ~ 1700 3375
Wire Wire Line
	3575 3375 4200 3375
Wire Wire Line
	4200 3375 4200 3875
Wire Wire Line
	3600 3875 4200 3875
Connection ~ 4200 3875
Wire Wire Line
	4200 3875 4200 4375
Wire Wire Line
	3575 4375 4200 4375
Connection ~ 4200 4375
Wire Wire Line
	4200 4375 4200 4875
$Comp
L Connector:Conn_01x27_Female J3
U 1 1 61BCAB7A
P 4000 9250
F 0 "J3" H 3892 10735 50  0000 C CNN
F 1 "Conn_01x27_Female" H 3892 10644 50  0000 C CNN
F 2 "" H 4000 9250 50  0001 C CNN
F 3 "~" H 4000 9250 50  0001 C CNN
	1    4000 9250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 4275 2175 4275
$Comp
L Device:R_Small R6
U 1 1 61C37D4A
P 8075 4800
F 0 "R6" H 7950 4175 50  0000 L CNN
F 1 "100k" H 7925 4100 50  0000 L CNN
F 2 "" H 8075 4800 50  0001 C CNN
F 3 "~" H 8075 4800 50  0001 C CNN
	1    8075 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 61C483C9
P 8250 4800
F 0 "R7" H 8125 4175 50  0000 L CNN
F 1 "100k" H 8100 4100 50  0000 L CNN
F 2 "" H 8250 4800 50  0001 C CNN
F 3 "~" H 8250 4800 50  0001 C CNN
	1    8250 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 61C589A4
P 8425 4800
F 0 "R8" H 8300 4175 50  0000 L CNN
F 1 "100k" H 8275 4100 50  0000 L CNN
F 2 "" H 8425 4800 50  0001 C CNN
F 3 "~" H 8425 4800 50  0001 C CNN
	1    8425 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 61C69219
P 8600 4800
F 0 "R9" H 8475 4175 50  0000 L CNN
F 1 "100k" H 8450 4100 50  0000 L CNN
F 2 "" H 8600 4800 50  0001 C CNN
F 3 "~" H 8600 4800 50  0001 C CNN
	1    8600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 7950 4925 7950
Wire Wire Line
	5000 10550 5000 10475
Wire Wire Line
	4200 10550 5000 10550
$EndSCHEMATC
