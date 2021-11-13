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
Text GLabel 1350 8450 2    50   Input ~ 0
SD1
Text GLabel 1350 8650 2    50   Input ~ 0
SD3
Text GLabel 1350 8850 2    50   Input ~ 0
SD5
Text GLabel 1350 9050 2    50   Input ~ 0
SD7
Text GLabel 1350 9450 2    50   Input ~ 0
SMR
Text GLabel 1350 9350 2    50   Input ~ 0
SOE
Text GLabel 1350 9250 2    50   Input ~ 0
SCLK
Text GLabel 1350 8350 2    50   Input ~ 0
SD0
Text GLabel 1350 8950 2    50   Input ~ 0
SD6
Text GLabel 1350 8750 2    50   Input ~ 0
SD4
Text GLabel 1350 8550 2    50   Input ~ 0
SD2
$Comp
L power:GND #PWR?
U 1 1 61058D25
P 2075 8250
AR Path="/6104FF77/61058D25" Ref="#PWR?"  Part="1" 
AR Path="/61058D25" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 2075 8000 50  0001 C CNN
F 1 "GND" H 2075 8075 50  0000 C CNN
F 2 "" H 2075 8250 50  0001 C CNN
F 3 "" H 2075 8250 50  0001 C CNN
	1    2075 8250
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
$Comp
L power:+3V3 #PWR05
U 1 1 61672821
P 2150 10775
F 0 "#PWR05" H 2150 10625 50  0001 C CNN
F 1 "+3V3" H 2165 10948 50  0000 C CNN
F 2 "" H 2150 10775 50  0001 C CNN
F 3 "" H 2150 10775 50  0001 C CNN
	1    2150 10775
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1350 2000 1700
Wire Wire Line
	2525 1700 2000 1700
Connection ~ 2525 1700
Wire Wire Line
	2525 2150 2000 2150
Connection ~ 2525 2150
Wire Wire Line
	2000 2150 2000 2225
$Comp
L Connector:Conn_01x27_Female J3
U 1 1 61BCAB7A
P 1150 9550
F 0 "J3" H 1042 11035 50  0000 C CNN
F 1 "Conn_01x27_Female" H 1042 10944 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x27_P2.54mm_Vertical" H 1150 9550 50  0001 C CNN
F 3 "~" H 1150 9550 50  0001 C CNN
	1    1150 9550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 8250 2075 8250
Wire Wire Line
	2150 10850 2150 10775
Wire Wire Line
	1350 10850 2150 10850
Text GLabel 1350 10750 2    50   Input ~ 0
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
F 2 "ajm_kicad:PinHeader_2x08_P2.54mm_Horizontal_psionSide" H 11400 3925 50  0001 C CNN
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
VCC_SLOT
Wire Wire Line
	11200 4325 10675 4325
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J2
U 1 1 61950CF0
P 11375 5825
F 0 "J2" H 11425 6342 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 11425 6251 50  0000 C CNN
F 2 "ajm_kicad:PinHeader_2x08_P2.54mm_Horizontal_psionSide" H 11375 5825 50  0001 C CNN
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
VCC_SLOT
Wire Wire Line
	11175 6225 10650 6225
Text GLabel 1350 9850 2    50   Input ~ 0
LS_DIR
Text GLabel 1350 10550 2    50   Input ~ 0
5V_ON
Text GLabel 1350 10650 2    50   Input ~ 0
5V
$Comp
L New_Library:Si2302CDS-n-channel TR1
U 1 1 6195EB4C
P 2175 4375
F 0 "TR1" H 2453 4421 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 2453 4330 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2205 4525 20  0001 C CNN
F 3 "" H 2175 4375 50  0001 C CNN
	1    2175 4375
	1    0    0    -1  
$EndComp
$Comp
L GeekAmmo:P-CHANNEL-MOSFET M1
U 1 1 61960A66
P 2900 3525
F 0 "M1" H 3178 3571 50  0000 L CNN
F 1 "P-CHANNEL-MOSFET" H 3178 3480 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2930 3675 20  0001 C CNN
F 3 "" H 2900 3525 50  0001 C CNN
	1    2900 3525
	1    0    0    -1  
$EndComp
Text GLabel 1800 2900 0    50   Input ~ 0
5V
$Comp
L Device:R_Small R1
U 1 1 61962FE3
P 2275 3125
F 0 "R1" H 2334 3171 50  0000 L CNN
F 1 "100k" H 2334 3080 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2275 3125 50  0001 C CNN
F 3 "~" H 2275 3125 50  0001 C CNN
	1    2275 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2900 2275 2900
