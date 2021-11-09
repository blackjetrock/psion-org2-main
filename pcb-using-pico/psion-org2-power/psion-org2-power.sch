EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Psion Organiser 2 Re-Creation"
Date "2021-11-08"
Rev "REV1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3V3 #PWR014
U 1 1 5EED9BA4
P 2000 1350
F 0 "#PWR014" H 2000 1200 50  0001 C CNN
F 1 "+3V3" H 2015 1523 50  0000 C CNN
F 2 "" H 2000 1350 50  0001 C CNN
F 3 "" H 2000 1350 50  0001 C CNN
	1    2000 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6133A297
P 2525 1900
F 0 "C6" H 2640 1946 50  0000 L CNN
F 1 "100n" H 2640 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2563 1750 50  0001 C CNN
F 3 "~" H 2525 1900 50  0001 C CNN
	1    2525 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6133A298
P 2975 1900
F 0 "C7" H 3090 1946 50  0000 L CNN
F 1 "100n" H 3090 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3013 1750 50  0001 C CNN
F 3 "~" H 2975 1900 50  0001 C CNN
	1    2975 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 6133A299
P 3425 1900
F 0 "C8" H 3540 1946 50  0000 L CNN
F 1 "100n" H 3540 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3463 1750 50  0001 C CNN
F 3 "~" H 3425 1900 50  0001 C CNN
	1    3425 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 6133A29D
P 2000 1925
F 0 "C5" H 2115 1971 50  0000 L CNN
F 1 "1u" H 2115 1880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2038 1775 50  0001 C CNN
F 3 "~" H 2000 1925 50  0001 C CNN
	1    2000 1925
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 1750 3425 1700
Wire Wire Line
	2975 1750 2975 1700
Connection ~ 2975 1700
Wire Wire Line
	2975 1700 3425 1700
Wire Wire Line
	2525 1750 2525 1700
Wire Wire Line
	2525 1700 2975 1700
$Comp
L power:GND #PWR018
U 1 1 6133A29E
P 3425 2200
F 0 "#PWR018" H 3425 1950 50  0001 C CNN
F 1 "GND" H 3430 2027 50  0000 C CNN
F 2 "" H 3425 2200 50  0001 C CNN
F 3 "" H 3425 2200 50  0001 C CNN
	1    3425 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 2050 2525 2150
Wire Wire Line
	2975 2050 2975 2150
Wire Wire Line
	2975 2150 2525 2150
Wire Wire Line
	3425 2050 3425 2150
Wire Wire Line
	2000 2075 2000 2150
$Comp
L power:GND #PWR015
U 1 1 5F00B2D4
P 2000 2225
F 0 "#PWR015" H 2000 1975 50  0001 C CNN
F 1 "GND" H 2005 2052 50  0000 C CNN
F 2 "" H 2000 2225 50  0001 C CNN
F 3 "" H 2000 2225 50  0001 C CNN
	1    2000 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 2150 3425 2150
Connection ~ 2975 2150
Connection ~ 3425 2150
Wire Wire Line
	3425 2150 3425 2200
Text GLabel 1950 6775 2    50   Input ~ 0
SD1
Text GLabel 1950 6975 2    50   Input ~ 0
SD3
Text GLabel 1950 7175 2    50   Input ~ 0
SD5
Text GLabel 1950 7375 2    50   Input ~ 0
SD7
Text GLabel 1950 7775 2    50   Input ~ 0
SMR
Text GLabel 1950 7675 2    50   Input ~ 0
SOE
Text GLabel 1950 7475 2    50   Input ~ 0
SPGM
Text GLabel 1950 7875 2    50   Input ~ 0
SS1
Text GLabel 1950 7575 2    50   Input ~ 0
SCLK
Text GLabel 1950 6675 2    50   Input ~ 0
SD0
Text GLabel 1950 7275 2    50   Input ~ 0
SD6
Text GLabel 1950 7075 2    50   Input ~ 0
SD4
Text GLabel 1950 6875 2    50   Input ~ 0
SD2
$Comp
L power:GND #PWR?
U 1 1 61058D25
P 2675 6575
AR Path="/6104FF77/61058D25" Ref="#PWR?"  Part="1" 
AR Path="/61058D25" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 2675 6325 50  0001 C CNN
F 1 "GND" H 2675 6400 50  0000 C CNN
F 2 "" H 2675 6575 50  0001 C CNN
F 3 "" H 2675 6575 50  0001 C CNN
	1    2675 6575
	1    0    0    -1  