Wire Wire Line
	2275 2900 2275 3025
Wire Wire Line
	2275 3225 2275 3425
Wire Wire Line
	2700 3425 2275 3425
Connection ~ 2275 3425
Wire Wire Line
	2275 3425 2275 4075
Wire Wire Line
	2275 2900 3000 2900
Wire Wire Line
	3000 2900 3000 3225
Connection ~ 2275 2900
$Comp
L power:GND #PWR0105
U 1 1 61968917
P 2275 4925
F 0 "#PWR0105" H 2275 4675 50  0001 C CNN
F 1 "GND" H 2280 4752 50  0000 C CNN
F 2 "" H 2275 4925 50  0001 C CNN
F 3 "" H 2275 4925 50  0001 C CNN
	1    2275 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 4925 2275 4675
Text GLabel 3325 4175 2    50   Input ~ 0
VCC_SLOT
Wire Wire Line
	3000 3825 3000 4175
Wire Wire Line
	3000 4175 3325 4175
Text GLabel 1675 4475 0    50   Input ~ 0
5V_ON
Wire Wire Line
	1675 4475 1975 4475
$Comp
L RF_Module:ESP32-WROOM-32 U1
U 1 1 6197490A
P 14000 2700
F 0 "U1" H 14675 4300 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 15000 4200 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 14000 1200 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 13700 2750 50  0001 C CNN
	1    14000 2700
	1    0    0    -1  
$EndComp
Text GLabel 13650 825  0    50   Input ~ 0
VCC_ESP
Wire Wire Line
	14000 1300 14000 975 
Wire Wire Line
	14000 825  13650 825 
$Comp
L Device:R_Small R2
U 1 1 61986673
P 12800 1200
F 0 "R2" H 12859 1246 50  0000 L CNN
F 1 "R_Small" H 12859 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 12800 1200 50  0001 C CNN
F 3 "~" H 12800 1200 50  0001 C CNN
	1    12800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13400 1500 12800 1500
Wire Wire Line
	12800 1500 12800 1300
Wire Wire Line
	12800 1100 12800 975 
Wire Wire Line
	12800 975  14000 975 
Connection ~ 14000 975 
Wire Wire Line
	14000 975  14000 825 
$Comp
L Device:C_Small C3
U 1 1 6198B199
P 12800 2100
F 0 "C3" H 12892 2146 50  0000 L CNN
F 1 "C_Small" H 12892 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 12800 2100 50  0001 C CNN
F 3 "~" H 12800 2100 50  0001 C CNN
	1    12800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 2000 12800 1500
Connection ~ 12800 1500
Wire Wire Line
	14000 4250 12800 4250
Wire Wire Line
	12800 4250 12800 2200
$Comp
L power:GND #PWR0106
U 1 1 6198F9AA
P 14000 5150
F 0 "#PWR0106" H 14000 4900 50  0001 C CNN
F 1 "GND" H 14005 4977 50  0000 C CNN
F 2 "" H 14000 5150 50  0001 C CNN
F 3 "" H 14000 5150 50  0001 C CNN
	1    14000 5150
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR2
U 1 1 61990652
P 13900 4675
F 0 "TR2" H 14178 4721 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 14178 4630 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 13930 4825 20  0001 C CNN
F 3 "" H 13900 4675 50  0001 C CNN
	1    13900 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 4100 14000 4250
Connection ~ 14000 4250
Wire Wire Line
	14000 4250 14000 4375
Wire Wire Line
	14000 4975 14000 5150
Text GLabel 13175 4775 0    50   Input ~ 0
ESP_ON
Wire Wire Line
	13175 4775 13700 4775
$Comp
L pak_breakout:AMS1117-3.3 U2
U 1 1 619A2CBA
P 2950 6825
F 0 "U2" H 2950 7067 50  0000 C CNN
F 1 "AMS1117-3.3" H 2950 6976 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2950 7025 50  0001 C CNN
F 3 "" H 3050 6575 50  0001 C CNN
	1    2950 6825
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 619A533E
P 1975 7150
F 0 "C1" H 2067 7196 50  0000 L CNN
F 1 "C_Small" H 2067 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1975 7150 50  0001 C CNN
F 3 "~" H 1975 7150 50  0001 C CNN
	1    1975 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 619A5982
P 3700 7150
F 0 "C2" H 3792 7196 50  0000 L CNN
F 1 "C_Small" H 3792 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3700 7150 50  0001 C CNN
F 3 "~" H 3700 7150 50  0001 C CNN
	1    3700 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 619A622A