$EndComp
Text GLabel 8450 4025 0    50   Input ~ 0
SD0
Text GLabel 8450 4125 0    50   Input ~ 0
SD1
Text GLabel 8450 4225 0    50   Input ~ 0
SD2
Text GLabel 8450 4325 0    50   Input ~ 0
SD3
Text GLabel 8450 4425 0    50   Input ~ 0
SD4
Text GLabel 8450 4525 0    50   Input ~ 0
SD5
Text GLabel 8450 4625 0    50   Input ~ 0
SD6
Text GLabel 8450 4725 0    50   Input ~ 0
SD7
Text GLabel 8425 1725 0    50   Input ~ 0
SMR
Text GLabel 8425 1825 0    50   Input ~ 0
SCLK
Text GLabel 8425 1625 0    50   Input ~ 0
SOE
Text GLabel 8425 1925 0    50   Input ~ 0
SS1
Text GLabel 8425 1525 0    50   Input ~ 0
SPGM
Text GLabel 9450 4025 2    50   Input ~ 0
P_SD0
Text GLabel 9450 4125 2    50   Input ~ 0
P_SD1
Text GLabel 9450 4225 2    50   Input ~ 0
P_SD2
Text GLabel 9450 4325 2    50   Input ~ 0
P_SD3
Text GLabel 9450 4425 2    50   Input ~ 0
P_SD4
Text GLabel 9450 4525 2    50   Input ~ 0
P_SD5
Text GLabel 9450 4625 2    50   Input ~ 0
P_SD6
Text GLabel 9450 4725 2    50   Input ~ 0
P_SD7
Text GLabel 9425 1725 2    50   Input ~ 0
P_SMR
Text GLabel 9425 1825 2    50   Input ~ 0
P_SCLK
Text GLabel 9425 1625 2    50   Input ~ 0
P_SOE
Text GLabel 9425 1925 2    50   Input ~ 0
P_SS1
Text GLabel 9425 1525 2    50   Input ~ 0
P_SPGM
$Comp
L 74xx:74LS245 U?
U 1 1 611C2F85
P 8950 4525
AR Path="/6104FF77/611C2F85" Ref="U?"  Part="1" 
AR Path="/611C2F85" Ref="U7"  Part="1" 
F 0 "U7" H 8950 5506 50  0000 C CNN
F 1 "74LS245" H 8950 5415 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8950 4525 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 8950 4525 50  0001 C CNN
	1    8950 4525
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3450 8950 3575
Wire Wire Line
	8950 5425 8950 5375
$Comp
L mirotan-due-cassette-shield-cache:+3.3V #PWR?
U 1 1 611C2F8D
P 8950 3450
AR Path="/6104FF77/611C2F8D" Ref="#PWR?"  Part="1" 
AR Path="/611C2F8D" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 8950 3300 50  0001 C CNN
F 1 "+3.3V" H 8965 3623 50  0000 C CNN
F 2 "" H 8950 3450 50  0001 C CNN
F 3 "" H 8950 3450 50  0001 C CNN
	1    8950 3450
	1    0    0    -1  
$EndComp
Text GLabel 7400 4925 0    50   Input ~ 0
LS_DIR
Wire Wire Line
	8450 5375 8950 5375
Wire Wire Line
	8450 5025 8450 5375
Connection ~ 8950 5375
Wire Wire Line
	8950 5375 8950 5325
$Comp
L Device:R_Small R?
U 1 1 611C2F98
P 7675 4475
AR Path="/60C45767/611C2F98" Ref="R?"  Part="1" 
AR Path="/611C2F98" Ref="R15"  Part="1" 
AR Path="/6104FF77/611C2F98" Ref="R?"  Part="1" 
F 0 "R15" H 7734 4521 50  0000 L CNN
F 1 "100k" H 7734 4430 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7675 4475 50  0001 C CNN
F 3 "~" H 7675 4475 50  0001 C CNN
	1    7675 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3575 7675 3575
Wire Wire Line
	7675 3575 7675 4375
Connection ~ 8950 3575
Wire Wire Line
	8950 3575 8950 3725
Wire Wire Line
	7675 4575 7675 4925
Wire Wire Line
	7675 4925 8450 4925
Wire Wire Line
	7400 4925 7675 4925
Connection ~ 7675 4925
$Comp
L 74xx:74LS245 U?
U 1 1 611C2FA6
P 8925 2025
AR Path="/6104FF77/611C2FA6" Ref="U?"  Part="1" 
AR Path="/611C2FA6" Ref="U6"  Part="1" 
F 0 "U6" H 9100 2875 50  0000 C CNN
F 1 "74LS245" H 9200 2775 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8925 2025 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 8925 2025 50  0001 C CNN
	1    8925 2025
	1    0    0    -1  
$EndComp
$Comp
L mirotan-due-cassette-shield-cache:+3.3V #PWR?
U 1 1 6133A2B5
P 8925 975
AR Path="/6104FF77/6133A2B5" Ref="#PWR?"  Part="1" 
AR Path="/6133A2B5" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 8925 825 50  0001 C CNN
F 1 "+3.3V" H 8940 1148 50  0000 C CNN
F 2 "" H 8925 975 50  0001 C CNN
F 3 "" H 8925 975 50  0001 C CNN
	1    8925 975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8925 975  8925 1100
Wire Wire Line
	8925 1100 7800 1100
Wire Wire Line
	7800 1100 7800 2425
Wire Wire Line
	7800 2425 8425 2425
Connection ~ 8925 1100
Wire Wire Line
	8925 1100 8925 1225
Wire Wire Line
	8925 2825 8925 2850
Wire Wire Line
	8925 2850 8425 2850
Wire Wire Line
	8425 2850 8425 2525
$Comp
L power:+3V3 #PWR05
U 1 1 61672821
P 2750 9100
F 0 "#PWR05" H 2750 8950 50  0001 C CNN
F 1 "+3V3" H 2765 9273 50  0000 C CNN
F 2 "" H 2750 9100 50  0001 C CNN
F 3 "" H 2750 9100 50  0001 C CNN
	1    2750 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1350 2000 1700
Wire Wire Line
	2525 1700 2000 1700
Connection ~ 2525 1700
Connection ~ 2000 1700
Wire Wire Line
	2000 1700 2000 1775
Wire Wire Line
	2525 2150 2000 2150
Connection ~ 2525 2150
Connection ~ 2000 2150
Wire Wire Line
	2000 2150 2000 2225
$Comp
L Device:C C9
U 1 1 618F987C
P 3925 1925
F 0 "C9" H 4040 1971 50  0000 L CNN
F 1 "100n" H 4040 1880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3963 1775 50  0001 C CNN
F 3 "~" H 3925 1925 50  0001 C CNN
	1    3925 1925
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 61905E9B
P 4425 1925
F 0 "C11" H 4540 1971 50  0000 L CNN
F 1 "100n" H 4540 1880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4463 1775 50  0001 C CNN
F 3 "~" H 4425 1925 50  0001 C CNN
	1    4425 1925
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 619124A6
P 4850 1925
F 0 "C12" H 4965 1971 50  0000 L CNN
F 1 "100n" H 4965 1880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4888 1775 50  0001 C CNN
F 3 "~" H 4850 1925 50  0001 C CNN
	1    4850 1925
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 1700 3925 1700
Wire Wire Line
	3925 1700 3925 1775
Connection ~ 3425 1700
Wire Wire Line
	3925 1700 4425 1700
Wire Wire Line
	4425 1700 4425 1775
Connection ~ 3925 1700
Wire Wire Line
	4425 1700 4850 1700
Wire Wire Line
	4850 1700 4850 1775
Connection ~ 4425 1700
Wire Wire Line
	3425 2150 3925 2150
Wire Wire Line
	3925 2150 3925 2075
Wire Wire Line
	3925 2150 4425 2150
Wire Wire Line
	4425 2150 4425 2075
Connection ~ 3925 2150
Wire Wire Line
	4425 2150 4850 2150
Wire Wire Line
	4850 2150 4850 2075
Connection ~ 4425 2150
$Comp
L Connector:Conn_01x27_Female J3
U 1 1 61BCAB7A
P 1750 7875
F 0 "J3" H 1642 9360 50  0000 C CNN
F 1 "Conn_01x27_Female" H 1642 9269 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x27_P2.54mm_Vertical" H 1750 7875 50  0001 C CNN
F 3 "~" H 1750 7875 50  0001 C CNN
	1    1750 7875
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1950 6575 2675 6575
Wire Wire Line
	2750 9175 2750 9100
Wire Wire Line
	1950 9175 2750 9175
Text GLabel 1950 9075 2    50   Input ~ 0
VBAT
Text Notes 11900 10275 0    157  ~ 31
Power PCB
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J1
U 1 1 61931D66
P 11350 1825
F 0 "J1" H 11400 2342 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 11400 2251 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Horizontal" H 11350 1825 50  0001 C CNN
F 3 "~" H 11350 1825 50  0001 C CNN
	1    11350 1825
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J4
U 1 1 61932566
P 11400 3925
F 0 "J4" H 11450 4442 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 11450 4351 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Horizontal" H 11400 3925 50  0001 C CNN
F 3 "~" H 11400 3925 50  0001 C CNN
	1    11400 3925
	1    0    0    -1  