P 1975 7550
F 0 "#PWR0107" H 1975 7300 50  0001 C CNN
F 1 "GND" H 1980 7377 50  0000 C CNN
F 2 "" H 1975 7550 50  0001 C CNN
F 3 "" H 1975 7550 50  0001 C CNN
	1    1975 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 619A670F
P 2950 7550
F 0 "#PWR0108" H 2950 7300 50  0001 C CNN
F 1 "GND" H 2955 7377 50  0000 C CNN
F 2 "" H 2950 7550 50  0001 C CNN
F 3 "" H 2950 7550 50  0001 C CNN
	1    2950 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 619A6A6A
P 3700 7525
F 0 "#PWR0109" H 3700 7275 50  0001 C CNN
F 1 "GND" H 3705 7352 50  0000 C CNN
F 2 "" H 3700 7525 50  0001 C CNN
F 3 "" H 3700 7525 50  0001 C CNN
	1    3700 7525
	1    0    0    -1  
$EndComp
Text GLabel 1500 6825 0    50   Input ~ 0
VBAT_SWITCHED2
Text GLabel 4025 6825 2    50   Input ~ 0
VCC_ESP
Wire Wire Line
	2650 6825 1975 6825
Wire Wire Line
	1975 7050 1975 6825
Connection ~ 1975 6825
Wire Wire Line
	1975 6825 1500 6825
Wire Wire Line
	1975 7250 1975 7550
Wire Wire Line
	2950 7125 2950 7550
Wire Wire Line
	3700 7250 3700 7525
Wire Wire Line
	3700 7050 3700 6825
Wire Wire Line
	3700 6825 3250 6825
Wire Wire Line
	4025 6825 3700 6825
Connection ~ 3700 6825
Text GLabel 14600 2500 2    50   Input ~ 0
PICO_TX
Text GLabel 14600 2600 2    50   Input ~ 0
PICO_RX
$Comp
L Memory_EEPROM:CAT24C256 U4
U 1 1 619D1109
P 6175 9950
F 0 "U4" H 5125 10400 50  0000 C CNN
F 1 "CAT24C256" H 5300 10300 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6175 9950 50  0001 C CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/CAT24C256-D.PDF" H 6175 9950 50  0001 C CNN
	1    6175 9950
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:CAT24C256 U3
U 1 1 619D20D1
P 4400 9950
F 0 "U3" H 3425 10375 50  0000 C CNN
F 1 "CAT24C256" H 3600 10275 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4400 9950 50  0001 C CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/CAT24C256-D.PDF" H 4400 9950 50  0001 C CNN
	1    4400 9950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0110
U 1 1 619D2D74
P 6175 9525
F 0 "#PWR0110" H 6175 9375 50  0001 C CNN
F 1 "+3V3" H 6190 9698 50  0000 C CNN
F 2 "" H 6175 9525 50  0001 C CNN
F 3 "" H 6175 9525 50  0001 C CNN
	1    6175 9525
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0111
U 1 1 619D3861
P 4400 9575
F 0 "#PWR0111" H 4400 9425 50  0001 C CNN
F 1 "+3V3" H 4415 9748 50  0000 C CNN
F 2 "" H 4400 9575 50  0001 C CNN
F 3 "" H 4400 9575 50  0001 C CNN
	1    4400 9575
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 9575 4400 9650
Wire Wire Line
	6175 9525 6175 9575
$Comp
L power:GND #PWR0112
U 1 1 619DD7BA
P 4400 10400
F 0 "#PWR0112" H 4400 10150 50  0001 C CNN
F 1 "GND" H 4405 10227 50  0000 C CNN
F 2 "" H 4400 10400 50  0001 C CNN
F 3 "" H 4400 10400 50  0001 C CNN
	1    4400 10400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 619DDD0C
P 6175 10425
F 0 "#PWR0113" H 6175 10175 50  0001 C CNN
F 1 "GND" H 6180 10252 50  0000 C CNN
F 2 "" H 6175 10425 50  0001 C CNN
F 3 "" H 6175 10425 50  0001 C CNN
	1    6175 10425
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 10250 4400 10325
Wire Wire Line
	6175 10250 6175 10325
$Comp
L power:GND #PWR?
U 1 1 619ED0E1
P 3325 8250
AR Path="/6104FF77/619ED0E1" Ref="#PWR?"  Part="1" 
AR Path="/619ED0E1" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 3325 8000 50  0001 C CNN
F 1 "GND" H 3325 8075 50  0000 C CNN
F 2 "" H 3325 8250 50  0001 C CNN
F 3 "" H 3325 8250 50  0001 C CNN
	1    3325 8250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0115