$EndComp
Text GLabel 11700 3625 2    50   Input ~ 0
P_SD0
Text GLabel 11200 3625 0    50   Input ~ 0
P_SD1
Text GLabel 11700 3725 2    50   Input ~ 0
P_SD2
Text GLabel 11200 3725 0    50   Input ~ 0
P_SD3
Text GLabel 11700 3825 2    50   Input ~ 0
P_SD4
Text GLabel 11200 3825 0    50   Input ~ 0
P_SD5
Text GLabel 11700 3925 2    50   Input ~ 0
P_SD6
Text GLabel 11200 3925 0    50   Input ~ 0
P_SD7
Text GLabel 11200 4025 0    50   Input ~ 0
P_SMR
Text GLabel 11700 4025 2    50   Input ~ 0
P_SCLK
Text GLabel 11200 4125 0    50   Input ~ 0
P_SOE
Text GLabel 11700 4225 2    50   Input ~ 0
P_SPGM
$Comp
L power:GND #PWR0101
U 1 1 6193C2C5
P 8925 2850
F 0 "#PWR0101" H 8925 2600 50  0001 C CNN
F 1 "GND" H 8930 2677 50  0000 C CNN
F 2 "" H 8925 2850 50  0001 C CNN
F 3 "" H 8925 2850 50  0001 C CNN
	1    8925 2850
	1    0    0    -1  
$EndComp
Connection ~ 8925 2850
Text GLabel 1950 7975 2    50   Input ~ 0
SS2
Text GLabel 1950 8075 2    50   Input ~ 0
SS3
Text GLabel 8425 2025 0    50   Input ~ 0
SS2
Text GLabel 8425 2125 0    50   Input ~ 0
SS3
Text GLabel 9425 2025 2    50   Input ~ 0
P_SS2
Text GLabel 9425 2125 2    50   Input ~ 0
P_SS3
Text GLabel 11700 4125 2    50   Input ~ 0
P_SS1
$Comp
L power:GND #PWR0102
U 1 1 6194A617
P 8950 5425
F 0 "#PWR0102" H 8950 5175 50  0001 C CNN
F 1 "GND" H 8955 5252 50  0000 C CNN
F 2 "" H 8950 5425 50  0001 C CNN
F 3 "" H 8950 5425 50  0001 C CNN
	1    8950 5425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6194AB66
P 10975 4550
F 0 "#PWR0103" H 10975 4300 50  0001 C CNN
F 1 "GND" H 10980 4377 50  0000 C CNN
F 2 "" H 10975 4550 50  0001 C CNN
F 3 "" H 10975 4550 50  0001 C CNN
	1    10975 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10975 4225 11200 4225
Wire Wire Line
	10975 4225 10975 4550
Text GLabel 10675 4325 0    50   Input ~ 0
VCC1
Wire Wire Line
	11200 4325 10675 4325
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J2
U 1 1 61950CF0
P 11375 5825
F 0 "J2" H 11425 6342 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 11425 6251 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Horizontal" H 11375 5825 50  0001 C CNN
F 3 "~" H 11375 5825 50  0001 C CNN
	1    11375 5825
	1    0    0    -1  
$EndComp
Text GLabel 11675 5525 2    50   Input ~ 0
P_SD0
Text GLabel 11175 5525 0    50   Input ~ 0
P_SD1
Text GLabel 11675 5625 2    50   Input ~ 0
P_SD2
Text GLabel 11175 5625 0    50   Input ~ 0
P_SD3
Text GLabel 11675 5725 2    50   Input ~ 0
P_SD4
Text GLabel 11175 5725 0    50   Input ~ 0
P_SD5
Text GLabel 11675 5825 2    50   Input ~ 0
P_SD6
Text GLabel 11175 5825 0    50   Input ~ 0
P_SD7
Text GLabel 11175 5925 0    50   Input ~ 0
P_SMR
Text GLabel 11675 5925 2    50   Input ~ 0
P_SCLK
Text GLabel 11175 6025 0    50   Input ~ 0
P_SOE
Text GLabel 11675 6125 2    50   Input ~ 0
P_SPGM
Text GLabel 11675 6025 2    50   Input ~ 0
P_SS2
$Comp
L power:GND #PWR0104
U 1 1 61950D03
P 10950 6450
F 0 "#PWR0104" H 10950 6200 50  0001 C CNN
F 1 "GND" H 10955 6277 50  0000 C CNN
F 2 "" H 10950 6450 50  0001 C CNN
F 3 "" H 10950 6450 50  0001 C CNN
	1    10950 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 6125 11175 6125
Wire Wire Line
	10950 6125 10950 6450
Text GLabel 10650 6225 0    50   Input ~ 0
VCC2
Wire Wire Line
	11175 6225 10650 6225
Text GLabel 1950 8175 2    50   Input ~ 0
LS_DIR
$EndSCHEMATC