U 1 1 619ED0E7
P 3400 9175
F 0 "#PWR0115" H 3400 9025 50  0001 C CNN
F 1 "+3V3" H 3415 9348 50  0000 C CNN
F 2 "" H 3400 9175 50  0001 C CNN
F 3 "" H 3400 9175 50  0001 C CNN
	1    3400 9175
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 8250 3325 8250
Wire Wire Line
	3400 9250 3400 9175
Wire Wire Line
	2600 9250 3400 9250
Text GLabel 2600 8350 2    50   Input ~ 0
PICO_TX
Text GLabel 2600 8450 2    50   Input ~ 0
PICO_RX
Text GLabel 2600 8550 2    50   Input ~ 0
OLED_SCL
Text GLabel 2600 8650 2    50   Input ~ 0
OLED_SDA
Text GLabel 1350 10450 2    50   Input ~ 0
VBAT_SWITCHED2
Text GLabel 1350 10350 2    50   Input ~ 0
EX_ON
Text GLabel 1350 10250 2    50   Input ~ 0
ESP_ON
Wire Wire Line
	8950 5325 8950 5425
Text GLabel 1350 9950 2    50   Input ~ 0
SD_OE
Text GLabel 1350 10050 2    50   Input ~ 0
SC_OE
Text GLabel 8425 2525 0    50   Input ~ 0
SD_OE
Text GLabel 8450 5025 0    50   Input ~ 0
SC_OE
Text GLabel 2600 8750 2    50   Input ~ 0
SCLKOUT
Text GLabel 2600 8850 2    50   Input ~ 0
SDAOUT
Text GLabel 2600 8950 2    50   Input ~ 0
QH_O
Text GLabel 2600 9050 2    50   Input ~ 0
LATCHOUT1
Text GLabel 2600 9150 2    50   Input ~ 0
LATCHOUT2
$Comp
L 74xx:74HC595 U5
U 1 1 61A457E4
P 8400 10150
F 0 "U5" H 8600 10875 50  0000 C CNN
F 1 "74HC595" H 8725 10800 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8400 10150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8400 10150 50  0001 C CNN
	1    8400 10150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 61A48EB9
P 8400 9425
F 0 "#PWR0117" H 8400 9275 50  0001 C CNN
F 1 "+3V3" H 8415 9598 50  0000 C CNN
F 2 "" H 8400 9425 50  0001 C CNN
F 3 "" H 8400 9425 50  0001 C CNN
	1    8400 9425
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 9425 8400 9475
$Comp
L power:GND #PWR0118
U 1 1 61A4E362
P 8400 10950
F 0 "#PWR0118" H 8400 10700 50  0001 C CNN
F 1 "GND" H 8405 10777 50  0000 C CNN
F 2 "" H 8400 10950 50  0001 C CNN
F 3 "" H 8400 10950 50  0001 C CNN
	1    8400 10950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 10950 8400 10900
Wire Wire Line
	8000 10350 7900 10350
Wire Wire Line
	7900 10350 7900 10900
Wire Wire Line
	7900 10900 8400 10900
Connection ~ 8400 10900
Wire Wire Line
	8400 10900 8400 10850
Text GLabel 8000 9750 0    50   Input ~ 0
QH_O
Text GLabel 8000 9950 0    50   Input ~ 0
SCLKOUT
Wire Wire Line
	8400 9475 7475 9475
Wire Wire Line
	7475 9475 7475 10050
Wire Wire Line
	7475 10050 8000 10050
Connection ~ 8400 9475
Wire Wire Line
	8400 9475 8400 9550
Text GLabel 8000 10250 0    50   Input ~ 0
LATCHOUT2
Text GLabel 4800 9950 2    50   Input ~ 0
OLED_SCL
Text GLabel 4800 9850 2    50   Input ~ 0
OLED_SDA
Text GLabel 6575 9950 2    50   Input ~ 0
OLED_SCL
Text GLabel 6575 9850 2    50   Input ~ 0
OLED_SDA
Wire Wire Line
	4800 10050 4950 10050
Wire Wire Line
	4950 10050 4950 10325
Wire Wire Line
	4950 10325 4400 10325
Connection ~ 4400 10325
Wire Wire Line
	4400 10325 4400 10400
Wire Wire Line
	6575 10050 6575 10325
Wire Wire Line
	6575 10325 6175 10325
Connection ~ 6175 10325
Wire Wire Line
	6175 10325 6175 10425
Text Notes 4725 9200 0    50   ~ 0
Device address\n1 0 1 0 0 A1 A0 (RW)\n
Wire Wire Line
	4000 10050 3925 10050
Wire Wire Line
	3925 10050 3925 10325
Wire Wire Line
	3925 10325 4400 10325
Wire Wire Line
	4000 9850 3925 9850
Wire Wire Line
	3925 9850 3925 9950
Connection ~ 3925 10050
Wire Wire Line
	4000 9950 3925 9950
Connection ~ 3925 9950
Wire Wire Line
	3925 9950 3925 10050
Wire Wire Line
	5775 9950 5675 9950
Wire Wire Line
	5675 9950 5675 10050
Wire Wire Line
	5675 10050 5775 10050
Wire Wire Line
	5675 10050 5675 10325
Wire Wire Line
	5675 10325 6175 10325
Connection ~ 5675 10050
Wire Wire Line
	5775 9850 5775 9575
Wire Wire Line
	5775 9575 6175 9575
Connection ~ 6175 9575
Wire Wire Line
	6175 9575 6175 9650
$Comp
L Connector:Conn_01x11_Female J5
U 1 1 61B733DC
P 2400 8750
F 0 "J5" H 2292 9435 50  0000 C CNN
F 1 "Conn_01x11_Female" H 2292 9344 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x11_P2.54mm_Vertical" H 2400 8750 50  0001 C CNN
F 3 "~" H 2400 8750 50  0001 C CNN
	1    2400 8750
	-1   0    0    -1  
$EndComp
Text GLabel 11650 1625 2    50   Input ~ 0
P_SD1
Text GLabel 11650 1825 2    50   Input ~ 0
P_SD3
Text GLabel 11150 1725 0    50   Input ~ 0
P_SD5
Text GLabel 11150 1525 0    50   Input ~ 0
P_SD7
Text GLabel 11650 2225 2    50   Input ~ 0
P_SMR
Text GLabel 11150 2225 0    50   Input ~ 0
P_SOE
Text GLabel 11650 1525 2    50   Input ~ 0
P_SD0
Text GLabel 11650 1725 2    50   Input ~ 0
P_SD2
Text GLabel 11150 1825 0    50   Input ~ 0
P_SD4
Text GLabel 11150 1625 0    50   Input ~ 0
P_SD6
Text GLabel 11650 1925 2    50   Input ~ 0
P_SCLK
Text GLabel 11650 2025 2    50   Input ~ 0
P_SS3
Text GLabel 11150 2125 0    50   Input ~ 0
VCC_SLOT
$Comp
L power:GND #PWR0122
U 1 1 61D620F7
P 10375 2375
F 0 "#PWR0122" H 10375 2125 50  0001 C CNN
F 1 "GND" H 10380 2202 50  0000 C CNN
F 2 "" H 10375 2375 50  0001 C CNN
F 3 "" H 10375 2375 50  0001 C CNN
	1    10375 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	10375 1925 11150 1925
Wire Wire Line
	10375 1925 10375 2375
Text GLabel 11650 2125 2    50   Input ~ 0
EX_ON
Text GLabel 11150 2025 0    50   Input ~ 0
EXT_PWR_IN
Text GLabel 1350 10150 2    50   Input ~ 0
EXT_PWR_IN
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 61D9012E
P 4800 8600
F 0 "J6" H 4828 8576 50  0000 L CNN
F 1 "Conn_01x02_Female" H 4828 8485 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical_SMD_Pin1Left" H 4800 8600 50  0001 C CNN
F 3 "~" H 4800 8600 50  0001 C CNN
	1    4800 8600
	1    0    0    -1  
$EndComp
Text GLabel 4600 8600 0    50   Input ~ 0
VBAT
$Comp
L power:GND #PWR?
U 1 1 61D9AA18
P 4450 8800
AR Path="/6104FF77/61D9AA18" Ref="#PWR?"  Part="1" 
AR Path="/61D9AA18" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 4450 8550 50  0001 C CNN
F 1 "GND" H 4450 8625 50  0000 C CNN
F 2 "" H 4450 8800 50  0001 C CNN
F 3 "" H 4450 8800 50  0001 C CNN
	1    4450 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 8800 4450 8700
Wire Wire Line
	4450 8700 4600 8700
Text GLabel 8800 10050 2    50   Input ~ 0
SS1
Text GLabel 8800 10150 2    50   Input ~ 0
SS2
Text GLabel 8800 10250 2    50   Input ~ 0
SS3
$EndSCHEMATC
