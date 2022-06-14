* Functional test stimulus file for 10ns period

* TT process corner
.lib "/software/PDKs/sky130A/libs.tech/ngspice/sky130.lib.spice" tt
.include "sky130_sram_1kbyte_1rw1r_8x1024_8.sp"

* Global Power Supplies
Vvdd vdd 0 1.8

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xsky130_sram_1kbyte_1rw1r_8x1024_8 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 a0_6 a0_7 a0_8 a0_9 a1_0 a1_1 a1_2 a1_3 a1_4 a1_5 a1_6 a1_7 a1_8 a1_9 CSB0 CSB1 WEB0 clk0 clk1 dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7 dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 vdd gnd sky130_sram_1kbyte_1rw1r_8x1024_8

* SRAM output loads
CD00 dout0_0  0 27.56f
CD01 dout0_1  0 27.56f
CD02 dout0_2  0 27.56f
CD03 dout0_3  0 27.56f
CD04 dout0_4  0 27.56f
CD05 dout0_5  0 27.56f
CD06 dout0_6  0 27.56f
CD07 dout0_7  0 27.56f
CD10 dout1_0  0 27.56f
CD11 dout1_1  0 27.56f
CD12 dout1_2  0 27.56f
CD13 dout1_3  0 27.56f
CD14 dout1_4  0 27.56f
CD15 dout1_5  0 27.56f
CD16 dout1_6  0 27.56f
CD17 dout1_7  0 27.56f


* Important signals for debug
* bl:	xsky130_sram_1kbyte_1rw1r_8x1024_8.xbank0.bl_0_0
* br:	xsky130_sram_1kbyte_1rw1r_8x1024_8.xbank0.br_0_0
* s_en:	xsky130_sram_1kbyte_1rw1r_8x1024_8.s_en
* q:	xsky130_sram_1kbyte_1rw1r_8x1024_8.xbank0.xbitcell_array.xbitcell_array.xbit_r0_c0.Q
* qbar:	xsky130_sram_1kbyte_1rw1r_8x1024_8.xbank0.xbitcell_array.xbitcell_array.xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 10ns)
*	Writing 01111010  to  address 0000000000 (from port 0) during cycle 1 (10ns - 20ns)
*	Writing 01111011  to  address 1111111100 (from port 0) during cycle 2 (20ns - 30ns)
*	Writing 01111011  to  address 0000000111 (from port 0) during cycle 3 (30ns - 40ns)
*	Reading 01111010 from address 0000000000 (from port 0) during cycle 4 (40ns - 50ns)
*	Reading 01111010 from address 0000000000 (from port 1) during cycle 4 (40ns - 50ns)
*	Reading 01111011 from address 1111111100 (from port 0) during cycle 5 (50ns - 60ns)
*	Reading 01111010 from address 0000000000 (from port 1) during cycle 5 (50ns - 60ns)
*	Reading 01111011 from address 0000000111 (from port 0) during cycle 6 (60ns - 70ns)
*	Reading 01111010 from address 0000000000 (from port 1) during cycle 6 (60ns - 70ns)
*	Reading 01111011 from address 0000000111 (from port 0) during cycle 7 (70ns - 80ns)
*	Writing 01010101  to  address 0000000110 (from port 0) during cycle 8 (80ns - 90ns)
*	Reading 01111010 from address 0000000000 (from port 0) during cycle 10 (100ns - 110ns)
*	Reading 01010101 from address 0000000110 (from port 0) during cycle 11 (110ns - 120ns)
*	Reading 01111010 from address 0000000000 (from port 1) during cycle 11 (110ns - 120ns)
*	Reading 01111011 from address 1111111100 (from port 0) during cycle 12 (120ns - 130ns)
*	Reading 01111010 from address 0000000000 (from port 1) during cycle 12 (120ns - 130ns)
*	Writing 10000100  to  address 1111111011 (from port 0) during cycle 13 (130ns - 140ns)
*	Reading 01111011 from address 0000000111 (from port 1) during cycle 13 (130ns - 140ns)
*	Reading 01111010 from address 0000000000 (from port 0) during cycle 14 (140ns - 150ns)
*	Reading 10000100 from address 1111111011 (from port 1) during cycle 14 (140ns - 150ns)
*	Reading 10000100 from address 1111111011 (from port 0) during cycle 17 (170ns - 180ns)
*	Reading 01010101 from address 0000000110 (from port 1) during cycle 17 (170ns - 180ns)
*	Writing 01110101  to  address 1111111100 (from port 0) during cycle 18 (180ns - 190ns)
*	Reading 01111010 from address 0000000000 (from port 0) during cycle 20 (200ns - 210ns)
*	Reading 01111010 from address 0000000000 (from port 1) during cycle 20 (200ns - 210ns)
*	Reading 01111011 from address 0000000111 (from port 1) during cycle 21 (210ns - 220ns)
*	Reading 10000100 from address 1111111011 (from port 0) during cycle 22 (220ns - 230ns)
*	Reading 01110101 from address 1111111100 (from port 1) during cycle 22 (220ns - 230ns)
*	Reading 01010101 from address 0000000110 (from port 1) during cycle 23 (230ns - 240ns)
*	Reading 01110101 from address 1111111100 (from port 1) during cycle 24 (240ns - 250ns)
*	Writing 10110101  to  address 0000000001 (from port 0) during cycle 25 (250ns - 260ns)
*	Reading 10000100 from address 1111111011 (from port 0) during cycle 26 (260ns - 270ns)
*	Reading 01010101 from address 0000000110 (from port 0) during cycle 27 (270ns - 280ns)
*	Reading 01110101 from address 1111111100 (from port 0) during cycle 28 (280ns - 290ns)
*	Reading 01111011 from address 0000000111 (from port 1) during cycle 28 (280ns - 290ns)
*	Writing 01010101  to  address 1111111001 (from port 0) during cycle 29 (290ns - 300ns)
*	Reading 01110101 from address 1111111100 (from port 1) during cycle 29 (290ns - 300ns)
*	Reading 01010101 from address 1111111001 (from port 0) during cycle 30 (300ns - 310ns)
*	Reading 10110101 from address 0000000001 (from port 0) during cycle 32 (320ns - 330ns)
*	Reading 10110101 from address 0000000001 (from port 1) during cycle 33 (330ns - 340ns)
*	Reading 01110101 from address 1111111100 (from port 0) during cycle 34 (340ns - 350ns)
*	Writing 10110010  to  address 1111111001 (from port 0) during cycle 35 (350ns - 360ns)
*	Reading 01110101 from address 1111111100 (from port 1) during cycle 36 (360ns - 370ns)
*	Reading 01111011 from address 0000000111 (from port 0) during cycle 37 (370ns - 380ns)
*	Writing 00101010  to  address 1111111010 (from port 0) during cycle 38 (380ns - 390ns)
*	Reading 01010101 from address 0000000110 (from port 1) during cycle 38 (380ns - 390ns)
*	Writing 11010011  to  address 1111111000 (from port 0) during cycle 39 (390ns - 400ns)
*	Writing 11011100  to  address 1111111110 (from port 0) during cycle 40 (400ns - 410ns)
*	Reading 10110101 from address 0000000001 (from port 1) during cycle 40 (400ns - 410ns)
*	Reading 10000100 from address 1111111011 (from port 0) during cycle 42 (420ns - 430ns)
*	Reading 10000100 from address 1111111011 (from port 1) during cycle 42 (420ns - 430ns)
*	Writing 10100100  to  address 1111111110 (from port 0) during cycle 43 (430ns - 440ns)
*	Reading 01111011 from address 0000000111 (from port 1) during cycle 43 (430ns - 440ns)
*	Reading 01111011 from address 0000000111 (from port 0) during cycle 44 (440ns - 450ns)
*	Reading 10100100 from address 1111111110 (from port 1) during cycle 44 (440ns - 450ns)
*	Reading 01110101 from address 1111111100 (from port 0) during cycle 45 (450ns - 460ns)
*	Writing 00100100  to  address 0000000001 (from port 0) during cycle 47 (470ns - 480ns)
*	Reading 11010011 from address 1111111000 (from port 0) during cycle 48 (480ns - 490ns)
*	Reading 11010011 from address 1111111000 (from port 1) during cycle 48 (480ns - 490ns)
*	Reading 01010101 from address 0000000110 (from port 0) during cycle 49 (490ns - 500ns)
*	Reading 10110010 from address 1111111001 (from port 1) during cycle 49 (490ns - 500ns)
*	Reading 01010101 from address 0000000110 (from port 1) during cycle 50 (500ns - 510ns)
*	Writing 10011101  to  address 1111111001 (from port 0) during cycle 51 (510ns - 520ns)
*	Reading 01111010 from address 0000000000 (from port 1) during cycle 51 (510ns - 520ns)
*	Reading 10011101 from address 1111111001 (from port 0) during cycle 52 (520ns - 530ns)
*	Writing 11110011  to  address 1111111101 (from port 0) during cycle 53 (530ns - 540ns)
*	Reading 01010101 from address 0000000110 (from port 0) during cycle 54 (540ns - 550ns)
*	Reading 11110011 from address 1111111101 (from port 1) during cycle 54 (540ns - 550ns)
*	Reading 01110101 from address 1111111100 (from port 0) during cycle 55 (550ns - 560ns)
*	Reading 01110101 from address 1111111100 (from port 1) during cycle 55 (550ns - 560ns)
*	Reading 01110101 from address 1111111100 (from port 0) during cycle 56 (560ns - 570ns)
*	Reading 11010011 from address 1111111000 (from port 0) during cycle 57 (570ns - 580ns)
*	Writing 01101110  to  address 1111111101 (from port 0) during cycle 58 (580ns - 590ns)
*	Reading 10011101 from address 1111111001 (from port 1) during cycle 58 (580ns - 590ns)
*	Reading 11010011 from address 1111111000 (from port 0) during cycle 59 (590ns - 600ns)
*	Reading 00101010 from address 1111111010 (from port 1) during cycle 59 (590ns - 600ns)
*	Reading 01111010 from address 0000000000 (from port 0) during cycle 60 (600ns - 610ns)
*	Reading 10100100 from address 1111111110 (from port 0) during cycle 61 (610ns - 620ns)
*	Writing 00011000  to  address 1111111000 (from port 0) during cycle 62 (620ns - 630ns)
*	Reading 01111010 from address 0000000000 (from port 0) during cycle 63 (630ns - 640ns)
*	Reading 01111010 from address 0000000000 (from port 1) during cycle 63 (630ns - 640ns)
*	Writing 11001011  to  address 0000000101 (from port 0) during cycle 64 (640ns - 650ns)
*	Reading 00011000 from address 1111111000 (from port 1) during cycle 64 (640ns - 650ns)
*	Writing 00111101  to  address 1111111010 (from port 0) during cycle 65 (650ns - 660ns)
*	Writing 00000110  to  address 1111111000 (from port 0) during cycle 66 (660ns - 670ns)
*	Writing 11011101  to  address 1111111010 (from port 0) during cycle 67 (670ns - 680ns)
*	Writing 11101110  to  address 1111111000 (from port 0) during cycle 68 (680ns - 690ns)
*	Reading 10000100 from address 1111111011 (from port 0) during cycle 69 (690ns - 700ns)
*	Reading 01111010 from address 0000000000 (from port 1) during cycle 69 (690ns - 700ns)
*	Reading 01101110 from address 1111111101 (from port 1) during cycle 70 (700ns - 710ns)
*	Reading 10100100 from address 1111111110 (from port 0) during cycle 71 (710ns - 720ns)
*	Reading 01010101 from address 0000000110 (from port 1) during cycle 71 (710ns - 720ns)
*	Reading 01101110 from address 1111111101 (from port 0) during cycle 72 (720ns - 730ns)
*	Reading 11101110 from address 1111111000 (from port 1) during cycle 72 (720ns - 730ns)
*	Reading 11101110 from address 1111111000 (from port 0) during cycle 73 (730ns - 740ns)
*	Reading 01111011 from address 0000000111 (from port 1) during cycle 73 (730ns - 740ns)
*	Writing 01110000  to  address 1111111000 (from port 0) during cycle 74 (740ns - 750ns)
*	Reading 00100100 from address 0000000001 (from port 1) during cycle 74 (740ns - 750ns)
*	Reading 01010101 from address 0000000110 (from port 0) during cycle 75 (750ns - 760ns)
*	Reading 01101110 from address 1111111101 (from port 0) during cycle 76 (760ns - 770ns)
*	Reading 00100100 from address 0000000001 (from port 1) during cycle 76 (760ns - 770ns)
*	Reading 11001011 from address 0000000101 (from port 1) during cycle 77 (770ns - 780ns)
*	Writing 00011011  to  address 1111110111 (from port 0) during cycle 78 (780ns - 790ns)
*	Reading 01111010 from address 0000000000 (from port 1) during cycle 78 (780ns - 790ns)
*	Reading 11011101 from address 1111111010 (from port 0) during cycle 79 (790ns - 800ns)
*	Reading 10000100 from address 1111111011 (from port 1) during cycle 79 (790ns - 800ns)
*	Reading 10100100 from address 1111111110 (from port 0) during cycle 80 (800ns - 810ns)
*	Reading 10000100 from address 1111111011 (from port 1) during cycle 80 (800ns - 810ns)
*	Reading 01010101 from address 0000000110 (from port 0) during cycle 81 (810ns - 820ns)
*	Reading 10000100 from address 1111111011 (from port 0) during cycle 82 (820ns - 830ns)
*	Reading 00011011 from address 1111110111 (from port 0) during cycle 83 (830ns - 840ns)
*	Reading 10100100 from address 1111111110 (from port 1) during cycle 84 (840ns - 850ns)
*	Writing 11110001  to  address 0000000110 (from port 0) during cycle 85 (850ns - 860ns)
*	Reading 00100100 from address 0000000001 (from port 1) during cycle 85 (850ns - 860ns)
*	Reading 10100100 from address 1111111110 (from port 0) during cycle 86 (860ns - 870ns)
*	Reading 11001011 from address 0000000101 (from port 1) during cycle 86 (860ns - 870ns)
*	Reading 00011011 from address 1111110111 (from port 0) during cycle 87 (870ns - 880ns)
*	Writing 00001001  to  address 1111111110 (from port 0) during cycle 88 (880ns - 890ns)
*	Reading 00001001 from address 1111111110 (from port 0) during cycle 89 (890ns - 900ns)
*	Reading 11110001 from address 0000000110 (from port 1) during cycle 89 (890ns - 900ns)
*	Writing 00011111  to  address 1111111101 (from port 0) during cycle 90 (900ns - 910ns)
*	Reading 11001011 from address 0000000101 (from port 1) during cycle 92 (920ns - 930ns)
*	Reading 10011101 from address 1111111001 (from port 0) during cycle 93 (930ns - 940ns)
*	Reading 01111010 from address 0000000000 (from port 1) during cycle 93 (930ns - 940ns)
*	Reading 01110101 from address 1111111100 (from port 0) during cycle 94 (940ns - 950ns)
*	Reading 01110000 from address 1111111000 (from port 1) during cycle 94 (940ns - 950ns)
*	Reading 11011101 from address 1111111010 (from port 0) during cycle 95 (950ns - 960ns)
*	Reading 11001011 from address 0000000101 (from port 0) during cycle 96 (960ns - 970ns)
*	Reading 10011101 from address 1111111001 (from port 1) during cycle 96 (960ns - 970ns)
*	Reading 10000100 from address 1111111011 (from port 0) during cycle 97 (970ns - 980ns)
*	Reading 10011101 from address 1111111001 (from port 1) during cycle 98 (980ns - 990ns)
*	Reading 11011101 from address 1111111010 (from port 1) during cycle 99 (990ns - 1000ns)
*	Writing 00000100  to  address 1111111011 (from port 0) during cycle 100 (1000ns - 1010ns)
*	Reading 01111010 from address 0000000000 (from port 1) during cycle 100 (1000ns - 1010ns)
*	Writing 00010101  to  address 1111111001 (from port 0) during cycle 101 (1010ns - 1020ns)
*	Reading 11001011 from address 0000000101 (from port 0) during cycle 102 (1020ns - 1030ns)
*	Reading 00011111 from address 1111111101 (from port 0) during cycle 103 (1030ns - 1040ns)
*	Reading 01111010 from address 0000000000 (from port 0) during cycle 105 (1050ns - 1060ns)
*	Reading 00100100 from address 0000000001 (from port 0) during cycle 106 (1060ns - 1070ns)
*	Reading 11001011 from address 0000000101 (from port 0) during cycle 107 (1070ns - 1080ns)
*	Reading 00001001 from address 1111111110 (from port 1) during cycle 107 (1070ns - 1080ns)
*	Writing 10001100  to  address 0000000101 (from port 0) during cycle 108 (1080ns - 1090ns)
*	Reading 01110101 from address 1111111100 (from port 0) during cycle 109 (1090ns - 1100ns)
*	Reading 00010101 from address 1111111001 (from port 1) during cycle 109 (1090ns - 1100ns)
*	Reading 01110000 from address 1111111000 (from port 1) during cycle 110 (1100ns - 1110ns)
*	Reading 01110101 from address 1111111100 (from port 1) during cycle 111 (1110ns - 1120ns)
*	Reading 00010101 from address 1111111001 (from port 0) during cycle 114 (1140ns - 1150ns)
*	Reading 11011101 from address 1111111010 (from port 1) during cycle 114 (1140ns - 1150ns)
*	Reading 01110101 from address 1111111100 (from port 0) during cycle 116 (1160ns - 1170ns)
*	Reading 00100100 from address 0000000001 (from port 1) during cycle 116 (1160ns - 1170ns)
*	Writing 11010110  to  address 0000000000 (from port 0) during cycle 117 (1170ns - 1180ns)
*	Reading 11010110 from address 0000000000 (from port 0) during cycle 118 (1180ns - 1190ns)
*	Writing 00101001  to  address 1111111100 (from port 0) during cycle 119 (1190ns - 1200ns)
*	Reading 10001100 from address 0000000101 (from port 0) during cycle 121 (1210ns - 1220ns)
*	Writing 11101111  to  address 0000000101 (from port 0) during cycle 123 (1230ns - 1240ns)
*	Reading 11101111 from address 0000000101 (from port 0) during cycle 124 (1240ns - 1250ns)
*	Reading 00010101 from address 1111111001 (from port 1) during cycle 124 (1240ns - 1250ns)
*	Writing 01101101  to  address 1111111000 (from port 0) during cycle 125 (1250ns - 1260ns)
*	Reading 00011111 from address 1111111101 (from port 0) during cycle 126 (1260ns - 1270ns)
*	Reading 01111011 from address 0000000111 (from port 1) during cycle 126 (1260ns - 1270ns)
*	Writing 01001000  to  address 0000000111 (from port 0) during cycle 127 (1270ns - 1280ns)
*	Writing 00010000  to  address 1111111100 (from port 0) during cycle 128 (1280ns - 1290ns)
*	Reading 11101111 from address 0000000101 (from port 0) during cycle 129 (1290ns - 1300ns)
*	Reading 00001001 from address 1111111110 (from port 0) during cycle 130 (1300ns - 1310ns)
*	Writing 01110111  to  address 0000000100 (from port 0) during cycle 131 (1310ns - 1320ns)
*	Writing 01110100  to  address 1111111011 (from port 0) during cycle 132 (1320ns - 1330ns)
*	Reading 11010110 from address 0000000000 (from port 1) during cycle 132 (1320ns - 1330ns)
*	Reading 01101101 from address 1111111000 (from port 0) during cycle 133 (1330ns - 1340ns)
*	Reading 11010110 from address 0000000000 (from port 1) during cycle 133 (1330ns - 1340ns)
*	Reading 11110001 from address 0000000110 (from port 0) during cycle 135 (1350ns - 1360ns)
*	Reading 01110111 from address 0000000100 (from port 1) during cycle 135 (1350ns - 1360ns)
*	Writing 01001010  to  address 1111111010 (from port 0) during cycle 136 (1360ns - 1370ns)
*	Reading 01001010 from address 1111111010 (from port 0) during cycle 137 (1370ns - 1380ns)
*	Reading 01110111 from address 0000000100 (from port 1) during cycle 137 (1370ns - 1380ns)
*	Writing 10111111  to  address 1111111001 (from port 0) during cycle 138 (1380ns - 1390ns)
*	Reading 00010000 from address 1111111100 (from port 0) during cycle 139 (1390ns - 1400ns)
*	Writing 11000001  to  address 0000000110 (from port 0) during cycle 140 (1400ns - 1410ns)
*	Reading 00010000 from address 1111111100 (from port 1) during cycle 140 (1400ns - 1410ns)
*	Writing 01111111  to  address 0000000100 (from port 0) during cycle 143 (1430ns - 1440ns)
*	Reading 00011011 from address 1111110111 (from port 1) during cycle 143 (1430ns - 1440ns)
*	Reading 11101111 from address 0000000101 (from port 0) during cycle 144 (1440ns - 1450ns)
*	Reading 00011111 from address 1111111101 (from port 1) during cycle 144 (1440ns - 1450ns)
*	Reading 11010110 from address 0000000000 (from port 0) during cycle 145 (1450ns - 1460ns)
*	Reading 11101111 from address 0000000101 (from port 0) during cycle 146 (1460ns - 1470ns)
*	Reading 00011011 from address 1111110111 (from port 0) during cycle 147 (1470ns - 1480ns)
*	Reading 01111111 from address 0000000100 (from port 0) during cycle 148 (1480ns - 1490ns)
*	Writing 11101001  to  address 1111111010 (from port 0) during cycle 149 (1490ns - 1500ns)
*	Reading 00011111 from address 1111111101 (from port 1) during cycle 149 (1490ns - 1500ns)
*	Reading 00001001 from address 1111111110 (from port 0) during cycle 150 (1500ns - 1510ns)
*	Reading 00001001 from address 1111111110 (from port 0) during cycle 151 (1510ns - 1520ns)
*	Reading 00001001 from address 1111111110 (from port 1) during cycle 151 (1510ns - 1520ns)
*	Writing 11111100  to  address 1111111010 (from port 0) during cycle 152 (1520ns - 1530ns)
*	Reading 01101101 from address 1111111000 (from port 1) during cycle 152 (1520ns - 1530ns)
*	Reading 10111111 from address 1111111001 (from port 0) during cycle 154 (1540ns - 1550ns)
*	Reading 00010000 from address 1111111100 (from port 0) during cycle 155 (1550ns - 1560ns)
*	Writing 11101111  to  address 0000000110 (from port 0) during cycle 156 (1560ns - 1570ns)
*	Reading 00010000 from address 1111111100 (from port 1) during cycle 157 (1570ns - 1580ns)
*	Writing 10011000  to  address 1111110111 (from port 0) during cycle 158 (1580ns - 1590ns)
*	Reading 11101111 from address 0000000110 (from port 1) during cycle 158 (1580ns - 1590ns)
*	Reading 00010000 from address 1111111100 (from port 0) during cycle 159 (1590ns - 1600ns)
*	Writing 10100011  to  address 0000000000 (from port 0) during cycle 160 (1600ns - 1610ns)
*	Reading 01001000 from address 0000000111 (from port 0) during cycle 161 (1610ns - 1620ns)
*	Writing 11101000  to  address 0000000010 (from port 0) during cycle 162 (1620ns - 1630ns)
*	Reading 00011111 from address 1111111101 (from port 1) during cycle 163 (1630ns - 1640ns)
*	Reading 00100100 from address 0000000001 (from port 0) during cycle 164 (1640ns - 1650ns)
*	Reading 11111100 from address 1111111010 (from port 0) during cycle 165 (1650ns - 1660ns)
*	Reading 10100011 from address 0000000000 (from port 1) during cycle 165 (1650ns - 1660ns)
*	Writing 11111001  to  address 0000000010 (from port 0) during cycle 166 (1660ns - 1670ns)
*	Reading 01101101 from address 1111111000 (from port 1) during cycle 166 (1660ns - 1670ns)
*	Reading 11111100 from address 1111111010 (from port 0) during cycle 167 (1670ns - 1680ns)
*	Reading 01101101 from address 1111111000 (from port 1) during cycle 167 (1670ns - 1680ns)
*	Reading 01110100 from address 1111111011 (from port 1) during cycle 168 (1680ns - 1690ns)
*	Writing 01010111  to  address 1111111110 (from port 0) during cycle 169 (1690ns - 1700ns)
*	Reading 11111100 from address 1111111010 (from port 1) during cycle 170 (1700ns - 1710ns)
*	Reading 01010111 from address 1111111110 (from port 0) during cycle 171 (1710ns - 1720ns)
*	Reading 01110100 from address 1111111011 (from port 1) during cycle 171 (1710ns - 1720ns)
*	Reading 01111111 from address 0000000100 (from port 0) during cycle 172 (1720ns - 1730ns)
*	Reading 01010111 from address 1111111110 (from port 0) during cycle 173 (1730ns - 1740ns)
*	Reading 01001000 from address 0000000111 (from port 1) during cycle 173 (1730ns - 1740ns)
*	Writing 00111001  to  address 0000000100 (from port 0) during cycle 174 (1740ns - 1750ns)
*	Reading 11111100 from address 1111111010 (from port 0) during cycle 175 (1750ns - 1760ns)
*	Reading 00111001 from address 0000000100 (from port 1) during cycle 175 (1750ns - 1760ns)
*	Reading 00011111 from address 1111111101 (from port 0) during cycle 176 (1760ns - 1770ns)
*	Reading 11101111 from address 0000000110 (from port 1) during cycle 176 (1760ns - 1770ns)
*	Reading 10111111 from address 1111111001 (from port 0) during cycle 178 (1780ns - 1790ns)
*	Reading 00100100 from address 0000000001 (from port 1) during cycle 178 (1780ns - 1790ns)
*	Reading 11101111 from address 0000000101 (from port 0) during cycle 179 (1790ns - 1800ns)
*	Reading 00010000 from address 1111111100 (from port 1) during cycle 179 (1790ns - 1800ns)
*	Reading 01001000 from address 0000000111 (from port 1) during cycle 180 (1800ns - 1810ns)
*	Reading 01010111 from address 1111111110 (from port 0) during cycle 182 (1820ns - 1830ns)
*	Reading 00010000 from address 1111111100 (from port 1) during cycle 183 (1830ns - 1840ns)
*	Reading 10111111 from address 1111111001 (from port 0) during cycle 184 (1840ns - 1850ns)
*	Reading 11101111 from address 0000000110 (from port 0) during cycle 185 (1850ns - 1860ns)
*	Reading 10111111 from address 1111111001 (from port 1) during cycle 185 (1850ns - 1860ns)
*	Writing 01111100  to  address 1111111000 (from port 0) during cycle 186 (1860ns - 1870ns)
*	Reading 01010111 from address 1111111110 (from port 0) during cycle 187 (1870ns - 1880ns)
*	Reading 11101111 from address 0000000110 (from port 1) during cycle 187 (1870ns - 1880ns)
*	Writing 01001101  to  address 1111111000 (from port 0) during cycle 189 (1890ns - 1900ns)
*	Writing 01011000  to  address 0000000011 (from port 0) during cycle 190 (1900ns - 1910ns)
*	Reading 11111100 from address 1111111010 (from port 1) during cycle 190 (1900ns - 1910ns)
*	Reading 01110100 from address 1111111011 (from port 0) during cycle 191 (1910ns - 1920ns)
*	Reading 00111001 from address 0000000100 (from port 1) during cycle 191 (1910ns - 1920ns)
*	Reading 01011000 from address 0000000011 (from port 0) during cycle 192 (1920ns - 1930ns)
*	Writing 00011101  to  address 1111111001 (from port 0) during cycle 194 (1940ns - 1950ns)
*	Reading 01010111 from address 1111111110 (from port 1) during cycle 194 (1940ns - 1950ns)
*	Writing 10000110  to  address 1111111101 (from port 0) during cycle 195 (1950ns - 1960ns)
*	Writing 00100111  to  address 1111111010 (from port 0) during cycle 196 (1960ns - 1970ns)
*	Reading 01011000 from address 0000000011 (from port 1) during cycle 196 (1960ns - 1970ns)
*	Writing 01101101  to  address 0000000110 (from port 0) during cycle 200 (2000ns - 2010ns)
*	Reading 01010111 from address 1111111110 (from port 0) during cycle 201 (2010ns - 2020ns)
*	Reading 00010000 from address 1111111100 (from port 1) during cycle 201 (2010ns - 2020ns)
*	Reading 01001000 from address 0000000111 (from port 0) during cycle 202 (2020ns - 2030ns)
*	Reading 00010000 from address 1111111100 (from port 0) during cycle 204 (2040ns - 2050ns)
*	Reading 11111001 from address 0000000010 (from port 1) during cycle 204 (2040ns - 2050ns)
*	Idle during cycle 205 (2050ns - 2060ns)

* Generation of data and address signals
* (time, data): [(0, 0), (10, 0), (20, 1), (30, 1), (40, 1), (50, 1), (60, 1), (70, 1), (80, 1), (90, 1), (100, 1), (110, 1), (120, 1), (130, 0), (140, 0), (150, 0), (160, 0), (170, 0), (180, 1), (190, 1), (200, 1), (210, 1), (220, 1), (230, 1), (240, 1), (250, 1), (260, 1), (270, 1), (280, 1), (290, 1), (300, 1), (310, 1), (320, 1), (330, 1), (340, 1), (350, 0), (360, 0), (370, 0), (380, 0), (390, 1), (400, 0), (410, 0), (420, 0), (430, 0), (440, 0), (450, 0), (460, 0), (470, 0), (480, 0), (490, 0), (500, 0), (510, 1), (520, 1), (530, 1), (540, 1), (550, 1), (560, 1), (570, 1), (580, 0), (590, 0), (600, 0), (610, 0), (620, 0), (630, 0), (640, 1), (650, 1), (660, 0), (670, 1), (680, 0), (690, 0), (700, 0), (710, 0), (720, 0), (730, 0), (740, 0), (750, 0), (760, 0), (770, 0), (780, 1), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 1), (860, 1), (870, 1), (880, 1), (890, 1), (900, 1), (910, 1), (920, 1), (930, 1), (940, 1), (950, 1), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 0), (1010, 1), (1020, 1), (1030, 1), (1040, 1), (1050, 1), (1060, 1), (1070, 1), (1080, 0), (1090, 0), (1100, 0), (1110, 0), (1120, 0), (1130, 0), (1140, 0), (1150, 0), (1160, 0), (1170, 0), (1180, 0), (1190, 1), (1200, 1), (1210, 1), (1220, 1), (1230, 1), (1240, 1), (1250, 1), (1260, 1), (1270, 0), (1280, 0), (1290, 0), (1300, 0), (1310, 1), (1320, 0), (1330, 0), (1340, 0), (1350, 0), (1360, 0), (1370, 0), (1380, 1), (1390, 1), (1400, 1), (1410, 1), (1420, 1), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 1), (1500, 1), (1510, 1), (1520, 0), (1530, 0), (1540, 0), (1550, 0), (1560, 1), (1570, 1), (1580, 0), (1590, 0), (1600, 1), (1610, 1), (1620, 0), (1630, 0), (1640, 0), (1650, 0), (1660, 1), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 1), (1740, 1), (1750, 1), (1760, 1), (1770, 1), (1780, 1), (1790, 1), (1800, 1), (1810, 1), (1820, 1), (1830, 1), (1840, 1), (1850, 1), (1860, 0), (1870, 0), (1880, 0), (1890, 1), (1900, 0), (1910, 0), (1920, 0), (1930, 0), (1940, 1), (1950, 0), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 1), (2010, 1), (2020, 1), (2030, 1), (2040, 1), (2050, 1)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 1.8v 29.495n 1.8v 29.505n 1.8v 39.495n 1.8v 39.505n 1.8v 49.495n 1.8v 49.505n 1.8v 59.495n 1.8v 59.505n 1.8v 69.495n 1.8v 69.505n 1.8v 79.495n 1.8v 79.505n 1.8v 89.495n 1.8v 89.505n 1.8v 99.495n 1.8v 99.505n 1.8v 109.495n 1.8v 109.505n 1.8v 119.495n 1.8v 119.505n 1.8v 129.495n 1.8v 129.505n 0.0v 139.495n 0.0v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 0.0v 179.495n 0.0v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 1.8v 209.495n 1.8v 209.505n 1.8v 219.495n 1.8v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 1.8v 289.495n 1.8v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 1.8v 339.495n 1.8v 339.505n 1.8v 349.495n 1.8v 349.505n 0.0v 359.495n 0.0v 359.505n 0.0v 369.495n 0.0v 369.505n 0.0v 379.495n 0.0v 379.505n 0.0v 389.495n 0.0v 389.505n 1.8v 399.495n 1.8v 399.505n 0.0v 409.495n 0.0v 409.505n 0.0v 419.495n 0.0v 419.505n 0.0v 429.495n 0.0v 429.505n 0.0v 439.495n 0.0v 439.505n 0.0v 449.495n 0.0v 449.505n 0.0v 459.495n 0.0v 459.505n 0.0v 469.495n 0.0v 469.505n 0.0v 479.495n 0.0v 479.505n 0.0v 489.495n 0.0v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 1.8v 519.495n 1.8v 519.505n 1.8v 529.495n 1.8v 529.505n 1.8v 539.495n 1.8v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 0.0v 589.495n 0.0v 589.505n 0.0v 599.495n 0.0v 599.505n 0.0v 609.495n 0.0v 609.505n 0.0v 619.495n 0.0v 619.505n 0.0v 629.495n 0.0v 629.505n 0.0v 639.495n 0.0v 639.505n 1.8v 649.495n 1.8v 649.505n 1.8v 659.495n 1.8v 659.505n 0.0v 669.495n 0.0v 669.505n 1.8v 679.495n 1.8v 679.505n 0.0v 689.495n 0.0v 689.505n 0.0v 699.495n 0.0v 699.505n 0.0v 709.495n 0.0v 709.505n 0.0v 719.495n 0.0v 719.505n 0.0v 729.495n 0.0v 729.505n 0.0v 739.495n 0.0v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 1.8v 789.495n 1.8v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 1.8v 859.495n 1.8v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 1.8v 889.495n 1.8v 889.505n 1.8v 899.495n 1.8v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 1.8v 1019.495n 1.8v 1019.505n 1.8v 1029.495n 1.8v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 1.8v 1059.495n 1.8v 1059.505n 1.8v 1069.495n 1.8v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 0.0v 1099.495n 0.0v 1099.505n 0.0v 1109.495n 0.0v 1109.505n 0.0v 1119.495n 0.0v 1119.505n 0.0v 1129.495n 0.0v 1129.505n 0.0v 1139.495n 0.0v 1139.505n 0.0v 1149.495n 0.0v 1149.505n 0.0v 1159.495n 0.0v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 1.8v 1199.495n 1.8v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 1.8v 1219.495n 1.8v 1219.505n 1.8v 1229.495n 1.8v 1229.505n 1.8v 1239.495n 1.8v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 1.8v 1319.495n 1.8v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 1.8v 1409.495n 1.8v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 0.0v 1529.495n 0.0v 1529.505n 0.0v 1539.495n 0.0v 1539.505n 0.0v 1549.495n 0.0v 1549.505n 0.0v 1559.495n 0.0v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 1.8v 1609.495n 1.8v 1609.505n 1.8v 1619.495n 1.8v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 1.8v 1749.495n 1.8v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 1.8v 1809.495n 1.8v 1809.505n 1.8v 1819.495n 1.8v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 0.0v 1869.495n 0.0v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 0.0v 1889.495n 0.0v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 0.0v 1959.495n 0.0v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 1.8v 2009.495n 1.8v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 1), (20, 1), (30, 1), (40, 1), (50, 1), (60, 1), (70, 1), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 0), (140, 0), (150, 0), (160, 0), (170, 0), (180, 0), (190, 0), (200, 0), (210, 0), (220, 0), (230, 0), (240, 0), (250, 0), (260, 0), (270, 0), (280, 0), (290, 0), (300, 0), (310, 0), (320, 0), (330, 0), (340, 0), (350, 1), (360, 1), (370, 1), (380, 1), (390, 1), (400, 0), (410, 0), (420, 0), (430, 0), (440, 0), (450, 0), (460, 0), (470, 0), (480, 0), (490, 0), (500, 0), (510, 0), (520, 0), (530, 1), (540, 1), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 1), (610, 1), (620, 0), (630, 0), (640, 1), (650, 0), (660, 1), (670, 0), (680, 1), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 0), (750, 0), (760, 0), (770, 0), (780, 1), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 0), (860, 0), (870, 0), (880, 0), (890, 0), (900, 1), (910, 1), (920, 1), (930, 1), (940, 1), (950, 1), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 0), (1080, 0), (1090, 0), (1100, 0), (1110, 0), (1120, 0), (1130, 0), (1140, 0), (1150, 0), (1160, 0), (1170, 1), (1180, 1), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 1), (1240, 1), (1250, 0), (1260, 0), (1270, 0), (1280, 0), (1290, 0), (1300, 0), (1310, 1), (1320, 0), (1330, 0), (1340, 0), (1350, 0), (1360, 1), (1370, 1), (1380, 1), (1390, 1), (1400, 0), (1410, 0), (1420, 0), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 0), (1500, 0), (1510, 0), (1520, 0), (1530, 0), (1540, 0), (1550, 0), (1560, 1), (1570, 1), (1580, 0), (1590, 0), (1600, 1), (1610, 1), (1620, 0), (1630, 0), (1640, 0), (1650, 0), (1660, 0), (1670, 0), (1680, 0), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 1), (1740, 0), (1750, 0), (1760, 0), (1770, 0), (1780, 0), (1790, 0), (1800, 0), (1810, 0), (1820, 0), (1830, 0), (1840, 0), (1850, 0), (1860, 0), (1870, 0), (1880, 0), (1890, 0), (1900, 0), (1910, 0), (1920, 0), (1930, 0), (1940, 0), (1950, 1), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 0), (2010, 0), (2020, 0), (2030, 0), (2040, 0), (2050, 0)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 1.8v 19.495n 1.8v 19.505n 1.8v 29.495n 1.8v 29.505n 1.8v 39.495n 1.8v 39.505n 1.8v 49.495n 1.8v 49.505n 1.8v 59.495n 1.8v 59.505n 1.8v 69.495n 1.8v 69.505n 1.8v 79.495n 1.8v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 0.0v 139.495n 0.0v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 0.0v 179.495n 0.0v 179.505n 0.0v 189.495n 0.0v 189.505n 0.0v 199.495n 0.0v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 0.0v 229.495n 0.0v 229.505n 0.0v 239.495n 0.0v 239.505n 0.0v 249.495n 0.0v 249.505n 0.0v 259.495n 0.0v 259.505n 0.0v 269.495n 0.0v 269.505n 0.0v 279.495n 0.0v 279.505n 0.0v 289.495n 0.0v 289.505n 0.0v 299.495n 0.0v 299.505n 0.0v 309.495n 0.0v 309.505n 0.0v 319.495n 0.0v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 1.8v 359.495n 1.8v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 1.8v 389.495n 1.8v 389.505n 1.8v 399.495n 1.8v 399.505n 0.0v 409.495n 0.0v 409.505n 0.0v 419.495n 0.0v 419.505n 0.0v 429.495n 0.0v 429.505n 0.0v 439.495n 0.0v 439.505n 0.0v 449.495n 0.0v 449.505n 0.0v 459.495n 0.0v 459.505n 0.0v 469.495n 0.0v 469.505n 0.0v 479.495n 0.0v 479.505n 0.0v 489.495n 0.0v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 1.8v 539.495n 1.8v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 0.0v 629.495n 0.0v 629.505n 0.0v 639.495n 0.0v 639.505n 1.8v 649.495n 1.8v 649.505n 0.0v 659.495n 0.0v 659.505n 1.8v 669.495n 1.8v 669.505n 0.0v 679.495n 0.0v 679.505n 1.8v 689.495n 1.8v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 1.8v 789.495n 1.8v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 0.0v 879.495n 0.0v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 0.0v 1099.495n 0.0v 1099.505n 0.0v 1109.495n 0.0v 1109.505n 0.0v 1119.495n 0.0v 1119.505n 0.0v 1129.495n 0.0v 1129.505n 0.0v 1139.495n 0.0v 1139.505n 0.0v 1149.495n 0.0v 1149.505n 0.0v 1159.495n 0.0v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 1.8v 1179.495n 1.8v 1179.505n 1.8v 1189.495n 1.8v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 1.8v 1239.495n 1.8v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 0.0v 1259.495n 0.0v 1259.505n 0.0v 1269.495n 0.0v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 1.8v 1319.495n 1.8v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 1.8v 1369.495n 1.8v 1369.505n 1.8v 1379.495n 1.8v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 0.0v 1499.495n 0.0v 1499.505n 0.0v 1509.495n 0.0v 1509.505n 0.0v 1519.495n 0.0v 1519.505n 0.0v 1529.495n 0.0v 1529.505n 0.0v 1539.495n 0.0v 1539.505n 0.0v 1549.495n 0.0v 1549.505n 0.0v 1559.495n 0.0v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 1.8v 1609.495n 1.8v 1609.505n 1.8v 1619.495n 1.8v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 0.0v 1679.495n 0.0v 1679.505n 0.0v 1689.495n 0.0v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 0.0v 1779.495n 0.0v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 0.0v 1829.495n 0.0v 1829.505n 0.0v 1839.495n 0.0v 1839.505n 0.0v 1849.495n 0.0v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 0.0v 1869.495n 0.0v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 0.0v 1889.495n 0.0v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 0.0v 1949.495n 0.0v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 0.0v 2019.495n 0.0v 2019.505n 0.0v 2029.495n 0.0v 2029.505n 0.0v 2039.495n 0.0v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 0), (40, 0), (50, 0), (60, 0), (70, 0), (80, 1), (90, 1), (100, 1), (110, 1), (120, 1), (130, 1), (140, 1), (150, 1), (160, 1), (170, 1), (180, 1), (190, 1), (200, 1), (210, 1), (220, 1), (230, 1), (240, 1), (250, 1), (260, 1), (270, 1), (280, 1), (290, 1), (300, 1), (310, 1), (320, 1), (330, 1), (340, 1), (350, 0), (360, 0), (370, 0), (380, 0), (390, 0), (400, 1), (410, 1), (420, 1), (430, 1), (440, 1), (450, 1), (460, 1), (470, 1), (480, 1), (490, 1), (500, 1), (510, 1), (520, 1), (530, 0), (540, 0), (550, 0), (560, 0), (570, 0), (580, 1), (590, 1), (600, 1), (610, 1), (620, 0), (630, 0), (640, 0), (650, 1), (660, 1), (670, 1), (680, 1), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 0), (750, 0), (760, 0), (770, 0), (780, 0), (790, 0), (800, 0), (810, 0), (820, 0), (830, 0), (840, 0), (850, 0), (860, 0), (870, 0), (880, 0), (890, 0), (900, 1), (910, 1), (920, 1), (930, 1), (940, 1), (950, 1), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 1), (1010, 1), (1020, 1), (1030, 1), (1040, 1), (1050, 1), (1060, 1), (1070, 1), (1080, 1), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 1), (1170, 1), (1180, 1), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 1), (1240, 1), (1250, 1), (1260, 1), (1270, 0), (1280, 0), (1290, 0), (1300, 0), (1310, 1), (1320, 1), (1330, 1), (1340, 1), (1350, 1), (1360, 0), (1370, 0), (1380, 1), (1390, 1), (1400, 0), (1410, 0), (1420, 0), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 0), (1500, 0), (1510, 0), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 1), (1570, 1), (1580, 0), (1590, 0), (1600, 0), (1610, 0), (1620, 0), (1630, 0), (1640, 0), (1650, 0), (1660, 0), (1670, 0), (1680, 0), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 1), (1740, 0), (1750, 0), (1760, 0), (1770, 0), (1780, 0), (1790, 0), (1800, 0), (1810, 0), (1820, 0), (1830, 0), (1840, 0), (1850, 0), (1860, 1), (1870, 1), (1880, 1), (1890, 1), (1900, 0), (1910, 0), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 1), (2010, 1), (2020, 1), (2030, 1), (2040, 1), (2050, 1)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 1.8v 89.495n 1.8v 89.505n 1.8v 99.495n 1.8v 99.505n 1.8v 109.495n 1.8v 109.505n 1.8v 119.495n 1.8v 119.505n 1.8v 129.495n 1.8v 129.505n 1.8v 139.495n 1.8v 139.505n 1.8v 149.495n 1.8v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 1.8v 179.495n 1.8v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 1.8v 209.495n 1.8v 209.505n 1.8v 219.495n 1.8v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 1.8v 289.495n 1.8v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 1.8v 339.495n 1.8v 339.505n 1.8v 349.495n 1.8v 349.505n 0.0v 359.495n 0.0v 359.505n 0.0v 369.495n 0.0v 369.505n 0.0v 379.495n 0.0v 379.505n 0.0v 389.495n 0.0v 389.505n 0.0v 399.495n 0.0v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 1.8v 439.495n 1.8v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 1.8v 479.495n 1.8v 479.505n 1.8v 489.495n 1.8v 489.505n 1.8v 499.495n 1.8v 499.505n 1.8v 509.495n 1.8v 509.505n 1.8v 519.495n 1.8v 519.505n 1.8v 529.495n 1.8v 529.505n 0.0v 539.495n 0.0v 539.505n 0.0v 549.495n 0.0v 549.505n 0.0v 559.495n 0.0v 559.505n 0.0v 569.495n 0.0v 569.505n 0.0v 579.495n 0.0v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 0.0v 629.495n 0.0v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 0.0v 789.495n 0.0v 789.505n 0.0v 799.495n 0.0v 799.505n 0.0v 809.495n 0.0v 809.505n 0.0v 819.495n 0.0v 819.505n 0.0v 829.495n 0.0v 829.505n 0.0v 839.495n 0.0v 839.505n 0.0v 849.495n 0.0v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 0.0v 879.495n 0.0v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 1.8v 1009.495n 1.8v 1009.505n 1.8v 1019.495n 1.8v 1019.505n 1.8v 1029.495n 1.8v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 1.8v 1059.495n 1.8v 1059.505n 1.8v 1069.495n 1.8v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 1.8v 1169.495n 1.8v 1169.505n 1.8v 1179.495n 1.8v 1179.505n 1.8v 1189.495n 1.8v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 1.8v 1239.495n 1.8v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 1.8v 1319.495n 1.8v 1319.505n 1.8v 1329.495n 1.8v 1329.505n 1.8v 1339.495n 1.8v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 1.8v 1359.495n 1.8v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 0.0v 1499.495n 0.0v 1499.505n 0.0v 1509.495n 0.0v 1509.505n 0.0v 1519.495n 0.0v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 0.0v 1679.495n 0.0v 1679.505n 0.0v 1689.495n 0.0v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 0.0v 1779.495n 0.0v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 0.0v 1829.495n 0.0v 1829.505n 0.0v 1839.495n 0.0v 1839.505n 0.0v 1849.495n 0.0v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 1.8v 2009.495n 1.8v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 1), (20, 1), (30, 1), (40, 1), (50, 1), (60, 1), (70, 1), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 0), (140, 0), (150, 0), (160, 0), (170, 0), (180, 0), (190, 0), (200, 0), (210, 0), (220, 0), (230, 0), (240, 0), (250, 0), (260, 0), (270, 0), (280, 0), (290, 0), (300, 0), (310, 0), (320, 0), (330, 0), (340, 0), (350, 0), (360, 0), (370, 0), (380, 1), (390, 0), (400, 1), (410, 1), (420, 1), (430, 0), (440, 0), (450, 0), (460, 0), (470, 0), (480, 0), (490, 0), (500, 0), (510, 1), (520, 1), (530, 0), (540, 0), (550, 0), (560, 0), (570, 0), (580, 1), (590, 1), (600, 1), (610, 1), (620, 1), (630, 1), (640, 1), (650, 1), (660, 0), (670, 1), (680, 1), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 0), (750, 0), (760, 0), (770, 0), (780, 1), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 0), (860, 0), (870, 0), (880, 1), (890, 1), (900, 1), (910, 1), (920, 1), (930, 1), (940, 1), (950, 1), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 0), (1080, 1), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 1), (1170, 0), (1180, 0), (1190, 1), (1200, 1), (1210, 1), (1220, 1), (1230, 1), (1240, 1), (1250, 1), (1260, 1), (1270, 1), (1280, 0), (1290, 0), (1300, 0), (1310, 0), (1320, 0), (1330, 0), (1340, 0), (1350, 0), (1360, 1), (1370, 1), (1380, 1), (1390, 1), (1400, 0), (1410, 0), (1420, 0), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 1), (1570, 1), (1580, 1), (1590, 1), (1600, 0), (1610, 0), (1620, 1), (1630, 1), (1640, 1), (1650, 1), (1660, 1), (1670, 1), (1680, 1), (1690, 0), (1700, 0), (1710, 0), (1720, 0), (1730, 0), (1740, 1), (1750, 1), (1760, 1), (1770, 1), (1780, 1), (1790, 1), (1800, 1), (1810, 1), (1820, 1), (1830, 1), (1840, 1), (1850, 1), (1860, 1), (1870, 1), (1880, 1), (1890, 1), (1900, 1), (1910, 1), (1920, 1), (1930, 1), (1940, 1), (1950, 0), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 1), (2010, 1), (2020, 1), (2030, 1), (2040, 1), (2050, 1)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 1.8v 19.495n 1.8v 19.505n 1.8v 29.495n 1.8v 29.505n 1.8v 39.495n 1.8v 39.505n 1.8v 49.495n 1.8v 49.505n 1.8v 59.495n 1.8v 59.505n 1.8v 69.495n 1.8v 69.505n 1.8v 79.495n 1.8v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 0.0v 139.495n 0.0v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 0.0v 179.495n 0.0v 179.505n 0.0v 189.495n 0.0v 189.505n 0.0v 199.495n 0.0v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 0.0v 229.495n 0.0v 229.505n 0.0v 239.495n 0.0v 239.505n 0.0v 249.495n 0.0v 249.505n 0.0v 259.495n 0.0v 259.505n 0.0v 269.495n 0.0v 269.505n 0.0v 279.495n 0.0v 279.505n 0.0v 289.495n 0.0v 289.505n 0.0v 299.495n 0.0v 299.505n 0.0v 309.495n 0.0v 309.505n 0.0v 319.495n 0.0v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 0.0v 359.495n 0.0v 359.505n 0.0v 369.495n 0.0v 369.505n 0.0v 379.495n 0.0v 379.505n 1.8v 389.495n 1.8v 389.505n 0.0v 399.495n 0.0v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 0.0v 439.495n 0.0v 439.505n 0.0v 449.495n 0.0v 449.505n 0.0v 459.495n 0.0v 459.505n 0.0v 469.495n 0.0v 469.505n 0.0v 479.495n 0.0v 479.505n 0.0v 489.495n 0.0v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 1.8v 519.495n 1.8v 519.505n 1.8v 529.495n 1.8v 529.505n 0.0v 539.495n 0.0v 539.505n 0.0v 549.495n 0.0v 549.505n 0.0v 559.495n 0.0v 559.505n 0.0v 569.495n 0.0v 569.505n 0.0v 579.495n 0.0v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 1.8v 639.495n 1.8v 639.505n 1.8v 649.495n 1.8v 649.505n 1.8v 659.495n 1.8v 659.505n 0.0v 669.495n 0.0v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 1.8v 789.495n 1.8v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 0.0v 879.495n 0.0v 879.505n 1.8v 889.495n 1.8v 889.505n 1.8v 899.495n 1.8v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 1.8v 1169.495n 1.8v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 1.8v 1199.495n 1.8v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 1.8v 1219.495n 1.8v 1219.505n 1.8v 1229.495n 1.8v 1229.505n 1.8v 1239.495n 1.8v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 1.8v 1279.495n 1.8v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 1.8v 1369.495n 1.8v 1369.505n 1.8v 1379.495n 1.8v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 1.8v 1629.495n 1.8v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 1.8v 1659.495n 1.8v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 0.0v 1699.495n 0.0v 1699.505n 0.0v 1709.495n 0.0v 1709.505n 0.0v 1719.495n 0.0v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 0.0v 1739.495n 0.0v 1739.505n 1.8v 1749.495n 1.8v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 1.8v 1809.495n 1.8v 1809.505n 1.8v 1819.495n 1.8v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 1.8v 1909.495n 1.8v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 1.8v 1929.495n 1.8v 1929.505n 1.8v 1939.495n 1.8v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 0.0v 1959.495n 0.0v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 1.8v 2009.495n 1.8v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 1), (20, 1), (30, 1), (40, 1), (50, 1), (60, 1), (70, 1), (80, 1), (90, 1), (100, 1), (110, 1), (120, 1), (130, 0), (140, 0), (150, 0), (160, 0), (170, 0), (180, 1), (190, 1), (200, 1), (210, 1), (220, 1), (230, 1), (240, 1), (250, 1), (260, 1), (270, 1), (280, 1), (290, 1), (300, 1), (310, 1), (320, 1), (330, 1), (340, 1), (350, 1), (360, 1), (370, 1), (380, 0), (390, 1), (400, 1), (410, 1), (420, 1), (430, 0), (440, 0), (450, 0), (460, 0), (470, 0), (480, 0), (490, 0), (500, 0), (510, 1), (520, 1), (530, 1), (540, 1), (550, 1), (560, 1), (570, 1), (580, 0), (590, 0), (600, 0), (610, 0), (620, 1), (630, 1), (640, 0), (650, 1), (660, 0), (670, 1), (680, 0), (690, 0), (700, 0), (710, 0), (720, 0), (730, 0), (740, 1), (750, 1), (760, 1), (770, 1), (780, 1), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 1), (860, 1), (870, 1), (880, 0), (890, 0), (900, 1), (910, 1), (920, 1), (930, 1), (940, 1), (950, 1), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 0), (1010, 1), (1020, 1), (1030, 1), (1040, 1), (1050, 1), (1060, 1), (1070, 1), (1080, 0), (1090, 0), (1100, 0), (1110, 0), (1120, 0), (1130, 0), (1140, 0), (1150, 0), (1160, 0), (1170, 1), (1180, 1), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 0), (1240, 0), (1250, 0), (1260, 0), (1270, 0), (1280, 1), (1290, 1), (1300, 1), (1310, 1), (1320, 1), (1330, 1), (1340, 1), (1350, 1), (1360, 0), (1370, 0), (1380, 1), (1390, 1), (1400, 0), (1410, 0), (1420, 0), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 0), (1500, 0), (1510, 0), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 0), (1570, 0), (1580, 1), (1590, 1), (1600, 0), (1610, 0), (1620, 0), (1630, 0), (1640, 0), (1650, 0), (1660, 1), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 1), (1740, 1), (1750, 1), (1760, 1), (1770, 1), (1780, 1), (1790, 1), (1800, 1), (1810, 1), (1820, 1), (1830, 1), (1840, 1), (1850, 1), (1860, 1), (1870, 1), (1880, 1), (1890, 0), (1900, 1), (1910, 1), (1920, 1), (1930, 1), (1940, 1), (1950, 0), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 0), (2010, 0), (2020, 0), (2030, 0), (2040, 0), (2050, 0)]
Vdin0_4  din0_4  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 1.8v 19.495n 1.8v 19.505n 1.8v 29.495n 1.8v 29.505n 1.8v 39.495n 1.8v 39.505n 1.8v 49.495n 1.8v 49.505n 1.8v 59.495n 1.8v 59.505n 1.8v 69.495n 1.8v 69.505n 1.8v 79.495n 1.8v 79.505n 1.8v 89.495n 1.8v 89.505n 1.8v 99.495n 1.8v 99.505n 1.8v 109.495n 1.8v 109.505n 1.8v 119.495n 1.8v 119.505n 1.8v 129.495n 1.8v 129.505n 0.0v 139.495n 0.0v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 0.0v 179.495n 0.0v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 1.8v 209.495n 1.8v 209.505n 1.8v 219.495n 1.8v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 1.8v 289.495n 1.8v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 1.8v 339.495n 1.8v 339.505n 1.8v 349.495n 1.8v 349.505n 1.8v 359.495n 1.8v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 0.0v 389.495n 0.0v 389.505n 1.8v 399.495n 1.8v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 0.0v 439.495n 0.0v 439.505n 0.0v 449.495n 0.0v 449.505n 0.0v 459.495n 0.0v 459.505n 0.0v 469.495n 0.0v 469.505n 0.0v 479.495n 0.0v 479.505n 0.0v 489.495n 0.0v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 1.8v 519.495n 1.8v 519.505n 1.8v 529.495n 1.8v 529.505n 1.8v 539.495n 1.8v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 0.0v 589.495n 0.0v 589.505n 0.0v 599.495n 0.0v 599.505n 0.0v 609.495n 0.0v 609.505n 0.0v 619.495n 0.0v 619.505n 1.8v 629.495n 1.8v 629.505n 1.8v 639.495n 1.8v 639.505n 0.0v 649.495n 0.0v 649.505n 1.8v 659.495n 1.8v 659.505n 0.0v 669.495n 0.0v 669.505n 1.8v 679.495n 1.8v 679.505n 0.0v 689.495n 0.0v 689.505n 0.0v 699.495n 0.0v 699.505n 0.0v 709.495n 0.0v 709.505n 0.0v 719.495n 0.0v 719.505n 0.0v 729.495n 0.0v 729.505n 0.0v 739.495n 0.0v 739.505n 1.8v 749.495n 1.8v 749.505n 1.8v 759.495n 1.8v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 1.8v 789.495n 1.8v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 1.8v 859.495n 1.8v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 1.8v 1019.495n 1.8v 1019.505n 1.8v 1029.495n 1.8v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 1.8v 1059.495n 1.8v 1059.505n 1.8v 1069.495n 1.8v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 0.0v 1099.495n 0.0v 1099.505n 0.0v 1109.495n 0.0v 1109.505n 0.0v 1119.495n 0.0v 1119.505n 0.0v 1129.495n 0.0v 1129.505n 0.0v 1139.495n 0.0v 1139.505n 0.0v 1149.495n 0.0v 1149.505n 0.0v 1159.495n 0.0v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 1.8v 1179.495n 1.8v 1179.505n 1.8v 1189.495n 1.8v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 0.0v 1249.495n 0.0v 1249.505n 0.0v 1259.495n 0.0v 1259.505n 0.0v 1269.495n 0.0v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 1.8v 1289.495n 1.8v 1289.505n 1.8v 1299.495n 1.8v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 1.8v 1319.495n 1.8v 1319.505n 1.8v 1329.495n 1.8v 1329.505n 1.8v 1339.495n 1.8v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 1.8v 1359.495n 1.8v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 0.0v 1499.495n 0.0v 1499.505n 0.0v 1509.495n 0.0v 1509.505n 0.0v 1519.495n 0.0v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 0.0v 1579.495n 0.0v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 1.8v 1749.495n 1.8v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 1.8v 1809.495n 1.8v 1809.505n 1.8v 1819.495n 1.8v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 1.8v 1909.495n 1.8v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 1.8v 1929.495n 1.8v 1929.505n 1.8v 1939.495n 1.8v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 0.0v 1959.495n 0.0v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 0.0v 2019.495n 0.0v 2019.505n 0.0v 2029.495n 0.0v 2029.505n 0.0v 2039.495n 0.0v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )
* (time, data): [(0, 0), (10, 1), (20, 1), (30, 1), (40, 1), (50, 1), (60, 1), (70, 1), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 0), (140, 0), (150, 0), (160, 0), (170, 0), (180, 1), (190, 1), (200, 1), (210, 1), (220, 1), (230, 1), (240, 1), (250, 1), (260, 1), (270, 1), (280, 1), (290, 0), (300, 0), (310, 0), (320, 0), (330, 0), (340, 0), (350, 1), (360, 1), (370, 1), (380, 1), (390, 0), (400, 0), (410, 0), (420, 0), (430, 1), (440, 1), (450, 1), (460, 1), (470, 1), (480, 1), (490, 1), (500, 1), (510, 0), (520, 0), (530, 1), (540, 1), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 1), (610, 1), (620, 0), (630, 0), (640, 0), (650, 1), (660, 0), (670, 0), (680, 1), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 1), (750, 1), (760, 1), (770, 1), (780, 0), (790, 0), (800, 0), (810, 0), (820, 0), (830, 0), (840, 0), (850, 1), (860, 1), (870, 1), (880, 0), (890, 0), (900, 0), (910, 0), (920, 0), (930, 0), (940, 0), (950, 0), (960, 0), (970, 0), (980, 0), (990, 0), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 0), (1080, 0), (1090, 0), (1100, 0), (1110, 0), (1120, 0), (1130, 0), (1140, 0), (1150, 0), (1160, 0), (1170, 0), (1180, 0), (1190, 1), (1200, 1), (1210, 1), (1220, 1), (1230, 1), (1240, 1), (1250, 1), (1260, 1), (1270, 0), (1280, 0), (1290, 0), (1300, 0), (1310, 1), (1320, 1), (1330, 1), (1340, 1), (1350, 1), (1360, 0), (1370, 0), (1380, 1), (1390, 1), (1400, 0), (1410, 0), (1420, 0), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 1), (1570, 1), (1580, 0), (1590, 0), (1600, 1), (1610, 1), (1620, 1), (1630, 1), (1640, 1), (1650, 1), (1660, 1), (1670, 1), (1680, 1), (1690, 0), (1700, 0), (1710, 0), (1720, 0), (1730, 0), (1740, 1), (1750, 1), (1760, 1), (1770, 1), (1780, 1), (1790, 1), (1800, 1), (1810, 1), (1820, 1), (1830, 1), (1840, 1), (1850, 1), (1860, 1), (1870, 1), (1880, 1), (1890, 0), (1900, 0), (1910, 0), (1920, 0), (1930, 0), (1940, 0), (1950, 0), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 1), (2010, 1), (2020, 1), (2030, 1), (2040, 1), (2050, 1)]
Vdin0_5  din0_5  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 1.8v 19.495n 1.8v 19.505n 1.8v 29.495n 1.8v 29.505n 1.8v 39.495n 1.8v 39.505n 1.8v 49.495n 1.8v 49.505n 1.8v 59.495n 1.8v 59.505n 1.8v 69.495n 1.8v 69.505n 1.8v 79.495n 1.8v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 0.0v 139.495n 0.0v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 0.0v 179.495n 0.0v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 1.8v 209.495n 1.8v 209.505n 1.8v 219.495n 1.8v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 1.8v 289.495n 1.8v 289.505n 0.0v 299.495n 0.0v 299.505n 0.0v 309.495n 0.0v 309.505n 0.0v 319.495n 0.0v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 1.8v 359.495n 1.8v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 1.8v 389.495n 1.8v 389.505n 0.0v 399.495n 0.0v 399.505n 0.0v 409.495n 0.0v 409.505n 0.0v 419.495n 0.0v 419.505n 0.0v 429.495n 0.0v 429.505n 1.8v 439.495n 1.8v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 1.8v 479.495n 1.8v 479.505n 1.8v 489.495n 1.8v 489.505n 1.8v 499.495n 1.8v 499.505n 1.8v 509.495n 1.8v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 1.8v 539.495n 1.8v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 0.0v 629.495n 0.0v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 1.8v 659.495n 1.8v 659.505n 0.0v 669.495n 0.0v 669.505n 0.0v 679.495n 0.0v 679.505n 1.8v 689.495n 1.8v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 1.8v 749.495n 1.8v 749.505n 1.8v 759.495n 1.8v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 0.0v 789.495n 0.0v 789.505n 0.0v 799.495n 0.0v 799.505n 0.0v 809.495n 0.0v 809.505n 0.0v 819.495n 0.0v 819.505n 0.0v 829.495n 0.0v 829.505n 0.0v 839.495n 0.0v 839.505n 0.0v 849.495n 0.0v 849.505n 1.8v 859.495n 1.8v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 0.0v 909.495n 0.0v 909.505n 0.0v 919.495n 0.0v 919.505n 0.0v 929.495n 0.0v 929.505n 0.0v 939.495n 0.0v 939.505n 0.0v 949.495n 0.0v 949.505n 0.0v 959.495n 0.0v 959.505n 0.0v 969.495n 0.0v 969.505n 0.0v 979.495n 0.0v 979.505n 0.0v 989.495n 0.0v 989.505n 0.0v 999.495n 0.0v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 0.0v 1099.495n 0.0v 1099.505n 0.0v 1109.495n 0.0v 1109.505n 0.0v 1119.495n 0.0v 1119.505n 0.0v 1129.495n 0.0v 1129.505n 0.0v 1139.495n 0.0v 1139.505n 0.0v 1149.495n 0.0v 1149.505n 0.0v 1159.495n 0.0v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 1.8v 1199.495n 1.8v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 1.8v 1219.495n 1.8v 1219.505n 1.8v 1229.495n 1.8v 1229.505n 1.8v 1239.495n 1.8v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 1.8v 1319.495n 1.8v 1319.505n 1.8v 1329.495n 1.8v 1329.505n 1.8v 1339.495n 1.8v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 1.8v 1359.495n 1.8v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 1.8v 1609.495n 1.8v 1609.505n 1.8v 1619.495n 1.8v 1619.505n 1.8v 1629.495n 1.8v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 1.8v 1659.495n 1.8v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 0.0v 1699.495n 0.0v 1699.505n 0.0v 1709.495n 0.0v 1709.505n 0.0v 1719.495n 0.0v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 0.0v 1739.495n 0.0v 1739.505n 1.8v 1749.495n 1.8v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 1.8v 1809.495n 1.8v 1809.505n 1.8v 1819.495n 1.8v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 0.0v 1949.495n 0.0v 1949.505n 0.0v 1959.495n 0.0v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 1.8v 2009.495n 1.8v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 1), (20, 1), (30, 1), (40, 1), (50, 1), (60, 1), (70, 1), (80, 1), (90, 1), (100, 1), (110, 1), (120, 1), (130, 0), (140, 0), (150, 0), (160, 0), (170, 0), (180, 1), (190, 1), (200, 1), (210, 1), (220, 1), (230, 1), (240, 1), (250, 0), (260, 0), (270, 0), (280, 0), (290, 1), (300, 1), (310, 1), (320, 1), (330, 1), (340, 1), (350, 0), (360, 0), (370, 0), (380, 0), (390, 1), (400, 1), (410, 1), (420, 1), (430, 0), (440, 0), (450, 0), (460, 0), (470, 0), (480, 0), (490, 0), (500, 0), (510, 0), (520, 0), (530, 1), (540, 1), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 1), (610, 1), (620, 0), (630, 0), (640, 1), (650, 0), (660, 0), (670, 1), (680, 1), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 1), (750, 1), (760, 1), (770, 1), (780, 0), (790, 0), (800, 0), (810, 0), (820, 0), (830, 0), (840, 0), (850, 1), (860, 1), (870, 1), (880, 0), (890, 0), (900, 0), (910, 0), (920, 0), (930, 0), (940, 0), (950, 0), (960, 0), (970, 0), (980, 0), (990, 0), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 0), (1080, 0), (1090, 0), (1100, 0), (1110, 0), (1120, 0), (1130, 0), (1140, 0), (1150, 0), (1160, 0), (1170, 1), (1180, 1), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 1), (1240, 1), (1250, 1), (1260, 1), (1270, 1), (1280, 0), (1290, 0), (1300, 0), (1310, 1), (1320, 1), (1330, 1), (1340, 1), (1350, 1), (1360, 1), (1370, 1), (1380, 0), (1390, 0), (1400, 1), (1410, 1), (1420, 1), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 1), (1570, 1), (1580, 0), (1590, 0), (1600, 0), (1610, 0), (1620, 1), (1630, 1), (1640, 1), (1650, 1), (1660, 1), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 1), (1740, 0), (1750, 0), (1760, 0), (1770, 0), (1780, 0), (1790, 0), (1800, 0), (1810, 0), (1820, 0), (1830, 0), (1840, 0), (1850, 0), (1860, 1), (1870, 1), (1880, 1), (1890, 1), (1900, 1), (1910, 1), (1920, 1), (1930, 1), (1940, 0), (1950, 0), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 1), (2010, 1), (2020, 1), (2030, 1), (2040, 1), (2050, 1)]
Vdin0_6  din0_6  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 1.8v 19.495n 1.8v 19.505n 1.8v 29.495n 1.8v 29.505n 1.8v 39.495n 1.8v 39.505n 1.8v 49.495n 1.8v 49.505n 1.8v 59.495n 1.8v 59.505n 1.8v 69.495n 1.8v 69.505n 1.8v 79.495n 1.8v 79.505n 1.8v 89.495n 1.8v 89.505n 1.8v 99.495n 1.8v 99.505n 1.8v 109.495n 1.8v 109.505n 1.8v 119.495n 1.8v 119.505n 1.8v 129.495n 1.8v 129.505n 0.0v 139.495n 0.0v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 0.0v 179.495n 0.0v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 1.8v 209.495n 1.8v 209.505n 1.8v 219.495n 1.8v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 0.0v 259.495n 0.0v 259.505n 0.0v 269.495n 0.0v 269.505n 0.0v 279.495n 0.0v 279.505n 0.0v 289.495n 0.0v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 1.8v 339.495n 1.8v 339.505n 1.8v 349.495n 1.8v 349.505n 0.0v 359.495n 0.0v 359.505n 0.0v 369.495n 0.0v 369.505n 0.0v 379.495n 0.0v 379.505n 0.0v 389.495n 0.0v 389.505n 1.8v 399.495n 1.8v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 0.0v 439.495n 0.0v 439.505n 0.0v 449.495n 0.0v 449.505n 0.0v 459.495n 0.0v 459.505n 0.0v 469.495n 0.0v 469.505n 0.0v 479.495n 0.0v 479.505n 0.0v 489.495n 0.0v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 1.8v 539.495n 1.8v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 0.0v 629.495n 0.0v 629.505n 0.0v 639.495n 0.0v 639.505n 1.8v 649.495n 1.8v 649.505n 0.0v 659.495n 0.0v 659.505n 0.0v 669.495n 0.0v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 1.8v 749.495n 1.8v 749.505n 1.8v 759.495n 1.8v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 0.0v 789.495n 0.0v 789.505n 0.0v 799.495n 0.0v 799.505n 0.0v 809.495n 0.0v 809.505n 0.0v 819.495n 0.0v 819.505n 0.0v 829.495n 0.0v 829.505n 0.0v 839.495n 0.0v 839.505n 0.0v 849.495n 0.0v 849.505n 1.8v 859.495n 1.8v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 0.0v 909.495n 0.0v 909.505n 0.0v 919.495n 0.0v 919.505n 0.0v 929.495n 0.0v 929.505n 0.0v 939.495n 0.0v 939.505n 0.0v 949.495n 0.0v 949.505n 0.0v 959.495n 0.0v 959.505n 0.0v 969.495n 0.0v 969.505n 0.0v 979.495n 0.0v 979.505n 0.0v 989.495n 0.0v 989.505n 0.0v 999.495n 0.0v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 0.0v 1099.495n 0.0v 1099.505n 0.0v 1109.495n 0.0v 1109.505n 0.0v 1119.495n 0.0v 1119.505n 0.0v 1129.495n 0.0v 1129.505n 0.0v 1139.495n 0.0v 1139.505n 0.0v 1149.495n 0.0v 1149.505n 0.0v 1159.495n 0.0v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 1.8v 1179.495n 1.8v 1179.505n 1.8v 1189.495n 1.8v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 1.8v 1239.495n 1.8v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 1.8v 1279.495n 1.8v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 1.8v 1319.495n 1.8v 1319.505n 1.8v 1329.495n 1.8v 1329.505n 1.8v 1339.495n 1.8v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 1.8v 1359.495n 1.8v 1359.505n 1.8v 1369.495n 1.8v 1369.505n 1.8v 1379.495n 1.8v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 0.0v 1399.495n 0.0v 1399.505n 1.8v 1409.495n 1.8v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 1.8v 1629.495n 1.8v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 1.8v 1659.495n 1.8v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 0.0v 1779.495n 0.0v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 0.0v 1829.495n 0.0v 1829.505n 0.0v 1839.495n 0.0v 1839.505n 0.0v 1849.495n 0.0v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 1.8v 1909.495n 1.8v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 1.8v 1929.495n 1.8v 1929.505n 1.8v 1939.495n 1.8v 1939.505n 0.0v 1949.495n 0.0v 1949.505n 0.0v 1959.495n 0.0v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 1.8v 2009.495n 1.8v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 0), (40, 0), (50, 0), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 1), (140, 1), (150, 1), (160, 1), (170, 1), (180, 0), (190, 0), (200, 0), (210, 0), (220, 0), (230, 0), (240, 0), (250, 1), (260, 1), (270, 1), (280, 1), (290, 0), (300, 0), (310, 0), (320, 0), (330, 0), (340, 0), (350, 1), (360, 1), (370, 1), (380, 0), (390, 1), (400, 1), (410, 1), (420, 1), (430, 1), (440, 1), (450, 1), (460, 1), (470, 0), (480, 0), (490, 0), (500, 0), (510, 1), (520, 1), (530, 1), (540, 1), (550, 1), (560, 1), (570, 1), (580, 0), (590, 0), (600, 0), (610, 0), (620, 0), (630, 0), (640, 1), (650, 0), (660, 0), (670, 1), (680, 1), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 0), (750, 0), (760, 0), (770, 0), (780, 0), (790, 0), (800, 0), (810, 0), (820, 0), (830, 0), (840, 0), (850, 1), (860, 1), (870, 1), (880, 0), (890, 0), (900, 0), (910, 0), (920, 0), (930, 0), (940, 0), (950, 0), (960, 0), (970, 0), (980, 0), (990, 0), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 0), (1080, 1), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 1), (1170, 1), (1180, 1), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 1), (1240, 1), (1250, 0), (1260, 0), (1270, 0), (1280, 0), (1290, 0), (1300, 0), (1310, 0), (1320, 0), (1330, 0), (1340, 0), (1350, 0), (1360, 0), (1370, 0), (1380, 1), (1390, 1), (1400, 1), (1410, 1), (1420, 1), (1430, 0), (1440, 0), (1450, 0), (1460, 0), (1470, 0), (1480, 0), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 1), (1570, 1), (1580, 1), (1590, 1), (1600, 1), (1610, 1), (1620, 1), (1630, 1), (1640, 1), (1650, 1), (1660, 1), (1670, 1), (1680, 1), (1690, 0), (1700, 0), (1710, 0), (1720, 0), (1730, 0), (1740, 0), (1750, 0), (1760, 0), (1770, 0), (1780, 0), (1790, 0), (1800, 0), (1810, 0), (1820, 0), (1830, 0), (1840, 0), (1850, 0), (1860, 0), (1870, 0), (1880, 0), (1890, 0), (1900, 0), (1910, 0), (1920, 0), (1930, 0), (1940, 0), (1950, 1), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 0), (2010, 0), (2020, 0), (2030, 0), (2040, 0), (2050, 0)]
Vdin0_7  din0_7  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 1.8v 139.495n 1.8v 139.505n 1.8v 149.495n 1.8v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 1.8v 179.495n 1.8v 179.505n 0.0v 189.495n 0.0v 189.505n 0.0v 199.495n 0.0v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 0.0v 229.495n 0.0v 229.505n 0.0v 239.495n 0.0v 239.505n 0.0v 249.495n 0.0v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 1.8v 289.495n 1.8v 289.505n 0.0v 299.495n 0.0v 299.505n 0.0v 309.495n 0.0v 309.505n 0.0v 319.495n 0.0v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 1.8v 359.495n 1.8v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 0.0v 389.495n 0.0v 389.505n 1.8v 399.495n 1.8v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 1.8v 439.495n 1.8v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 0.0v 479.495n 0.0v 479.505n 0.0v 489.495n 0.0v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 1.8v 519.495n 1.8v 519.505n 1.8v 529.495n 1.8v 529.505n 1.8v 539.495n 1.8v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 0.0v 589.495n 0.0v 589.505n 0.0v 599.495n 0.0v 599.505n 0.0v 609.495n 0.0v 609.505n 0.0v 619.495n 0.0v 619.505n 0.0v 629.495n 0.0v 629.505n 0.0v 639.495n 0.0v 639.505n 1.8v 649.495n 1.8v 649.505n 0.0v 659.495n 0.0v 659.505n 0.0v 669.495n 0.0v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 0.0v 789.495n 0.0v 789.505n 0.0v 799.495n 0.0v 799.505n 0.0v 809.495n 0.0v 809.505n 0.0v 819.495n 0.0v 819.505n 0.0v 829.495n 0.0v 829.505n 0.0v 839.495n 0.0v 839.505n 0.0v 849.495n 0.0v 849.505n 1.8v 859.495n 1.8v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 0.0v 909.495n 0.0v 909.505n 0.0v 919.495n 0.0v 919.505n 0.0v 929.495n 0.0v 929.505n 0.0v 939.495n 0.0v 939.505n 0.0v 949.495n 0.0v 949.505n 0.0v 959.495n 0.0v 959.505n 0.0v 969.495n 0.0v 969.505n 0.0v 979.495n 0.0v 979.505n 0.0v 989.495n 0.0v 989.505n 0.0v 999.495n 0.0v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 1.8v 1169.495n 1.8v 1169.505n 1.8v 1179.495n 1.8v 1179.505n 1.8v 1189.495n 1.8v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 1.8v 1239.495n 1.8v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 0.0v 1259.495n 0.0v 1259.505n 0.0v 1269.495n 0.0v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 1.8v 1409.495n 1.8v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 0.0v 1449.495n 0.0v 1449.505n 0.0v 1459.495n 0.0v 1459.505n 0.0v 1469.495n 0.0v 1469.505n 0.0v 1479.495n 0.0v 1479.505n 0.0v 1489.495n 0.0v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 1.8v 1609.495n 1.8v 1609.505n 1.8v 1619.495n 1.8v 1619.505n 1.8v 1629.495n 1.8v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 1.8v 1659.495n 1.8v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 0.0v 1699.495n 0.0v 1699.505n 0.0v 1709.495n 0.0v 1709.505n 0.0v 1719.495n 0.0v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 0.0v 1739.495n 0.0v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 0.0v 1779.495n 0.0v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 0.0v 1829.495n 0.0v 1829.505n 0.0v 1839.495n 0.0v 1839.505n 0.0v 1849.495n 0.0v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 0.0v 1869.495n 0.0v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 0.0v 1889.495n 0.0v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 0.0v 1949.495n 0.0v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 0.0v 2019.495n 0.0v 2019.505n 0.0v 2029.495n 0.0v 2029.505n 0.0v 2039.495n 0.0v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 1), (40, 0), (50, 0), (60, 1), (70, 1), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 1), (140, 0), (150, 0), (160, 0), (170, 1), (180, 0), (190, 0), (200, 0), (210, 0), (220, 1), (230, 1), (240, 1), (250, 1), (260, 1), (270, 0), (280, 0), (290, 1), (300, 1), (310, 1), (320, 1), (330, 1), (340, 0), (350, 1), (360, 1), (370, 1), (380, 0), (390, 0), (400, 0), (410, 0), (420, 1), (430, 0), (440, 1), (450, 0), (460, 0), (470, 1), (480, 0), (490, 0), (500, 0), (510, 1), (520, 1), (530, 1), (540, 0), (550, 0), (560, 0), (570, 0), (580, 1), (590, 0), (600, 0), (610, 0), (620, 0), (630, 0), (640, 1), (650, 0), (660, 0), (670, 0), (680, 0), (690, 1), (700, 1), (710, 0), (720, 1), (730, 0), (740, 0), (750, 0), (760, 1), (770, 1), (780, 1), (790, 0), (800, 0), (810, 0), (820, 1), (830, 1), (840, 1), (850, 0), (860, 0), (870, 1), (880, 0), (890, 0), (900, 1), (910, 1), (920, 1), (930, 1), (940, 0), (950, 0), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 1), (1010, 1), (1020, 1), (1030, 1), (1040, 1), (1050, 0), (1060, 1), (1070, 1), (1080, 1), (1090, 0), (1100, 0), (1110, 0), (1120, 0), (1130, 0), (1140, 1), (1150, 1), (1160, 0), (1170, 0), (1180, 0), (1190, 0), (1200, 0), (1210, 1), (1220, 1), (1230, 1), (1240, 1), (1250, 0), (1260, 1), (1270, 1), (1280, 0), (1290, 1), (1300, 0), (1310, 0), (1320, 1), (1330, 0), (1340, 0), (1350, 0), (1360, 0), (1370, 0), (1380, 1), (1390, 0), (1400, 0), (1410, 0), (1420, 0), (1430, 0), (1440, 1), (1450, 0), (1460, 1), (1470, 1), (1480, 0), (1490, 0), (1500, 0), (1510, 0), (1520, 0), (1530, 0), (1540, 1), (1550, 0), (1560, 0), (1570, 0), (1580, 1), (1590, 0), (1600, 0), (1610, 1), (1620, 0), (1630, 0), (1640, 1), (1650, 0), (1660, 0), (1670, 0), (1680, 0), (1690, 0), (1700, 0), (1710, 0), (1720, 0), (1730, 0), (1740, 0), (1750, 0), (1760, 1), (1770, 1), (1780, 1), (1790, 1), (1800, 1), (1810, 1), (1820, 0), (1830, 0), (1840, 1), (1850, 0), (1860, 0), (1870, 0), (1880, 0), (1890, 0), (1900, 1), (1910, 1), (1920, 1), (1930, 1), (1940, 1), (1950, 1), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 0), (2010, 0), (2020, 1), (2030, 1), (2040, 0), (2050, 0)]
Va0_0  a0_0  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 1.8v 39.495n 1.8v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 1.8v 69.495n 1.8v 69.505n 1.8v 79.495n 1.8v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 1.8v 139.495n 1.8v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 1.8v 179.495n 1.8v 179.505n 0.0v 189.495n 0.0v 189.505n 0.0v 199.495n 0.0v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 0.0v 279.495n 0.0v 279.505n 0.0v 289.495n 0.0v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 1.8v 339.495n 1.8v 339.505n 0.0v 349.495n 0.0v 349.505n 1.8v 359.495n 1.8v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 0.0v 389.495n 0.0v 389.505n 0.0v 399.495n 0.0v 399.505n 0.0v 409.495n 0.0v 409.505n 0.0v 419.495n 0.0v 419.505n 1.8v 429.495n 1.8v 429.505n 0.0v 439.495n 0.0v 439.505n 1.8v 449.495n 1.8v 449.505n 0.0v 459.495n 0.0v 459.505n 0.0v 469.495n 0.0v 469.505n 1.8v 479.495n 1.8v 479.505n 0.0v 489.495n 0.0v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 1.8v 519.495n 1.8v 519.505n 1.8v 529.495n 1.8v 529.505n 1.8v 539.495n 1.8v 539.505n 0.0v 549.495n 0.0v 549.505n 0.0v 559.495n 0.0v 559.505n 0.0v 569.495n 0.0v 569.505n 0.0v 579.495n 0.0v 579.505n 1.8v 589.495n 1.8v 589.505n 0.0v 599.495n 0.0v 599.505n 0.0v 609.495n 0.0v 609.505n 0.0v 619.495n 0.0v 619.505n 0.0v 629.495n 0.0v 629.505n 0.0v 639.495n 0.0v 639.505n 1.8v 649.495n 1.8v 649.505n 0.0v 659.495n 0.0v 659.505n 0.0v 669.495n 0.0v 669.505n 0.0v 679.495n 0.0v 679.505n 0.0v 689.495n 0.0v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 0.0v 719.495n 0.0v 719.505n 1.8v 729.495n 1.8v 729.505n 0.0v 739.495n 0.0v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 1.8v 789.495n 1.8v 789.505n 0.0v 799.495n 0.0v 799.505n 0.0v 809.495n 0.0v 809.505n 0.0v 819.495n 0.0v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 1.8v 879.495n 1.8v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 0.0v 949.495n 0.0v 949.505n 0.0v 959.495n 0.0v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 1.8v 1009.495n 1.8v 1009.505n 1.8v 1019.495n 1.8v 1019.505n 1.8v 1029.495n 1.8v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 1.8v 1069.495n 1.8v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 0.0v 1099.495n 0.0v 1099.505n 0.0v 1109.495n 0.0v 1109.505n 0.0v 1119.495n 0.0v 1119.505n 0.0v 1129.495n 0.0v 1129.505n 0.0v 1139.495n 0.0v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 1.8v 1219.495n 1.8v 1219.505n 1.8v 1229.495n 1.8v 1229.505n 1.8v 1239.495n 1.8v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 0.0v 1259.495n 0.0v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 1.8v 1279.495n 1.8v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 1.8v 1299.495n 1.8v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 1.8v 1329.495n 1.8v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 0.0v 1399.495n 0.0v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 0.0v 1459.495n 0.0v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 0.0v 1489.495n 0.0v 1489.505n 0.0v 1499.495n 0.0v 1499.505n 0.0v 1509.495n 0.0v 1509.505n 0.0v 1519.495n 0.0v 1519.505n 0.0v 1529.495n 0.0v 1529.505n 0.0v 1539.495n 0.0v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 0.0v 1559.495n 0.0v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 0.0v 1579.495n 0.0v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 1.8v 1619.495n 1.8v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 0.0v 1679.495n 0.0v 1679.505n 0.0v 1689.495n 0.0v 1689.505n 0.0v 1699.495n 0.0v 1699.505n 0.0v 1709.495n 0.0v 1709.505n 0.0v 1719.495n 0.0v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 0.0v 1739.495n 0.0v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 1.8v 1809.495n 1.8v 1809.505n 1.8v 1819.495n 1.8v 1819.505n 0.0v 1829.495n 0.0v 1829.505n 0.0v 1839.495n 0.0v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 0.0v 1869.495n 0.0v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 0.0v 1889.495n 0.0v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 1.8v 1909.495n 1.8v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 1.8v 1929.495n 1.8v 1929.505n 1.8v 1939.495n 1.8v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 0.0v 2019.495n 0.0v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 1), (40, 0), (50, 0), (60, 1), (70, 1), (80, 1), (90, 1), (100, 0), (110, 1), (120, 0), (130, 1), (140, 0), (150, 0), (160, 0), (170, 1), (180, 0), (190, 0), (200, 0), (210, 0), (220, 1), (230, 1), (240, 1), (250, 0), (260, 1), (270, 1), (280, 0), (290, 0), (300, 0), (310, 0), (320, 0), (330, 0), (340, 0), (350, 0), (360, 0), (370, 1), (380, 1), (390, 0), (400, 1), (410, 1), (420, 1), (430, 1), (440, 1), (450, 0), (460, 0), (470, 0), (480, 0), (490, 1), (500, 1), (510, 0), (520, 0), (530, 0), (540, 1), (550, 0), (560, 0), (570, 0), (580, 0), (590, 0), (600, 0), (610, 1), (620, 0), (630, 0), (640, 0), (650, 1), (660, 0), (670, 1), (680, 0), (690, 1), (700, 1), (710, 1), (720, 0), (730, 0), (740, 0), (750, 1), (760, 0), (770, 0), (780, 1), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 1), (860, 1), (870, 1), (880, 1), (890, 1), (900, 0), (910, 0), (920, 0), (930, 0), (940, 0), (950, 1), (960, 0), (970, 1), (980, 1), (990, 1), (1000, 1), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 0), (1080, 0), (1090, 0), (1100, 0), (1110, 0), (1120, 0), (1130, 0), (1140, 0), (1150, 0), (1160, 0), (1170, 0), (1180, 0), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 0), (1240, 0), (1250, 0), (1260, 0), (1270, 1), (1280, 0), (1290, 0), (1300, 1), (1310, 0), (1320, 1), (1330, 0), (1340, 0), (1350, 1), (1360, 1), (1370, 1), (1380, 0), (1390, 0), (1400, 1), (1410, 1), (1420, 1), (1430, 0), (1440, 0), (1450, 0), (1460, 0), (1470, 1), (1480, 0), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 0), (1550, 0), (1560, 1), (1570, 1), (1580, 1), (1590, 0), (1600, 0), (1610, 1), (1620, 1), (1630, 1), (1640, 0), (1650, 1), (1660, 1), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 0), (1730, 1), (1740, 0), (1750, 1), (1760, 0), (1770, 0), (1780, 0), (1790, 0), (1800, 0), (1810, 0), (1820, 1), (1830, 1), (1840, 0), (1850, 1), (1860, 0), (1870, 1), (1880, 1), (1890, 0), (1900, 1), (1910, 1), (1920, 1), (1930, 1), (1940, 0), (1950, 0), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 1), (2010, 1), (2020, 1), (2030, 1), (2040, 0), (2050, 0)]
Va0_1  a0_1  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 1.8v 39.495n 1.8v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 1.8v 69.495n 1.8v 69.505n 1.8v 79.495n 1.8v 79.505n 1.8v 89.495n 1.8v 89.505n 1.8v 99.495n 1.8v 99.505n 0.0v 109.495n 0.0v 109.505n 1.8v 119.495n 1.8v 119.505n 0.0v 129.495n 0.0v 129.505n 1.8v 139.495n 1.8v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 1.8v 179.495n 1.8v 179.505n 0.0v 189.495n 0.0v 189.505n 0.0v 199.495n 0.0v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 0.0v 259.495n 0.0v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 0.0v 289.495n 0.0v 289.505n 0.0v 299.495n 0.0v 299.505n 0.0v 309.495n 0.0v 309.505n 0.0v 319.495n 0.0v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 0.0v 359.495n 0.0v 359.505n 0.0v 369.495n 0.0v 369.505n 1.8v 379.495n 1.8v 379.505n 1.8v 389.495n 1.8v 389.505n 0.0v 399.495n 0.0v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 1.8v 439.495n 1.8v 439.505n 1.8v 449.495n 1.8v 449.505n 0.0v 459.495n 0.0v 459.505n 0.0v 469.495n 0.0v 469.505n 0.0v 479.495n 0.0v 479.505n 0.0v 489.495n 0.0v 489.505n 1.8v 499.495n 1.8v 499.505n 1.8v 509.495n 1.8v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 0.0v 539.495n 0.0v 539.505n 1.8v 549.495n 1.8v 549.505n 0.0v 559.495n 0.0v 559.505n 0.0v 569.495n 0.0v 569.505n 0.0v 579.495n 0.0v 579.505n 0.0v 589.495n 0.0v 589.505n 0.0v 599.495n 0.0v 599.505n 0.0v 609.495n 0.0v 609.505n 1.8v 619.495n 1.8v 619.505n 0.0v 629.495n 0.0v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 1.8v 659.495n 1.8v 659.505n 0.0v 669.495n 0.0v 669.505n 1.8v 679.495n 1.8v 679.505n 0.0v 689.495n 0.0v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 0.0v 729.495n 0.0v 729.505n 0.0v 739.495n 0.0v 739.505n 0.0v 749.495n 0.0v 749.505n 1.8v 759.495n 1.8v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 1.8v 789.495n 1.8v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 1.8v 859.495n 1.8v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 1.8v 889.495n 1.8v 889.505n 1.8v 899.495n 1.8v 899.505n 0.0v 909.495n 0.0v 909.505n 0.0v 919.495n 0.0v 919.505n 0.0v 929.495n 0.0v 929.505n 0.0v 939.495n 0.0v 939.505n 0.0v 949.495n 0.0v 949.505n 1.8v 959.495n 1.8v 959.505n 0.0v 969.495n 0.0v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 1.8v 1009.495n 1.8v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 0.0v 1099.495n 0.0v 1099.505n 0.0v 1109.495n 0.0v 1109.505n 0.0v 1119.495n 0.0v 1119.505n 0.0v 1129.495n 0.0v 1129.505n 0.0v 1139.495n 0.0v 1139.505n 0.0v 1149.495n 0.0v 1149.505n 0.0v 1159.495n 0.0v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 0.0v 1249.495n 0.0v 1249.505n 0.0v 1259.495n 0.0v 1259.505n 0.0v 1269.495n 0.0v 1269.505n 1.8v 1279.495n 1.8v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 1.8v 1329.495n 1.8v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 1.8v 1359.495n 1.8v 1359.505n 1.8v 1369.495n 1.8v 1369.505n 1.8v 1379.495n 1.8v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 0.0v 1399.495n 0.0v 1399.505n 1.8v 1409.495n 1.8v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 0.0v 1449.495n 0.0v 1449.505n 0.0v 1459.495n 0.0v 1459.505n 0.0v 1469.495n 0.0v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 0.0v 1489.495n 0.0v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 0.0v 1549.495n 0.0v 1549.505n 0.0v 1559.495n 0.0v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 1.8v 1619.495n 1.8v 1619.505n 1.8v 1629.495n 1.8v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 1.8v 1659.495n 1.8v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 0.0v 1779.495n 0.0v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 0.0v 1849.495n 0.0v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 0.0v 1869.495n 0.0v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 1.8v 1909.495n 1.8v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 1.8v 1929.495n 1.8v 1929.505n 1.8v 1939.495n 1.8v 1939.505n 0.0v 1949.495n 0.0v 1949.505n 0.0v 1959.495n 0.0v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 1.8v 2009.495n 1.8v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )
* (time, data): [(0, 0), (10, 0), (20, 1), (30, 1), (40, 0), (50, 1), (60, 1), (70, 1), (80, 1), (90, 1), (100, 0), (110, 1), (120, 1), (130, 0), (140, 0), (150, 0), (160, 0), (170, 0), (180, 1), (190, 1), (200, 0), (210, 0), (220, 0), (230, 0), (240, 0), (250, 0), (260, 0), (270, 1), (280, 1), (290, 0), (300, 0), (310, 0), (320, 0), (330, 0), (340, 1), (350, 0), (360, 0), (370, 1), (380, 0), (390, 0), (400, 1), (410, 1), (420, 0), (430, 1), (440, 1), (450, 1), (460, 1), (470, 0), (480, 0), (490, 1), (500, 1), (510, 0), (520, 0), (530, 1), (540, 1), (550, 1), (560, 1), (570, 0), (580, 1), (590, 0), (600, 0), (610, 1), (620, 0), (630, 0), (640, 1), (650, 0), (660, 0), (670, 0), (680, 0), (690, 0), (700, 0), (710, 1), (720, 1), (730, 0), (740, 0), (750, 1), (760, 1), (770, 1), (780, 1), (790, 0), (800, 1), (810, 1), (820, 0), (830, 1), (840, 1), (850, 1), (860, 1), (870, 1), (880, 1), (890, 1), (900, 1), (910, 1), (920, 1), (930, 0), (940, 1), (950, 0), (960, 1), (970, 0), (980, 0), (990, 0), (1000, 0), (1010, 0), (1020, 1), (1030, 1), (1040, 1), (1050, 0), (1060, 0), (1070, 1), (1080, 1), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 0), (1150, 0), (1160, 1), (1170, 0), (1180, 0), (1190, 1), (1200, 1), (1210, 1), (1220, 1), (1230, 1), (1240, 1), (1250, 0), (1260, 1), (1270, 1), (1280, 1), (1290, 1), (1300, 1), (1310, 1), (1320, 0), (1330, 0), (1340, 0), (1350, 1), (1360, 0), (1370, 0), (1380, 0), (1390, 1), (1400, 1), (1410, 1), (1420, 1), (1430, 1), (1440, 1), (1450, 0), (1460, 1), (1470, 1), (1480, 1), (1490, 0), (1500, 1), (1510, 1), (1520, 0), (1530, 0), (1540, 0), (1550, 1), (1560, 1), (1570, 1), (1580, 1), (1590, 1), (1600, 0), (1610, 1), (1620, 0), (1630, 0), (1640, 0), (1650, 0), (1660, 0), (1670, 0), (1680, 0), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 1), (1740, 1), (1750, 0), (1760, 1), (1770, 1), (1780, 0), (1790, 1), (1800, 1), (1810, 1), (1820, 1), (1830, 1), (1840, 0), (1850, 1), (1860, 0), (1870, 1), (1880, 1), (1890, 0), (1900, 0), (1910, 0), (1920, 0), (1930, 0), (1940, 0), (1950, 1), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 1), (2010, 1), (2020, 1), (2030, 1), (2040, 1), (2050, 1)]
Va0_2  a0_2  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 1.8v 29.495n 1.8v 29.505n 1.8v 39.495n 1.8v 39.505n 0.0v 49.495n 0.0v 49.505n 1.8v 59.495n 1.8v 59.505n 1.8v 69.495n 1.8v 69.505n 1.8v 79.495n 1.8v 79.505n 1.8v 89.495n 1.8v 89.505n 1.8v 99.495n 1.8v 99.505n 0.0v 109.495n 0.0v 109.505n 1.8v 119.495n 1.8v 119.505n 1.8v 129.495n 1.8v 129.505n 0.0v 139.495n 0.0v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 0.0v 179.495n 0.0v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 0.0v 229.495n 0.0v 229.505n 0.0v 239.495n 0.0v 239.505n 0.0v 249.495n 0.0v 249.505n 0.0v 259.495n 0.0v 259.505n 0.0v 269.495n 0.0v 269.505n 1.8v 279.495n 1.8v 279.505n 1.8v 289.495n 1.8v 289.505n 0.0v 299.495n 0.0v 299.505n 0.0v 309.495n 0.0v 309.505n 0.0v 319.495n 0.0v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 1.8v 349.495n 1.8v 349.505n 0.0v 359.495n 0.0v 359.505n 0.0v 369.495n 0.0v 369.505n 1.8v 379.495n 1.8v 379.505n 0.0v 389.495n 0.0v 389.505n 0.0v 399.495n 0.0v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 0.0v 429.495n 0.0v 429.505n 1.8v 439.495n 1.8v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 0.0v 479.495n 0.0v 479.505n 0.0v 489.495n 0.0v 489.505n 1.8v 499.495n 1.8v 499.505n 1.8v 509.495n 1.8v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 1.8v 539.495n 1.8v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 0.0v 579.495n 0.0v 579.505n 1.8v 589.495n 1.8v 589.505n 0.0v 599.495n 0.0v 599.505n 0.0v 609.495n 0.0v 609.505n 1.8v 619.495n 1.8v 619.505n 0.0v 629.495n 0.0v 629.505n 0.0v 639.495n 0.0v 639.505n 1.8v 649.495n 1.8v 649.505n 0.0v 659.495n 0.0v 659.505n 0.0v 669.495n 0.0v 669.505n 0.0v 679.495n 0.0v 679.505n 0.0v 689.495n 0.0v 689.505n 0.0v 699.495n 0.0v 699.505n 0.0v 709.495n 0.0v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 0.0v 739.495n 0.0v 739.505n 0.0v 749.495n 0.0v 749.505n 1.8v 759.495n 1.8v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 1.8v 789.495n 1.8v 789.505n 0.0v 799.495n 0.0v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 0.0v 829.495n 0.0v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 1.8v 859.495n 1.8v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 1.8v 889.495n 1.8v 889.505n 1.8v 899.495n 1.8v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 0.0v 939.495n 0.0v 939.505n 1.8v 949.495n 1.8v 949.505n 0.0v 959.495n 0.0v 959.505n 1.8v 969.495n 1.8v 969.505n 0.0v 979.495n 0.0v 979.505n 0.0v 989.495n 0.0v 989.505n 0.0v 999.495n 0.0v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 1.8v 1029.495n 1.8v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 0.0v 1149.495n 0.0v 1149.505n 0.0v 1159.495n 0.0v 1159.505n 1.8v 1169.495n 1.8v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 1.8v 1199.495n 1.8v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 1.8v 1219.495n 1.8v 1219.505n 1.8v 1229.495n 1.8v 1229.505n 1.8v 1239.495n 1.8v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 0.0v 1259.495n 0.0v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 1.8v 1279.495n 1.8v 1279.505n 1.8v 1289.495n 1.8v 1289.505n 1.8v 1299.495n 1.8v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 1.8v 1319.495n 1.8v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 1.8v 1359.495n 1.8v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 1.8v 1409.495n 1.8v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 0.0v 1459.495n 0.0v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 0.0v 1499.495n 0.0v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 0.0v 1529.495n 0.0v 1529.505n 0.0v 1539.495n 0.0v 1539.505n 0.0v 1549.495n 0.0v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 1.8v 1619.495n 1.8v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 0.0v 1679.495n 0.0v 1679.505n 0.0v 1689.495n 0.0v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 1.8v 1749.495n 1.8v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 1.8v 1809.495n 1.8v 1809.505n 1.8v 1819.495n 1.8v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 0.0v 1849.495n 0.0v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 0.0v 1869.495n 0.0v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 0.0v 1949.495n 0.0v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 1.8v 2009.495n 1.8v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 0), (20, 1), (30, 0), (40, 0), (50, 1), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 1), (130, 1), (140, 0), (150, 0), (160, 0), (170, 1), (180, 1), (190, 1), (200, 0), (210, 0), (220, 1), (230, 1), (240, 1), (250, 0), (260, 1), (270, 0), (280, 1), (290, 1), (300, 1), (310, 1), (320, 0), (330, 0), (340, 1), (350, 1), (360, 1), (370, 0), (380, 1), (390, 1), (400, 1), (410, 1), (420, 1), (430, 1), (440, 0), (450, 1), (460, 1), (470, 0), (480, 1), (490, 0), (500, 0), (510, 1), (520, 1), (530, 1), (540, 0), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 0), (610, 1), (620, 1), (630, 0), (640, 0), (650, 1), (660, 1), (670, 1), (680, 1), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 1), (750, 0), (760, 1), (770, 1), (780, 0), (790, 1), (800, 1), (810, 0), (820, 1), (830, 0), (840, 0), (850, 0), (860, 1), (870, 0), (880, 1), (890, 1), (900, 1), (910, 1), (920, 1), (930, 1), (940, 1), (950, 1), (960, 0), (970, 1), (980, 1), (990, 1), (1000, 1), (1010, 1), (1020, 0), (1030, 1), (1040, 1), (1050, 0), (1060, 0), (1070, 0), (1080, 0), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 1), (1170, 0), (1180, 0), (1190, 1), (1200, 1), (1210, 0), (1220, 0), (1230, 0), (1240, 0), (1250, 1), (1260, 1), (1270, 0), (1280, 1), (1290, 0), (1300, 1), (1310, 0), (1320, 1), (1330, 1), (1340, 1), (1350, 0), (1360, 1), (1370, 1), (1380, 1), (1390, 1), (1400, 0), (1410, 0), (1420, 0), (1430, 0), (1440, 0), (1450, 0), (1460, 0), (1470, 0), (1480, 0), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 0), (1570, 0), (1580, 0), (1590, 1), (1600, 0), (1610, 0), (1620, 0), (1630, 0), (1640, 0), (1650, 1), (1660, 0), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 0), (1730, 1), (1740, 0), (1750, 1), (1760, 1), (1770, 1), (1780, 1), (1790, 0), (1800, 0), (1810, 0), (1820, 1), (1830, 1), (1840, 1), (1850, 0), (1860, 1), (1870, 1), (1880, 1), (1890, 1), (1900, 0), (1910, 1), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 0), (2010, 1), (2020, 0), (2030, 0), (2040, 1), (2050, 1)]
Va0_3  a0_3  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 1.8v 29.495n 1.8v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 1.8v 59.495n 1.8v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 1.8v 129.495n 1.8v 129.505n 1.8v 139.495n 1.8v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 1.8v 179.495n 1.8v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 0.0v 259.495n 0.0v 259.505n 1.8v 269.495n 1.8v 269.505n 0.0v 279.495n 0.0v 279.505n 1.8v 289.495n 1.8v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 1.8v 349.495n 1.8v 349.505n 1.8v 359.495n 1.8v 359.505n 1.8v 369.495n 1.8v 369.505n 0.0v 379.495n 0.0v 379.505n 1.8v 389.495n 1.8v 389.505n 1.8v 399.495n 1.8v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 1.8v 439.495n 1.8v 439.505n 0.0v 449.495n 0.0v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 0.0v 479.495n 0.0v 479.505n 1.8v 489.495n 1.8v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 1.8v 519.495n 1.8v 519.505n 1.8v 529.495n 1.8v 529.505n 1.8v 539.495n 1.8v 539.505n 0.0v 549.495n 0.0v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 0.0v 609.495n 0.0v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 1.8v 749.495n 1.8v 749.505n 0.0v 759.495n 0.0v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 0.0v 789.495n 0.0v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 0.0v 819.495n 0.0v 819.505n 1.8v 829.495n 1.8v 829.505n 0.0v 839.495n 0.0v 839.505n 0.0v 849.495n 0.0v 849.505n 0.0v 859.495n 0.0v 859.505n 1.8v 869.495n 1.8v 869.505n 0.0v 879.495n 0.0v 879.505n 1.8v 889.495n 1.8v 889.505n 1.8v 899.495n 1.8v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 0.0v 969.495n 0.0v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 1.8v 1009.495n 1.8v 1009.505n 1.8v 1019.495n 1.8v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 1.8v 1169.495n 1.8v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 1.8v 1199.495n 1.8v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 0.0v 1249.495n 0.0v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 1.8v 1289.495n 1.8v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 1.8v 1329.495n 1.8v 1329.505n 1.8v 1339.495n 1.8v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 1.8v 1369.495n 1.8v 1369.505n 1.8v 1379.495n 1.8v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 0.0v 1449.495n 0.0v 1449.505n 0.0v 1459.495n 0.0v 1459.505n 0.0v 1469.495n 0.0v 1469.505n 0.0v 1479.495n 0.0v 1479.505n 0.0v 1489.495n 0.0v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 0.0v 1579.495n 0.0v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 1.8v 1659.495n 1.8v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 0.0v 2029.495n 0.0v 2029.505n 0.0v 2039.495n 0.0v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 0), (20, 1), (30, 0), (40, 0), (50, 1), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 1), (130, 1), (140, 0), (150, 0), (160, 0), (170, 1), (180, 1), (190, 1), (200, 0), (210, 0), (220, 1), (230, 1), (240, 1), (250, 0), (260, 1), (270, 0), (280, 1), (290, 1), (300, 1), (310, 1), (320, 0), (330, 0), (340, 1), (350, 1), (360, 1), (370, 0), (380, 1), (390, 1), (400, 1), (410, 1), (420, 1), (430, 1), (440, 0), (450, 1), (460, 1), (470, 0), (480, 1), (490, 0), (500, 0), (510, 1), (520, 1), (530, 1), (540, 0), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 0), (610, 1), (620, 1), (630, 0), (640, 0), (650, 1), (660, 1), (670, 1), (680, 1), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 1), (750, 0), (760, 1), (770, 1), (780, 1), (790, 1), (800, 1), (810, 0), (820, 1), (830, 1), (840, 1), (850, 0), (860, 1), (870, 1), (880, 1), (890, 1), (900, 1), (910, 1), (920, 1), (930, 1), (940, 1), (950, 1), (960, 0), (970, 1), (980, 1), (990, 1), (1000, 1), (1010, 1), (1020, 0), (1030, 1), (1040, 1), (1050, 0), (1060, 0), (1070, 0), (1080, 0), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 1), (1170, 0), (1180, 0), (1190, 1), (1200, 1), (1210, 0), (1220, 0), (1230, 0), (1240, 0), (1250, 1), (1260, 1), (1270, 0), (1280, 1), (1290, 0), (1300, 1), (1310, 0), (1320, 1), (1330, 1), (1340, 1), (1350, 0), (1360, 1), (1370, 1), (1380, 1), (1390, 1), (1400, 0), (1410, 0), (1420, 0), (1430, 0), (1440, 0), (1450, 0), (1460, 0), (1470, 1), (1480, 0), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 0), (1570, 0), (1580, 1), (1590, 1), (1600, 0), (1610, 0), (1620, 0), (1630, 0), (1640, 0), (1650, 1), (1660, 0), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 0), (1730, 1), (1740, 0), (1750, 1), (1760, 1), (1770, 1), (1780, 1), (1790, 0), (1800, 0), (1810, 0), (1820, 1), (1830, 1), (1840, 1), (1850, 0), (1860, 1), (1870, 1), (1880, 1), (1890, 1), (1900, 0), (1910, 1), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 0), (2010, 1), (2020, 0), (2030, 0), (2040, 1), (2050, 1)]
Va0_4  a0_4  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 1.8v 29.495n 1.8v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 1.8v 59.495n 1.8v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 1.8v 129.495n 1.8v 129.505n 1.8v 139.495n 1.8v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 1.8v 179.495n 1.8v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 0.0v 259.495n 0.0v 259.505n 1.8v 269.495n 1.8v 269.505n 0.0v 279.495n 0.0v 279.505n 1.8v 289.495n 1.8v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 1.8v 349.495n 1.8v 349.505n 1.8v 359.495n 1.8v 359.505n 1.8v 369.495n 1.8v 369.505n 0.0v 379.495n 0.0v 379.505n 1.8v 389.495n 1.8v 389.505n 1.8v 399.495n 1.8v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 1.8v 439.495n 1.8v 439.505n 0.0v 449.495n 0.0v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 0.0v 479.495n 0.0v 479.505n 1.8v 489.495n 1.8v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 1.8v 519.495n 1.8v 519.505n 1.8v 529.495n 1.8v 529.505n 1.8v 539.495n 1.8v 539.505n 0.0v 549.495n 0.0v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 0.0v 609.495n 0.0v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 1.8v 749.495n 1.8v 749.505n 0.0v 759.495n 0.0v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 1.8v 789.495n 1.8v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 0.0v 819.495n 0.0v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 1.8v 889.495n 1.8v 889.505n 1.8v 899.495n 1.8v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 0.0v 969.495n 0.0v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 1.8v 1009.495n 1.8v 1009.505n 1.8v 1019.495n 1.8v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 1.8v 1169.495n 1.8v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 1.8v 1199.495n 1.8v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 0.0v 1249.495n 0.0v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 1.8v 1289.495n 1.8v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 1.8v 1329.495n 1.8v 1329.505n 1.8v 1339.495n 1.8v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 1.8v 1369.495n 1.8v 1369.505n 1.8v 1379.495n 1.8v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 0.0v 1449.495n 0.0v 1449.505n 0.0v 1459.495n 0.0v 1459.505n 0.0v 1469.495n 0.0v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 0.0v 1489.495n 0.0v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 0.0v 1579.495n 0.0v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 1.8v 1659.495n 1.8v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 0.0v 2029.495n 0.0v 2029.505n 0.0v 2039.495n 0.0v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 0), (20, 1), (30, 0), (40, 0), (50, 1), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 1), (130, 1), (140, 0), (150, 0), (160, 0), (170, 1), (180, 1), (190, 1), (200, 0), (210, 0), (220, 1), (230, 1), (240, 1), (250, 0), (260, 1), (270, 0), (280, 1), (290, 1), (300, 1), (310, 1), (320, 0), (330, 0), (340, 1), (350, 1), (360, 1), (370, 0), (380, 1), (390, 1), (400, 1), (410, 1), (420, 1), (430, 1), (440, 0), (450, 1), (460, 1), (470, 0), (480, 1), (490, 0), (500, 0), (510, 1), (520, 1), (530, 1), (540, 0), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 0), (610, 1), (620, 1), (630, 0), (640, 0), (650, 1), (660, 1), (670, 1), (680, 1), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 1), (750, 0), (760, 1), (770, 1), (780, 1), (790, 1), (800, 1), (810, 0), (820, 1), (830, 1), (840, 1), (850, 0), (860, 1), (870, 1), (880, 1), (890, 1), (900, 1), (910, 1), (920, 1), (930, 1), (940, 1), (950, 1), (960, 0), (970, 1), (980, 1), (990, 1), (1000, 1), (1010, 1), (1020, 0), (1030, 1), (1040, 1), (1050, 0), (1060, 0), (1070, 0), (1080, 0), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 1), (1170, 0), (1180, 0), (1190, 1), (1200, 1), (1210, 0), (1220, 0), (1230, 0), (1240, 0), (1250, 1), (1260, 1), (1270, 0), (1280, 1), (1290, 0), (1300, 1), (1310, 0), (1320, 1), (1330, 1), (1340, 1), (1350, 0), (1360, 1), (1370, 1), (1380, 1), (1390, 1), (1400, 0), (1410, 0), (1420, 0), (1430, 0), (1440, 0), (1450, 0), (1460, 0), (1470, 1), (1480, 0), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 0), (1570, 0), (1580, 1), (1590, 1), (1600, 0), (1610, 0), (1620, 0), (1630, 0), (1640, 0), (1650, 1), (1660, 0), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 0), (1730, 1), (1740, 0), (1750, 1), (1760, 1), (1770, 1), (1780, 1), (1790, 0), (1800, 0), (1810, 0), (1820, 1), (1830, 1), (1840, 1), (1850, 0), (1860, 1), (1870, 1), (1880, 1), (1890, 1), (1900, 0), (1910, 1), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 0), (2010, 1), (2020, 0), (2030, 0), (2040, 1), (2050, 1)]
Va0_5  a0_5  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 1.8v 29.495n 1.8v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 1.8v 59.495n 1.8v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 1.8v 129.495n 1.8v 129.505n 1.8v 139.495n 1.8v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 1.8v 179.495n 1.8v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 0.0v 259.495n 0.0v 259.505n 1.8v 269.495n 1.8v 269.505n 0.0v 279.495n 0.0v 279.505n 1.8v 289.495n 1.8v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 1.8v 349.495n 1.8v 349.505n 1.8v 359.495n 1.8v 359.505n 1.8v 369.495n 1.8v 369.505n 0.0v 379.495n 0.0v 379.505n 1.8v 389.495n 1.8v 389.505n 1.8v 399.495n 1.8v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 1.8v 439.495n 1.8v 439.505n 0.0v 449.495n 0.0v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 0.0v 479.495n 0.0v 479.505n 1.8v 489.495n 1.8v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 1.8v 519.495n 1.8v 519.505n 1.8v 529.495n 1.8v 529.505n 1.8v 539.495n 1.8v 539.505n 0.0v 549.495n 0.0v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 0.0v 609.495n 0.0v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 1.8v 749.495n 1.8v 749.505n 0.0v 759.495n 0.0v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 1.8v 789.495n 1.8v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 0.0v 819.495n 0.0v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 1.8v 889.495n 1.8v 889.505n 1.8v 899.495n 1.8v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 0.0v 969.495n 0.0v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 1.8v 1009.495n 1.8v 1009.505n 1.8v 1019.495n 1.8v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 1.8v 1169.495n 1.8v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 1.8v 1199.495n 1.8v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 0.0v 1249.495n 0.0v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 1.8v 1289.495n 1.8v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 1.8v 1329.495n 1.8v 1329.505n 1.8v 1339.495n 1.8v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 1.8v 1369.495n 1.8v 1369.505n 1.8v 1379.495n 1.8v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 0.0v 1449.495n 0.0v 1449.505n 0.0v 1459.495n 0.0v 1459.505n 0.0v 1469.495n 0.0v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 0.0v 1489.495n 0.0v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 0.0v 1579.495n 0.0v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 1.8v 1659.495n 1.8v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 0.0v 2029.495n 0.0v 2029.505n 0.0v 2039.495n 0.0v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 0), (20, 1), (30, 0), (40, 0), (50, 1), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 1), (130, 1), (140, 0), (150, 0), (160, 0), (170, 1), (180, 1), (190, 1), (200, 0), (210, 0), (220, 1), (230, 1), (240, 1), (250, 0), (260, 1), (270, 0), (280, 1), (290, 1), (300, 1), (310, 1), (320, 0), (330, 0), (340, 1), (350, 1), (360, 1), (370, 0), (380, 1), (390, 1), (400, 1), (410, 1), (420, 1), (430, 1), (440, 0), (450, 1), (460, 1), (470, 0), (480, 1), (490, 0), (500, 0), (510, 1), (520, 1), (530, 1), (540, 0), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 0), (610, 1), (620, 1), (630, 0), (640, 0), (650, 1), (660, 1), (670, 1), (680, 1), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 1), (750, 0), (760, 1), (770, 1), (780, 1), (790, 1), (800, 1), (810, 0), (820, 1), (830, 1), (840, 1), (850, 0), (860, 1), (870, 1), (880, 1), (890, 1), (900, 1), (910, 1), (920, 1), (930, 1), (940, 1), (950, 1), (960, 0), (970, 1), (980, 1), (990, 1), (1000, 1), (1010, 1), (1020, 0), (1030, 1), (1040, 1), (1050, 0), (1060, 0), (1070, 0), (1080, 0), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 1), (1170, 0), (1180, 0), (1190, 1), (1200, 1), (1210, 0), (1220, 0), (1230, 0), (1240, 0), (1250, 1), (1260, 1), (1270, 0), (1280, 1), (1290, 0), (1300, 1), (1310, 0), (1320, 1), (1330, 1), (1340, 1), (1350, 0), (1360, 1), (1370, 1), (1380, 1), (1390, 1), (1400, 0), (1410, 0), (1420, 0), (1430, 0), (1440, 0), (1450, 0), (1460, 0), (1470, 1), (1480, 0), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 0), (1570, 0), (1580, 1), (1590, 1), (1600, 0), (1610, 0), (1620, 0), (1630, 0), (1640, 0), (1650, 1), (1660, 0), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 0), (1730, 1), (1740, 0), (1750, 1), (1760, 1), (1770, 1), (1780, 1), (1790, 0), (1800, 0), (1810, 0), (1820, 1), (1830, 1), (1840, 1), (1850, 0), (1860, 1), (1870, 1), (1880, 1), (1890, 1), (1900, 0), (1910, 1), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 0), (2010, 1), (2020, 0), (2030, 0), (2040, 1), (2050, 1)]
Va0_6  a0_6  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 1.8v 29.495n 1.8v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 1.8v 59.495n 1.8v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 1.8v 129.495n 1.8v 129.505n 1.8v 139.495n 1.8v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 1.8v 179.495n 1.8v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 0.0v 259.495n 0.0v 259.505n 1.8v 269.495n 1.8v 269.505n 0.0v 279.495n 0.0v 279.505n 1.8v 289.495n 1.8v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 1.8v 349.495n 1.8v 349.505n 1.8v 359.495n 1.8v 359.505n 1.8v 369.495n 1.8v 369.505n 0.0v 379.495n 0.0v 379.505n 1.8v 389.495n 1.8v 389.505n 1.8v 399.495n 1.8v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 1.8v 439.495n 1.8v 439.505n 0.0v 449.495n 0.0v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 0.0v 479.495n 0.0v 479.505n 1.8v 489.495n 1.8v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 1.8v 519.495n 1.8v 519.505n 1.8v 529.495n 1.8v 529.505n 1.8v 539.495n 1.8v 539.505n 0.0v 549.495n 0.0v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 0.0v 609.495n 0.0v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 1.8v 749.495n 1.8v 749.505n 0.0v 759.495n 0.0v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 1.8v 789.495n 1.8v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 0.0v 819.495n 0.0v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 1.8v 889.495n 1.8v 889.505n 1.8v 899.495n 1.8v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 0.0v 969.495n 0.0v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 1.8v 1009.495n 1.8v 1009.505n 1.8v 1019.495n 1.8v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 1.8v 1169.495n 1.8v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 1.8v 1199.495n 1.8v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 0.0v 1249.495n 0.0v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 1.8v 1289.495n 1.8v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 1.8v 1329.495n 1.8v 1329.505n 1.8v 1339.495n 1.8v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 1.8v 1369.495n 1.8v 1369.505n 1.8v 1379.495n 1.8v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 0.0v 1449.495n 0.0v 1449.505n 0.0v 1459.495n 0.0v 1459.505n 0.0v 1469.495n 0.0v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 0.0v 1489.495n 0.0v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 0.0v 1579.495n 0.0v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 1.8v 1659.495n 1.8v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 0.0v 2029.495n 0.0v 2029.505n 0.0v 2039.495n 0.0v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 0), (20, 1), (30, 0), (40, 0), (50, 1), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 1), (130, 1), (140, 0), (150, 0), (160, 0), (170, 1), (180, 1), (190, 1), (200, 0), (210, 0), (220, 1), (230, 1), (240, 1), (250, 0), (260, 1), (270, 0), (280, 1), (290, 1), (300, 1), (310, 1), (320, 0), (330, 0), (340, 1), (350, 1), (360, 1), (370, 0), (380, 1), (390, 1), (400, 1), (410, 1), (420, 1), (430, 1), (440, 0), (450, 1), (460, 1), (470, 0), (480, 1), (490, 0), (500, 0), (510, 1), (520, 1), (530, 1), (540, 0), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 0), (610, 1), (620, 1), (630, 0), (640, 0), (650, 1), (660, 1), (670, 1), (680, 1), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 1), (750, 0), (760, 1), (770, 1), (780, 1), (790, 1), (800, 1), (810, 0), (820, 1), (830, 1), (840, 1), (850, 0), (860, 1), (870, 1), (880, 1), (890, 1), (900, 1), (910, 1), (920, 1), (930, 1), (940, 1), (950, 1), (960, 0), (970, 1), (980, 1), (990, 1), (1000, 1), (1010, 1), (1020, 0), (1030, 1), (1040, 1), (1050, 0), (1060, 0), (1070, 0), (1080, 0), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 1), (1170, 0), (1180, 0), (1190, 1), (1200, 1), (1210, 0), (1220, 0), (1230, 0), (1240, 0), (1250, 1), (1260, 1), (1270, 0), (1280, 1), (1290, 0), (1300, 1), (1310, 0), (1320, 1), (1330, 1), (1340, 1), (1350, 0), (1360, 1), (1370, 1), (1380, 1), (1390, 1), (1400, 0), (1410, 0), (1420, 0), (1430, 0), (1440, 0), (1450, 0), (1460, 0), (1470, 1), (1480, 0), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 0), (1570, 0), (1580, 1), (1590, 1), (1600, 0), (1610, 0), (1620, 0), (1630, 0), (1640, 0), (1650, 1), (1660, 0), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 0), (1730, 1), (1740, 0), (1750, 1), (1760, 1), (1770, 1), (1780, 1), (1790, 0), (1800, 0), (1810, 0), (1820, 1), (1830, 1), (1840, 1), (1850, 0), (1860, 1), (1870, 1), (1880, 1), (1890, 1), (1900, 0), (1910, 1), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 0), (2010, 1), (2020, 0), (2030, 0), (2040, 1), (2050, 1)]
Va0_7  a0_7  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 1.8v 29.495n 1.8v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 1.8v 59.495n 1.8v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 1.8v 129.495n 1.8v 129.505n 1.8v 139.495n 1.8v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 1.8v 179.495n 1.8v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 0.0v 259.495n 0.0v 259.505n 1.8v 269.495n 1.8v 269.505n 0.0v 279.495n 0.0v 279.505n 1.8v 289.495n 1.8v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 1.8v 349.495n 1.8v 349.505n 1.8v 359.495n 1.8v 359.505n 1.8v 369.495n 1.8v 369.505n 0.0v 379.495n 0.0v 379.505n 1.8v 389.495n 1.8v 389.505n 1.8v 399.495n 1.8v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 1.8v 439.495n 1.8v 439.505n 0.0v 449.495n 0.0v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 0.0v 479.495n 0.0v 479.505n 1.8v 489.495n 1.8v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 1.8v 519.495n 1.8v 519.505n 1.8v 529.495n 1.8v 529.505n 1.8v 539.495n 1.8v 539.505n 0.0v 549.495n 0.0v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 0.0v 609.495n 0.0v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 1.8v 749.495n 1.8v 749.505n 0.0v 759.495n 0.0v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 1.8v 789.495n 1.8v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 0.0v 819.495n 0.0v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 1.8v 889.495n 1.8v 889.505n 1.8v 899.495n 1.8v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 0.0v 969.495n 0.0v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 1.8v 1009.495n 1.8v 1009.505n 1.8v 1019.495n 1.8v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 1.8v 1169.495n 1.8v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 1.8v 1199.495n 1.8v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 0.0v 1249.495n 0.0v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 1.8v 1289.495n 1.8v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 1.8v 1329.495n 1.8v 1329.505n 1.8v 1339.495n 1.8v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 1.8v 1369.495n 1.8v 1369.505n 1.8v 1379.495n 1.8v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 0.0v 1449.495n 0.0v 1449.505n 0.0v 1459.495n 0.0v 1459.505n 0.0v 1469.495n 0.0v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 0.0v 1489.495n 0.0v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 0.0v 1579.495n 0.0v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 1.8v 1659.495n 1.8v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 0.0v 2029.495n 0.0v 2029.505n 0.0v 2039.495n 0.0v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 0), (20, 1), (30, 0), (40, 0), (50, 1), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 1), (130, 1), (140, 0), (150, 0), (160, 0), (170, 1), (180, 1), (190, 1), (200, 0), (210, 0), (220, 1), (230, 1), (240, 1), (250, 0), (260, 1), (270, 0), (280, 1), (290, 1), (300, 1), (310, 1), (320, 0), (330, 0), (340, 1), (350, 1), (360, 1), (370, 0), (380, 1), (390, 1), (400, 1), (410, 1), (420, 1), (430, 1), (440, 0), (450, 1), (460, 1), (470, 0), (480, 1), (490, 0), (500, 0), (510, 1), (520, 1), (530, 1), (540, 0), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 0), (610, 1), (620, 1), (630, 0), (640, 0), (650, 1), (660, 1), (670, 1), (680, 1), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 1), (750, 0), (760, 1), (770, 1), (780, 1), (790, 1), (800, 1), (810, 0), (820, 1), (830, 1), (840, 1), (850, 0), (860, 1), (870, 1), (880, 1), (890, 1), (900, 1), (910, 1), (920, 1), (930, 1), (940, 1), (950, 1), (960, 0), (970, 1), (980, 1), (990, 1), (1000, 1), (1010, 1), (1020, 0), (1030, 1), (1040, 1), (1050, 0), (1060, 0), (1070, 0), (1080, 0), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 1), (1170, 0), (1180, 0), (1190, 1), (1200, 1), (1210, 0), (1220, 0), (1230, 0), (1240, 0), (1250, 1), (1260, 1), (1270, 0), (1280, 1), (1290, 0), (1300, 1), (1310, 0), (1320, 1), (1330, 1), (1340, 1), (1350, 0), (1360, 1), (1370, 1), (1380, 1), (1390, 1), (1400, 0), (1410, 0), (1420, 0), (1430, 0), (1440, 0), (1450, 0), (1460, 0), (1470, 1), (1480, 0), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 0), (1570, 0), (1580, 1), (1590, 1), (1600, 0), (1610, 0), (1620, 0), (1630, 0), (1640, 0), (1650, 1), (1660, 0), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 0), (1730, 1), (1740, 0), (1750, 1), (1760, 1), (1770, 1), (1780, 1), (1790, 0), (1800, 0), (1810, 0), (1820, 1), (1830, 1), (1840, 1), (1850, 0), (1860, 1), (1870, 1), (1880, 1), (1890, 1), (1900, 0), (1910, 1), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 0), (2010, 1), (2020, 0), (2030, 0), (2040, 1), (2050, 1)]
Va0_8  a0_8  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 1.8v 29.495n 1.8v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 1.8v 59.495n 1.8v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 1.8v 129.495n 1.8v 129.505n 1.8v 139.495n 1.8v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 1.8v 179.495n 1.8v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 0.0v 259.495n 0.0v 259.505n 1.8v 269.495n 1.8v 269.505n 0.0v 279.495n 0.0v 279.505n 1.8v 289.495n 1.8v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 1.8v 349.495n 1.8v 349.505n 1.8v 359.495n 1.8v 359.505n 1.8v 369.495n 1.8v 369.505n 0.0v 379.495n 0.0v 379.505n 1.8v 389.495n 1.8v 389.505n 1.8v 399.495n 1.8v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 1.8v 439.495n 1.8v 439.505n 0.0v 449.495n 0.0v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 0.0v 479.495n 0.0v 479.505n 1.8v 489.495n 1.8v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 1.8v 519.495n 1.8v 519.505n 1.8v 529.495n 1.8v 529.505n 1.8v 539.495n 1.8v 539.505n 0.0v 549.495n 0.0v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 0.0v 609.495n 0.0v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 1.8v 749.495n 1.8v 749.505n 0.0v 759.495n 0.0v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 1.8v 789.495n 1.8v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 0.0v 819.495n 0.0v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 1.8v 889.495n 1.8v 889.505n 1.8v 899.495n 1.8v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 0.0v 969.495n 0.0v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 1.8v 1009.495n 1.8v 1009.505n 1.8v 1019.495n 1.8v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 1.8v 1169.495n 1.8v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 1.8v 1199.495n 1.8v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 0.0v 1249.495n 0.0v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 1.8v 1289.495n 1.8v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 1.8v 1329.495n 1.8v 1329.505n 1.8v 1339.495n 1.8v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 1.8v 1369.495n 1.8v 1369.505n 1.8v 1379.495n 1.8v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 0.0v 1449.495n 0.0v 1449.505n 0.0v 1459.495n 0.0v 1459.505n 0.0v 1469.495n 0.0v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 0.0v 1489.495n 0.0v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 0.0v 1579.495n 0.0v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 1.8v 1659.495n 1.8v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 0.0v 2029.495n 0.0v 2029.505n 0.0v 2039.495n 0.0v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 0), (20, 1), (30, 0), (40, 0), (50, 1), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 1), (130, 1), (140, 0), (150, 0), (160, 0), (170, 1), (180, 1), (190, 1), (200, 0), (210, 0), (220, 1), (230, 1), (240, 1), (250, 0), (260, 1), (270, 0), (280, 1), (290, 1), (300, 1), (310, 1), (320, 0), (330, 0), (340, 1), (350, 1), (360, 1), (370, 0), (380, 1), (390, 1), (400, 1), (410, 1), (420, 1), (430, 1), (440, 0), (450, 1), (460, 1), (470, 0), (480, 1), (490, 0), (500, 0), (510, 1), (520, 1), (530, 1), (540, 0), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 0), (610, 1), (620, 1), (630, 0), (640, 0), (650, 1), (660, 1), (670, 1), (680, 1), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 1), (750, 0), (760, 1), (770, 1), (780, 1), (790, 1), (800, 1), (810, 0), (820, 1), (830, 1), (840, 1), (850, 0), (860, 1), (870, 1), (880, 1), (890, 1), (900, 1), (910, 1), (920, 1), (930, 1), (940, 1), (950, 1), (960, 0), (970, 1), (980, 1), (990, 1), (1000, 1), (1010, 1), (1020, 0), (1030, 1), (1040, 1), (1050, 0), (1060, 0), (1070, 0), (1080, 0), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 1), (1170, 0), (1180, 0), (1190, 1), (1200, 1), (1210, 0), (1220, 0), (1230, 0), (1240, 0), (1250, 1), (1260, 1), (1270, 0), (1280, 1), (1290, 0), (1300, 1), (1310, 0), (1320, 1), (1330, 1), (1340, 1), (1350, 0), (1360, 1), (1370, 1), (1380, 1), (1390, 1), (1400, 0), (1410, 0), (1420, 0), (1430, 0), (1440, 0), (1450, 0), (1460, 0), (1470, 1), (1480, 0), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 0), (1570, 0), (1580, 1), (1590, 1), (1600, 0), (1610, 0), (1620, 0), (1630, 0), (1640, 0), (1650, 1), (1660, 0), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 0), (1730, 1), (1740, 0), (1750, 1), (1760, 1), (1770, 1), (1780, 1), (1790, 0), (1800, 0), (1810, 0), (1820, 1), (1830, 1), (1840, 1), (1850, 0), (1860, 1), (1870, 1), (1880, 1), (1890, 1), (1900, 0), (1910, 1), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 0), (2010, 1), (2020, 0), (2030, 0), (2040, 1), (2050, 1)]
Va0_9  a0_9  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 1.8v 29.495n 1.8v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 1.8v 59.495n 1.8v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 1.8v 129.495n 1.8v 129.505n 1.8v 139.495n 1.8v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 1.8v 179.495n 1.8v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 0.0v 259.495n 0.0v 259.505n 1.8v 269.495n 1.8v 269.505n 0.0v 279.495n 0.0v 279.505n 1.8v 289.495n 1.8v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 1.8v 349.495n 1.8v 349.505n 1.8v 359.495n 1.8v 359.505n 1.8v 369.495n 1.8v 369.505n 0.0v 379.495n 0.0v 379.505n 1.8v 389.495n 1.8v 389.505n 1.8v 399.495n 1.8v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 1.8v 439.495n 1.8v 439.505n 0.0v 449.495n 0.0v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 0.0v 479.495n 0.0v 479.505n 1.8v 489.495n 1.8v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 1.8v 519.495n 1.8v 519.505n 1.8v 529.495n 1.8v 529.505n 1.8v 539.495n 1.8v 539.505n 0.0v 549.495n 0.0v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 0.0v 609.495n 0.0v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 1.8v 749.495n 1.8v 749.505n 0.0v 759.495n 0.0v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 1.8v 789.495n 1.8v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 0.0v 819.495n 0.0v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 1.8v 889.495n 1.8v 889.505n 1.8v 899.495n 1.8v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 0.0v 969.495n 0.0v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 1.8v 1009.495n 1.8v 1009.505n 1.8v 1019.495n 1.8v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 1.8v 1169.495n 1.8v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 1.8v 1199.495n 1.8v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 0.0v 1249.495n 0.0v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 1.8v 1289.495n 1.8v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 1.8v 1329.495n 1.8v 1329.505n 1.8v 1339.495n 1.8v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 1.8v 1369.495n 1.8v 1369.505n 1.8v 1379.495n 1.8v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 0.0v 1449.495n 0.0v 1449.505n 0.0v 1459.495n 0.0v 1459.505n 0.0v 1469.495n 0.0v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 0.0v 1489.495n 0.0v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 0.0v 1579.495n 0.0v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 1.8v 1659.495n 1.8v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 0.0v 2029.495n 0.0v 2029.505n 0.0v 2039.495n 0.0v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 0), (40, 0), (50, 0), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 1), (140, 1), (150, 1), (160, 1), (170, 0), (180, 0), (190, 0), (200, 0), (210, 1), (220, 0), (230, 0), (240, 0), (250, 0), (260, 0), (270, 0), (280, 1), (290, 0), (300, 0), (310, 0), (320, 0), (330, 1), (340, 1), (350, 1), (360, 0), (370, 0), (380, 0), (390, 0), (400, 1), (410, 1), (420, 1), (430, 1), (440, 0), (450, 0), (460, 0), (470, 0), (480, 0), (490, 1), (500, 0), (510, 0), (520, 0), (530, 0), (540, 1), (550, 0), (560, 0), (570, 0), (580, 1), (590, 0), (600, 0), (610, 0), (620, 0), (630, 0), (640, 0), (650, 0), (660, 0), (670, 0), (680, 0), (690, 0), (700, 1), (710, 0), (720, 0), (730, 1), (740, 1), (750, 1), (760, 1), (770, 1), (780, 0), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 0), (850, 1), (860, 1), (870, 1), (880, 1), (890, 0), (900, 0), (910, 0), (920, 1), (930, 0), (940, 0), (950, 0), (960, 1), (970, 1), (980, 1), (990, 0), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 0), (1080, 0), (1090, 1), (1100, 0), (1110, 0), (1120, 0), (1130, 0), (1140, 0), (1150, 0), (1160, 1), (1170, 1), (1180, 1), (1190, 1), (1200, 1), (1210, 1), (1220, 1), (1230, 1), (1240, 1), (1250, 1), (1260, 1), (1270, 1), (1280, 1), (1290, 1), (1300, 1), (1310, 1), (1320, 0), (1330, 0), (1340, 0), (1350, 0), (1360, 0), (1370, 0), (1380, 0), (1390, 0), (1400, 0), (1410, 0), (1420, 0), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 1), (1500, 1), (1510, 0), (1520, 0), (1530, 0), (1540, 0), (1550, 0), (1560, 0), (1570, 0), (1580, 0), (1590, 0), (1600, 0), (1610, 0), (1620, 0), (1630, 1), (1640, 1), (1650, 0), (1660, 0), (1670, 0), (1680, 1), (1690, 1), (1700, 0), (1710, 1), (1720, 1), (1730, 1), (1740, 1), (1750, 0), (1760, 0), (1770, 0), (1780, 1), (1790, 0), (1800, 1), (1810, 1), (1820, 1), (1830, 0), (1840, 0), (1850, 1), (1860, 1), (1870, 0), (1880, 0), (1890, 0), (1900, 0), (1910, 0), (1920, 0), (1930, 0), (1940, 0), (1950, 0), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 1), (2010, 0), (2020, 0), (2030, 0), (2040, 0), (2050, 0)]
Va1_0  a1_0  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 1.8v 139.495n 1.8v 139.505n 1.8v 149.495n 1.8v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 0.0v 179.495n 0.0v 179.505n 0.0v 189.495n 0.0v 189.505n 0.0v 199.495n 0.0v 199.505n 0.0v 209.495n 0.0v 209.505n 1.8v 219.495n 1.8v 219.505n 0.0v 229.495n 0.0v 229.505n 0.0v 239.495n 0.0v 239.505n 0.0v 249.495n 0.0v 249.505n 0.0v 259.495n 0.0v 259.505n 0.0v 269.495n 0.0v 269.505n 0.0v 279.495n 0.0v 279.505n 1.8v 289.495n 1.8v 289.505n 0.0v 299.495n 0.0v 299.505n 0.0v 309.495n 0.0v 309.505n 0.0v 319.495n 0.0v 319.505n 0.0v 329.495n 0.0v 329.505n 1.8v 339.495n 1.8v 339.505n 1.8v 349.495n 1.8v 349.505n 1.8v 359.495n 1.8v 359.505n 0.0v 369.495n 0.0v 369.505n 0.0v 379.495n 0.0v 379.505n 0.0v 389.495n 0.0v 389.505n 0.0v 399.495n 0.0v 399.505n 1.8v 409.495n 1.8v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 1.8v 439.495n 1.8v 439.505n 0.0v 449.495n 0.0v 449.505n 0.0v 459.495n 0.0v 459.505n 0.0v 469.495n 0.0v 469.505n 0.0v 479.495n 0.0v 479.505n 0.0v 489.495n 0.0v 489.505n 1.8v 499.495n 1.8v 499.505n 0.0v 509.495n 0.0v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 0.0v 539.495n 0.0v 539.505n 1.8v 549.495n 1.8v 549.505n 0.0v 559.495n 0.0v 559.505n 0.0v 569.495n 0.0v 569.505n 0.0v 579.495n 0.0v 579.505n 1.8v 589.495n 1.8v 589.505n 0.0v 599.495n 0.0v 599.505n 0.0v 609.495n 0.0v 609.505n 0.0v 619.495n 0.0v 619.505n 0.0v 629.495n 0.0v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 0.0v 659.495n 0.0v 659.505n 0.0v 669.495n 0.0v 669.505n 0.0v 679.495n 0.0v 679.505n 0.0v 689.495n 0.0v 689.505n 0.0v 699.495n 0.0v 699.505n 1.8v 709.495n 1.8v 709.505n 0.0v 719.495n 0.0v 719.505n 0.0v 729.495n 0.0v 729.505n 1.8v 739.495n 1.8v 739.505n 1.8v 749.495n 1.8v 749.505n 1.8v 759.495n 1.8v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 0.0v 789.495n 0.0v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 0.0v 849.495n 0.0v 849.505n 1.8v 859.495n 1.8v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 1.8v 889.495n 1.8v 889.505n 0.0v 899.495n 0.0v 899.505n 0.0v 909.495n 0.0v 909.505n 0.0v 919.495n 0.0v 919.505n 1.8v 929.495n 1.8v 929.505n 0.0v 939.495n 0.0v 939.505n 0.0v 949.495n 0.0v 949.505n 0.0v 959.495n 0.0v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 0.0v 999.495n 0.0v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 0.0v 1109.495n 0.0v 1109.505n 0.0v 1119.495n 0.0v 1119.505n 0.0v 1129.495n 0.0v 1129.505n 0.0v 1139.495n 0.0v 1139.505n 0.0v 1149.495n 0.0v 1149.505n 0.0v 1159.495n 0.0v 1159.505n 1.8v 1169.495n 1.8v 1169.505n 1.8v 1179.495n 1.8v 1179.505n 1.8v 1189.495n 1.8v 1189.505n 1.8v 1199.495n 1.8v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 1.8v 1219.495n 1.8v 1219.505n 1.8v 1229.495n 1.8v 1229.505n 1.8v 1239.495n 1.8v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 1.8v 1279.495n 1.8v 1279.505n 1.8v 1289.495n 1.8v 1289.505n 1.8v 1299.495n 1.8v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 1.8v 1319.495n 1.8v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 0.0v 1399.495n 0.0v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 0.0v 1519.495n 0.0v 1519.505n 0.0v 1529.495n 0.0v 1529.505n 0.0v 1539.495n 0.0v 1539.505n 0.0v 1549.495n 0.0v 1549.505n 0.0v 1559.495n 0.0v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 0.0v 1579.495n 0.0v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 0.0v 1679.495n 0.0v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 0.0v 1709.495n 0.0v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 1.8v 1749.495n 1.8v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 0.0v 1779.495n 0.0v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 1.8v 1809.495n 1.8v 1809.505n 1.8v 1819.495n 1.8v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 0.0v 1839.495n 0.0v 1839.505n 0.0v 1849.495n 0.0v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 0.0v 1889.495n 0.0v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 0.0v 1949.495n 0.0v 1949.505n 0.0v 1959.495n 0.0v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 1.8v 2009.495n 1.8v 2009.505n 0.0v 2019.495n 0.0v 2019.505n 0.0v 2029.495n 0.0v 2029.505n 0.0v 2039.495n 0.0v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 0), (40, 0), (50, 0), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 1), (140, 1), (150, 1), (160, 1), (170, 1), (180, 1), (190, 1), (200, 0), (210, 1), (220, 0), (230, 1), (240, 0), (250, 0), (260, 0), (270, 0), (280, 1), (290, 0), (300, 0), (310, 0), (320, 0), (330, 0), (340, 0), (350, 0), (360, 0), (370, 0), (380, 1), (390, 1), (400, 0), (410, 0), (420, 1), (430, 1), (440, 1), (450, 1), (460, 1), (470, 1), (480, 0), (490, 0), (500, 1), (510, 0), (520, 0), (530, 0), (540, 0), (550, 0), (560, 0), (570, 0), (580, 0), (590, 1), (600, 1), (610, 1), (620, 1), (630, 0), (640, 0), (650, 0), (660, 0), (670, 0), (680, 0), (690, 0), (700, 0), (710, 1), (720, 0), (730, 1), (740, 0), (750, 0), (760, 0), (770, 0), (780, 0), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 0), (860, 0), (870, 0), (880, 0), (890, 1), (900, 1), (910, 1), (920, 0), (930, 0), (940, 0), (950, 0), (960, 0), (970, 0), (980, 0), (990, 1), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 1), (1080, 1), (1090, 0), (1100, 0), (1110, 0), (1120, 0), (1130, 0), (1140, 1), (1150, 1), (1160, 0), (1170, 0), (1180, 0), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 0), (1240, 0), (1250, 0), (1260, 1), (1270, 1), (1280, 1), (1290, 1), (1300, 1), (1310, 1), (1320, 0), (1330, 0), (1340, 0), (1350, 0), (1360, 0), (1370, 0), (1380, 0), (1390, 0), (1400, 0), (1410, 0), (1420, 0), (1430, 1), (1440, 0), (1450, 0), (1460, 0), (1470, 0), (1480, 0), (1490, 0), (1500, 0), (1510, 1), (1520, 0), (1530, 0), (1540, 0), (1550, 0), (1560, 0), (1570, 0), (1580, 1), (1590, 1), (1600, 1), (1610, 1), (1620, 1), (1630, 0), (1640, 0), (1650, 0), (1660, 0), (1670, 0), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 1), (1740, 1), (1750, 0), (1760, 1), (1770, 1), (1780, 0), (1790, 0), (1800, 1), (1810, 1), (1820, 1), (1830, 0), (1840, 0), (1850, 0), (1860, 0), (1870, 1), (1880, 1), (1890, 1), (1900, 1), (1910, 0), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 1), (1970, 1), (1980, 1), (1990, 1), (2000, 1), (2010, 0), (2020, 0), (2030, 0), (2040, 1), (2050, 1)]
Va1_1  a1_1  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 1.8v 139.495n 1.8v 139.505n 1.8v 149.495n 1.8v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 1.8v 179.495n 1.8v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 0.0v 209.495n 0.0v 209.505n 1.8v 219.495n 1.8v 219.505n 0.0v 229.495n 0.0v 229.505n 1.8v 239.495n 1.8v 239.505n 0.0v 249.495n 0.0v 249.505n 0.0v 259.495n 0.0v 259.505n 0.0v 269.495n 0.0v 269.505n 0.0v 279.495n 0.0v 279.505n 1.8v 289.495n 1.8v 289.505n 0.0v 299.495n 0.0v 299.505n 0.0v 309.495n 0.0v 309.505n 0.0v 319.495n 0.0v 319.505n 0.0v 329.495n 0.0v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 0.0v 359.495n 0.0v 359.505n 0.0v 369.495n 0.0v 369.505n 0.0v 379.495n 0.0v 379.505n 1.8v 389.495n 1.8v 389.505n 1.8v 399.495n 1.8v 399.505n 0.0v 409.495n 0.0v 409.505n 0.0v 419.495n 0.0v 419.505n 1.8v 429.495n 1.8v 429.505n 1.8v 439.495n 1.8v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 1.8v 479.495n 1.8v 479.505n 0.0v 489.495n 0.0v 489.505n 0.0v 499.495n 0.0v 499.505n 1.8v 509.495n 1.8v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 0.0v 539.495n 0.0v 539.505n 0.0v 549.495n 0.0v 549.505n 0.0v 559.495n 0.0v 559.505n 0.0v 569.495n 0.0v 569.505n 0.0v 579.495n 0.0v 579.505n 0.0v 589.495n 0.0v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 0.0v 659.495n 0.0v 659.505n 0.0v 669.495n 0.0v 669.505n 0.0v 679.495n 0.0v 679.505n 0.0v 689.495n 0.0v 689.505n 0.0v 699.495n 0.0v 699.505n 0.0v 709.495n 0.0v 709.505n 1.8v 719.495n 1.8v 719.505n 0.0v 729.495n 0.0v 729.505n 1.8v 739.495n 1.8v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 0.0v 789.495n 0.0v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 0.0v 879.495n 0.0v 879.505n 0.0v 889.495n 0.0v 889.505n 1.8v 899.495n 1.8v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 0.0v 929.495n 0.0v 929.505n 0.0v 939.495n 0.0v 939.505n 0.0v 949.495n 0.0v 949.505n 0.0v 959.495n 0.0v 959.505n 0.0v 969.495n 0.0v 969.505n 0.0v 979.495n 0.0v 979.505n 0.0v 989.495n 0.0v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 0.0v 1099.495n 0.0v 1099.505n 0.0v 1109.495n 0.0v 1109.505n 0.0v 1119.495n 0.0v 1119.505n 0.0v 1129.495n 0.0v 1129.505n 0.0v 1139.495n 0.0v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 0.0v 1249.495n 0.0v 1249.505n 0.0v 1259.495n 0.0v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 1.8v 1279.495n 1.8v 1279.505n 1.8v 1289.495n 1.8v 1289.505n 1.8v 1299.495n 1.8v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 1.8v 1319.495n 1.8v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 0.0v 1399.495n 0.0v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 0.0v 1419.495n 0.0v 1419.505n 0.0v 1429.495n 0.0v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 0.0v 1449.495n 0.0v 1449.505n 0.0v 1459.495n 0.0v 1459.505n 0.0v 1469.495n 0.0v 1469.505n 0.0v 1479.495n 0.0v 1479.505n 0.0v 1489.495n 0.0v 1489.505n 0.0v 1499.495n 0.0v 1499.505n 0.0v 1509.495n 0.0v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 0.0v 1529.495n 0.0v 1529.505n 0.0v 1539.495n 0.0v 1539.505n 0.0v 1549.495n 0.0v 1549.505n 0.0v 1559.495n 0.0v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 0.0v 1579.495n 0.0v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 1.8v 1609.495n 1.8v 1609.505n 1.8v 1619.495n 1.8v 1619.505n 1.8v 1629.495n 1.8v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 0.0v 1679.495n 0.0v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 1.8v 1749.495n 1.8v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 1.8v 1809.495n 1.8v 1809.505n 1.8v 1819.495n 1.8v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 0.0v 1839.495n 0.0v 1839.505n 0.0v 1849.495n 0.0v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 0.0v 1869.495n 0.0v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 1.8v 1909.495n 1.8v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 1.8v 1969.495n 1.8v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 1.8v 2009.495n 1.8v 2009.505n 0.0v 2019.495n 0.0v 2019.505n 0.0v 2029.495n 0.0v 2029.505n 0.0v 2039.495n 0.0v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 0), (40, 0), (50, 0), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 1), (140, 0), (150, 0), (160, 0), (170, 1), (180, 1), (190, 1), (200, 0), (210, 1), (220, 1), (230, 1), (240, 1), (250, 1), (260, 1), (270, 1), (280, 1), (290, 1), (300, 1), (310, 1), (320, 1), (330, 0), (340, 0), (350, 0), (360, 1), (370, 1), (380, 1), (390, 1), (400, 0), (410, 0), (420, 0), (430, 1), (440, 1), (450, 1), (460, 1), (470, 1), (480, 0), (490, 0), (500, 1), (510, 0), (520, 0), (530, 0), (540, 1), (550, 1), (560, 1), (570, 1), (580, 0), (590, 0), (600, 0), (610, 0), (620, 0), (630, 0), (640, 0), (650, 0), (660, 0), (670, 0), (680, 0), (690, 0), (700, 1), (710, 1), (720, 0), (730, 1), (740, 0), (750, 0), (760, 0), (770, 1), (780, 0), (790, 0), (800, 0), (810, 0), (820, 0), (830, 0), (840, 1), (850, 0), (860, 1), (870, 1), (880, 1), (890, 1), (900, 1), (910, 1), (920, 1), (930, 0), (940, 0), (950, 0), (960, 0), (970, 0), (980, 0), (990, 0), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 1), (1080, 1), (1090, 0), (1100, 0), (1110, 1), (1120, 1), (1130, 1), (1140, 0), (1150, 0), (1160, 0), (1170, 0), (1180, 0), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 0), (1240, 0), (1250, 0), (1260, 1), (1270, 1), (1280, 1), (1290, 1), (1300, 1), (1310, 1), (1320, 0), (1330, 0), (1340, 0), (1350, 1), (1360, 1), (1370, 1), (1380, 1), (1390, 1), (1400, 1), (1410, 1), (1420, 1), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 1), (1500, 1), (1510, 1), (1520, 0), (1530, 0), (1540, 0), (1550, 0), (1560, 0), (1570, 1), (1580, 1), (1590, 1), (1600, 1), (1610, 1), (1620, 1), (1630, 1), (1640, 1), (1650, 0), (1660, 0), (1670, 0), (1680, 0), (1690, 0), (1700, 0), (1710, 0), (1720, 0), (1730, 1), (1740, 1), (1750, 1), (1760, 1), (1770, 1), (1780, 0), (1790, 1), (1800, 1), (1810, 1), (1820, 1), (1830, 1), (1840, 1), (1850, 0), (1860, 0), (1870, 1), (1880, 1), (1890, 1), (1900, 0), (1910, 1), (1920, 1), (1930, 1), (1940, 1), (1950, 1), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 0), (2010, 1), (2020, 1), (2030, 1), (2040, 0), (2050, 0)]
Va1_2  a1_2  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 1.8v 139.495n 1.8v 139.505n 0.0v 149.495n 0.0v 149.505n 0.0v 159.495n 0.0v 159.505n 0.0v 169.495n 0.0v 169.505n 1.8v 179.495n 1.8v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 0.0v 209.495n 0.0v 209.505n 1.8v 219.495n 1.8v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 1.8v 289.495n 1.8v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 0.0v 359.495n 0.0v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 1.8v 389.495n 1.8v 389.505n 1.8v 399.495n 1.8v 399.505n 0.0v 409.495n 0.0v 409.505n 0.0v 419.495n 0.0v 419.505n 0.0v 429.495n 0.0v 429.505n 1.8v 439.495n 1.8v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 1.8v 479.495n 1.8v 479.505n 0.0v 489.495n 0.0v 489.505n 0.0v 499.495n 0.0v 499.505n 1.8v 509.495n 1.8v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 0.0v 539.495n 0.0v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 0.0v 589.495n 0.0v 589.505n 0.0v 599.495n 0.0v 599.505n 0.0v 609.495n 0.0v 609.505n 0.0v 619.495n 0.0v 619.505n 0.0v 629.495n 0.0v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 0.0v 659.495n 0.0v 659.505n 0.0v 669.495n 0.0v 669.505n 0.0v 679.495n 0.0v 679.505n 0.0v 689.495n 0.0v 689.505n 0.0v 699.495n 0.0v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 0.0v 729.495n 0.0v 729.505n 1.8v 739.495n 1.8v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 1.8v 779.495n 1.8v 779.505n 0.0v 789.495n 0.0v 789.505n 0.0v 799.495n 0.0v 799.505n 0.0v 809.495n 0.0v 809.505n 0.0v 819.495n 0.0v 819.505n 0.0v 829.495n 0.0v 829.505n 0.0v 839.495n 0.0v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 1.8v 889.495n 1.8v 889.505n 1.8v 899.495n 1.8v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 0.0v 939.495n 0.0v 939.505n 0.0v 949.495n 0.0v 949.505n 0.0v 959.495n 0.0v 959.505n 0.0v 969.495n 0.0v 969.505n 0.0v 979.495n 0.0v 979.505n 0.0v 989.495n 0.0v 989.505n 0.0v 999.495n 0.0v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 0.0v 1099.495n 0.0v 1099.505n 0.0v 1109.495n 0.0v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 0.0v 1149.495n 0.0v 1149.505n 0.0v 1159.495n 0.0v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 0.0v 1249.495n 0.0v 1249.505n 0.0v 1259.495n 0.0v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 1.8v 1279.495n 1.8v 1279.505n 1.8v 1289.495n 1.8v 1289.505n 1.8v 1299.495n 1.8v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 1.8v 1319.495n 1.8v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 1.8v 1359.495n 1.8v 1359.505n 1.8v 1369.495n 1.8v 1369.505n 1.8v 1379.495n 1.8v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 1.8v 1409.495n 1.8v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 0.0v 1529.495n 0.0v 1529.505n 0.0v 1539.495n 0.0v 1539.505n 0.0v 1549.495n 0.0v 1549.505n 0.0v 1559.495n 0.0v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 1.8v 1589.495n 1.8v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 1.8v 1609.495n 1.8v 1609.505n 1.8v 1619.495n 1.8v 1619.505n 1.8v 1629.495n 1.8v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 0.0v 1679.495n 0.0v 1679.505n 0.0v 1689.495n 0.0v 1689.505n 0.0v 1699.495n 0.0v 1699.505n 0.0v 1709.495n 0.0v 1709.505n 0.0v 1719.495n 0.0v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 1.8v 1749.495n 1.8v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 1.8v 1809.495n 1.8v 1809.505n 1.8v 1819.495n 1.8v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 0.0v 1869.495n 0.0v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 1.8v 1929.495n 1.8v 1929.505n 1.8v 1939.495n 1.8v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 0), (40, 0), (50, 0), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 0), (140, 1), (150, 1), (160, 1), (170, 0), (180, 0), (190, 0), (200, 0), (210, 0), (220, 1), (230, 0), (240, 1), (250, 1), (260, 1), (270, 1), (280, 0), (290, 1), (300, 1), (310, 1), (320, 1), (330, 0), (340, 0), (350, 0), (360, 1), (370, 1), (380, 0), (390, 0), (400, 0), (410, 0), (420, 1), (430, 0), (440, 1), (450, 1), (460, 1), (470, 1), (480, 1), (490, 1), (500, 0), (510, 0), (520, 0), (530, 0), (540, 1), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 1), (610, 1), (620, 1), (630, 0), (640, 1), (650, 1), (660, 1), (670, 1), (680, 1), (690, 0), (700, 1), (710, 0), (720, 1), (730, 0), (740, 0), (750, 0), (760, 0), (770, 0), (780, 0), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 0), (860, 0), (870, 0), (880, 0), (890, 0), (900, 0), (910, 0), (920, 0), (930, 0), (940, 1), (950, 1), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 1), (1080, 1), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 0), (1170, 0), (1180, 0), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 0), (1240, 1), (1250, 1), (1260, 0), (1270, 0), (1280, 0), (1290, 0), (1300, 0), (1310, 0), (1320, 0), (1330, 0), (1340, 0), (1350, 0), (1360, 0), (1370, 0), (1380, 0), (1390, 0), (1400, 1), (1410, 1), (1420, 1), (1430, 0), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 1), (1570, 1), (1580, 0), (1590, 0), (1600, 0), (1610, 0), (1620, 0), (1630, 1), (1640, 1), (1650, 0), (1660, 1), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 0), (1740, 0), (1750, 0), (1760, 0), (1770, 0), (1780, 0), (1790, 1), (1800, 0), (1810, 0), (1820, 0), (1830, 1), (1840, 1), (1850, 1), (1860, 1), (1870, 0), (1880, 0), (1890, 0), (1900, 1), (1910, 0), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 0), (2010, 1), (2020, 1), (2030, 1), (2040, 0), (2050, 0)]
Va1_3  a1_3  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 0.0v 139.495n 0.0v 139.505n 1.8v 149.495n 1.8v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 0.0v 179.495n 0.0v 179.505n 0.0v 189.495n 0.0v 189.505n 0.0v 199.495n 0.0v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 0.0v 239.495n 0.0v 239.505n 1.8v 249.495n 1.8v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 0.0v 289.495n 0.0v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 0.0v 359.495n 0.0v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 0.0v 389.495n 0.0v 389.505n 0.0v 399.495n 0.0v 399.505n 0.0v 409.495n 0.0v 409.505n 0.0v 419.495n 0.0v 419.505n 1.8v 429.495n 1.8v 429.505n 0.0v 439.495n 0.0v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 1.8v 479.495n 1.8v 479.505n 1.8v 489.495n 1.8v 489.505n 1.8v 499.495n 1.8v 499.505n 0.0v 509.495n 0.0v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 0.0v 539.495n 0.0v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 1.8v 649.495n 1.8v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 0.0v 699.495n 0.0v 699.505n 1.8v 709.495n 1.8v 709.505n 0.0v 719.495n 0.0v 719.505n 1.8v 729.495n 1.8v 729.505n 0.0v 739.495n 0.0v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 0.0v 789.495n 0.0v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 0.0v 879.495n 0.0v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 0.0v 909.495n 0.0v 909.505n 0.0v 919.495n 0.0v 919.505n 0.0v 929.495n 0.0v 929.505n 0.0v 939.495n 0.0v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 0.0v 1269.495n 0.0v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 0.0v 1399.495n 0.0v 1399.505n 1.8v 1409.495n 1.8v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 0.0v 1739.495n 0.0v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 0.0v 1779.495n 0.0v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 0.0v 1829.495n 0.0v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 0.0v 1889.495n 0.0v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 1.8v 1909.495n 1.8v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 0), (40, 0), (50, 0), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 0), (140, 1), (150, 1), (160, 1), (170, 0), (180, 0), (190, 0), (200, 0), (210, 0), (220, 1), (230, 0), (240, 1), (250, 1), (260, 1), (270, 1), (280, 0), (290, 1), (300, 1), (310, 1), (320, 1), (330, 0), (340, 0), (350, 0), (360, 1), (370, 1), (380, 0), (390, 0), (400, 0), (410, 0), (420, 1), (430, 0), (440, 1), (450, 1), (460, 1), (470, 1), (480, 1), (490, 1), (500, 0), (510, 0), (520, 0), (530, 0), (540, 1), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 1), (610, 1), (620, 1), (630, 0), (640, 1), (650, 1), (660, 1), (670, 1), (680, 1), (690, 0), (700, 1), (710, 0), (720, 1), (730, 0), (740, 0), (750, 0), (760, 0), (770, 0), (780, 0), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 0), (860, 0), (870, 0), (880, 0), (890, 0), (900, 0), (910, 0), (920, 0), (930, 0), (940, 1), (950, 1), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 1), (1080, 1), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 0), (1170, 0), (1180, 0), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 0), (1240, 1), (1250, 1), (1260, 0), (1270, 0), (1280, 0), (1290, 0), (1300, 0), (1310, 0), (1320, 0), (1330, 0), (1340, 0), (1350, 0), (1360, 0), (1370, 0), (1380, 0), (1390, 0), (1400, 1), (1410, 1), (1420, 1), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 1), (1570, 1), (1580, 0), (1590, 0), (1600, 0), (1610, 0), (1620, 0), (1630, 1), (1640, 1), (1650, 0), (1660, 1), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 0), (1740, 0), (1750, 0), (1760, 0), (1770, 0), (1780, 0), (1790, 1), (1800, 0), (1810, 0), (1820, 0), (1830, 1), (1840, 1), (1850, 1), (1860, 1), (1870, 0), (1880, 0), (1890, 0), (1900, 1), (1910, 0), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 0), (2010, 1), (2020, 1), (2030, 1), (2040, 0), (2050, 0)]
Va1_4  a1_4  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 0.0v 139.495n 0.0v 139.505n 1.8v 149.495n 1.8v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 0.0v 179.495n 0.0v 179.505n 0.0v 189.495n 0.0v 189.505n 0.0v 199.495n 0.0v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 0.0v 239.495n 0.0v 239.505n 1.8v 249.495n 1.8v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 0.0v 289.495n 0.0v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 0.0v 359.495n 0.0v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 0.0v 389.495n 0.0v 389.505n 0.0v 399.495n 0.0v 399.505n 0.0v 409.495n 0.0v 409.505n 0.0v 419.495n 0.0v 419.505n 1.8v 429.495n 1.8v 429.505n 0.0v 439.495n 0.0v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 1.8v 479.495n 1.8v 479.505n 1.8v 489.495n 1.8v 489.505n 1.8v 499.495n 1.8v 499.505n 0.0v 509.495n 0.0v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 0.0v 539.495n 0.0v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 1.8v 649.495n 1.8v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 0.0v 699.495n 0.0v 699.505n 1.8v 709.495n 1.8v 709.505n 0.0v 719.495n 0.0v 719.505n 1.8v 729.495n 1.8v 729.505n 0.0v 739.495n 0.0v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 0.0v 789.495n 0.0v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 0.0v 879.495n 0.0v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 0.0v 909.495n 0.0v 909.505n 0.0v 919.495n 0.0v 919.505n 0.0v 929.495n 0.0v 929.505n 0.0v 939.495n 0.0v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 0.0v 1269.495n 0.0v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 0.0v 1399.495n 0.0v 1399.505n 1.8v 1409.495n 1.8v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 0.0v 1739.495n 0.0v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 0.0v 1779.495n 0.0v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 0.0v 1829.495n 0.0v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 0.0v 1889.495n 0.0v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 1.8v 1909.495n 1.8v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 0), (40, 0), (50, 0), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 0), (140, 1), (150, 1), (160, 1), (170, 0), (180, 0), (190, 0), (200, 0), (210, 0), (220, 1), (230, 0), (240, 1), (250, 1), (260, 1), (270, 1), (280, 0), (290, 1), (300, 1), (310, 1), (320, 1), (330, 0), (340, 0), (350, 0), (360, 1), (370, 1), (380, 0), (390, 0), (400, 0), (410, 0), (420, 1), (430, 0), (440, 1), (450, 1), (460, 1), (470, 1), (480, 1), (490, 1), (500, 0), (510, 0), (520, 0), (530, 0), (540, 1), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 1), (610, 1), (620, 1), (630, 0), (640, 1), (650, 1), (660, 1), (670, 1), (680, 1), (690, 0), (700, 1), (710, 0), (720, 1), (730, 0), (740, 0), (750, 0), (760, 0), (770, 0), (780, 0), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 0), (860, 0), (870, 0), (880, 0), (890, 0), (900, 0), (910, 0), (920, 0), (930, 0), (940, 1), (950, 1), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 1), (1080, 1), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 0), (1170, 0), (1180, 0), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 0), (1240, 1), (1250, 1), (1260, 0), (1270, 0), (1280, 0), (1290, 0), (1300, 0), (1310, 0), (1320, 0), (1330, 0), (1340, 0), (1350, 0), (1360, 0), (1370, 0), (1380, 0), (1390, 0), (1400, 1), (1410, 1), (1420, 1), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 1), (1570, 1), (1580, 0), (1590, 0), (1600, 0), (1610, 0), (1620, 0), (1630, 1), (1640, 1), (1650, 0), (1660, 1), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 0), (1740, 0), (1750, 0), (1760, 0), (1770, 0), (1780, 0), (1790, 1), (1800, 0), (1810, 0), (1820, 0), (1830, 1), (1840, 1), (1850, 1), (1860, 1), (1870, 0), (1880, 0), (1890, 0), (1900, 1), (1910, 0), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 0), (2010, 1), (2020, 1), (2030, 1), (2040, 0), (2050, 0)]
Va1_5  a1_5  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 0.0v 139.495n 0.0v 139.505n 1.8v 149.495n 1.8v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 0.0v 179.495n 0.0v 179.505n 0.0v 189.495n 0.0v 189.505n 0.0v 199.495n 0.0v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 0.0v 239.495n 0.0v 239.505n 1.8v 249.495n 1.8v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 0.0v 289.495n 0.0v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 0.0v 359.495n 0.0v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 0.0v 389.495n 0.0v 389.505n 0.0v 399.495n 0.0v 399.505n 0.0v 409.495n 0.0v 409.505n 0.0v 419.495n 0.0v 419.505n 1.8v 429.495n 1.8v 429.505n 0.0v 439.495n 0.0v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 1.8v 479.495n 1.8v 479.505n 1.8v 489.495n 1.8v 489.505n 1.8v 499.495n 1.8v 499.505n 0.0v 509.495n 0.0v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 0.0v 539.495n 0.0v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 1.8v 649.495n 1.8v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 0.0v 699.495n 0.0v 699.505n 1.8v 709.495n 1.8v 709.505n 0.0v 719.495n 0.0v 719.505n 1.8v 729.495n 1.8v 729.505n 0.0v 739.495n 0.0v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 0.0v 789.495n 0.0v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 0.0v 879.495n 0.0v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 0.0v 909.495n 0.0v 909.505n 0.0v 919.495n 0.0v 919.505n 0.0v 929.495n 0.0v 929.505n 0.0v 939.495n 0.0v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 0.0v 1269.495n 0.0v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 0.0v 1399.495n 0.0v 1399.505n 1.8v 1409.495n 1.8v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 0.0v 1739.495n 0.0v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 0.0v 1779.495n 0.0v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 0.0v 1829.495n 0.0v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 0.0v 1889.495n 0.0v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 1.8v 1909.495n 1.8v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 0), (40, 0), (50, 0), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 0), (140, 1), (150, 1), (160, 1), (170, 0), (180, 0), (190, 0), (200, 0), (210, 0), (220, 1), (230, 0), (240, 1), (250, 1), (260, 1), (270, 1), (280, 0), (290, 1), (300, 1), (310, 1), (320, 1), (330, 0), (340, 0), (350, 0), (360, 1), (370, 1), (380, 0), (390, 0), (400, 0), (410, 0), (420, 1), (430, 0), (440, 1), (450, 1), (460, 1), (470, 1), (480, 1), (490, 1), (500, 0), (510, 0), (520, 0), (530, 0), (540, 1), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 1), (610, 1), (620, 1), (630, 0), (640, 1), (650, 1), (660, 1), (670, 1), (680, 1), (690, 0), (700, 1), (710, 0), (720, 1), (730, 0), (740, 0), (750, 0), (760, 0), (770, 0), (780, 0), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 0), (860, 0), (870, 0), (880, 0), (890, 0), (900, 0), (910, 0), (920, 0), (930, 0), (940, 1), (950, 1), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 1), (1080, 1), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 0), (1170, 0), (1180, 0), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 0), (1240, 1), (1250, 1), (1260, 0), (1270, 0), (1280, 0), (1290, 0), (1300, 0), (1310, 0), (1320, 0), (1330, 0), (1340, 0), (1350, 0), (1360, 0), (1370, 0), (1380, 0), (1390, 0), (1400, 1), (1410, 1), (1420, 1), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 1), (1570, 1), (1580, 0), (1590, 0), (1600, 0), (1610, 0), (1620, 0), (1630, 1), (1640, 1), (1650, 0), (1660, 1), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 0), (1740, 0), (1750, 0), (1760, 0), (1770, 0), (1780, 0), (1790, 1), (1800, 0), (1810, 0), (1820, 0), (1830, 1), (1840, 1), (1850, 1), (1860, 1), (1870, 0), (1880, 0), (1890, 0), (1900, 1), (1910, 0), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 0), (2010, 1), (2020, 1), (2030, 1), (2040, 0), (2050, 0)]
Va1_6  a1_6  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 0.0v 139.495n 0.0v 139.505n 1.8v 149.495n 1.8v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 0.0v 179.495n 0.0v 179.505n 0.0v 189.495n 0.0v 189.505n 0.0v 199.495n 0.0v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 0.0v 239.495n 0.0v 239.505n 1.8v 249.495n 1.8v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 0.0v 289.495n 0.0v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 0.0v 359.495n 0.0v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 0.0v 389.495n 0.0v 389.505n 0.0v 399.495n 0.0v 399.505n 0.0v 409.495n 0.0v 409.505n 0.0v 419.495n 0.0v 419.505n 1.8v 429.495n 1.8v 429.505n 0.0v 439.495n 0.0v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 1.8v 479.495n 1.8v 479.505n 1.8v 489.495n 1.8v 489.505n 1.8v 499.495n 1.8v 499.505n 0.0v 509.495n 0.0v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 0.0v 539.495n 0.0v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 1.8v 649.495n 1.8v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 0.0v 699.495n 0.0v 699.505n 1.8v 709.495n 1.8v 709.505n 0.0v 719.495n 0.0v 719.505n 1.8v 729.495n 1.8v 729.505n 0.0v 739.495n 0.0v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 0.0v 789.495n 0.0v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 0.0v 879.495n 0.0v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 0.0v 909.495n 0.0v 909.505n 0.0v 919.495n 0.0v 919.505n 0.0v 929.495n 0.0v 929.505n 0.0v 939.495n 0.0v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 0.0v 1269.495n 0.0v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 0.0v 1399.495n 0.0v 1399.505n 1.8v 1409.495n 1.8v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 0.0v 1739.495n 0.0v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 0.0v 1779.495n 0.0v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 0.0v 1829.495n 0.0v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 0.0v 1889.495n 0.0v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 1.8v 1909.495n 1.8v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 0), (40, 0), (50, 0), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 0), (140, 1), (150, 1), (160, 1), (170, 0), (180, 0), (190, 0), (200, 0), (210, 0), (220, 1), (230, 0), (240, 1), (250, 1), (260, 1), (270, 1), (280, 0), (290, 1), (300, 1), (310, 1), (320, 1), (330, 0), (340, 0), (350, 0), (360, 1), (370, 1), (380, 0), (390, 0), (400, 0), (410, 0), (420, 1), (430, 0), (440, 1), (450, 1), (460, 1), (470, 1), (480, 1), (490, 1), (500, 0), (510, 0), (520, 0), (530, 0), (540, 1), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 1), (610, 1), (620, 1), (630, 0), (640, 1), (650, 1), (660, 1), (670, 1), (680, 1), (690, 0), (700, 1), (710, 0), (720, 1), (730, 0), (740, 0), (750, 0), (760, 0), (770, 0), (780, 0), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 0), (860, 0), (870, 0), (880, 0), (890, 0), (900, 0), (910, 0), (920, 0), (930, 0), (940, 1), (950, 1), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 1), (1080, 1), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 0), (1170, 0), (1180, 0), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 0), (1240, 1), (1250, 1), (1260, 0), (1270, 0), (1280, 0), (1290, 0), (1300, 0), (1310, 0), (1320, 0), (1330, 0), (1340, 0), (1350, 0), (1360, 0), (1370, 0), (1380, 0), (1390, 0), (1400, 1), (1410, 1), (1420, 1), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 1), (1570, 1), (1580, 0), (1590, 0), (1600, 0), (1610, 0), (1620, 0), (1630, 1), (1640, 1), (1650, 0), (1660, 1), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 0), (1740, 0), (1750, 0), (1760, 0), (1770, 0), (1780, 0), (1790, 1), (1800, 0), (1810, 0), (1820, 0), (1830, 1), (1840, 1), (1850, 1), (1860, 1), (1870, 0), (1880, 0), (1890, 0), (1900, 1), (1910, 0), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 0), (2010, 1), (2020, 1), (2030, 1), (2040, 0), (2050, 0)]
Va1_7  a1_7  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 0.0v 139.495n 0.0v 139.505n 1.8v 149.495n 1.8v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 0.0v 179.495n 0.0v 179.505n 0.0v 189.495n 0.0v 189.505n 0.0v 199.495n 0.0v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 0.0v 239.495n 0.0v 239.505n 1.8v 249.495n 1.8v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 0.0v 289.495n 0.0v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 0.0v 359.495n 0.0v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 0.0v 389.495n 0.0v 389.505n 0.0v 399.495n 0.0v 399.505n 0.0v 409.495n 0.0v 409.505n 0.0v 419.495n 0.0v 419.505n 1.8v 429.495n 1.8v 429.505n 0.0v 439.495n 0.0v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 1.8v 479.495n 1.8v 479.505n 1.8v 489.495n 1.8v 489.505n 1.8v 499.495n 1.8v 499.505n 0.0v 509.495n 0.0v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 0.0v 539.495n 0.0v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 1.8v 649.495n 1.8v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 0.0v 699.495n 0.0v 699.505n 1.8v 709.495n 1.8v 709.505n 0.0v 719.495n 0.0v 719.505n 1.8v 729.495n 1.8v 729.505n 0.0v 739.495n 0.0v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 0.0v 789.495n 0.0v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 0.0v 879.495n 0.0v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 0.0v 909.495n 0.0v 909.505n 0.0v 919.495n 0.0v 919.505n 0.0v 929.495n 0.0v 929.505n 0.0v 939.495n 0.0v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 0.0v 1269.495n 0.0v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 0.0v 1399.495n 0.0v 1399.505n 1.8v 1409.495n 1.8v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 0.0v 1739.495n 0.0v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 0.0v 1779.495n 0.0v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 0.0v 1829.495n 0.0v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 0.0v 1889.495n 0.0v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 1.8v 1909.495n 1.8v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 0), (40, 0), (50, 0), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 0), (140, 1), (150, 1), (160, 1), (170, 0), (180, 0), (190, 0), (200, 0), (210, 0), (220, 1), (230, 0), (240, 1), (250, 1), (260, 1), (270, 1), (280, 0), (290, 1), (300, 1), (310, 1), (320, 1), (330, 0), (340, 0), (350, 0), (360, 1), (370, 1), (380, 0), (390, 0), (400, 0), (410, 0), (420, 1), (430, 0), (440, 1), (450, 1), (460, 1), (470, 1), (480, 1), (490, 1), (500, 0), (510, 0), (520, 0), (530, 0), (540, 1), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 1), (610, 1), (620, 1), (630, 0), (640, 1), (650, 1), (660, 1), (670, 1), (680, 1), (690, 0), (700, 1), (710, 0), (720, 1), (730, 0), (740, 0), (750, 0), (760, 0), (770, 0), (780, 0), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 0), (860, 0), (870, 0), (880, 0), (890, 0), (900, 0), (910, 0), (920, 0), (930, 0), (940, 1), (950, 1), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 1), (1080, 1), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 0), (1170, 0), (1180, 0), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 0), (1240, 1), (1250, 1), (1260, 0), (1270, 0), (1280, 0), (1290, 0), (1300, 0), (1310, 0), (1320, 0), (1330, 0), (1340, 0), (1350, 0), (1360, 0), (1370, 0), (1380, 0), (1390, 0), (1400, 1), (1410, 1), (1420, 1), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 1), (1570, 1), (1580, 0), (1590, 0), (1600, 0), (1610, 0), (1620, 0), (1630, 1), (1640, 1), (1650, 0), (1660, 1), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 0), (1740, 0), (1750, 0), (1760, 0), (1770, 0), (1780, 0), (1790, 1), (1800, 0), (1810, 0), (1820, 0), (1830, 1), (1840, 1), (1850, 1), (1860, 1), (1870, 0), (1880, 0), (1890, 0), (1900, 1), (1910, 0), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 0), (2010, 1), (2020, 1), (2030, 1), (2040, 0), (2050, 0)]
Va1_8  a1_8  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 0.0v 139.495n 0.0v 139.505n 1.8v 149.495n 1.8v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 0.0v 179.495n 0.0v 179.505n 0.0v 189.495n 0.0v 189.505n 0.0v 199.495n 0.0v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 0.0v 239.495n 0.0v 239.505n 1.8v 249.495n 1.8v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 0.0v 289.495n 0.0v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 0.0v 359.495n 0.0v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 0.0v 389.495n 0.0v 389.505n 0.0v 399.495n 0.0v 399.505n 0.0v 409.495n 0.0v 409.505n 0.0v 419.495n 0.0v 419.505n 1.8v 429.495n 1.8v 429.505n 0.0v 439.495n 0.0v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 1.8v 479.495n 1.8v 479.505n 1.8v 489.495n 1.8v 489.505n 1.8v 499.495n 1.8v 499.505n 0.0v 509.495n 0.0v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 0.0v 539.495n 0.0v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 1.8v 649.495n 1.8v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 0.0v 699.495n 0.0v 699.505n 1.8v 709.495n 1.8v 709.505n 0.0v 719.495n 0.0v 719.505n 1.8v 729.495n 1.8v 729.505n 0.0v 739.495n 0.0v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 0.0v 789.495n 0.0v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 0.0v 879.495n 0.0v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 0.0v 909.495n 0.0v 909.505n 0.0v 919.495n 0.0v 919.505n 0.0v 929.495n 0.0v 929.505n 0.0v 939.495n 0.0v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 0.0v 1269.495n 0.0v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 0.0v 1399.495n 0.0v 1399.505n 1.8v 1409.495n 1.8v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 0.0v 1739.495n 0.0v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 0.0v 1779.495n 0.0v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 0.0v 1829.495n 0.0v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 0.0v 1889.495n 0.0v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 1.8v 1909.495n 1.8v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )
* (time, data): [(0, 0), (10, 0), (20, 0), (30, 0), (40, 0), (50, 0), (60, 0), (70, 0), (80, 0), (90, 0), (100, 0), (110, 0), (120, 0), (130, 0), (140, 1), (150, 1), (160, 1), (170, 0), (180, 0), (190, 0), (200, 0), (210, 0), (220, 1), (230, 0), (240, 1), (250, 1), (260, 1), (270, 1), (280, 0), (290, 1), (300, 1), (310, 1), (320, 1), (330, 0), (340, 0), (350, 0), (360, 1), (370, 1), (380, 0), (390, 0), (400, 0), (410, 0), (420, 1), (430, 0), (440, 1), (450, 1), (460, 1), (470, 1), (480, 1), (490, 1), (500, 0), (510, 0), (520, 0), (530, 0), (540, 1), (550, 1), (560, 1), (570, 1), (580, 1), (590, 1), (600, 1), (610, 1), (620, 1), (630, 0), (640, 1), (650, 1), (660, 1), (670, 1), (680, 1), (690, 0), (700, 1), (710, 0), (720, 1), (730, 0), (740, 0), (750, 0), (760, 0), (770, 0), (780, 0), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 0), (860, 0), (870, 0), (880, 0), (890, 0), (900, 0), (910, 0), (920, 0), (930, 0), (940, 1), (950, 1), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 0), (1050, 0), (1060, 0), (1070, 1), (1080, 1), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 0), (1170, 0), (1180, 0), (1190, 0), (1200, 0), (1210, 0), (1220, 0), (1230, 0), (1240, 1), (1250, 1), (1260, 0), (1270, 0), (1280, 0), (1290, 0), (1300, 0), (1310, 0), (1320, 0), (1330, 0), (1340, 0), (1350, 0), (1360, 0), (1370, 0), (1380, 0), (1390, 0), (1400, 1), (1410, 1), (1420, 1), (1430, 1), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 1), (1500, 1), (1510, 1), (1520, 1), (1530, 1), (1540, 1), (1550, 1), (1560, 1), (1570, 1), (1580, 0), (1590, 0), (1600, 0), (1610, 0), (1620, 0), (1630, 1), (1640, 1), (1650, 0), (1660, 1), (1670, 1), (1680, 1), (1690, 1), (1700, 1), (1710, 1), (1720, 1), (1730, 0), (1740, 0), (1750, 0), (1760, 0), (1770, 0), (1780, 0), (1790, 1), (1800, 0), (1810, 0), (1820, 0), (1830, 1), (1840, 1), (1850, 1), (1860, 1), (1870, 0), (1880, 0), (1890, 0), (1900, 1), (1910, 0), (1920, 0), (1930, 0), (1940, 1), (1950, 1), (1960, 0), (1970, 0), (1980, 0), (1990, 0), (2000, 0), (2010, 1), (2020, 1), (2030, 1), (2040, 0), (2050, 0)]
Va1_9  a1_9  0 PWL (0n 0.0v 9.495n 0.0v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 0.0v 99.495n 0.0v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 0.0v 139.495n 0.0v 139.505n 1.8v 149.495n 1.8v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 0.0v 179.495n 0.0v 179.505n 0.0v 189.495n 0.0v 189.505n 0.0v 199.495n 0.0v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 1.8v 229.495n 1.8v 229.505n 0.0v 239.495n 0.0v 239.505n 1.8v 249.495n 1.8v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 0.0v 289.495n 0.0v 289.505n 1.8v 299.495n 1.8v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 0.0v 339.495n 0.0v 339.505n 0.0v 349.495n 0.0v 349.505n 0.0v 359.495n 0.0v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 0.0v 389.495n 0.0v 389.505n 0.0v 399.495n 0.0v 399.505n 0.0v 409.495n 0.0v 409.505n 0.0v 419.495n 0.0v 419.505n 1.8v 429.495n 1.8v 429.505n 0.0v 439.495n 0.0v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 1.8v 479.495n 1.8v 479.505n 1.8v 489.495n 1.8v 489.505n 1.8v 499.495n 1.8v 499.505n 0.0v 509.495n 0.0v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 0.0v 539.495n 0.0v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 1.8v 589.495n 1.8v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 1.8v 649.495n 1.8v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 0.0v 699.495n 0.0v 699.505n 1.8v 709.495n 1.8v 709.505n 0.0v 719.495n 0.0v 719.505n 1.8v 729.495n 1.8v 729.505n 0.0v 739.495n 0.0v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 0.0v 789.495n 0.0v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 0.0v 879.495n 0.0v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 0.0v 909.495n 0.0v 909.505n 0.0v 919.495n 0.0v 919.505n 0.0v 929.495n 0.0v 929.505n 0.0v 939.495n 0.0v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 0.0v 1049.495n 0.0v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 0.0v 1209.495n 0.0v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 0.0v 1229.495n 0.0v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 0.0v 1269.495n 0.0v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 0.0v 1349.495n 0.0v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 0.0v 1399.495n 0.0v 1399.505n 1.8v 1409.495n 1.8v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 1.8v 1439.495n 1.8v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 1.8v 1499.495n 1.8v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 1.8v 1529.495n 1.8v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 1.8v 1669.495n 1.8v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 0.0v 1739.495n 0.0v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 0.0v 1779.495n 0.0v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 0.0v 1819.495n 0.0v 1819.505n 0.0v 1829.495n 0.0v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 0.0v 1889.495n 0.0v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 1.8v 1909.495n 1.8v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 0.0v 1939.495n 0.0v 1939.505n 1.8v 1949.495n 1.8v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 0.0v 1979.495n 0.0v 1979.505n 0.0v 1989.495n 0.0v 1989.505n 0.0v 1999.495n 0.0v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 0.0v )

 * Generation of control signals
* (time, data): [(0, 1), (10, 0), (20, 0), (30, 0), (40, 0), (50, 0), (60, 0), (70, 0), (80, 0), (90, 1), (100, 0), (110, 0), (120, 0), (130, 0), (140, 0), (150, 1), (160, 1), (170, 0), (180, 0), (190, 1), (200, 0), (210, 1), (220, 0), (230, 1), (240, 1), (250, 0), (260, 0), (270, 0), (280, 0), (290, 0), (300, 0), (310, 1), (320, 0), (330, 1), (340, 0), (350, 0), (360, 1), (370, 0), (380, 0), (390, 0), (400, 0), (410, 1), (420, 0), (430, 0), (440, 0), (450, 0), (460, 1), (470, 0), (480, 0), (490, 0), (500, 1), (510, 0), (520, 0), (530, 0), (540, 0), (550, 0), (560, 0), (570, 0), (580, 0), (590, 0), (600, 0), (610, 0), (620, 0), (630, 0), (640, 0), (650, 0), (660, 0), (670, 0), (680, 0), (690, 0), (700, 1), (710, 0), (720, 0), (730, 0), (740, 0), (750, 0), (760, 0), (770, 1), (780, 0), (790, 0), (800, 0), (810, 0), (820, 0), (830, 0), (840, 1), (850, 0), (860, 0), (870, 0), (880, 0), (890, 0), (900, 0), (910, 1), (920, 1), (930, 0), (940, 0), (950, 0), (960, 0), (970, 0), (980, 1), (990, 1), (1000, 0), (1010, 0), (1020, 0), (1030, 0), (1040, 1), (1050, 0), (1060, 0), (1070, 0), (1080, 0), (1090, 0), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 0), (1150, 1), (1160, 0), (1170, 0), (1180, 0), (1190, 0), (1200, 1), (1210, 0), (1220, 1), (1230, 0), (1240, 0), (1250, 0), (1260, 0), (1270, 0), (1280, 0), (1290, 0), (1300, 0), (1310, 0), (1320, 0), (1330, 0), (1340, 1), (1350, 0), (1360, 0), (1370, 0), (1380, 0), (1390, 0), (1400, 0), (1410, 1), (1420, 1), (1430, 0), (1440, 0), (1450, 0), (1460, 0), (1470, 0), (1480, 0), (1490, 0), (1500, 0), (1510, 0), (1520, 0), (1530, 1), (1540, 0), (1550, 0), (1560, 0), (1570, 1), (1580, 0), (1590, 0), (1600, 0), (1610, 0), (1620, 0), (1630, 1), (1640, 0), (1650, 0), (1660, 0), (1670, 0), (1680, 1), (1690, 0), (1700, 1), (1710, 0), (1720, 0), (1730, 0), (1740, 0), (1750, 0), (1760, 0), (1770, 1), (1780, 0), (1790, 0), (1800, 1), (1810, 1), (1820, 0), (1830, 1), (1840, 0), (1850, 0), (1860, 0), (1870, 0), (1880, 1), (1890, 0), (1900, 0), (1910, 0), (1920, 0), (1930, 1), (1940, 0), (1950, 0), (1960, 0), (1970, 1), (1980, 1), (1990, 1), (2000, 0), (2010, 0), (2020, 0), (2030, 1), (2040, 0), (2050, 1)]
VCSB0 CSB0 0 PWL (0n 1.8v 9.495n 1.8v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 0.0v 79.495n 0.0v 79.505n 0.0v 89.495n 0.0v 89.505n 1.8v 99.495n 1.8v 99.505n 0.0v 109.495n 0.0v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 0.0v 139.495n 0.0v 139.505n 0.0v 149.495n 0.0v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 0.0v 179.495n 0.0v 179.505n 0.0v 189.495n 0.0v 189.505n 1.8v 199.495n 1.8v 199.505n 0.0v 209.495n 0.0v 209.505n 1.8v 219.495n 1.8v 219.505n 0.0v 229.495n 0.0v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 0.0v 259.495n 0.0v 259.505n 0.0v 269.495n 0.0v 269.505n 0.0v 279.495n 0.0v 279.505n 0.0v 289.495n 0.0v 289.505n 0.0v 299.495n 0.0v 299.505n 0.0v 309.495n 0.0v 309.505n 1.8v 319.495n 1.8v 319.505n 0.0v 329.495n 0.0v 329.505n 1.8v 339.495n 1.8v 339.505n 0.0v 349.495n 0.0v 349.505n 0.0v 359.495n 0.0v 359.505n 1.8v 369.495n 1.8v 369.505n 0.0v 379.495n 0.0v 379.505n 0.0v 389.495n 0.0v 389.505n 0.0v 399.495n 0.0v 399.505n 0.0v 409.495n 0.0v 409.505n 1.8v 419.495n 1.8v 419.505n 0.0v 429.495n 0.0v 429.505n 0.0v 439.495n 0.0v 439.505n 0.0v 449.495n 0.0v 449.505n 0.0v 459.495n 0.0v 459.505n 1.8v 469.495n 1.8v 469.505n 0.0v 479.495n 0.0v 479.505n 0.0v 489.495n 0.0v 489.505n 0.0v 499.495n 0.0v 499.505n 1.8v 509.495n 1.8v 509.505n 0.0v 519.495n 0.0v 519.505n 0.0v 529.495n 0.0v 529.505n 0.0v 539.495n 0.0v 539.505n 0.0v 549.495n 0.0v 549.505n 0.0v 559.495n 0.0v 559.505n 0.0v 569.495n 0.0v 569.505n 0.0v 579.495n 0.0v 579.505n 0.0v 589.495n 0.0v 589.505n 0.0v 599.495n 0.0v 599.505n 0.0v 609.495n 0.0v 609.505n 0.0v 619.495n 0.0v 619.505n 0.0v 629.495n 0.0v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 0.0v 659.495n 0.0v 659.505n 0.0v 669.495n 0.0v 669.505n 0.0v 679.495n 0.0v 679.505n 0.0v 689.495n 0.0v 689.505n 0.0v 699.495n 0.0v 699.505n 1.8v 709.495n 1.8v 709.505n 0.0v 719.495n 0.0v 719.505n 0.0v 729.495n 0.0v 729.505n 0.0v 739.495n 0.0v 739.505n 0.0v 749.495n 0.0v 749.505n 0.0v 759.495n 0.0v 759.505n 0.0v 769.495n 0.0v 769.505n 1.8v 779.495n 1.8v 779.505n 0.0v 789.495n 0.0v 789.505n 0.0v 799.495n 0.0v 799.505n 0.0v 809.495n 0.0v 809.505n 0.0v 819.495n 0.0v 819.505n 0.0v 829.495n 0.0v 829.505n 0.0v 839.495n 0.0v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 0.0v 879.495n 0.0v 879.505n 0.0v 889.495n 0.0v 889.505n 0.0v 899.495n 0.0v 899.505n 0.0v 909.495n 0.0v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 0.0v 939.495n 0.0v 939.505n 0.0v 949.495n 0.0v 949.505n 0.0v 959.495n 0.0v 959.505n 0.0v 969.495n 0.0v 969.505n 0.0v 979.495n 0.0v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 0.0v 1029.495n 0.0v 1029.505n 0.0v 1039.495n 0.0v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 0.0v 1059.495n 0.0v 1059.505n 0.0v 1069.495n 0.0v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 0.0v 1099.495n 0.0v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 0.0v 1149.495n 0.0v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 0.0v 1189.495n 0.0v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 0.0v 1219.495n 0.0v 1219.505n 1.8v 1229.495n 1.8v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 0.0v 1249.495n 0.0v 1249.505n 0.0v 1259.495n 0.0v 1259.505n 0.0v 1269.495n 0.0v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 0.0v 1299.495n 0.0v 1299.505n 0.0v 1309.495n 0.0v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 0.0v 1399.495n 0.0v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 0.0v 1449.495n 0.0v 1449.505n 0.0v 1459.495n 0.0v 1459.505n 0.0v 1469.495n 0.0v 1469.505n 0.0v 1479.495n 0.0v 1479.505n 0.0v 1489.495n 0.0v 1489.505n 0.0v 1499.495n 0.0v 1499.505n 0.0v 1509.495n 0.0v 1509.505n 0.0v 1519.495n 0.0v 1519.505n 0.0v 1529.495n 0.0v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 0.0v 1549.495n 0.0v 1549.505n 0.0v 1559.495n 0.0v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 0.0v 1599.495n 0.0v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 0.0v 1619.495n 0.0v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 0.0v 1649.495n 0.0v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 0.0v 1679.495n 0.0v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 0.0v 1699.495n 0.0v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 0.0v 1719.495n 0.0v 1719.505n 0.0v 1729.495n 0.0v 1729.505n 0.0v 1739.495n 0.0v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 1.8v 1809.495n 1.8v 1809.505n 1.8v 1819.495n 1.8v 1819.505n 0.0v 1829.495n 0.0v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 0.0v 1849.495n 0.0v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 0.0v 1869.495n 0.0v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 0.0v 1929.495n 0.0v 1929.505n 1.8v 1939.495n 1.8v 1939.505n 0.0v 1949.495n 0.0v 1949.505n 0.0v 1959.495n 0.0v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 0.0v 2019.495n 0.0v 2019.505n 0.0v 2029.495n 0.0v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 1.8v )
* (time, data): [(0, 1), (10, 1), (20, 1), (30, 1), (40, 0), (50, 0), (60, 0), (70, 1), (80, 1), (90, 1), (100, 1), (110, 0), (120, 0), (130, 0), (140, 0), (150, 1), (160, 1), (170, 0), (180, 1), (190, 1), (200, 0), (210, 0), (220, 0), (230, 0), (240, 0), (250, 1), (260, 1), (270, 1), (280, 0), (290, 0), (300, 1), (310, 1), (320, 1), (330, 0), (340, 1), (350, 1), (360, 0), (370, 1), (380, 0), (390, 1), (400, 0), (410, 1), (420, 0), (430, 0), (440, 0), (450, 1), (460, 1), (470, 1), (480, 0), (490, 0), (500, 0), (510, 0), (520, 1), (530, 1), (540, 0), (550, 0), (560, 1), (570, 1), (580, 0), (590, 0), (600, 1), (610, 1), (620, 1), (630, 0), (640, 0), (650, 1), (660, 1), (670, 1), (680, 1), (690, 0), (700, 0), (710, 0), (720, 0), (730, 0), (740, 0), (750, 1), (760, 0), (770, 0), (780, 0), (790, 0), (800, 0), (810, 1), (820, 1), (830, 1), (840, 0), (850, 0), (860, 0), (870, 1), (880, 1), (890, 0), (900, 1), (910, 1), (920, 0), (930, 0), (940, 0), (950, 1), (960, 0), (970, 1), (980, 0), (990, 0), (1000, 0), (1010, 1), (1020, 1), (1030, 1), (1040, 1), (1050, 1), (1060, 1), (1070, 0), (1080, 1), (1090, 0), (1100, 0), (1110, 0), (1120, 1), (1130, 1), (1140, 0), (1150, 1), (1160, 0), (1170, 1), (1180, 1), (1190, 1), (1200, 1), (1210, 1), (1220, 1), (1230, 1), (1240, 0), (1250, 1), (1260, 0), (1270, 1), (1280, 1), (1290, 1), (1300, 1), (1310, 1), (1320, 0), (1330, 0), (1340, 1), (1350, 0), (1360, 1), (1370, 0), (1380, 1), (1390, 1), (1400, 0), (1410, 1), (1420, 1), (1430, 0), (1440, 0), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 0), (1500, 1), (1510, 0), (1520, 0), (1530, 1), (1540, 1), (1550, 1), (1560, 1), (1570, 0), (1580, 0), (1590, 1), (1600, 1), (1610, 1), (1620, 1), (1630, 0), (1640, 1), (1650, 0), (1660, 0), (1670, 0), (1680, 0), (1690, 1), (1700, 0), (1710, 0), (1720, 1), (1730, 0), (1740, 1), (1750, 0), (1760, 0), (1770, 1), (1780, 0), (1790, 0), (1800, 0), (1810, 1), (1820, 1), (1830, 0), (1840, 1), (1850, 0), (1860, 1), (1870, 0), (1880, 1), (1890, 1), (1900, 0), (1910, 0), (1920, 1), (1930, 1), (1940, 0), (1950, 1), (1960, 0), (1970, 1), (1980, 1), (1990, 1), (2000, 1), (2010, 0), (2020, 1), (2030, 1), (2040, 0), (2050, 1)]
VCSB1 CSB1 0 PWL (0n 1.8v 9.495n 1.8v 9.505n 1.8v 19.495n 1.8v 19.505n 1.8v 29.495n 1.8v 29.505n 1.8v 39.495n 1.8v 39.505n 0.0v 49.495n 0.0v 49.505n 0.0v 59.495n 0.0v 59.505n 0.0v 69.495n 0.0v 69.505n 1.8v 79.495n 1.8v 79.505n 1.8v 89.495n 1.8v 89.505n 1.8v 99.495n 1.8v 99.505n 1.8v 109.495n 1.8v 109.505n 0.0v 119.495n 0.0v 119.505n 0.0v 129.495n 0.0v 129.505n 0.0v 139.495n 0.0v 139.505n 0.0v 149.495n 0.0v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 0.0v 179.495n 0.0v 179.505n 1.8v 189.495n 1.8v 189.505n 1.8v 199.495n 1.8v 199.505n 0.0v 209.495n 0.0v 209.505n 0.0v 219.495n 0.0v 219.505n 0.0v 229.495n 0.0v 229.505n 0.0v 239.495n 0.0v 239.505n 0.0v 249.495n 0.0v 249.505n 1.8v 259.495n 1.8v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 0.0v 289.495n 0.0v 289.505n 0.0v 299.495n 0.0v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 0.0v 339.495n 0.0v 339.505n 1.8v 349.495n 1.8v 349.505n 1.8v 359.495n 1.8v 359.505n 0.0v 369.495n 0.0v 369.505n 1.8v 379.495n 1.8v 379.505n 0.0v 389.495n 0.0v 389.505n 1.8v 399.495n 1.8v 399.505n 0.0v 409.495n 0.0v 409.505n 1.8v 419.495n 1.8v 419.505n 0.0v 429.495n 0.0v 429.505n 0.0v 439.495n 0.0v 439.505n 0.0v 449.495n 0.0v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 1.8v 479.495n 1.8v 479.505n 0.0v 489.495n 0.0v 489.505n 0.0v 499.495n 0.0v 499.505n 0.0v 509.495n 0.0v 509.505n 0.0v 519.495n 0.0v 519.505n 1.8v 529.495n 1.8v 529.505n 1.8v 539.495n 1.8v 539.505n 0.0v 549.495n 0.0v 549.505n 0.0v 559.495n 0.0v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 0.0v 589.495n 0.0v 589.505n 0.0v 599.495n 0.0v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 1.8v 629.495n 1.8v 629.505n 0.0v 639.495n 0.0v 639.505n 0.0v 649.495n 0.0v 649.505n 1.8v 659.495n 1.8v 659.505n 1.8v 669.495n 1.8v 669.505n 1.8v 679.495n 1.8v 679.505n 1.8v 689.495n 1.8v 689.505n 0.0v 699.495n 0.0v 699.505n 0.0v 709.495n 0.0v 709.505n 0.0v 719.495n 0.0v 719.505n 0.0v 729.495n 0.0v 729.505n 0.0v 739.495n 0.0v 739.505n 0.0v 749.495n 0.0v 749.505n 1.8v 759.495n 1.8v 759.505n 0.0v 769.495n 0.0v 769.505n 0.0v 779.495n 0.0v 779.505n 0.0v 789.495n 0.0v 789.505n 0.0v 799.495n 0.0v 799.505n 0.0v 809.495n 0.0v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 0.0v 849.495n 0.0v 849.505n 0.0v 859.495n 0.0v 859.505n 0.0v 869.495n 0.0v 869.505n 1.8v 879.495n 1.8v 879.505n 1.8v 889.495n 1.8v 889.505n 0.0v 899.495n 0.0v 899.505n 1.8v 909.495n 1.8v 909.505n 1.8v 919.495n 1.8v 919.505n 0.0v 929.495n 0.0v 929.505n 0.0v 939.495n 0.0v 939.505n 0.0v 949.495n 0.0v 949.505n 1.8v 959.495n 1.8v 959.505n 0.0v 969.495n 0.0v 969.505n 1.8v 979.495n 1.8v 979.505n 0.0v 989.495n 0.0v 989.505n 0.0v 999.495n 0.0v 999.505n 0.0v 1009.495n 0.0v 1009.505n 1.8v 1019.495n 1.8v 1019.505n 1.8v 1029.495n 1.8v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 1.8v 1059.495n 1.8v 1059.505n 1.8v 1069.495n 1.8v 1069.505n 0.0v 1079.495n 0.0v 1079.505n 1.8v 1089.495n 1.8v 1089.505n 0.0v 1099.495n 0.0v 1099.505n 0.0v 1109.495n 0.0v 1109.505n 0.0v 1119.495n 0.0v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 0.0v 1149.495n 0.0v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 0.0v 1169.495n 0.0v 1169.505n 1.8v 1179.495n 1.8v 1179.505n 1.8v 1189.495n 1.8v 1189.505n 1.8v 1199.495n 1.8v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 1.8v 1219.495n 1.8v 1219.505n 1.8v 1229.495n 1.8v 1229.505n 1.8v 1239.495n 1.8v 1239.505n 0.0v 1249.495n 0.0v 1249.505n 1.8v 1259.495n 1.8v 1259.505n 0.0v 1269.495n 0.0v 1269.505n 1.8v 1279.495n 1.8v 1279.505n 1.8v 1289.495n 1.8v 1289.505n 1.8v 1299.495n 1.8v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 1.8v 1319.495n 1.8v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 0.0v 1339.495n 0.0v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 0.0v 1359.495n 0.0v 1359.505n 1.8v 1369.495n 1.8v 1369.505n 0.0v 1379.495n 0.0v 1379.505n 1.8v 1389.495n 1.8v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 0.0v 1449.495n 0.0v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 0.0v 1499.495n 0.0v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 0.0v 1519.495n 0.0v 1519.505n 0.0v 1529.495n 0.0v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 1.8v 1569.495n 1.8v 1569.505n 0.0v 1579.495n 0.0v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 1.8v 1609.495n 1.8v 1609.505n 1.8v 1619.495n 1.8v 1619.505n 1.8v 1629.495n 1.8v 1629.505n 0.0v 1639.495n 0.0v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 0.0v 1659.495n 0.0v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 0.0v 1679.495n 0.0v 1679.505n 0.0v 1689.495n 0.0v 1689.505n 1.8v 1699.495n 1.8v 1699.505n 0.0v 1709.495n 0.0v 1709.505n 0.0v 1719.495n 0.0v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 0.0v 1739.495n 0.0v 1739.505n 1.8v 1749.495n 1.8v 1749.505n 0.0v 1759.495n 0.0v 1759.505n 0.0v 1769.495n 0.0v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 0.0v 1789.495n 0.0v 1789.505n 0.0v 1799.495n 0.0v 1799.505n 0.0v 1809.495n 0.0v 1809.505n 1.8v 1819.495n 1.8v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 0.0v 1839.495n 0.0v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 0.0v 1859.495n 0.0v 1859.505n 1.8v 1869.495n 1.8v 1869.505n 0.0v 1879.495n 0.0v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 1.8v 1899.495n 1.8v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 0.0v 1919.495n 0.0v 1919.505n 1.8v 1929.495n 1.8v 1929.505n 1.8v 1939.495n 1.8v 1939.505n 0.0v 1949.495n 0.0v 1949.505n 1.8v 1959.495n 1.8v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 1.8v 2009.495n 1.8v 2009.505n 0.0v 2019.495n 0.0v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 0.0v 2049.495n 0.0v 2049.505n 1.8v )
* (time, data): [(0, 1), (10, 0), (20, 0), (30, 0), (40, 1), (50, 1), (60, 1), (70, 1), (80, 0), (90, 1), (100, 1), (110, 1), (120, 1), (130, 0), (140, 1), (150, 1), (160, 1), (170, 1), (180, 0), (190, 1), (200, 1), (210, 1), (220, 1), (230, 1), (240, 1), (250, 0), (260, 1), (270, 1), (280, 1), (290, 0), (300, 1), (310, 1), (320, 1), (330, 1), (340, 1), (350, 0), (360, 1), (370, 1), (380, 0), (390, 0), (400, 0), (410, 1), (420, 1), (430, 0), (440, 1), (450, 1), (460, 1), (470, 0), (480, 1), (490, 1), (500, 1), (510, 0), (520, 1), (530, 0), (540, 1), (550, 1), (560, 1), (570, 1), (580, 0), (590, 1), (600, 1), (610, 1), (620, 0), (630, 1), (640, 0), (650, 0), (660, 0), (670, 0), (680, 0), (690, 1), (700, 1), (710, 1), (720, 1), (730, 1), (740, 0), (750, 1), (760, 1), (770, 1), (780, 0), (790, 1), (800, 1), (810, 1), (820, 1), (830, 1), (840, 1), (850, 0), (860, 1), (870, 1), (880, 0), (890, 1), (900, 0), (910, 1), (920, 1), (930, 1), (940, 1), (950, 1), (960, 1), (970, 1), (980, 1), (990, 1), (1000, 0), (1010, 0), (1020, 1), (1030, 1), (1040, 1), (1050, 1), (1060, 1), (1070, 1), (1080, 0), (1090, 1), (1100, 1), (1110, 1), (1120, 1), (1130, 1), (1140, 1), (1150, 1), (1160, 1), (1170, 0), (1180, 1), (1190, 0), (1200, 1), (1210, 1), (1220, 1), (1230, 0), (1240, 1), (1250, 0), (1260, 1), (1270, 0), (1280, 0), (1290, 1), (1300, 1), (1310, 0), (1320, 0), (1330, 1), (1340, 1), (1350, 1), (1360, 0), (1370, 1), (1380, 0), (1390, 1), (1400, 0), (1410, 1), (1420, 1), (1430, 0), (1440, 1), (1450, 1), (1460, 1), (1470, 1), (1480, 1), (1490, 0), (1500, 1), (1510, 1), (1520, 0), (1530, 1), (1540, 1), (1550, 1), (1560, 0), (1570, 1), (1580, 0), (1590, 1), (1600, 0), (1610, 1), (1620, 0), (1630, 1), (1640, 1), (1650, 1), (1660, 0), (1670, 1), (1680, 1), (1690, 0), (1700, 1), (1710, 1), (1720, 1), (1730, 1), (1740, 0), (1750, 1), (1760, 1), (1770, 1), (1780, 1), (1790, 1), (1800, 1), (1810, 1), (1820, 1), (1830, 1), (1840, 1), (1850, 1), (1860, 0), (1870, 1), (1880, 1), (1890, 0), (1900, 0), (1910, 1), (1920, 1), (1930, 1), (1940, 0), (1950, 0), (1960, 0), (1970, 1), (1980, 1), (1990, 1), (2000, 0), (2010, 1), (2020, 1), (2030, 1), (2040, 1), (2050, 1)]
VWEB0 WEB0 0 PWL (0n 1.8v 9.495n 1.8v 9.505n 0.0v 19.495n 0.0v 19.505n 0.0v 29.495n 0.0v 29.505n 0.0v 39.495n 0.0v 39.505n 1.8v 49.495n 1.8v 49.505n 1.8v 59.495n 1.8v 59.505n 1.8v 69.495n 1.8v 69.505n 1.8v 79.495n 1.8v 79.505n 0.0v 89.495n 0.0v 89.505n 1.8v 99.495n 1.8v 99.505n 1.8v 109.495n 1.8v 109.505n 1.8v 119.495n 1.8v 119.505n 1.8v 129.495n 1.8v 129.505n 0.0v 139.495n 0.0v 139.505n 1.8v 149.495n 1.8v 149.505n 1.8v 159.495n 1.8v 159.505n 1.8v 169.495n 1.8v 169.505n 1.8v 179.495n 1.8v 179.505n 0.0v 189.495n 0.0v 189.505n 1.8v 199.495n 1.8v 199.505n 1.8v 209.495n 1.8v 209.505n 1.8v 219.495n 1.8v 219.505n 1.8v 229.495n 1.8v 229.505n 1.8v 239.495n 1.8v 239.505n 1.8v 249.495n 1.8v 249.505n 0.0v 259.495n 0.0v 259.505n 1.8v 269.495n 1.8v 269.505n 1.8v 279.495n 1.8v 279.505n 1.8v 289.495n 1.8v 289.505n 0.0v 299.495n 0.0v 299.505n 1.8v 309.495n 1.8v 309.505n 1.8v 319.495n 1.8v 319.505n 1.8v 329.495n 1.8v 329.505n 1.8v 339.495n 1.8v 339.505n 1.8v 349.495n 1.8v 349.505n 0.0v 359.495n 0.0v 359.505n 1.8v 369.495n 1.8v 369.505n 1.8v 379.495n 1.8v 379.505n 0.0v 389.495n 0.0v 389.505n 0.0v 399.495n 0.0v 399.505n 0.0v 409.495n 0.0v 409.505n 1.8v 419.495n 1.8v 419.505n 1.8v 429.495n 1.8v 429.505n 0.0v 439.495n 0.0v 439.505n 1.8v 449.495n 1.8v 449.505n 1.8v 459.495n 1.8v 459.505n 1.8v 469.495n 1.8v 469.505n 0.0v 479.495n 0.0v 479.505n 1.8v 489.495n 1.8v 489.505n 1.8v 499.495n 1.8v 499.505n 1.8v 509.495n 1.8v 509.505n 0.0v 519.495n 0.0v 519.505n 1.8v 529.495n 1.8v 529.505n 0.0v 539.495n 0.0v 539.505n 1.8v 549.495n 1.8v 549.505n 1.8v 559.495n 1.8v 559.505n 1.8v 569.495n 1.8v 569.505n 1.8v 579.495n 1.8v 579.505n 0.0v 589.495n 0.0v 589.505n 1.8v 599.495n 1.8v 599.505n 1.8v 609.495n 1.8v 609.505n 1.8v 619.495n 1.8v 619.505n 0.0v 629.495n 0.0v 629.505n 1.8v 639.495n 1.8v 639.505n 0.0v 649.495n 0.0v 649.505n 0.0v 659.495n 0.0v 659.505n 0.0v 669.495n 0.0v 669.505n 0.0v 679.495n 0.0v 679.505n 0.0v 689.495n 0.0v 689.505n 1.8v 699.495n 1.8v 699.505n 1.8v 709.495n 1.8v 709.505n 1.8v 719.495n 1.8v 719.505n 1.8v 729.495n 1.8v 729.505n 1.8v 739.495n 1.8v 739.505n 0.0v 749.495n 0.0v 749.505n 1.8v 759.495n 1.8v 759.505n 1.8v 769.495n 1.8v 769.505n 1.8v 779.495n 1.8v 779.505n 0.0v 789.495n 0.0v 789.505n 1.8v 799.495n 1.8v 799.505n 1.8v 809.495n 1.8v 809.505n 1.8v 819.495n 1.8v 819.505n 1.8v 829.495n 1.8v 829.505n 1.8v 839.495n 1.8v 839.505n 1.8v 849.495n 1.8v 849.505n 0.0v 859.495n 0.0v 859.505n 1.8v 869.495n 1.8v 869.505n 1.8v 879.495n 1.8v 879.505n 0.0v 889.495n 0.0v 889.505n 1.8v 899.495n 1.8v 899.505n 0.0v 909.495n 0.0v 909.505n 1.8v 919.495n 1.8v 919.505n 1.8v 929.495n 1.8v 929.505n 1.8v 939.495n 1.8v 939.505n 1.8v 949.495n 1.8v 949.505n 1.8v 959.495n 1.8v 959.505n 1.8v 969.495n 1.8v 969.505n 1.8v 979.495n 1.8v 979.505n 1.8v 989.495n 1.8v 989.505n 1.8v 999.495n 1.8v 999.505n 0.0v 1009.495n 0.0v 1009.505n 0.0v 1019.495n 0.0v 1019.505n 1.8v 1029.495n 1.8v 1029.505n 1.8v 1039.495n 1.8v 1039.505n 1.8v 1049.495n 1.8v 1049.505n 1.8v 1059.495n 1.8v 1059.505n 1.8v 1069.495n 1.8v 1069.505n 1.8v 1079.495n 1.8v 1079.505n 0.0v 1089.495n 0.0v 1089.505n 1.8v 1099.495n 1.8v 1099.505n 1.8v 1109.495n 1.8v 1109.505n 1.8v 1119.495n 1.8v 1119.505n 1.8v 1129.495n 1.8v 1129.505n 1.8v 1139.495n 1.8v 1139.505n 1.8v 1149.495n 1.8v 1149.505n 1.8v 1159.495n 1.8v 1159.505n 1.8v 1169.495n 1.8v 1169.505n 0.0v 1179.495n 0.0v 1179.505n 1.8v 1189.495n 1.8v 1189.505n 0.0v 1199.495n 0.0v 1199.505n 1.8v 1209.495n 1.8v 1209.505n 1.8v 1219.495n 1.8v 1219.505n 1.8v 1229.495n 1.8v 1229.505n 0.0v 1239.495n 0.0v 1239.505n 1.8v 1249.495n 1.8v 1249.505n 0.0v 1259.495n 0.0v 1259.505n 1.8v 1269.495n 1.8v 1269.505n 0.0v 1279.495n 0.0v 1279.505n 0.0v 1289.495n 0.0v 1289.505n 1.8v 1299.495n 1.8v 1299.505n 1.8v 1309.495n 1.8v 1309.505n 0.0v 1319.495n 0.0v 1319.505n 0.0v 1329.495n 0.0v 1329.505n 1.8v 1339.495n 1.8v 1339.505n 1.8v 1349.495n 1.8v 1349.505n 1.8v 1359.495n 1.8v 1359.505n 0.0v 1369.495n 0.0v 1369.505n 1.8v 1379.495n 1.8v 1379.505n 0.0v 1389.495n 0.0v 1389.505n 1.8v 1399.495n 1.8v 1399.505n 0.0v 1409.495n 0.0v 1409.505n 1.8v 1419.495n 1.8v 1419.505n 1.8v 1429.495n 1.8v 1429.505n 0.0v 1439.495n 0.0v 1439.505n 1.8v 1449.495n 1.8v 1449.505n 1.8v 1459.495n 1.8v 1459.505n 1.8v 1469.495n 1.8v 1469.505n 1.8v 1479.495n 1.8v 1479.505n 1.8v 1489.495n 1.8v 1489.505n 0.0v 1499.495n 0.0v 1499.505n 1.8v 1509.495n 1.8v 1509.505n 1.8v 1519.495n 1.8v 1519.505n 0.0v 1529.495n 0.0v 1529.505n 1.8v 1539.495n 1.8v 1539.505n 1.8v 1549.495n 1.8v 1549.505n 1.8v 1559.495n 1.8v 1559.505n 0.0v 1569.495n 0.0v 1569.505n 1.8v 1579.495n 1.8v 1579.505n 0.0v 1589.495n 0.0v 1589.505n 1.8v 1599.495n 1.8v 1599.505n 0.0v 1609.495n 0.0v 1609.505n 1.8v 1619.495n 1.8v 1619.505n 0.0v 1629.495n 0.0v 1629.505n 1.8v 1639.495n 1.8v 1639.505n 1.8v 1649.495n 1.8v 1649.505n 1.8v 1659.495n 1.8v 1659.505n 0.0v 1669.495n 0.0v 1669.505n 1.8v 1679.495n 1.8v 1679.505n 1.8v 1689.495n 1.8v 1689.505n 0.0v 1699.495n 0.0v 1699.505n 1.8v 1709.495n 1.8v 1709.505n 1.8v 1719.495n 1.8v 1719.505n 1.8v 1729.495n 1.8v 1729.505n 1.8v 1739.495n 1.8v 1739.505n 0.0v 1749.495n 0.0v 1749.505n 1.8v 1759.495n 1.8v 1759.505n 1.8v 1769.495n 1.8v 1769.505n 1.8v 1779.495n 1.8v 1779.505n 1.8v 1789.495n 1.8v 1789.505n 1.8v 1799.495n 1.8v 1799.505n 1.8v 1809.495n 1.8v 1809.505n 1.8v 1819.495n 1.8v 1819.505n 1.8v 1829.495n 1.8v 1829.505n 1.8v 1839.495n 1.8v 1839.505n 1.8v 1849.495n 1.8v 1849.505n 1.8v 1859.495n 1.8v 1859.505n 0.0v 1869.495n 0.0v 1869.505n 1.8v 1879.495n 1.8v 1879.505n 1.8v 1889.495n 1.8v 1889.505n 0.0v 1899.495n 0.0v 1899.505n 0.0v 1909.495n 0.0v 1909.505n 1.8v 1919.495n 1.8v 1919.505n 1.8v 1929.495n 1.8v 1929.505n 1.8v 1939.495n 1.8v 1939.505n 0.0v 1949.495n 0.0v 1949.505n 0.0v 1959.495n 0.0v 1959.505n 0.0v 1969.495n 0.0v 1969.505n 1.8v 1979.495n 1.8v 1979.505n 1.8v 1989.495n 1.8v 1989.505n 1.8v 1999.495n 1.8v 1999.505n 0.0v 2009.495n 0.0v 2009.505n 1.8v 2019.495n 1.8v 2019.505n 1.8v 2029.495n 1.8v 2029.505n 1.8v 2039.495n 1.8v 2039.505n 1.8v 2049.495n 1.8v 2049.505n 1.8v )
* PULSE: period=10
Vclk0 clk0 0 PULSE (0 1.8 9.995n 0.01n 0.01n 4.99n 10n)
* PULSE: period=10
Vclk1 clk1 0 PULSE (0 1.8 9.995n 0.01n 0.01n 4.99n 10n)

 * Generation of dout measurements
* CHECK dout0_0 Vdout0_0ck4 = 0 time = 50
.meas tran vdout0_0ck4 FIND v(dout0_0) AT=50.05n

* CHECK dout0_1 Vdout0_1ck4 = 1.8 time = 50
.meas tran vdout0_1ck4 FIND v(dout0_1) AT=50.05n

* CHECK dout0_2 Vdout0_2ck4 = 0 time = 50
.meas tran vdout0_2ck4 FIND v(dout0_2) AT=50.05n

* CHECK dout0_3 Vdout0_3ck4 = 1.8 time = 50
.meas tran vdout0_3ck4 FIND v(dout0_3) AT=50.05n

* CHECK dout0_4 Vdout0_4ck4 = 1.8 time = 50
.meas tran vdout0_4ck4 FIND v(dout0_4) AT=50.05n

* CHECK dout0_5 Vdout0_5ck4 = 1.8 time = 50
.meas tran vdout0_5ck4 FIND v(dout0_5) AT=50.05n

* CHECK dout0_6 Vdout0_6ck4 = 1.8 time = 50
.meas tran vdout0_6ck4 FIND v(dout0_6) AT=50.05n

* CHECK dout0_7 Vdout0_7ck4 = 0 time = 50
.meas tran vdout0_7ck4 FIND v(dout0_7) AT=50.05n

* CHECK dout1_0 Vdout1_0ck4 = 0 time = 50
.meas tran vdout1_0ck4 FIND v(dout1_0) AT=50.05n

* CHECK dout1_1 Vdout1_1ck4 = 1.8 time = 50
.meas tran vdout1_1ck4 FIND v(dout1_1) AT=50.05n

* CHECK dout1_2 Vdout1_2ck4 = 0 time = 50
.meas tran vdout1_2ck4 FIND v(dout1_2) AT=50.05n

* CHECK dout1_3 Vdout1_3ck4 = 1.8 time = 50
.meas tran vdout1_3ck4 FIND v(dout1_3) AT=50.05n

* CHECK dout1_4 Vdout1_4ck4 = 1.8 time = 50
.meas tran vdout1_4ck4 FIND v(dout1_4) AT=50.05n

* CHECK dout1_5 Vdout1_5ck4 = 1.8 time = 50
.meas tran vdout1_5ck4 FIND v(dout1_5) AT=50.05n

* CHECK dout1_6 Vdout1_6ck4 = 1.8 time = 50
.meas tran vdout1_6ck4 FIND v(dout1_6) AT=50.05n

* CHECK dout1_7 Vdout1_7ck4 = 0 time = 50
.meas tran vdout1_7ck4 FIND v(dout1_7) AT=50.05n

* CHECK dout0_0 Vdout0_0ck5 = 1.8 time = 60
.meas tran vdout0_0ck5 FIND v(dout0_0) AT=60.05n

* CHECK dout0_1 Vdout0_1ck5 = 1.8 time = 60
.meas tran vdout0_1ck5 FIND v(dout0_1) AT=60.05n

* CHECK dout0_2 Vdout0_2ck5 = 0 time = 60
.meas tran vdout0_2ck5 FIND v(dout0_2) AT=60.05n

* CHECK dout0_3 Vdout0_3ck5 = 1.8 time = 60
.meas tran vdout0_3ck5 FIND v(dout0_3) AT=60.05n

* CHECK dout0_4 Vdout0_4ck5 = 1.8 time = 60
.meas tran vdout0_4ck5 FIND v(dout0_4) AT=60.05n

* CHECK dout0_5 Vdout0_5ck5 = 1.8 time = 60
.meas tran vdout0_5ck5 FIND v(dout0_5) AT=60.05n

* CHECK dout0_6 Vdout0_6ck5 = 1.8 time = 60
.meas tran vdout0_6ck5 FIND v(dout0_6) AT=60.05n

* CHECK dout0_7 Vdout0_7ck5 = 0 time = 60
.meas tran vdout0_7ck5 FIND v(dout0_7) AT=60.05n

* CHECK dout1_0 Vdout1_0ck5 = 0 time = 60
.meas tran vdout1_0ck5 FIND v(dout1_0) AT=60.05n

* CHECK dout1_1 Vdout1_1ck5 = 1.8 time = 60
.meas tran vdout1_1ck5 FIND v(dout1_1) AT=60.05n

* CHECK dout1_2 Vdout1_2ck5 = 0 time = 60
.meas tran vdout1_2ck5 FIND v(dout1_2) AT=60.05n

* CHECK dout1_3 Vdout1_3ck5 = 1.8 time = 60
.meas tran vdout1_3ck5 FIND v(dout1_3) AT=60.05n

* CHECK dout1_4 Vdout1_4ck5 = 1.8 time = 60
.meas tran vdout1_4ck5 FIND v(dout1_4) AT=60.05n

* CHECK dout1_5 Vdout1_5ck5 = 1.8 time = 60
.meas tran vdout1_5ck5 FIND v(dout1_5) AT=60.05n

* CHECK dout1_6 Vdout1_6ck5 = 1.8 time = 60
.meas tran vdout1_6ck5 FIND v(dout1_6) AT=60.05n

* CHECK dout1_7 Vdout1_7ck5 = 0 time = 60
.meas tran vdout1_7ck5 FIND v(dout1_7) AT=60.05n

* CHECK dout0_0 Vdout0_0ck6 = 1.8 time = 70
.meas tran vdout0_0ck6 FIND v(dout0_0) AT=70.05n

* CHECK dout0_1 Vdout0_1ck6 = 1.8 time = 70
.meas tran vdout0_1ck6 FIND v(dout0_1) AT=70.05n

* CHECK dout0_2 Vdout0_2ck6 = 0 time = 70
.meas tran vdout0_2ck6 FIND v(dout0_2) AT=70.05n

* CHECK dout0_3 Vdout0_3ck6 = 1.8 time = 70
.meas tran vdout0_3ck6 FIND v(dout0_3) AT=70.05n

* CHECK dout0_4 Vdout0_4ck6 = 1.8 time = 70
.meas tran vdout0_4ck6 FIND v(dout0_4) AT=70.05n

* CHECK dout0_5 Vdout0_5ck6 = 1.8 time = 70
.meas tran vdout0_5ck6 FIND v(dout0_5) AT=70.05n

* CHECK dout0_6 Vdout0_6ck6 = 1.8 time = 70
.meas tran vdout0_6ck6 FIND v(dout0_6) AT=70.05n

* CHECK dout0_7 Vdout0_7ck6 = 0 time = 70
.meas tran vdout0_7ck6 FIND v(dout0_7) AT=70.05n

* CHECK dout1_0 Vdout1_0ck6 = 0 time = 70
.meas tran vdout1_0ck6 FIND v(dout1_0) AT=70.05n

* CHECK dout1_1 Vdout1_1ck6 = 1.8 time = 70
.meas tran vdout1_1ck6 FIND v(dout1_1) AT=70.05n

* CHECK dout1_2 Vdout1_2ck6 = 0 time = 70
.meas tran vdout1_2ck6 FIND v(dout1_2) AT=70.05n

* CHECK dout1_3 Vdout1_3ck6 = 1.8 time = 70
.meas tran vdout1_3ck6 FIND v(dout1_3) AT=70.05n

* CHECK dout1_4 Vdout1_4ck6 = 1.8 time = 70
.meas tran vdout1_4ck6 FIND v(dout1_4) AT=70.05n

* CHECK dout1_5 Vdout1_5ck6 = 1.8 time = 70
.meas tran vdout1_5ck6 FIND v(dout1_5) AT=70.05n

* CHECK dout1_6 Vdout1_6ck6 = 1.8 time = 70
.meas tran vdout1_6ck6 FIND v(dout1_6) AT=70.05n

* CHECK dout1_7 Vdout1_7ck6 = 0 time = 70
.meas tran vdout1_7ck6 FIND v(dout1_7) AT=70.05n

* CHECK dout0_0 Vdout0_0ck7 = 1.8 time = 80
.meas tran vdout0_0ck7 FIND v(dout0_0) AT=80.05n

* CHECK dout0_1 Vdout0_1ck7 = 1.8 time = 80
.meas tran vdout0_1ck7 FIND v(dout0_1) AT=80.05n

* CHECK dout0_2 Vdout0_2ck7 = 0 time = 80
.meas tran vdout0_2ck7 FIND v(dout0_2) AT=80.05n

* CHECK dout0_3 Vdout0_3ck7 = 1.8 time = 80
.meas tran vdout0_3ck7 FIND v(dout0_3) AT=80.05n

* CHECK dout0_4 Vdout0_4ck7 = 1.8 time = 80
.meas tran vdout0_4ck7 FIND v(dout0_4) AT=80.05n

* CHECK dout0_5 Vdout0_5ck7 = 1.8 time = 80
.meas tran vdout0_5ck7 FIND v(dout0_5) AT=80.05n

* CHECK dout0_6 Vdout0_6ck7 = 1.8 time = 80
.meas tran vdout0_6ck7 FIND v(dout0_6) AT=80.05n

* CHECK dout0_7 Vdout0_7ck7 = 0 time = 80
.meas tran vdout0_7ck7 FIND v(dout0_7) AT=80.05n

* CHECK dout0_0 Vdout0_0ck10 = 0 time = 110
.meas tran vdout0_0ck10 FIND v(dout0_0) AT=110.05n

* CHECK dout0_1 Vdout0_1ck10 = 1.8 time = 110
.meas tran vdout0_1ck10 FIND v(dout0_1) AT=110.05n

* CHECK dout0_2 Vdout0_2ck10 = 0 time = 110
.meas tran vdout0_2ck10 FIND v(dout0_2) AT=110.05n

* CHECK dout0_3 Vdout0_3ck10 = 1.8 time = 110
.meas tran vdout0_3ck10 FIND v(dout0_3) AT=110.05n

* CHECK dout0_4 Vdout0_4ck10 = 1.8 time = 110
.meas tran vdout0_4ck10 FIND v(dout0_4) AT=110.05n

* CHECK dout0_5 Vdout0_5ck10 = 1.8 time = 110
.meas tran vdout0_5ck10 FIND v(dout0_5) AT=110.05n

* CHECK dout0_6 Vdout0_6ck10 = 1.8 time = 110
.meas tran vdout0_6ck10 FIND v(dout0_6) AT=110.05n

* CHECK dout0_7 Vdout0_7ck10 = 0 time = 110
.meas tran vdout0_7ck10 FIND v(dout0_7) AT=110.05n

* CHECK dout0_0 Vdout0_0ck11 = 1.8 time = 120
.meas tran vdout0_0ck11 FIND v(dout0_0) AT=120.05n

* CHECK dout0_1 Vdout0_1ck11 = 0 time = 120
.meas tran vdout0_1ck11 FIND v(dout0_1) AT=120.05n

* CHECK dout0_2 Vdout0_2ck11 = 1.8 time = 120
.meas tran vdout0_2ck11 FIND v(dout0_2) AT=120.05n

* CHECK dout0_3 Vdout0_3ck11 = 0 time = 120
.meas tran vdout0_3ck11 FIND v(dout0_3) AT=120.05n

* CHECK dout0_4 Vdout0_4ck11 = 1.8 time = 120
.meas tran vdout0_4ck11 FIND v(dout0_4) AT=120.05n

* CHECK dout0_5 Vdout0_5ck11 = 0 time = 120
.meas tran vdout0_5ck11 FIND v(dout0_5) AT=120.05n

* CHECK dout0_6 Vdout0_6ck11 = 1.8 time = 120
.meas tran vdout0_6ck11 FIND v(dout0_6) AT=120.05n

* CHECK dout0_7 Vdout0_7ck11 = 0 time = 120
.meas tran vdout0_7ck11 FIND v(dout0_7) AT=120.05n

* CHECK dout1_0 Vdout1_0ck11 = 0 time = 120
.meas tran vdout1_0ck11 FIND v(dout1_0) AT=120.05n

* CHECK dout1_1 Vdout1_1ck11 = 1.8 time = 120
.meas tran vdout1_1ck11 FIND v(dout1_1) AT=120.05n

* CHECK dout1_2 Vdout1_2ck11 = 0 time = 120
.meas tran vdout1_2ck11 FIND v(dout1_2) AT=120.05n

* CHECK dout1_3 Vdout1_3ck11 = 1.8 time = 120
.meas tran vdout1_3ck11 FIND v(dout1_3) AT=120.05n

* CHECK dout1_4 Vdout1_4ck11 = 1.8 time = 120
.meas tran vdout1_4ck11 FIND v(dout1_4) AT=120.05n

* CHECK dout1_5 Vdout1_5ck11 = 1.8 time = 120
.meas tran vdout1_5ck11 FIND v(dout1_5) AT=120.05n

* CHECK dout1_6 Vdout1_6ck11 = 1.8 time = 120
.meas tran vdout1_6ck11 FIND v(dout1_6) AT=120.05n

* CHECK dout1_7 Vdout1_7ck11 = 0 time = 120
.meas tran vdout1_7ck11 FIND v(dout1_7) AT=120.05n

* CHECK dout0_0 Vdout0_0ck12 = 1.8 time = 130
.meas tran vdout0_0ck12 FIND v(dout0_0) AT=130.05n

* CHECK dout0_1 Vdout0_1ck12 = 1.8 time = 130
.meas tran vdout0_1ck12 FIND v(dout0_1) AT=130.05n

* CHECK dout0_2 Vdout0_2ck12 = 0 time = 130
.meas tran vdout0_2ck12 FIND v(dout0_2) AT=130.05n

* CHECK dout0_3 Vdout0_3ck12 = 1.8 time = 130
.meas tran vdout0_3ck12 FIND v(dout0_3) AT=130.05n

* CHECK dout0_4 Vdout0_4ck12 = 1.8 time = 130
.meas tran vdout0_4ck12 FIND v(dout0_4) AT=130.05n

* CHECK dout0_5 Vdout0_5ck12 = 1.8 time = 130
.meas tran vdout0_5ck12 FIND v(dout0_5) AT=130.05n

* CHECK dout0_6 Vdout0_6ck12 = 1.8 time = 130
.meas tran vdout0_6ck12 FIND v(dout0_6) AT=130.05n

* CHECK dout0_7 Vdout0_7ck12 = 0 time = 130
.meas tran vdout0_7ck12 FIND v(dout0_7) AT=130.05n

* CHECK dout1_0 Vdout1_0ck12 = 0 time = 130
.meas tran vdout1_0ck12 FIND v(dout1_0) AT=130.05n

* CHECK dout1_1 Vdout1_1ck12 = 1.8 time = 130
.meas tran vdout1_1ck12 FIND v(dout1_1) AT=130.05n

* CHECK dout1_2 Vdout1_2ck12 = 0 time = 130
.meas tran vdout1_2ck12 FIND v(dout1_2) AT=130.05n

* CHECK dout1_3 Vdout1_3ck12 = 1.8 time = 130
.meas tran vdout1_3ck12 FIND v(dout1_3) AT=130.05n

* CHECK dout1_4 Vdout1_4ck12 = 1.8 time = 130
.meas tran vdout1_4ck12 FIND v(dout1_4) AT=130.05n

* CHECK dout1_5 Vdout1_5ck12 = 1.8 time = 130
.meas tran vdout1_5ck12 FIND v(dout1_5) AT=130.05n

* CHECK dout1_6 Vdout1_6ck12 = 1.8 time = 130
.meas tran vdout1_6ck12 FIND v(dout1_6) AT=130.05n

* CHECK dout1_7 Vdout1_7ck12 = 0 time = 130
.meas tran vdout1_7ck12 FIND v(dout1_7) AT=130.05n

* CHECK dout1_0 Vdout1_0ck13 = 1.8 time = 140
.meas tran vdout1_0ck13 FIND v(dout1_0) AT=140.05n

* CHECK dout1_1 Vdout1_1ck13 = 1.8 time = 140
.meas tran vdout1_1ck13 FIND v(dout1_1) AT=140.05n

* CHECK dout1_2 Vdout1_2ck13 = 0 time = 140
.meas tran vdout1_2ck13 FIND v(dout1_2) AT=140.05n

* CHECK dout1_3 Vdout1_3ck13 = 1.8 time = 140
.meas tran vdout1_3ck13 FIND v(dout1_3) AT=140.05n

* CHECK dout1_4 Vdout1_4ck13 = 1.8 time = 140
.meas tran vdout1_4ck13 FIND v(dout1_4) AT=140.05n

* CHECK dout1_5 Vdout1_5ck13 = 1.8 time = 140
.meas tran vdout1_5ck13 FIND v(dout1_5) AT=140.05n

* CHECK dout1_6 Vdout1_6ck13 = 1.8 time = 140
.meas tran vdout1_6ck13 FIND v(dout1_6) AT=140.05n

* CHECK dout1_7 Vdout1_7ck13 = 0 time = 140
.meas tran vdout1_7ck13 FIND v(dout1_7) AT=140.05n

* CHECK dout0_0 Vdout0_0ck14 = 0 time = 150
.meas tran vdout0_0ck14 FIND v(dout0_0) AT=150.05n

* CHECK dout0_1 Vdout0_1ck14 = 1.8 time = 150
.meas tran vdout0_1ck14 FIND v(dout0_1) AT=150.05n

* CHECK dout0_2 Vdout0_2ck14 = 0 time = 150
.meas tran vdout0_2ck14 FIND v(dout0_2) AT=150.05n

* CHECK dout0_3 Vdout0_3ck14 = 1.8 time = 150
.meas tran vdout0_3ck14 FIND v(dout0_3) AT=150.05n

* CHECK dout0_4 Vdout0_4ck14 = 1.8 time = 150
.meas tran vdout0_4ck14 FIND v(dout0_4) AT=150.05n

* CHECK dout0_5 Vdout0_5ck14 = 1.8 time = 150
.meas tran vdout0_5ck14 FIND v(dout0_5) AT=150.05n

* CHECK dout0_6 Vdout0_6ck14 = 1.8 time = 150
.meas tran vdout0_6ck14 FIND v(dout0_6) AT=150.05n

* CHECK dout0_7 Vdout0_7ck14 = 0 time = 150
.meas tran vdout0_7ck14 FIND v(dout0_7) AT=150.05n

* CHECK dout1_0 Vdout1_0ck14 = 0 time = 150
.meas tran vdout1_0ck14 FIND v(dout1_0) AT=150.05n

* CHECK dout1_1 Vdout1_1ck14 = 0 time = 150
.meas tran vdout1_1ck14 FIND v(dout1_1) AT=150.05n

* CHECK dout1_2 Vdout1_2ck14 = 1.8 time = 150
.meas tran vdout1_2ck14 FIND v(dout1_2) AT=150.05n

* CHECK dout1_3 Vdout1_3ck14 = 0 time = 150
.meas tran vdout1_3ck14 FIND v(dout1_3) AT=150.05n

* CHECK dout1_4 Vdout1_4ck14 = 0 time = 150
.meas tran vdout1_4ck14 FIND v(dout1_4) AT=150.05n

* CHECK dout1_5 Vdout1_5ck14 = 0 time = 150
.meas tran vdout1_5ck14 FIND v(dout1_5) AT=150.05n

* CHECK dout1_6 Vdout1_6ck14 = 0 time = 150
.meas tran vdout1_6ck14 FIND v(dout1_6) AT=150.05n

* CHECK dout1_7 Vdout1_7ck14 = 1.8 time = 150
.meas tran vdout1_7ck14 FIND v(dout1_7) AT=150.05n

* CHECK dout0_0 Vdout0_0ck17 = 0 time = 180
.meas tran vdout0_0ck17 FIND v(dout0_0) AT=180.05n

* CHECK dout0_1 Vdout0_1ck17 = 0 time = 180
.meas tran vdout0_1ck17 FIND v(dout0_1) AT=180.05n

* CHECK dout0_2 Vdout0_2ck17 = 1.8 time = 180
.meas tran vdout0_2ck17 FIND v(dout0_2) AT=180.05n

* CHECK dout0_3 Vdout0_3ck17 = 0 time = 180
.meas tran vdout0_3ck17 FIND v(dout0_3) AT=180.05n

* CHECK dout0_4 Vdout0_4ck17 = 0 time = 180
.meas tran vdout0_4ck17 FIND v(dout0_4) AT=180.05n

* CHECK dout0_5 Vdout0_5ck17 = 0 time = 180
.meas tran vdout0_5ck17 FIND v(dout0_5) AT=180.05n

* CHECK dout0_6 Vdout0_6ck17 = 0 time = 180
.meas tran vdout0_6ck17 FIND v(dout0_6) AT=180.05n

* CHECK dout0_7 Vdout0_7ck17 = 1.8 time = 180
.meas tran vdout0_7ck17 FIND v(dout0_7) AT=180.05n

* CHECK dout1_0 Vdout1_0ck17 = 1.8 time = 180
.meas tran vdout1_0ck17 FIND v(dout1_0) AT=180.05n

* CHECK dout1_1 Vdout1_1ck17 = 0 time = 180
.meas tran vdout1_1ck17 FIND v(dout1_1) AT=180.05n

* CHECK dout1_2 Vdout1_2ck17 = 1.8 time = 180
.meas tran vdout1_2ck17 FIND v(dout1_2) AT=180.05n

* CHECK dout1_3 Vdout1_3ck17 = 0 time = 180
.meas tran vdout1_3ck17 FIND v(dout1_3) AT=180.05n

* CHECK dout1_4 Vdout1_4ck17 = 1.8 time = 180
.meas tran vdout1_4ck17 FIND v(dout1_4) AT=180.05n

* CHECK dout1_5 Vdout1_5ck17 = 0 time = 180
.meas tran vdout1_5ck17 FIND v(dout1_5) AT=180.05n

* CHECK dout1_6 Vdout1_6ck17 = 1.8 time = 180
.meas tran vdout1_6ck17 FIND v(dout1_6) AT=180.05n

* CHECK dout1_7 Vdout1_7ck17 = 0 time = 180
.meas tran vdout1_7ck17 FIND v(dout1_7) AT=180.05n

* CHECK dout0_0 Vdout0_0ck20 = 0 time = 210
.meas tran vdout0_0ck20 FIND v(dout0_0) AT=210.05n

* CHECK dout0_1 Vdout0_1ck20 = 1.8 time = 210
.meas tran vdout0_1ck20 FIND v(dout0_1) AT=210.05n

* CHECK dout0_2 Vdout0_2ck20 = 0 time = 210
.meas tran vdout0_2ck20 FIND v(dout0_2) AT=210.05n

* CHECK dout0_3 Vdout0_3ck20 = 1.8 time = 210
.meas tran vdout0_3ck20 FIND v(dout0_3) AT=210.05n

* CHECK dout0_4 Vdout0_4ck20 = 1.8 time = 210
.meas tran vdout0_4ck20 FIND v(dout0_4) AT=210.05n

* CHECK dout0_5 Vdout0_5ck20 = 1.8 time = 210
.meas tran vdout0_5ck20 FIND v(dout0_5) AT=210.05n

* CHECK dout0_6 Vdout0_6ck20 = 1.8 time = 210
.meas tran vdout0_6ck20 FIND v(dout0_6) AT=210.05n

* CHECK dout0_7 Vdout0_7ck20 = 0 time = 210
.meas tran vdout0_7ck20 FIND v(dout0_7) AT=210.05n

* CHECK dout1_0 Vdout1_0ck20 = 0 time = 210
.meas tran vdout1_0ck20 FIND v(dout1_0) AT=210.05n

* CHECK dout1_1 Vdout1_1ck20 = 1.8 time = 210
.meas tran vdout1_1ck20 FIND v(dout1_1) AT=210.05n

* CHECK dout1_2 Vdout1_2ck20 = 0 time = 210
.meas tran vdout1_2ck20 FIND v(dout1_2) AT=210.05n

* CHECK dout1_3 Vdout1_3ck20 = 1.8 time = 210
.meas tran vdout1_3ck20 FIND v(dout1_3) AT=210.05n

* CHECK dout1_4 Vdout1_4ck20 = 1.8 time = 210
.meas tran vdout1_4ck20 FIND v(dout1_4) AT=210.05n

* CHECK dout1_5 Vdout1_5ck20 = 1.8 time = 210
.meas tran vdout1_5ck20 FIND v(dout1_5) AT=210.05n

* CHECK dout1_6 Vdout1_6ck20 = 1.8 time = 210
.meas tran vdout1_6ck20 FIND v(dout1_6) AT=210.05n

* CHECK dout1_7 Vdout1_7ck20 = 0 time = 210
.meas tran vdout1_7ck20 FIND v(dout1_7) AT=210.05n

* CHECK dout1_0 Vdout1_0ck21 = 1.8 time = 220
.meas tran vdout1_0ck21 FIND v(dout1_0) AT=220.05n

* CHECK dout1_1 Vdout1_1ck21 = 1.8 time = 220
.meas tran vdout1_1ck21 FIND v(dout1_1) AT=220.05n

* CHECK dout1_2 Vdout1_2ck21 = 0 time = 220
.meas tran vdout1_2ck21 FIND v(dout1_2) AT=220.05n

* CHECK dout1_3 Vdout1_3ck21 = 1.8 time = 220
.meas tran vdout1_3ck21 FIND v(dout1_3) AT=220.05n

* CHECK dout1_4 Vdout1_4ck21 = 1.8 time = 220
.meas tran vdout1_4ck21 FIND v(dout1_4) AT=220.05n

* CHECK dout1_5 Vdout1_5ck21 = 1.8 time = 220
.meas tran vdout1_5ck21 FIND v(dout1_5) AT=220.05n

* CHECK dout1_6 Vdout1_6ck21 = 1.8 time = 220
.meas tran vdout1_6ck21 FIND v(dout1_6) AT=220.05n

* CHECK dout1_7 Vdout1_7ck21 = 0 time = 220
.meas tran vdout1_7ck21 FIND v(dout1_7) AT=220.05n

* CHECK dout0_0 Vdout0_0ck22 = 0 time = 230
.meas tran vdout0_0ck22 FIND v(dout0_0) AT=230.05n

* CHECK dout0_1 Vdout0_1ck22 = 0 time = 230
.meas tran vdout0_1ck22 FIND v(dout0_1) AT=230.05n

* CHECK dout0_2 Vdout0_2ck22 = 1.8 time = 230
.meas tran vdout0_2ck22 FIND v(dout0_2) AT=230.05n

* CHECK dout0_3 Vdout0_3ck22 = 0 time = 230
.meas tran vdout0_3ck22 FIND v(dout0_3) AT=230.05n

* CHECK dout0_4 Vdout0_4ck22 = 0 time = 230
.meas tran vdout0_4ck22 FIND v(dout0_4) AT=230.05n

* CHECK dout0_5 Vdout0_5ck22 = 0 time = 230
.meas tran vdout0_5ck22 FIND v(dout0_5) AT=230.05n

* CHECK dout0_6 Vdout0_6ck22 = 0 time = 230
.meas tran vdout0_6ck22 FIND v(dout0_6) AT=230.05n

* CHECK dout0_7 Vdout0_7ck22 = 1.8 time = 230
.meas tran vdout0_7ck22 FIND v(dout0_7) AT=230.05n

* CHECK dout1_0 Vdout1_0ck22 = 1.8 time = 230
.meas tran vdout1_0ck22 FIND v(dout1_0) AT=230.05n

* CHECK dout1_1 Vdout1_1ck22 = 0 time = 230
.meas tran vdout1_1ck22 FIND v(dout1_1) AT=230.05n

* CHECK dout1_2 Vdout1_2ck22 = 1.8 time = 230
.meas tran vdout1_2ck22 FIND v(dout1_2) AT=230.05n

* CHECK dout1_3 Vdout1_3ck22 = 0 time = 230
.meas tran vdout1_3ck22 FIND v(dout1_3) AT=230.05n

* CHECK dout1_4 Vdout1_4ck22 = 1.8 time = 230
.meas tran vdout1_4ck22 FIND v(dout1_4) AT=230.05n

* CHECK dout1_5 Vdout1_5ck22 = 1.8 time = 230
.meas tran vdout1_5ck22 FIND v(dout1_5) AT=230.05n

* CHECK dout1_6 Vdout1_6ck22 = 1.8 time = 230
.meas tran vdout1_6ck22 FIND v(dout1_6) AT=230.05n

* CHECK dout1_7 Vdout1_7ck22 = 0 time = 230
.meas tran vdout1_7ck22 FIND v(dout1_7) AT=230.05n

* CHECK dout1_0 Vdout1_0ck23 = 1.8 time = 240
.meas tran vdout1_0ck23 FIND v(dout1_0) AT=240.05n

* CHECK dout1_1 Vdout1_1ck23 = 0 time = 240
.meas tran vdout1_1ck23 FIND v(dout1_1) AT=240.05n

* CHECK dout1_2 Vdout1_2ck23 = 1.8 time = 240
.meas tran vdout1_2ck23 FIND v(dout1_2) AT=240.05n

* CHECK dout1_3 Vdout1_3ck23 = 0 time = 240
.meas tran vdout1_3ck23 FIND v(dout1_3) AT=240.05n

* CHECK dout1_4 Vdout1_4ck23 = 1.8 time = 240
.meas tran vdout1_4ck23 FIND v(dout1_4) AT=240.05n

* CHECK dout1_5 Vdout1_5ck23 = 0 time = 240
.meas tran vdout1_5ck23 FIND v(dout1_5) AT=240.05n

* CHECK dout1_6 Vdout1_6ck23 = 1.8 time = 240
.meas tran vdout1_6ck23 FIND v(dout1_6) AT=240.05n

* CHECK dout1_7 Vdout1_7ck23 = 0 time = 240
.meas tran vdout1_7ck23 FIND v(dout1_7) AT=240.05n

* CHECK dout1_0 Vdout1_0ck24 = 1.8 time = 250
.meas tran vdout1_0ck24 FIND v(dout1_0) AT=250.05n

* CHECK dout1_1 Vdout1_1ck24 = 0 time = 250
.meas tran vdout1_1ck24 FIND v(dout1_1) AT=250.05n

* CHECK dout1_2 Vdout1_2ck24 = 1.8 time = 250
.meas tran vdout1_2ck24 FIND v(dout1_2) AT=250.05n

* CHECK dout1_3 Vdout1_3ck24 = 0 time = 250
.meas tran vdout1_3ck24 FIND v(dout1_3) AT=250.05n

* CHECK dout1_4 Vdout1_4ck24 = 1.8 time = 250
.meas tran vdout1_4ck24 FIND v(dout1_4) AT=250.05n

* CHECK dout1_5 Vdout1_5ck24 = 1.8 time = 250
.meas tran vdout1_5ck24 FIND v(dout1_5) AT=250.05n

* CHECK dout1_6 Vdout1_6ck24 = 1.8 time = 250
.meas tran vdout1_6ck24 FIND v(dout1_6) AT=250.05n

* CHECK dout1_7 Vdout1_7ck24 = 0 time = 250
.meas tran vdout1_7ck24 FIND v(dout1_7) AT=250.05n

* CHECK dout0_0 Vdout0_0ck26 = 0 time = 270
.meas tran vdout0_0ck26 FIND v(dout0_0) AT=270.05n

* CHECK dout0_1 Vdout0_1ck26 = 0 time = 270
.meas tran vdout0_1ck26 FIND v(dout0_1) AT=270.05n

* CHECK dout0_2 Vdout0_2ck26 = 1.8 time = 270
.meas tran vdout0_2ck26 FIND v(dout0_2) AT=270.05n

* CHECK dout0_3 Vdout0_3ck26 = 0 time = 270
.meas tran vdout0_3ck26 FIND v(dout0_3) AT=270.05n

* CHECK dout0_4 Vdout0_4ck26 = 0 time = 270
.meas tran vdout0_4ck26 FIND v(dout0_4) AT=270.05n

* CHECK dout0_5 Vdout0_5ck26 = 0 time = 270
.meas tran vdout0_5ck26 FIND v(dout0_5) AT=270.05n

* CHECK dout0_6 Vdout0_6ck26 = 0 time = 270
.meas tran vdout0_6ck26 FIND v(dout0_6) AT=270.05n

* CHECK dout0_7 Vdout0_7ck26 = 1.8 time = 270
.meas tran vdout0_7ck26 FIND v(dout0_7) AT=270.05n

* CHECK dout0_0 Vdout0_0ck27 = 1.8 time = 280
.meas tran vdout0_0ck27 FIND v(dout0_0) AT=280.05n

* CHECK dout0_1 Vdout0_1ck27 = 0 time = 280
.meas tran vdout0_1ck27 FIND v(dout0_1) AT=280.05n

* CHECK dout0_2 Vdout0_2ck27 = 1.8 time = 280
.meas tran vdout0_2ck27 FIND v(dout0_2) AT=280.05n

* CHECK dout0_3 Vdout0_3ck27 = 0 time = 280
.meas tran vdout0_3ck27 FIND v(dout0_3) AT=280.05n

* CHECK dout0_4 Vdout0_4ck27 = 1.8 time = 280
.meas tran vdout0_4ck27 FIND v(dout0_4) AT=280.05n

* CHECK dout0_5 Vdout0_5ck27 = 0 time = 280
.meas tran vdout0_5ck27 FIND v(dout0_5) AT=280.05n

* CHECK dout0_6 Vdout0_6ck27 = 1.8 time = 280
.meas tran vdout0_6ck27 FIND v(dout0_6) AT=280.05n

* CHECK dout0_7 Vdout0_7ck27 = 0 time = 280
.meas tran vdout0_7ck27 FIND v(dout0_7) AT=280.05n

* CHECK dout0_0 Vdout0_0ck28 = 1.8 time = 290
.meas tran vdout0_0ck28 FIND v(dout0_0) AT=290.05n

* CHECK dout0_1 Vdout0_1ck28 = 0 time = 290
.meas tran vdout0_1ck28 FIND v(dout0_1) AT=290.05n

* CHECK dout0_2 Vdout0_2ck28 = 1.8 time = 290
.meas tran vdout0_2ck28 FIND v(dout0_2) AT=290.05n

* CHECK dout0_3 Vdout0_3ck28 = 0 time = 290
.meas tran vdout0_3ck28 FIND v(dout0_3) AT=290.05n

* CHECK dout0_4 Vdout0_4ck28 = 1.8 time = 290
.meas tran vdout0_4ck28 FIND v(dout0_4) AT=290.05n

* CHECK dout0_5 Vdout0_5ck28 = 1.8 time = 290
.meas tran vdout0_5ck28 FIND v(dout0_5) AT=290.05n

* CHECK dout0_6 Vdout0_6ck28 = 1.8 time = 290
.meas tran vdout0_6ck28 FIND v(dout0_6) AT=290.05n

* CHECK dout0_7 Vdout0_7ck28 = 0 time = 290
.meas tran vdout0_7ck28 FIND v(dout0_7) AT=290.05n

* CHECK dout1_0 Vdout1_0ck28 = 1.8 time = 290
.meas tran vdout1_0ck28 FIND v(dout1_0) AT=290.05n

* CHECK dout1_1 Vdout1_1ck28 = 1.8 time = 290
.meas tran vdout1_1ck28 FIND v(dout1_1) AT=290.05n

* CHECK dout1_2 Vdout1_2ck28 = 0 time = 290
.meas tran vdout1_2ck28 FIND v(dout1_2) AT=290.05n

* CHECK dout1_3 Vdout1_3ck28 = 1.8 time = 290
.meas tran vdout1_3ck28 FIND v(dout1_3) AT=290.05n

* CHECK dout1_4 Vdout1_4ck28 = 1.8 time = 290
.meas tran vdout1_4ck28 FIND v(dout1_4) AT=290.05n

* CHECK dout1_5 Vdout1_5ck28 = 1.8 time = 290
.meas tran vdout1_5ck28 FIND v(dout1_5) AT=290.05n

* CHECK dout1_6 Vdout1_6ck28 = 1.8 time = 290
.meas tran vdout1_6ck28 FIND v(dout1_6) AT=290.05n

* CHECK dout1_7 Vdout1_7ck28 = 0 time = 290
.meas tran vdout1_7ck28 FIND v(dout1_7) AT=290.05n

* CHECK dout1_0 Vdout1_0ck29 = 1.8 time = 300
.meas tran vdout1_0ck29 FIND v(dout1_0) AT=300.05n

* CHECK dout1_1 Vdout1_1ck29 = 0 time = 300
.meas tran vdout1_1ck29 FIND v(dout1_1) AT=300.05n

* CHECK dout1_2 Vdout1_2ck29 = 1.8 time = 300
.meas tran vdout1_2ck29 FIND v(dout1_2) AT=300.05n

* CHECK dout1_3 Vdout1_3ck29 = 0 time = 300
.meas tran vdout1_3ck29 FIND v(dout1_3) AT=300.05n

* CHECK dout1_4 Vdout1_4ck29 = 1.8 time = 300
.meas tran vdout1_4ck29 FIND v(dout1_4) AT=300.05n

* CHECK dout1_5 Vdout1_5ck29 = 1.8 time = 300
.meas tran vdout1_5ck29 FIND v(dout1_5) AT=300.05n

* CHECK dout1_6 Vdout1_6ck29 = 1.8 time = 300
.meas tran vdout1_6ck29 FIND v(dout1_6) AT=300.05n

* CHECK dout1_7 Vdout1_7ck29 = 0 time = 300
.meas tran vdout1_7ck29 FIND v(dout1_7) AT=300.05n

* CHECK dout0_0 Vdout0_0ck30 = 1.8 time = 310
.meas tran vdout0_0ck30 FIND v(dout0_0) AT=310.05n

* CHECK dout0_1 Vdout0_1ck30 = 0 time = 310
.meas tran vdout0_1ck30 FIND v(dout0_1) AT=310.05n

* CHECK dout0_2 Vdout0_2ck30 = 1.8 time = 310
.meas tran vdout0_2ck30 FIND v(dout0_2) AT=310.05n

* CHECK dout0_3 Vdout0_3ck30 = 0 time = 310
.meas tran vdout0_3ck30 FIND v(dout0_3) AT=310.05n

* CHECK dout0_4 Vdout0_4ck30 = 1.8 time = 310
.meas tran vdout0_4ck30 FIND v(dout0_4) AT=310.05n

* CHECK dout0_5 Vdout0_5ck30 = 0 time = 310
.meas tran vdout0_5ck30 FIND v(dout0_5) AT=310.05n

* CHECK dout0_6 Vdout0_6ck30 = 1.8 time = 310
.meas tran vdout0_6ck30 FIND v(dout0_6) AT=310.05n

* CHECK dout0_7 Vdout0_7ck30 = 0 time = 310
.meas tran vdout0_7ck30 FIND v(dout0_7) AT=310.05n

* CHECK dout0_0 Vdout0_0ck32 = 1.8 time = 330
.meas tran vdout0_0ck32 FIND v(dout0_0) AT=330.05n

* CHECK dout0_1 Vdout0_1ck32 = 0 time = 330
.meas tran vdout0_1ck32 FIND v(dout0_1) AT=330.05n

* CHECK dout0_2 Vdout0_2ck32 = 1.8 time = 330
.meas tran vdout0_2ck32 FIND v(dout0_2) AT=330.05n

* CHECK dout0_3 Vdout0_3ck32 = 0 time = 330
.meas tran vdout0_3ck32 FIND v(dout0_3) AT=330.05n

* CHECK dout0_4 Vdout0_4ck32 = 1.8 time = 330
.meas tran vdout0_4ck32 FIND v(dout0_4) AT=330.05n

* CHECK dout0_5 Vdout0_5ck32 = 1.8 time = 330
.meas tran vdout0_5ck32 FIND v(dout0_5) AT=330.05n

* CHECK dout0_6 Vdout0_6ck32 = 0 time = 330
.meas tran vdout0_6ck32 FIND v(dout0_6) AT=330.05n

* CHECK dout0_7 Vdout0_7ck32 = 1.8 time = 330
.meas tran vdout0_7ck32 FIND v(dout0_7) AT=330.05n

* CHECK dout1_0 Vdout1_0ck33 = 1.8 time = 340
.meas tran vdout1_0ck33 FIND v(dout1_0) AT=340.05n

* CHECK dout1_1 Vdout1_1ck33 = 0 time = 340
.meas tran vdout1_1ck33 FIND v(dout1_1) AT=340.05n

* CHECK dout1_2 Vdout1_2ck33 = 1.8 time = 340
.meas tran vdout1_2ck33 FIND v(dout1_2) AT=340.05n

* CHECK dout1_3 Vdout1_3ck33 = 0 time = 340
.meas tran vdout1_3ck33 FIND v(dout1_3) AT=340.05n

* CHECK dout1_4 Vdout1_4ck33 = 1.8 time = 340
.meas tran vdout1_4ck33 FIND v(dout1_4) AT=340.05n

* CHECK dout1_5 Vdout1_5ck33 = 1.8 time = 340
.meas tran vdout1_5ck33 FIND v(dout1_5) AT=340.05n

* CHECK dout1_6 Vdout1_6ck33 = 0 time = 340
.meas tran vdout1_6ck33 FIND v(dout1_6) AT=340.05n

* CHECK dout1_7 Vdout1_7ck33 = 1.8 time = 340
.meas tran vdout1_7ck33 FIND v(dout1_7) AT=340.05n

* CHECK dout0_0 Vdout0_0ck34 = 1.8 time = 350
.meas tran vdout0_0ck34 FIND v(dout0_0) AT=350.05n

* CHECK dout0_1 Vdout0_1ck34 = 0 time = 350
.meas tran vdout0_1ck34 FIND v(dout0_1) AT=350.05n

* CHECK dout0_2 Vdout0_2ck34 = 1.8 time = 350
.meas tran vdout0_2ck34 FIND v(dout0_2) AT=350.05n

* CHECK dout0_3 Vdout0_3ck34 = 0 time = 350
.meas tran vdout0_3ck34 FIND v(dout0_3) AT=350.05n

* CHECK dout0_4 Vdout0_4ck34 = 1.8 time = 350
.meas tran vdout0_4ck34 FIND v(dout0_4) AT=350.05n

* CHECK dout0_5 Vdout0_5ck34 = 1.8 time = 350
.meas tran vdout0_5ck34 FIND v(dout0_5) AT=350.05n

* CHECK dout0_6 Vdout0_6ck34 = 1.8 time = 350
.meas tran vdout0_6ck34 FIND v(dout0_6) AT=350.05n

* CHECK dout0_7 Vdout0_7ck34 = 0 time = 350
.meas tran vdout0_7ck34 FIND v(dout0_7) AT=350.05n

* CHECK dout1_0 Vdout1_0ck36 = 1.8 time = 370
.meas tran vdout1_0ck36 FIND v(dout1_0) AT=370.05n

* CHECK dout1_1 Vdout1_1ck36 = 0 time = 370
.meas tran vdout1_1ck36 FIND v(dout1_1) AT=370.05n

* CHECK dout1_2 Vdout1_2ck36 = 1.8 time = 370
.meas tran vdout1_2ck36 FIND v(dout1_2) AT=370.05n

* CHECK dout1_3 Vdout1_3ck36 = 0 time = 370
.meas tran vdout1_3ck36 FIND v(dout1_3) AT=370.05n

* CHECK dout1_4 Vdout1_4ck36 = 1.8 time = 370
.meas tran vdout1_4ck36 FIND v(dout1_4) AT=370.05n

* CHECK dout1_5 Vdout1_5ck36 = 1.8 time = 370
.meas tran vdout1_5ck36 FIND v(dout1_5) AT=370.05n

* CHECK dout1_6 Vdout1_6ck36 = 1.8 time = 370
.meas tran vdout1_6ck36 FIND v(dout1_6) AT=370.05n

* CHECK dout1_7 Vdout1_7ck36 = 0 time = 370
.meas tran vdout1_7ck36 FIND v(dout1_7) AT=370.05n

* CHECK dout0_0 Vdout0_0ck37 = 1.8 time = 380
.meas tran vdout0_0ck37 FIND v(dout0_0) AT=380.05n

* CHECK dout0_1 Vdout0_1ck37 = 1.8 time = 380
.meas tran vdout0_1ck37 FIND v(dout0_1) AT=380.05n

* CHECK dout0_2 Vdout0_2ck37 = 0 time = 380
.meas tran vdout0_2ck37 FIND v(dout0_2) AT=380.05n

* CHECK dout0_3 Vdout0_3ck37 = 1.8 time = 380
.meas tran vdout0_3ck37 FIND v(dout0_3) AT=380.05n

* CHECK dout0_4 Vdout0_4ck37 = 1.8 time = 380
.meas tran vdout0_4ck37 FIND v(dout0_4) AT=380.05n

* CHECK dout0_5 Vdout0_5ck37 = 1.8 time = 380
.meas tran vdout0_5ck37 FIND v(dout0_5) AT=380.05n

* CHECK dout0_6 Vdout0_6ck37 = 1.8 time = 380
.meas tran vdout0_6ck37 FIND v(dout0_6) AT=380.05n

* CHECK dout0_7 Vdout0_7ck37 = 0 time = 380
.meas tran vdout0_7ck37 FIND v(dout0_7) AT=380.05n

* CHECK dout1_0 Vdout1_0ck38 = 1.8 time = 390
.meas tran vdout1_0ck38 FIND v(dout1_0) AT=390.05n

* CHECK dout1_1 Vdout1_1ck38 = 0 time = 390
.meas tran vdout1_1ck38 FIND v(dout1_1) AT=390.05n

* CHECK dout1_2 Vdout1_2ck38 = 1.8 time = 390
.meas tran vdout1_2ck38 FIND v(dout1_2) AT=390.05n

* CHECK dout1_3 Vdout1_3ck38 = 0 time = 390
.meas tran vdout1_3ck38 FIND v(dout1_3) AT=390.05n

* CHECK dout1_4 Vdout1_4ck38 = 1.8 time = 390
.meas tran vdout1_4ck38 FIND v(dout1_4) AT=390.05n

* CHECK dout1_5 Vdout1_5ck38 = 0 time = 390
.meas tran vdout1_5ck38 FIND v(dout1_5) AT=390.05n

* CHECK dout1_6 Vdout1_6ck38 = 1.8 time = 390
.meas tran vdout1_6ck38 FIND v(dout1_6) AT=390.05n

* CHECK dout1_7 Vdout1_7ck38 = 0 time = 390
.meas tran vdout1_7ck38 FIND v(dout1_7) AT=390.05n

* CHECK dout1_0 Vdout1_0ck40 = 1.8 time = 410
.meas tran vdout1_0ck40 FIND v(dout1_0) AT=410.05n

* CHECK dout1_1 Vdout1_1ck40 = 0 time = 410
.meas tran vdout1_1ck40 FIND v(dout1_1) AT=410.05n

* CHECK dout1_2 Vdout1_2ck40 = 1.8 time = 410
.meas tran vdout1_2ck40 FIND v(dout1_2) AT=410.05n

* CHECK dout1_3 Vdout1_3ck40 = 0 time = 410
.meas tran vdout1_3ck40 FIND v(dout1_3) AT=410.05n

* CHECK dout1_4 Vdout1_4ck40 = 1.8 time = 410
.meas tran vdout1_4ck40 FIND v(dout1_4) AT=410.05n

* CHECK dout1_5 Vdout1_5ck40 = 1.8 time = 410
.meas tran vdout1_5ck40 FIND v(dout1_5) AT=410.05n

* CHECK dout1_6 Vdout1_6ck40 = 0 time = 410
.meas tran vdout1_6ck40 FIND v(dout1_6) AT=410.05n

* CHECK dout1_7 Vdout1_7ck40 = 1.8 time = 410
.meas tran vdout1_7ck40 FIND v(dout1_7) AT=410.05n

* CHECK dout0_0 Vdout0_0ck42 = 0 time = 430
.meas tran vdout0_0ck42 FIND v(dout0_0) AT=430.05n

* CHECK dout0_1 Vdout0_1ck42 = 0 time = 430
.meas tran vdout0_1ck42 FIND v(dout0_1) AT=430.05n

* CHECK dout0_2 Vdout0_2ck42 = 1.8 time = 430
.meas tran vdout0_2ck42 FIND v(dout0_2) AT=430.05n

* CHECK dout0_3 Vdout0_3ck42 = 0 time = 430
.meas tran vdout0_3ck42 FIND v(dout0_3) AT=430.05n

* CHECK dout0_4 Vdout0_4ck42 = 0 time = 430
.meas tran vdout0_4ck42 FIND v(dout0_4) AT=430.05n

* CHECK dout0_5 Vdout0_5ck42 = 0 time = 430
.meas tran vdout0_5ck42 FIND v(dout0_5) AT=430.05n

* CHECK dout0_6 Vdout0_6ck42 = 0 time = 430
.meas tran vdout0_6ck42 FIND v(dout0_6) AT=430.05n

* CHECK dout0_7 Vdout0_7ck42 = 1.8 time = 430
.meas tran vdout0_7ck42 FIND v(dout0_7) AT=430.05n

* CHECK dout1_0 Vdout1_0ck42 = 0 time = 430
.meas tran vdout1_0ck42 FIND v(dout1_0) AT=430.05n

* CHECK dout1_1 Vdout1_1ck42 = 0 time = 430
.meas tran vdout1_1ck42 FIND v(dout1_1) AT=430.05n

* CHECK dout1_2 Vdout1_2ck42 = 1.8 time = 430
.meas tran vdout1_2ck42 FIND v(dout1_2) AT=430.05n

* CHECK dout1_3 Vdout1_3ck42 = 0 time = 430
.meas tran vdout1_3ck42 FIND v(dout1_3) AT=430.05n

* CHECK dout1_4 Vdout1_4ck42 = 0 time = 430
.meas tran vdout1_4ck42 FIND v(dout1_4) AT=430.05n

* CHECK dout1_5 Vdout1_5ck42 = 0 time = 430
.meas tran vdout1_5ck42 FIND v(dout1_5) AT=430.05n

* CHECK dout1_6 Vdout1_6ck42 = 0 time = 430
.meas tran vdout1_6ck42 FIND v(dout1_6) AT=430.05n

* CHECK dout1_7 Vdout1_7ck42 = 1.8 time = 430
.meas tran vdout1_7ck42 FIND v(dout1_7) AT=430.05n

* CHECK dout1_0 Vdout1_0ck43 = 1.8 time = 440
.meas tran vdout1_0ck43 FIND v(dout1_0) AT=440.05n

* CHECK dout1_1 Vdout1_1ck43 = 1.8 time = 440
.meas tran vdout1_1ck43 FIND v(dout1_1) AT=440.05n

* CHECK dout1_2 Vdout1_2ck43 = 0 time = 440
.meas tran vdout1_2ck43 FIND v(dout1_2) AT=440.05n

* CHECK dout1_3 Vdout1_3ck43 = 1.8 time = 440
.meas tran vdout1_3ck43 FIND v(dout1_3) AT=440.05n

* CHECK dout1_4 Vdout1_4ck43 = 1.8 time = 440
.meas tran vdout1_4ck43 FIND v(dout1_4) AT=440.05n

* CHECK dout1_5 Vdout1_5ck43 = 1.8 time = 440
.meas tran vdout1_5ck43 FIND v(dout1_5) AT=440.05n

* CHECK dout1_6 Vdout1_6ck43 = 1.8 time = 440
.meas tran vdout1_6ck43 FIND v(dout1_6) AT=440.05n

* CHECK dout1_7 Vdout1_7ck43 = 0 time = 440
.meas tran vdout1_7ck43 FIND v(dout1_7) AT=440.05n

* CHECK dout0_0 Vdout0_0ck44 = 1.8 time = 450
.meas tran vdout0_0ck44 FIND v(dout0_0) AT=450.05n

* CHECK dout0_1 Vdout0_1ck44 = 1.8 time = 450
.meas tran vdout0_1ck44 FIND v(dout0_1) AT=450.05n

* CHECK dout0_2 Vdout0_2ck44 = 0 time = 450
.meas tran vdout0_2ck44 FIND v(dout0_2) AT=450.05n

* CHECK dout0_3 Vdout0_3ck44 = 1.8 time = 450
.meas tran vdout0_3ck44 FIND v(dout0_3) AT=450.05n

* CHECK dout0_4 Vdout0_4ck44 = 1.8 time = 450
.meas tran vdout0_4ck44 FIND v(dout0_4) AT=450.05n

* CHECK dout0_5 Vdout0_5ck44 = 1.8 time = 450
.meas tran vdout0_5ck44 FIND v(dout0_5) AT=450.05n

* CHECK dout0_6 Vdout0_6ck44 = 1.8 time = 450
.meas tran vdout0_6ck44 FIND v(dout0_6) AT=450.05n

* CHECK dout0_7 Vdout0_7ck44 = 0 time = 450
.meas tran vdout0_7ck44 FIND v(dout0_7) AT=450.05n

* CHECK dout1_0 Vdout1_0ck44 = 0 time = 450
.meas tran vdout1_0ck44 FIND v(dout1_0) AT=450.05n

* CHECK dout1_1 Vdout1_1ck44 = 0 time = 450
.meas tran vdout1_1ck44 FIND v(dout1_1) AT=450.05n

* CHECK dout1_2 Vdout1_2ck44 = 1.8 time = 450
.meas tran vdout1_2ck44 FIND v(dout1_2) AT=450.05n

* CHECK dout1_3 Vdout1_3ck44 = 0 time = 450
.meas tran vdout1_3ck44 FIND v(dout1_3) AT=450.05n

* CHECK dout1_4 Vdout1_4ck44 = 0 time = 450
.meas tran vdout1_4ck44 FIND v(dout1_4) AT=450.05n

* CHECK dout1_5 Vdout1_5ck44 = 1.8 time = 450
.meas tran vdout1_5ck44 FIND v(dout1_5) AT=450.05n

* CHECK dout1_6 Vdout1_6ck44 = 0 time = 450
.meas tran vdout1_6ck44 FIND v(dout1_6) AT=450.05n

* CHECK dout1_7 Vdout1_7ck44 = 1.8 time = 450
.meas tran vdout1_7ck44 FIND v(dout1_7) AT=450.05n

* CHECK dout0_0 Vdout0_0ck45 = 1.8 time = 460
.meas tran vdout0_0ck45 FIND v(dout0_0) AT=460.05n

* CHECK dout0_1 Vdout0_1ck45 = 0 time = 460
.meas tran vdout0_1ck45 FIND v(dout0_1) AT=460.05n

* CHECK dout0_2 Vdout0_2ck45 = 1.8 time = 460
.meas tran vdout0_2ck45 FIND v(dout0_2) AT=460.05n

* CHECK dout0_3 Vdout0_3ck45 = 0 time = 460
.meas tran vdout0_3ck45 FIND v(dout0_3) AT=460.05n

* CHECK dout0_4 Vdout0_4ck45 = 1.8 time = 460
.meas tran vdout0_4ck45 FIND v(dout0_4) AT=460.05n

* CHECK dout0_5 Vdout0_5ck45 = 1.8 time = 460
.meas tran vdout0_5ck45 FIND v(dout0_5) AT=460.05n

* CHECK dout0_6 Vdout0_6ck45 = 1.8 time = 460
.meas tran vdout0_6ck45 FIND v(dout0_6) AT=460.05n

* CHECK dout0_7 Vdout0_7ck45 = 0 time = 460
.meas tran vdout0_7ck45 FIND v(dout0_7) AT=460.05n

* CHECK dout0_0 Vdout0_0ck48 = 1.8 time = 490
.meas tran vdout0_0ck48 FIND v(dout0_0) AT=490.05n

* CHECK dout0_1 Vdout0_1ck48 = 1.8 time = 490
.meas tran vdout0_1ck48 FIND v(dout0_1) AT=490.05n

* CHECK dout0_2 Vdout0_2ck48 = 0 time = 490
.meas tran vdout0_2ck48 FIND v(dout0_2) AT=490.05n

* CHECK dout0_3 Vdout0_3ck48 = 0 time = 490
.meas tran vdout0_3ck48 FIND v(dout0_3) AT=490.05n

* CHECK dout0_4 Vdout0_4ck48 = 1.8 time = 490
.meas tran vdout0_4ck48 FIND v(dout0_4) AT=490.05n

* CHECK dout0_5 Vdout0_5ck48 = 0 time = 490
.meas tran vdout0_5ck48 FIND v(dout0_5) AT=490.05n

* CHECK dout0_6 Vdout0_6ck48 = 1.8 time = 490
.meas tran vdout0_6ck48 FIND v(dout0_6) AT=490.05n

* CHECK dout0_7 Vdout0_7ck48 = 1.8 time = 490
.meas tran vdout0_7ck48 FIND v(dout0_7) AT=490.05n

* CHECK dout1_0 Vdout1_0ck48 = 1.8 time = 490
.meas tran vdout1_0ck48 FIND v(dout1_0) AT=490.05n

* CHECK dout1_1 Vdout1_1ck48 = 1.8 time = 490
.meas tran vdout1_1ck48 FIND v(dout1_1) AT=490.05n

* CHECK dout1_2 Vdout1_2ck48 = 0 time = 490
.meas tran vdout1_2ck48 FIND v(dout1_2) AT=490.05n

* CHECK dout1_3 Vdout1_3ck48 = 0 time = 490
.meas tran vdout1_3ck48 FIND v(dout1_3) AT=490.05n

* CHECK dout1_4 Vdout1_4ck48 = 1.8 time = 490
.meas tran vdout1_4ck48 FIND v(dout1_4) AT=490.05n

* CHECK dout1_5 Vdout1_5ck48 = 0 time = 490
.meas tran vdout1_5ck48 FIND v(dout1_5) AT=490.05n

* CHECK dout1_6 Vdout1_6ck48 = 1.8 time = 490
.meas tran vdout1_6ck48 FIND v(dout1_6) AT=490.05n

* CHECK dout1_7 Vdout1_7ck48 = 1.8 time = 490
.meas tran vdout1_7ck48 FIND v(dout1_7) AT=490.05n

* CHECK dout0_0 Vdout0_0ck49 = 1.8 time = 500
.meas tran vdout0_0ck49 FIND v(dout0_0) AT=500.05n

* CHECK dout0_1 Vdout0_1ck49 = 0 time = 500
.meas tran vdout0_1ck49 FIND v(dout0_1) AT=500.05n

* CHECK dout0_2 Vdout0_2ck49 = 1.8 time = 500
.meas tran vdout0_2ck49 FIND v(dout0_2) AT=500.05n

* CHECK dout0_3 Vdout0_3ck49 = 0 time = 500
.meas tran vdout0_3ck49 FIND v(dout0_3) AT=500.05n

* CHECK dout0_4 Vdout0_4ck49 = 1.8 time = 500
.meas tran vdout0_4ck49 FIND v(dout0_4) AT=500.05n

* CHECK dout0_5 Vdout0_5ck49 = 0 time = 500
.meas tran vdout0_5ck49 FIND v(dout0_5) AT=500.05n

* CHECK dout0_6 Vdout0_6ck49 = 1.8 time = 500
.meas tran vdout0_6ck49 FIND v(dout0_6) AT=500.05n

* CHECK dout0_7 Vdout0_7ck49 = 0 time = 500
.meas tran vdout0_7ck49 FIND v(dout0_7) AT=500.05n

* CHECK dout1_0 Vdout1_0ck49 = 0 time = 500
.meas tran vdout1_0ck49 FIND v(dout1_0) AT=500.05n

* CHECK dout1_1 Vdout1_1ck49 = 1.8 time = 500
.meas tran vdout1_1ck49 FIND v(dout1_1) AT=500.05n

* CHECK dout1_2 Vdout1_2ck49 = 0 time = 500
.meas tran vdout1_2ck49 FIND v(dout1_2) AT=500.05n

* CHECK dout1_3 Vdout1_3ck49 = 0 time = 500
.meas tran vdout1_3ck49 FIND v(dout1_3) AT=500.05n

* CHECK dout1_4 Vdout1_4ck49 = 1.8 time = 500
.meas tran vdout1_4ck49 FIND v(dout1_4) AT=500.05n

* CHECK dout1_5 Vdout1_5ck49 = 1.8 time = 500
.meas tran vdout1_5ck49 FIND v(dout1_5) AT=500.05n

* CHECK dout1_6 Vdout1_6ck49 = 0 time = 500
.meas tran vdout1_6ck49 FIND v(dout1_6) AT=500.05n

* CHECK dout1_7 Vdout1_7ck49 = 1.8 time = 500
.meas tran vdout1_7ck49 FIND v(dout1_7) AT=500.05n

* CHECK dout1_0 Vdout1_0ck50 = 1.8 time = 510
.meas tran vdout1_0ck50 FIND v(dout1_0) AT=510.05n

* CHECK dout1_1 Vdout1_1ck50 = 0 time = 510
.meas tran vdout1_1ck50 FIND v(dout1_1) AT=510.05n

* CHECK dout1_2 Vdout1_2ck50 = 1.8 time = 510
.meas tran vdout1_2ck50 FIND v(dout1_2) AT=510.05n

* CHECK dout1_3 Vdout1_3ck50 = 0 time = 510
.meas tran vdout1_3ck50 FIND v(dout1_3) AT=510.05n

* CHECK dout1_4 Vdout1_4ck50 = 1.8 time = 510
.meas tran vdout1_4ck50 FIND v(dout1_4) AT=510.05n

* CHECK dout1_5 Vdout1_5ck50 = 0 time = 510
.meas tran vdout1_5ck50 FIND v(dout1_5) AT=510.05n

* CHECK dout1_6 Vdout1_6ck50 = 1.8 time = 510
.meas tran vdout1_6ck50 FIND v(dout1_6) AT=510.05n

* CHECK dout1_7 Vdout1_7ck50 = 0 time = 510
.meas tran vdout1_7ck50 FIND v(dout1_7) AT=510.05n

* CHECK dout1_0 Vdout1_0ck51 = 0 time = 520
.meas tran vdout1_0ck51 FIND v(dout1_0) AT=520.05n

* CHECK dout1_1 Vdout1_1ck51 = 1.8 time = 520
.meas tran vdout1_1ck51 FIND v(dout1_1) AT=520.05n

* CHECK dout1_2 Vdout1_2ck51 = 0 time = 520
.meas tran vdout1_2ck51 FIND v(dout1_2) AT=520.05n

* CHECK dout1_3 Vdout1_3ck51 = 1.8 time = 520
.meas tran vdout1_3ck51 FIND v(dout1_3) AT=520.05n

* CHECK dout1_4 Vdout1_4ck51 = 1.8 time = 520
.meas tran vdout1_4ck51 FIND v(dout1_4) AT=520.05n

* CHECK dout1_5 Vdout1_5ck51 = 1.8 time = 520
.meas tran vdout1_5ck51 FIND v(dout1_5) AT=520.05n

* CHECK dout1_6 Vdout1_6ck51 = 1.8 time = 520
.meas tran vdout1_6ck51 FIND v(dout1_6) AT=520.05n

* CHECK dout1_7 Vdout1_7ck51 = 0 time = 520
.meas tran vdout1_7ck51 FIND v(dout1_7) AT=520.05n

* CHECK dout0_0 Vdout0_0ck52 = 1.8 time = 530
.meas tran vdout0_0ck52 FIND v(dout0_0) AT=530.05n

* CHECK dout0_1 Vdout0_1ck52 = 0 time = 530
.meas tran vdout0_1ck52 FIND v(dout0_1) AT=530.05n

* CHECK dout0_2 Vdout0_2ck52 = 1.8 time = 530
.meas tran vdout0_2ck52 FIND v(dout0_2) AT=530.05n

* CHECK dout0_3 Vdout0_3ck52 = 1.8 time = 530
.meas tran vdout0_3ck52 FIND v(dout0_3) AT=530.05n

* CHECK dout0_4 Vdout0_4ck52 = 1.8 time = 530
.meas tran vdout0_4ck52 FIND v(dout0_4) AT=530.05n

* CHECK dout0_5 Vdout0_5ck52 = 0 time = 530
.meas tran vdout0_5ck52 FIND v(dout0_5) AT=530.05n

* CHECK dout0_6 Vdout0_6ck52 = 0 time = 530
.meas tran vdout0_6ck52 FIND v(dout0_6) AT=530.05n

* CHECK dout0_7 Vdout0_7ck52 = 1.8 time = 530
.meas tran vdout0_7ck52 FIND v(dout0_7) AT=530.05n

* CHECK dout0_0 Vdout0_0ck54 = 1.8 time = 550
.meas tran vdout0_0ck54 FIND v(dout0_0) AT=550.05n

* CHECK dout0_1 Vdout0_1ck54 = 0 time = 550
.meas tran vdout0_1ck54 FIND v(dout0_1) AT=550.05n

* CHECK dout0_2 Vdout0_2ck54 = 1.8 time = 550
.meas tran vdout0_2ck54 FIND v(dout0_2) AT=550.05n

* CHECK dout0_3 Vdout0_3ck54 = 0 time = 550
.meas tran vdout0_3ck54 FIND v(dout0_3) AT=550.05n

* CHECK dout0_4 Vdout0_4ck54 = 1.8 time = 550
.meas tran vdout0_4ck54 FIND v(dout0_4) AT=550.05n

* CHECK dout0_5 Vdout0_5ck54 = 0 time = 550
.meas tran vdout0_5ck54 FIND v(dout0_5) AT=550.05n

* CHECK dout0_6 Vdout0_6ck54 = 1.8 time = 550
.meas tran vdout0_6ck54 FIND v(dout0_6) AT=550.05n

* CHECK dout0_7 Vdout0_7ck54 = 0 time = 550
.meas tran vdout0_7ck54 FIND v(dout0_7) AT=550.05n

* CHECK dout1_0 Vdout1_0ck54 = 1.8 time = 550
.meas tran vdout1_0ck54 FIND v(dout1_0) AT=550.05n

* CHECK dout1_1 Vdout1_1ck54 = 1.8 time = 550
.meas tran vdout1_1ck54 FIND v(dout1_1) AT=550.05n

* CHECK dout1_2 Vdout1_2ck54 = 0 time = 550
.meas tran vdout1_2ck54 FIND v(dout1_2) AT=550.05n

* CHECK dout1_3 Vdout1_3ck54 = 0 time = 550
.meas tran vdout1_3ck54 FIND v(dout1_3) AT=550.05n

* CHECK dout1_4 Vdout1_4ck54 = 1.8 time = 550
.meas tran vdout1_4ck54 FIND v(dout1_4) AT=550.05n

* CHECK dout1_5 Vdout1_5ck54 = 1.8 time = 550
.meas tran vdout1_5ck54 FIND v(dout1_5) AT=550.05n

* CHECK dout1_6 Vdout1_6ck54 = 1.8 time = 550
.meas tran vdout1_6ck54 FIND v(dout1_6) AT=550.05n

* CHECK dout1_7 Vdout1_7ck54 = 1.8 time = 550
.meas tran vdout1_7ck54 FIND v(dout1_7) AT=550.05n

* CHECK dout0_0 Vdout0_0ck55 = 1.8 time = 560
.meas tran vdout0_0ck55 FIND v(dout0_0) AT=560.05n

* CHECK dout0_1 Vdout0_1ck55 = 0 time = 560
.meas tran vdout0_1ck55 FIND v(dout0_1) AT=560.05n

* CHECK dout0_2 Vdout0_2ck55 = 1.8 time = 560
.meas tran vdout0_2ck55 FIND v(dout0_2) AT=560.05n

* CHECK dout0_3 Vdout0_3ck55 = 0 time = 560
.meas tran vdout0_3ck55 FIND v(dout0_3) AT=560.05n

* CHECK dout0_4 Vdout0_4ck55 = 1.8 time = 560
.meas tran vdout0_4ck55 FIND v(dout0_4) AT=560.05n

* CHECK dout0_5 Vdout0_5ck55 = 1.8 time = 560
.meas tran vdout0_5ck55 FIND v(dout0_5) AT=560.05n

* CHECK dout0_6 Vdout0_6ck55 = 1.8 time = 560
.meas tran vdout0_6ck55 FIND v(dout0_6) AT=560.05n

* CHECK dout0_7 Vdout0_7ck55 = 0 time = 560
.meas tran vdout0_7ck55 FIND v(dout0_7) AT=560.05n

* CHECK dout1_0 Vdout1_0ck55 = 1.8 time = 560
.meas tran vdout1_0ck55 FIND v(dout1_0) AT=560.05n

* CHECK dout1_1 Vdout1_1ck55 = 0 time = 560
.meas tran vdout1_1ck55 FIND v(dout1_1) AT=560.05n

* CHECK dout1_2 Vdout1_2ck55 = 1.8 time = 560
.meas tran vdout1_2ck55 FIND v(dout1_2) AT=560.05n

* CHECK dout1_3 Vdout1_3ck55 = 0 time = 560
.meas tran vdout1_3ck55 FIND v(dout1_3) AT=560.05n

* CHECK dout1_4 Vdout1_4ck55 = 1.8 time = 560
.meas tran vdout1_4ck55 FIND v(dout1_4) AT=560.05n

* CHECK dout1_5 Vdout1_5ck55 = 1.8 time = 560
.meas tran vdout1_5ck55 FIND v(dout1_5) AT=560.05n

* CHECK dout1_6 Vdout1_6ck55 = 1.8 time = 560
.meas tran vdout1_6ck55 FIND v(dout1_6) AT=560.05n

* CHECK dout1_7 Vdout1_7ck55 = 0 time = 560
.meas tran vdout1_7ck55 FIND v(dout1_7) AT=560.05n

* CHECK dout0_0 Vdout0_0ck56 = 1.8 time = 570
.meas tran vdout0_0ck56 FIND v(dout0_0) AT=570.05n

* CHECK dout0_1 Vdout0_1ck56 = 0 time = 570
.meas tran vdout0_1ck56 FIND v(dout0_1) AT=570.05n

* CHECK dout0_2 Vdout0_2ck56 = 1.8 time = 570
.meas tran vdout0_2ck56 FIND v(dout0_2) AT=570.05n

* CHECK dout0_3 Vdout0_3ck56 = 0 time = 570
.meas tran vdout0_3ck56 FIND v(dout0_3) AT=570.05n

* CHECK dout0_4 Vdout0_4ck56 = 1.8 time = 570
.meas tran vdout0_4ck56 FIND v(dout0_4) AT=570.05n

* CHECK dout0_5 Vdout0_5ck56 = 1.8 time = 570
.meas tran vdout0_5ck56 FIND v(dout0_5) AT=570.05n

* CHECK dout0_6 Vdout0_6ck56 = 1.8 time = 570
.meas tran vdout0_6ck56 FIND v(dout0_6) AT=570.05n

* CHECK dout0_7 Vdout0_7ck56 = 0 time = 570
.meas tran vdout0_7ck56 FIND v(dout0_7) AT=570.05n

* CHECK dout0_0 Vdout0_0ck57 = 1.8 time = 580
.meas tran vdout0_0ck57 FIND v(dout0_0) AT=580.05n

* CHECK dout0_1 Vdout0_1ck57 = 1.8 time = 580
.meas tran vdout0_1ck57 FIND v(dout0_1) AT=580.05n

* CHECK dout0_2 Vdout0_2ck57 = 0 time = 580
.meas tran vdout0_2ck57 FIND v(dout0_2) AT=580.05n

* CHECK dout0_3 Vdout0_3ck57 = 0 time = 580
.meas tran vdout0_3ck57 FIND v(dout0_3) AT=580.05n

* CHECK dout0_4 Vdout0_4ck57 = 1.8 time = 580
.meas tran vdout0_4ck57 FIND v(dout0_4) AT=580.05n

* CHECK dout0_5 Vdout0_5ck57 = 0 time = 580
.meas tran vdout0_5ck57 FIND v(dout0_5) AT=580.05n

* CHECK dout0_6 Vdout0_6ck57 = 1.8 time = 580
.meas tran vdout0_6ck57 FIND v(dout0_6) AT=580.05n

* CHECK dout0_7 Vdout0_7ck57 = 1.8 time = 580
.meas tran vdout0_7ck57 FIND v(dout0_7) AT=580.05n

* CHECK dout1_0 Vdout1_0ck58 = 1.8 time = 590
.meas tran vdout1_0ck58 FIND v(dout1_0) AT=590.05n

* CHECK dout1_1 Vdout1_1ck58 = 0 time = 590
.meas tran vdout1_1ck58 FIND v(dout1_1) AT=590.05n

* CHECK dout1_2 Vdout1_2ck58 = 1.8 time = 590
.meas tran vdout1_2ck58 FIND v(dout1_2) AT=590.05n

* CHECK dout1_3 Vdout1_3ck58 = 1.8 time = 590
.meas tran vdout1_3ck58 FIND v(dout1_3) AT=590.05n

* CHECK dout1_4 Vdout1_4ck58 = 1.8 time = 590
.meas tran vdout1_4ck58 FIND v(dout1_4) AT=590.05n

* CHECK dout1_5 Vdout1_5ck58 = 0 time = 590
.meas tran vdout1_5ck58 FIND v(dout1_5) AT=590.05n

* CHECK dout1_6 Vdout1_6ck58 = 0 time = 590
.meas tran vdout1_6ck58 FIND v(dout1_6) AT=590.05n

* CHECK dout1_7 Vdout1_7ck58 = 1.8 time = 590
.meas tran vdout1_7ck58 FIND v(dout1_7) AT=590.05n

* CHECK dout0_0 Vdout0_0ck59 = 1.8 time = 600
.meas tran vdout0_0ck59 FIND v(dout0_0) AT=600.05n

* CHECK dout0_1 Vdout0_1ck59 = 1.8 time = 600
.meas tran vdout0_1ck59 FIND v(dout0_1) AT=600.05n

* CHECK dout0_2 Vdout0_2ck59 = 0 time = 600
.meas tran vdout0_2ck59 FIND v(dout0_2) AT=600.05n

* CHECK dout0_3 Vdout0_3ck59 = 0 time = 600
.meas tran vdout0_3ck59 FIND v(dout0_3) AT=600.05n

* CHECK dout0_4 Vdout0_4ck59 = 1.8 time = 600
.meas tran vdout0_4ck59 FIND v(dout0_4) AT=600.05n

* CHECK dout0_5 Vdout0_5ck59 = 0 time = 600
.meas tran vdout0_5ck59 FIND v(dout0_5) AT=600.05n

* CHECK dout0_6 Vdout0_6ck59 = 1.8 time = 600
.meas tran vdout0_6ck59 FIND v(dout0_6) AT=600.05n

* CHECK dout0_7 Vdout0_7ck59 = 1.8 time = 600
.meas tran vdout0_7ck59 FIND v(dout0_7) AT=600.05n

* CHECK dout1_0 Vdout1_0ck59 = 0 time = 600
.meas tran vdout1_0ck59 FIND v(dout1_0) AT=600.05n

* CHECK dout1_1 Vdout1_1ck59 = 1.8 time = 600
.meas tran vdout1_1ck59 FIND v(dout1_1) AT=600.05n

* CHECK dout1_2 Vdout1_2ck59 = 0 time = 600
.meas tran vdout1_2ck59 FIND v(dout1_2) AT=600.05n

* CHECK dout1_3 Vdout1_3ck59 = 1.8 time = 600
.meas tran vdout1_3ck59 FIND v(dout1_3) AT=600.05n

* CHECK dout1_4 Vdout1_4ck59 = 0 time = 600
.meas tran vdout1_4ck59 FIND v(dout1_4) AT=600.05n

* CHECK dout1_5 Vdout1_5ck59 = 1.8 time = 600
.meas tran vdout1_5ck59 FIND v(dout1_5) AT=600.05n

* CHECK dout1_6 Vdout1_6ck59 = 0 time = 600
.meas tran vdout1_6ck59 FIND v(dout1_6) AT=600.05n

* CHECK dout1_7 Vdout1_7ck59 = 0 time = 600
.meas tran vdout1_7ck59 FIND v(dout1_7) AT=600.05n

* CHECK dout0_0 Vdout0_0ck60 = 0 time = 610
.meas tran vdout0_0ck60 FIND v(dout0_0) AT=610.05n

* CHECK dout0_1 Vdout0_1ck60 = 1.8 time = 610
.meas tran vdout0_1ck60 FIND v(dout0_1) AT=610.05n

* CHECK dout0_2 Vdout0_2ck60 = 0 time = 610
.meas tran vdout0_2ck60 FIND v(dout0_2) AT=610.05n

* CHECK dout0_3 Vdout0_3ck60 = 1.8 time = 610
.meas tran vdout0_3ck60 FIND v(dout0_3) AT=610.05n

* CHECK dout0_4 Vdout0_4ck60 = 1.8 time = 610
.meas tran vdout0_4ck60 FIND v(dout0_4) AT=610.05n

* CHECK dout0_5 Vdout0_5ck60 = 1.8 time = 610
.meas tran vdout0_5ck60 FIND v(dout0_5) AT=610.05n

* CHECK dout0_6 Vdout0_6ck60 = 1.8 time = 610
.meas tran vdout0_6ck60 FIND v(dout0_6) AT=610.05n

* CHECK dout0_7 Vdout0_7ck60 = 0 time = 610
.meas tran vdout0_7ck60 FIND v(dout0_7) AT=610.05n

* CHECK dout0_0 Vdout0_0ck61 = 0 time = 620
.meas tran vdout0_0ck61 FIND v(dout0_0) AT=620.05n

* CHECK dout0_1 Vdout0_1ck61 = 0 time = 620
.meas tran vdout0_1ck61 FIND v(dout0_1) AT=620.05n

* CHECK dout0_2 Vdout0_2ck61 = 1.8 time = 620
.meas tran vdout0_2ck61 FIND v(dout0_2) AT=620.05n

* CHECK dout0_3 Vdout0_3ck61 = 0 time = 620
.meas tran vdout0_3ck61 FIND v(dout0_3) AT=620.05n

* CHECK dout0_4 Vdout0_4ck61 = 0 time = 620
.meas tran vdout0_4ck61 FIND v(dout0_4) AT=620.05n

* CHECK dout0_5 Vdout0_5ck61 = 1.8 time = 620
.meas tran vdout0_5ck61 FIND v(dout0_5) AT=620.05n

* CHECK dout0_6 Vdout0_6ck61 = 0 time = 620
.meas tran vdout0_6ck61 FIND v(dout0_6) AT=620.05n

* CHECK dout0_7 Vdout0_7ck61 = 1.8 time = 620
.meas tran vdout0_7ck61 FIND v(dout0_7) AT=620.05n

* CHECK dout0_0 Vdout0_0ck63 = 0 time = 640
.meas tran vdout0_0ck63 FIND v(dout0_0) AT=640.05n

* CHECK dout0_1 Vdout0_1ck63 = 1.8 time = 640
.meas tran vdout0_1ck63 FIND v(dout0_1) AT=640.05n

* CHECK dout0_2 Vdout0_2ck63 = 0 time = 640
.meas tran vdout0_2ck63 FIND v(dout0_2) AT=640.05n

* CHECK dout0_3 Vdout0_3ck63 = 1.8 time = 640
.meas tran vdout0_3ck63 FIND v(dout0_3) AT=640.05n

* CHECK dout0_4 Vdout0_4ck63 = 1.8 time = 640
.meas tran vdout0_4ck63 FIND v(dout0_4) AT=640.05n

* CHECK dout0_5 Vdout0_5ck63 = 1.8 time = 640
.meas tran vdout0_5ck63 FIND v(dout0_5) AT=640.05n

* CHECK dout0_6 Vdout0_6ck63 = 1.8 time = 640
.meas tran vdout0_6ck63 FIND v(dout0_6) AT=640.05n

* CHECK dout0_7 Vdout0_7ck63 = 0 time = 640
.meas tran vdout0_7ck63 FIND v(dout0_7) AT=640.05n

* CHECK dout1_0 Vdout1_0ck63 = 0 time = 640
.meas tran vdout1_0ck63 FIND v(dout1_0) AT=640.05n

* CHECK dout1_1 Vdout1_1ck63 = 1.8 time = 640
.meas tran vdout1_1ck63 FIND v(dout1_1) AT=640.05n

* CHECK dout1_2 Vdout1_2ck63 = 0 time = 640
.meas tran vdout1_2ck63 FIND v(dout1_2) AT=640.05n

* CHECK dout1_3 Vdout1_3ck63 = 1.8 time = 640
.meas tran vdout1_3ck63 FIND v(dout1_3) AT=640.05n

* CHECK dout1_4 Vdout1_4ck63 = 1.8 time = 640
.meas tran vdout1_4ck63 FIND v(dout1_4) AT=640.05n

* CHECK dout1_5 Vdout1_5ck63 = 1.8 time = 640
.meas tran vdout1_5ck63 FIND v(dout1_5) AT=640.05n

* CHECK dout1_6 Vdout1_6ck63 = 1.8 time = 640
.meas tran vdout1_6ck63 FIND v(dout1_6) AT=640.05n

* CHECK dout1_7 Vdout1_7ck63 = 0 time = 640
.meas tran vdout1_7ck63 FIND v(dout1_7) AT=640.05n

* CHECK dout1_0 Vdout1_0ck64 = 0 time = 650
.meas tran vdout1_0ck64 FIND v(dout1_0) AT=650.05n

* CHECK dout1_1 Vdout1_1ck64 = 0 time = 650
.meas tran vdout1_1ck64 FIND v(dout1_1) AT=650.05n

* CHECK dout1_2 Vdout1_2ck64 = 0 time = 650
.meas tran vdout1_2ck64 FIND v(dout1_2) AT=650.05n

* CHECK dout1_3 Vdout1_3ck64 = 1.8 time = 650
.meas tran vdout1_3ck64 FIND v(dout1_3) AT=650.05n

* CHECK dout1_4 Vdout1_4ck64 = 1.8 time = 650
.meas tran vdout1_4ck64 FIND v(dout1_4) AT=650.05n

* CHECK dout1_5 Vdout1_5ck64 = 0 time = 650
.meas tran vdout1_5ck64 FIND v(dout1_5) AT=650.05n

* CHECK dout1_6 Vdout1_6ck64 = 0 time = 650
.meas tran vdout1_6ck64 FIND v(dout1_6) AT=650.05n

* CHECK dout1_7 Vdout1_7ck64 = 0 time = 650
.meas tran vdout1_7ck64 FIND v(dout1_7) AT=650.05n

* CHECK dout0_0 Vdout0_0ck69 = 0 time = 700
.meas tran vdout0_0ck69 FIND v(dout0_0) AT=700.05n

* CHECK dout0_1 Vdout0_1ck69 = 0 time = 700
.meas tran vdout0_1ck69 FIND v(dout0_1) AT=700.05n

* CHECK dout0_2 Vdout0_2ck69 = 1.8 time = 700
.meas tran vdout0_2ck69 FIND v(dout0_2) AT=700.05n

* CHECK dout0_3 Vdout0_3ck69 = 0 time = 700
.meas tran vdout0_3ck69 FIND v(dout0_3) AT=700.05n

* CHECK dout0_4 Vdout0_4ck69 = 0 time = 700
.meas tran vdout0_4ck69 FIND v(dout0_4) AT=700.05n

* CHECK dout0_5 Vdout0_5ck69 = 0 time = 700
.meas tran vdout0_5ck69 FIND v(dout0_5) AT=700.05n

* CHECK dout0_6 Vdout0_6ck69 = 0 time = 700
.meas tran vdout0_6ck69 FIND v(dout0_6) AT=700.05n

* CHECK dout0_7 Vdout0_7ck69 = 1.8 time = 700
.meas tran vdout0_7ck69 FIND v(dout0_7) AT=700.05n

* CHECK dout1_0 Vdout1_0ck69 = 0 time = 700
.meas tran vdout1_0ck69 FIND v(dout1_0) AT=700.05n

* CHECK dout1_1 Vdout1_1ck69 = 1.8 time = 700
.meas tran vdout1_1ck69 FIND v(dout1_1) AT=700.05n

* CHECK dout1_2 Vdout1_2ck69 = 0 time = 700
.meas tran vdout1_2ck69 FIND v(dout1_2) AT=700.05n

* CHECK dout1_3 Vdout1_3ck69 = 1.8 time = 700
.meas tran vdout1_3ck69 FIND v(dout1_3) AT=700.05n

* CHECK dout1_4 Vdout1_4ck69 = 1.8 time = 700
.meas tran vdout1_4ck69 FIND v(dout1_4) AT=700.05n

* CHECK dout1_5 Vdout1_5ck69 = 1.8 time = 700
.meas tran vdout1_5ck69 FIND v(dout1_5) AT=700.05n

* CHECK dout1_6 Vdout1_6ck69 = 1.8 time = 700
.meas tran vdout1_6ck69 FIND v(dout1_6) AT=700.05n

* CHECK dout1_7 Vdout1_7ck69 = 0 time = 700
.meas tran vdout1_7ck69 FIND v(dout1_7) AT=700.05n

* CHECK dout1_0 Vdout1_0ck70 = 0 time = 710
.meas tran vdout1_0ck70 FIND v(dout1_0) AT=710.05n

* CHECK dout1_1 Vdout1_1ck70 = 1.8 time = 710
.meas tran vdout1_1ck70 FIND v(dout1_1) AT=710.05n

* CHECK dout1_2 Vdout1_2ck70 = 1.8 time = 710
.meas tran vdout1_2ck70 FIND v(dout1_2) AT=710.05n

* CHECK dout1_3 Vdout1_3ck70 = 1.8 time = 710
.meas tran vdout1_3ck70 FIND v(dout1_3) AT=710.05n

* CHECK dout1_4 Vdout1_4ck70 = 0 time = 710
.meas tran vdout1_4ck70 FIND v(dout1_4) AT=710.05n

* CHECK dout1_5 Vdout1_5ck70 = 1.8 time = 710
.meas tran vdout1_5ck70 FIND v(dout1_5) AT=710.05n

* CHECK dout1_6 Vdout1_6ck70 = 1.8 time = 710
.meas tran vdout1_6ck70 FIND v(dout1_6) AT=710.05n

* CHECK dout1_7 Vdout1_7ck70 = 0 time = 710
.meas tran vdout1_7ck70 FIND v(dout1_7) AT=710.05n

* CHECK dout0_0 Vdout0_0ck71 = 0 time = 720
.meas tran vdout0_0ck71 FIND v(dout0_0) AT=720.05n

* CHECK dout0_1 Vdout0_1ck71 = 0 time = 720
.meas tran vdout0_1ck71 FIND v(dout0_1) AT=720.05n

* CHECK dout0_2 Vdout0_2ck71 = 1.8 time = 720
.meas tran vdout0_2ck71 FIND v(dout0_2) AT=720.05n

* CHECK dout0_3 Vdout0_3ck71 = 0 time = 720
.meas tran vdout0_3ck71 FIND v(dout0_3) AT=720.05n

* CHECK dout0_4 Vdout0_4ck71 = 0 time = 720
.meas tran vdout0_4ck71 FIND v(dout0_4) AT=720.05n

* CHECK dout0_5 Vdout0_5ck71 = 1.8 time = 720
.meas tran vdout0_5ck71 FIND v(dout0_5) AT=720.05n

* CHECK dout0_6 Vdout0_6ck71 = 0 time = 720
.meas tran vdout0_6ck71 FIND v(dout0_6) AT=720.05n

* CHECK dout0_7 Vdout0_7ck71 = 1.8 time = 720
.meas tran vdout0_7ck71 FIND v(dout0_7) AT=720.05n

* CHECK dout1_0 Vdout1_0ck71 = 1.8 time = 720
.meas tran vdout1_0ck71 FIND v(dout1_0) AT=720.05n

* CHECK dout1_1 Vdout1_1ck71 = 0 time = 720
.meas tran vdout1_1ck71 FIND v(dout1_1) AT=720.05n

* CHECK dout1_2 Vdout1_2ck71 = 1.8 time = 720
.meas tran vdout1_2ck71 FIND v(dout1_2) AT=720.05n

* CHECK dout1_3 Vdout1_3ck71 = 0 time = 720
.meas tran vdout1_3ck71 FIND v(dout1_3) AT=720.05n

* CHECK dout1_4 Vdout1_4ck71 = 1.8 time = 720
.meas tran vdout1_4ck71 FIND v(dout1_4) AT=720.05n

* CHECK dout1_5 Vdout1_5ck71 = 0 time = 720
.meas tran vdout1_5ck71 FIND v(dout1_5) AT=720.05n

* CHECK dout1_6 Vdout1_6ck71 = 1.8 time = 720
.meas tran vdout1_6ck71 FIND v(dout1_6) AT=720.05n

* CHECK dout1_7 Vdout1_7ck71 = 0 time = 720
.meas tran vdout1_7ck71 FIND v(dout1_7) AT=720.05n

* CHECK dout0_0 Vdout0_0ck72 = 0 time = 730
.meas tran vdout0_0ck72 FIND v(dout0_0) AT=730.05n

* CHECK dout0_1 Vdout0_1ck72 = 1.8 time = 730
.meas tran vdout0_1ck72 FIND v(dout0_1) AT=730.05n

* CHECK dout0_2 Vdout0_2ck72 = 1.8 time = 730
.meas tran vdout0_2ck72 FIND v(dout0_2) AT=730.05n

* CHECK dout0_3 Vdout0_3ck72 = 1.8 time = 730
.meas tran vdout0_3ck72 FIND v(dout0_3) AT=730.05n

* CHECK dout0_4 Vdout0_4ck72 = 0 time = 730
.meas tran vdout0_4ck72 FIND v(dout0_4) AT=730.05n

* CHECK dout0_5 Vdout0_5ck72 = 1.8 time = 730
.meas tran vdout0_5ck72 FIND v(dout0_5) AT=730.05n

* CHECK dout0_6 Vdout0_6ck72 = 1.8 time = 730
.meas tran vdout0_6ck72 FIND v(dout0_6) AT=730.05n

* CHECK dout0_7 Vdout0_7ck72 = 0 time = 730
.meas tran vdout0_7ck72 FIND v(dout0_7) AT=730.05n

* CHECK dout1_0 Vdout1_0ck72 = 0 time = 730
.meas tran vdout1_0ck72 FIND v(dout1_0) AT=730.05n

* CHECK dout1_1 Vdout1_1ck72 = 1.8 time = 730
.meas tran vdout1_1ck72 FIND v(dout1_1) AT=730.05n

* CHECK dout1_2 Vdout1_2ck72 = 1.8 time = 730
.meas tran vdout1_2ck72 FIND v(dout1_2) AT=730.05n

* CHECK dout1_3 Vdout1_3ck72 = 1.8 time = 730
.meas tran vdout1_3ck72 FIND v(dout1_3) AT=730.05n

* CHECK dout1_4 Vdout1_4ck72 = 0 time = 730
.meas tran vdout1_4ck72 FIND v(dout1_4) AT=730.05n

* CHECK dout1_5 Vdout1_5ck72 = 1.8 time = 730
.meas tran vdout1_5ck72 FIND v(dout1_5) AT=730.05n

* CHECK dout1_6 Vdout1_6ck72 = 1.8 time = 730
.meas tran vdout1_6ck72 FIND v(dout1_6) AT=730.05n

* CHECK dout1_7 Vdout1_7ck72 = 1.8 time = 730
.meas tran vdout1_7ck72 FIND v(dout1_7) AT=730.05n

* CHECK dout0_0 Vdout0_0ck73 = 0 time = 740
.meas tran vdout0_0ck73 FIND v(dout0_0) AT=740.05n

* CHECK dout0_1 Vdout0_1ck73 = 1.8 time = 740
.meas tran vdout0_1ck73 FIND v(dout0_1) AT=740.05n

* CHECK dout0_2 Vdout0_2ck73 = 1.8 time = 740
.meas tran vdout0_2ck73 FIND v(dout0_2) AT=740.05n

* CHECK dout0_3 Vdout0_3ck73 = 1.8 time = 740
.meas tran vdout0_3ck73 FIND v(dout0_3) AT=740.05n

* CHECK dout0_4 Vdout0_4ck73 = 0 time = 740
.meas tran vdout0_4ck73 FIND v(dout0_4) AT=740.05n

* CHECK dout0_5 Vdout0_5ck73 = 1.8 time = 740
.meas tran vdout0_5ck73 FIND v(dout0_5) AT=740.05n

* CHECK dout0_6 Vdout0_6ck73 = 1.8 time = 740
.meas tran vdout0_6ck73 FIND v(dout0_6) AT=740.05n

* CHECK dout0_7 Vdout0_7ck73 = 1.8 time = 740
.meas tran vdout0_7ck73 FIND v(dout0_7) AT=740.05n

* CHECK dout1_0 Vdout1_0ck73 = 1.8 time = 740
.meas tran vdout1_0ck73 FIND v(dout1_0) AT=740.05n

* CHECK dout1_1 Vdout1_1ck73 = 1.8 time = 740
.meas tran vdout1_1ck73 FIND v(dout1_1) AT=740.05n

* CHECK dout1_2 Vdout1_2ck73 = 0 time = 740
.meas tran vdout1_2ck73 FIND v(dout1_2) AT=740.05n

* CHECK dout1_3 Vdout1_3ck73 = 1.8 time = 740
.meas tran vdout1_3ck73 FIND v(dout1_3) AT=740.05n

* CHECK dout1_4 Vdout1_4ck73 = 1.8 time = 740
.meas tran vdout1_4ck73 FIND v(dout1_4) AT=740.05n

* CHECK dout1_5 Vdout1_5ck73 = 1.8 time = 740
.meas tran vdout1_5ck73 FIND v(dout1_5) AT=740.05n

* CHECK dout1_6 Vdout1_6ck73 = 1.8 time = 740
.meas tran vdout1_6ck73 FIND v(dout1_6) AT=740.05n

* CHECK dout1_7 Vdout1_7ck73 = 0 time = 740
.meas tran vdout1_7ck73 FIND v(dout1_7) AT=740.05n

* CHECK dout1_0 Vdout1_0ck74 = 0 time = 750
.meas tran vdout1_0ck74 FIND v(dout1_0) AT=750.05n

* CHECK dout1_1 Vdout1_1ck74 = 0 time = 750
.meas tran vdout1_1ck74 FIND v(dout1_1) AT=750.05n

* CHECK dout1_2 Vdout1_2ck74 = 1.8 time = 750
.meas tran vdout1_2ck74 FIND v(dout1_2) AT=750.05n

* CHECK dout1_3 Vdout1_3ck74 = 0 time = 750
.meas tran vdout1_3ck74 FIND v(dout1_3) AT=750.05n

* CHECK dout1_4 Vdout1_4ck74 = 0 time = 750
.meas tran vdout1_4ck74 FIND v(dout1_4) AT=750.05n

* CHECK dout1_5 Vdout1_5ck74 = 1.8 time = 750
.meas tran vdout1_5ck74 FIND v(dout1_5) AT=750.05n

* CHECK dout1_6 Vdout1_6ck74 = 0 time = 750
.meas tran vdout1_6ck74 FIND v(dout1_6) AT=750.05n

* CHECK dout1_7 Vdout1_7ck74 = 0 time = 750
.meas tran vdout1_7ck74 FIND v(dout1_7) AT=750.05n

* CHECK dout0_0 Vdout0_0ck75 = 1.8 time = 760
.meas tran vdout0_0ck75 FIND v(dout0_0) AT=760.05n

* CHECK dout0_1 Vdout0_1ck75 = 0 time = 760
.meas tran vdout0_1ck75 FIND v(dout0_1) AT=760.05n

* CHECK dout0_2 Vdout0_2ck75 = 1.8 time = 760
.meas tran vdout0_2ck75 FIND v(dout0_2) AT=760.05n

* CHECK dout0_3 Vdout0_3ck75 = 0 time = 760
.meas tran vdout0_3ck75 FIND v(dout0_3) AT=760.05n

* CHECK dout0_4 Vdout0_4ck75 = 1.8 time = 760
.meas tran vdout0_4ck75 FIND v(dout0_4) AT=760.05n

* CHECK dout0_5 Vdout0_5ck75 = 0 time = 760
.meas tran vdout0_5ck75 FIND v(dout0_5) AT=760.05n

* CHECK dout0_6 Vdout0_6ck75 = 1.8 time = 760
.meas tran vdout0_6ck75 FIND v(dout0_6) AT=760.05n

* CHECK dout0_7 Vdout0_7ck75 = 0 time = 760
.meas tran vdout0_7ck75 FIND v(dout0_7) AT=760.05n

* CHECK dout0_0 Vdout0_0ck76 = 0 time = 770
.meas tran vdout0_0ck76 FIND v(dout0_0) AT=770.05n

* CHECK dout0_1 Vdout0_1ck76 = 1.8 time = 770
.meas tran vdout0_1ck76 FIND v(dout0_1) AT=770.05n

* CHECK dout0_2 Vdout0_2ck76 = 1.8 time = 770
.meas tran vdout0_2ck76 FIND v(dout0_2) AT=770.05n

* CHECK dout0_3 Vdout0_3ck76 = 1.8 time = 770
.meas tran vdout0_3ck76 FIND v(dout0_3) AT=770.05n

* CHECK dout0_4 Vdout0_4ck76 = 0 time = 770
.meas tran vdout0_4ck76 FIND v(dout0_4) AT=770.05n

* CHECK dout0_5 Vdout0_5ck76 = 1.8 time = 770
.meas tran vdout0_5ck76 FIND v(dout0_5) AT=770.05n

* CHECK dout0_6 Vdout0_6ck76 = 1.8 time = 770
.meas tran vdout0_6ck76 FIND v(dout0_6) AT=770.05n

* CHECK dout0_7 Vdout0_7ck76 = 0 time = 770
.meas tran vdout0_7ck76 FIND v(dout0_7) AT=770.05n

* CHECK dout1_0 Vdout1_0ck76 = 0 time = 770
.meas tran vdout1_0ck76 FIND v(dout1_0) AT=770.05n

* CHECK dout1_1 Vdout1_1ck76 = 0 time = 770
.meas tran vdout1_1ck76 FIND v(dout1_1) AT=770.05n

* CHECK dout1_2 Vdout1_2ck76 = 1.8 time = 770
.meas tran vdout1_2ck76 FIND v(dout1_2) AT=770.05n

* CHECK dout1_3 Vdout1_3ck76 = 0 time = 770
.meas tran vdout1_3ck76 FIND v(dout1_3) AT=770.05n

* CHECK dout1_4 Vdout1_4ck76 = 0 time = 770
.meas tran vdout1_4ck76 FIND v(dout1_4) AT=770.05n

* CHECK dout1_5 Vdout1_5ck76 = 1.8 time = 770
.meas tran vdout1_5ck76 FIND v(dout1_5) AT=770.05n

* CHECK dout1_6 Vdout1_6ck76 = 0 time = 770
.meas tran vdout1_6ck76 FIND v(dout1_6) AT=770.05n

* CHECK dout1_7 Vdout1_7ck76 = 0 time = 770
.meas tran vdout1_7ck76 FIND v(dout1_7) AT=770.05n

* CHECK dout1_0 Vdout1_0ck77 = 1.8 time = 780
.meas tran vdout1_0ck77 FIND v(dout1_0) AT=780.05n

* CHECK dout1_1 Vdout1_1ck77 = 1.8 time = 780
.meas tran vdout1_1ck77 FIND v(dout1_1) AT=780.05n

* CHECK dout1_2 Vdout1_2ck77 = 0 time = 780
.meas tran vdout1_2ck77 FIND v(dout1_2) AT=780.05n

* CHECK dout1_3 Vdout1_3ck77 = 1.8 time = 780
.meas tran vdout1_3ck77 FIND v(dout1_3) AT=780.05n

* CHECK dout1_4 Vdout1_4ck77 = 0 time = 780
.meas tran vdout1_4ck77 FIND v(dout1_4) AT=780.05n

* CHECK dout1_5 Vdout1_5ck77 = 0 time = 780
.meas tran vdout1_5ck77 FIND v(dout1_5) AT=780.05n

* CHECK dout1_6 Vdout1_6ck77 = 1.8 time = 780
.meas tran vdout1_6ck77 FIND v(dout1_6) AT=780.05n

* CHECK dout1_7 Vdout1_7ck77 = 1.8 time = 780
.meas tran vdout1_7ck77 FIND v(dout1_7) AT=780.05n

* CHECK dout1_0 Vdout1_0ck78 = 0 time = 790
.meas tran vdout1_0ck78 FIND v(dout1_0) AT=790.05n

* CHECK dout1_1 Vdout1_1ck78 = 1.8 time = 790
.meas tran vdout1_1ck78 FIND v(dout1_1) AT=790.05n

* CHECK dout1_2 Vdout1_2ck78 = 0 time = 790
.meas tran vdout1_2ck78 FIND v(dout1_2) AT=790.05n

* CHECK dout1_3 Vdout1_3ck78 = 1.8 time = 790
.meas tran vdout1_3ck78 FIND v(dout1_3) AT=790.05n

* CHECK dout1_4 Vdout1_4ck78 = 1.8 time = 790
.meas tran vdout1_4ck78 FIND v(dout1_4) AT=790.05n

* CHECK dout1_5 Vdout1_5ck78 = 1.8 time = 790
.meas tran vdout1_5ck78 FIND v(dout1_5) AT=790.05n

* CHECK dout1_6 Vdout1_6ck78 = 1.8 time = 790
.meas tran vdout1_6ck78 FIND v(dout1_6) AT=790.05n

* CHECK dout1_7 Vdout1_7ck78 = 0 time = 790
.meas tran vdout1_7ck78 FIND v(dout1_7) AT=790.05n

* CHECK dout0_0 Vdout0_0ck79 = 1.8 time = 800
.meas tran vdout0_0ck79 FIND v(dout0_0) AT=800.05n

* CHECK dout0_1 Vdout0_1ck79 = 0 time = 800
.meas tran vdout0_1ck79 FIND v(dout0_1) AT=800.05n

* CHECK dout0_2 Vdout0_2ck79 = 1.8 time = 800
.meas tran vdout0_2ck79 FIND v(dout0_2) AT=800.05n

* CHECK dout0_3 Vdout0_3ck79 = 1.8 time = 800
.meas tran vdout0_3ck79 FIND v(dout0_3) AT=800.05n

* CHECK dout0_4 Vdout0_4ck79 = 1.8 time = 800
.meas tran vdout0_4ck79 FIND v(dout0_4) AT=800.05n

* CHECK dout0_5 Vdout0_5ck79 = 0 time = 800
.meas tran vdout0_5ck79 FIND v(dout0_5) AT=800.05n

* CHECK dout0_6 Vdout0_6ck79 = 1.8 time = 800
.meas tran vdout0_6ck79 FIND v(dout0_6) AT=800.05n

* CHECK dout0_7 Vdout0_7ck79 = 1.8 time = 800
.meas tran vdout0_7ck79 FIND v(dout0_7) AT=800.05n

* CHECK dout1_0 Vdout1_0ck79 = 0 time = 800
.meas tran vdout1_0ck79 FIND v(dout1_0) AT=800.05n

* CHECK dout1_1 Vdout1_1ck79 = 0 time = 800
.meas tran vdout1_1ck79 FIND v(dout1_1) AT=800.05n

* CHECK dout1_2 Vdout1_2ck79 = 1.8 time = 800
.meas tran vdout1_2ck79 FIND v(dout1_2) AT=800.05n

* CHECK dout1_3 Vdout1_3ck79 = 0 time = 800
.meas tran vdout1_3ck79 FIND v(dout1_3) AT=800.05n

* CHECK dout1_4 Vdout1_4ck79 = 0 time = 800
.meas tran vdout1_4ck79 FIND v(dout1_4) AT=800.05n

* CHECK dout1_5 Vdout1_5ck79 = 0 time = 800
.meas tran vdout1_5ck79 FIND v(dout1_5) AT=800.05n

* CHECK dout1_6 Vdout1_6ck79 = 0 time = 800
.meas tran vdout1_6ck79 FIND v(dout1_6) AT=800.05n

* CHECK dout1_7 Vdout1_7ck79 = 1.8 time = 800
.meas tran vdout1_7ck79 FIND v(dout1_7) AT=800.05n

* CHECK dout0_0 Vdout0_0ck80 = 0 time = 810
.meas tran vdout0_0ck80 FIND v(dout0_0) AT=810.05n

* CHECK dout0_1 Vdout0_1ck80 = 0 time = 810
.meas tran vdout0_1ck80 FIND v(dout0_1) AT=810.05n

* CHECK dout0_2 Vdout0_2ck80 = 1.8 time = 810
.meas tran vdout0_2ck80 FIND v(dout0_2) AT=810.05n

* CHECK dout0_3 Vdout0_3ck80 = 0 time = 810
.meas tran vdout0_3ck80 FIND v(dout0_3) AT=810.05n

* CHECK dout0_4 Vdout0_4ck80 = 0 time = 810
.meas tran vdout0_4ck80 FIND v(dout0_4) AT=810.05n

* CHECK dout0_5 Vdout0_5ck80 = 1.8 time = 810
.meas tran vdout0_5ck80 FIND v(dout0_5) AT=810.05n

* CHECK dout0_6 Vdout0_6ck80 = 0 time = 810
.meas tran vdout0_6ck80 FIND v(dout0_6) AT=810.05n

* CHECK dout0_7 Vdout0_7ck80 = 1.8 time = 810
.meas tran vdout0_7ck80 FIND v(dout0_7) AT=810.05n

* CHECK dout1_0 Vdout1_0ck80 = 0 time = 810
.meas tran vdout1_0ck80 FIND v(dout1_0) AT=810.05n

* CHECK dout1_1 Vdout1_1ck80 = 0 time = 810
.meas tran vdout1_1ck80 FIND v(dout1_1) AT=810.05n

* CHECK dout1_2 Vdout1_2ck80 = 1.8 time = 810
.meas tran vdout1_2ck80 FIND v(dout1_2) AT=810.05n

* CHECK dout1_3 Vdout1_3ck80 = 0 time = 810
.meas tran vdout1_3ck80 FIND v(dout1_3) AT=810.05n

* CHECK dout1_4 Vdout1_4ck80 = 0 time = 810
.meas tran vdout1_4ck80 FIND v(dout1_4) AT=810.05n

* CHECK dout1_5 Vdout1_5ck80 = 0 time = 810
.meas tran vdout1_5ck80 FIND v(dout1_5) AT=810.05n

* CHECK dout1_6 Vdout1_6ck80 = 0 time = 810
.meas tran vdout1_6ck80 FIND v(dout1_6) AT=810.05n

* CHECK dout1_7 Vdout1_7ck80 = 1.8 time = 810
.meas tran vdout1_7ck80 FIND v(dout1_7) AT=810.05n

* CHECK dout0_0 Vdout0_0ck81 = 1.8 time = 820
.meas tran vdout0_0ck81 FIND v(dout0_0) AT=820.05n

* CHECK dout0_1 Vdout0_1ck81 = 0 time = 820
.meas tran vdout0_1ck81 FIND v(dout0_1) AT=820.05n

* CHECK dout0_2 Vdout0_2ck81 = 1.8 time = 820
.meas tran vdout0_2ck81 FIND v(dout0_2) AT=820.05n

* CHECK dout0_3 Vdout0_3ck81 = 0 time = 820
.meas tran vdout0_3ck81 FIND v(dout0_3) AT=820.05n

* CHECK dout0_4 Vdout0_4ck81 = 1.8 time = 820
.meas tran vdout0_4ck81 FIND v(dout0_4) AT=820.05n

* CHECK dout0_5 Vdout0_5ck81 = 0 time = 820
.meas tran vdout0_5ck81 FIND v(dout0_5) AT=820.05n

* CHECK dout0_6 Vdout0_6ck81 = 1.8 time = 820
.meas tran vdout0_6ck81 FIND v(dout0_6) AT=820.05n

* CHECK dout0_7 Vdout0_7ck81 = 0 time = 820
.meas tran vdout0_7ck81 FIND v(dout0_7) AT=820.05n

* CHECK dout0_0 Vdout0_0ck82 = 0 time = 830
.meas tran vdout0_0ck82 FIND v(dout0_0) AT=830.05n

* CHECK dout0_1 Vdout0_1ck82 = 0 time = 830
.meas tran vdout0_1ck82 FIND v(dout0_1) AT=830.05n

* CHECK dout0_2 Vdout0_2ck82 = 1.8 time = 830
.meas tran vdout0_2ck82 FIND v(dout0_2) AT=830.05n

* CHECK dout0_3 Vdout0_3ck82 = 0 time = 830
.meas tran vdout0_3ck82 FIND v(dout0_3) AT=830.05n

* CHECK dout0_4 Vdout0_4ck82 = 0 time = 830
.meas tran vdout0_4ck82 FIND v(dout0_4) AT=830.05n

* CHECK dout0_5 Vdout0_5ck82 = 0 time = 830
.meas tran vdout0_5ck82 FIND v(dout0_5) AT=830.05n

* CHECK dout0_6 Vdout0_6ck82 = 0 time = 830
.meas tran vdout0_6ck82 FIND v(dout0_6) AT=830.05n

* CHECK dout0_7 Vdout0_7ck82 = 1.8 time = 830
.meas tran vdout0_7ck82 FIND v(dout0_7) AT=830.05n

* CHECK dout0_0 Vdout0_0ck83 = 1.8 time = 840
.meas tran vdout0_0ck83 FIND v(dout0_0) AT=840.05n

* CHECK dout0_1 Vdout0_1ck83 = 1.8 time = 840
.meas tran vdout0_1ck83 FIND v(dout0_1) AT=840.05n

* CHECK dout0_2 Vdout0_2ck83 = 0 time = 840
.meas tran vdout0_2ck83 FIND v(dout0_2) AT=840.05n

* CHECK dout0_3 Vdout0_3ck83 = 1.8 time = 840
.meas tran vdout0_3ck83 FIND v(dout0_3) AT=840.05n

* CHECK dout0_4 Vdout0_4ck83 = 1.8 time = 840
.meas tran vdout0_4ck83 FIND v(dout0_4) AT=840.05n

* CHECK dout0_5 Vdout0_5ck83 = 0 time = 840
.meas tran vdout0_5ck83 FIND v(dout0_5) AT=840.05n

* CHECK dout0_6 Vdout0_6ck83 = 0 time = 840
.meas tran vdout0_6ck83 FIND v(dout0_6) AT=840.05n

* CHECK dout0_7 Vdout0_7ck83 = 0 time = 840
.meas tran vdout0_7ck83 FIND v(dout0_7) AT=840.05n

* CHECK dout1_0 Vdout1_0ck84 = 0 time = 850
.meas tran vdout1_0ck84 FIND v(dout1_0) AT=850.05n

* CHECK dout1_1 Vdout1_1ck84 = 0 time = 850
.meas tran vdout1_1ck84 FIND v(dout1_1) AT=850.05n

* CHECK dout1_2 Vdout1_2ck84 = 1.8 time = 850
.meas tran vdout1_2ck84 FIND v(dout1_2) AT=850.05n

* CHECK dout1_3 Vdout1_3ck84 = 0 time = 850
.meas tran vdout1_3ck84 FIND v(dout1_3) AT=850.05n

* CHECK dout1_4 Vdout1_4ck84 = 0 time = 850
.meas tran vdout1_4ck84 FIND v(dout1_4) AT=850.05n

* CHECK dout1_5 Vdout1_5ck84 = 1.8 time = 850
.meas tran vdout1_5ck84 FIND v(dout1_5) AT=850.05n

* CHECK dout1_6 Vdout1_6ck84 = 0 time = 850
.meas tran vdout1_6ck84 FIND v(dout1_6) AT=850.05n

* CHECK dout1_7 Vdout1_7ck84 = 1.8 time = 850
.meas tran vdout1_7ck84 FIND v(dout1_7) AT=850.05n

* CHECK dout1_0 Vdout1_0ck85 = 0 time = 860
.meas tran vdout1_0ck85 FIND v(dout1_0) AT=860.05n

* CHECK dout1_1 Vdout1_1ck85 = 0 time = 860
.meas tran vdout1_1ck85 FIND v(dout1_1) AT=860.05n

* CHECK dout1_2 Vdout1_2ck85 = 1.8 time = 860
.meas tran vdout1_2ck85 FIND v(dout1_2) AT=860.05n

* CHECK dout1_3 Vdout1_3ck85 = 0 time = 860
.meas tran vdout1_3ck85 FIND v(dout1_3) AT=860.05n

* CHECK dout1_4 Vdout1_4ck85 = 0 time = 860
.meas tran vdout1_4ck85 FIND v(dout1_4) AT=860.05n

* CHECK dout1_5 Vdout1_5ck85 = 1.8 time = 860
.meas tran vdout1_5ck85 FIND v(dout1_5) AT=860.05n

* CHECK dout1_6 Vdout1_6ck85 = 0 time = 860
.meas tran vdout1_6ck85 FIND v(dout1_6) AT=860.05n

* CHECK dout1_7 Vdout1_7ck85 = 0 time = 860
.meas tran vdout1_7ck85 FIND v(dout1_7) AT=860.05n

* CHECK dout0_0 Vdout0_0ck86 = 0 time = 870
.meas tran vdout0_0ck86 FIND v(dout0_0) AT=870.05n

* CHECK dout0_1 Vdout0_1ck86 = 0 time = 870
.meas tran vdout0_1ck86 FIND v(dout0_1) AT=870.05n

* CHECK dout0_2 Vdout0_2ck86 = 1.8 time = 870
.meas tran vdout0_2ck86 FIND v(dout0_2) AT=870.05n

* CHECK dout0_3 Vdout0_3ck86 = 0 time = 870
.meas tran vdout0_3ck86 FIND v(dout0_3) AT=870.05n

* CHECK dout0_4 Vdout0_4ck86 = 0 time = 870
.meas tran vdout0_4ck86 FIND v(dout0_4) AT=870.05n

* CHECK dout0_5 Vdout0_5ck86 = 1.8 time = 870
.meas tran vdout0_5ck86 FIND v(dout0_5) AT=870.05n

* CHECK dout0_6 Vdout0_6ck86 = 0 time = 870
.meas tran vdout0_6ck86 FIND v(dout0_6) AT=870.05n

* CHECK dout0_7 Vdout0_7ck86 = 1.8 time = 870
.meas tran vdout0_7ck86 FIND v(dout0_7) AT=870.05n

* CHECK dout1_0 Vdout1_0ck86 = 1.8 time = 870
.meas tran vdout1_0ck86 FIND v(dout1_0) AT=870.05n

* CHECK dout1_1 Vdout1_1ck86 = 1.8 time = 870
.meas tran vdout1_1ck86 FIND v(dout1_1) AT=870.05n

* CHECK dout1_2 Vdout1_2ck86 = 0 time = 870
.meas tran vdout1_2ck86 FIND v(dout1_2) AT=870.05n

* CHECK dout1_3 Vdout1_3ck86 = 1.8 time = 870
.meas tran vdout1_3ck86 FIND v(dout1_3) AT=870.05n

* CHECK dout1_4 Vdout1_4ck86 = 0 time = 870
.meas tran vdout1_4ck86 FIND v(dout1_4) AT=870.05n

* CHECK dout1_5 Vdout1_5ck86 = 0 time = 870
.meas tran vdout1_5ck86 FIND v(dout1_5) AT=870.05n

* CHECK dout1_6 Vdout1_6ck86 = 1.8 time = 870
.meas tran vdout1_6ck86 FIND v(dout1_6) AT=870.05n

* CHECK dout1_7 Vdout1_7ck86 = 1.8 time = 870
.meas tran vdout1_7ck86 FIND v(dout1_7) AT=870.05n

* CHECK dout0_0 Vdout0_0ck87 = 1.8 time = 880
.meas tran vdout0_0ck87 FIND v(dout0_0) AT=880.05n

* CHECK dout0_1 Vdout0_1ck87 = 1.8 time = 880
.meas tran vdout0_1ck87 FIND v(dout0_1) AT=880.05n

* CHECK dout0_2 Vdout0_2ck87 = 0 time = 880
.meas tran vdout0_2ck87 FIND v(dout0_2) AT=880.05n

* CHECK dout0_3 Vdout0_3ck87 = 1.8 time = 880
.meas tran vdout0_3ck87 FIND v(dout0_3) AT=880.05n

* CHECK dout0_4 Vdout0_4ck87 = 1.8 time = 880
.meas tran vdout0_4ck87 FIND v(dout0_4) AT=880.05n

* CHECK dout0_5 Vdout0_5ck87 = 0 time = 880
.meas tran vdout0_5ck87 FIND v(dout0_5) AT=880.05n

* CHECK dout0_6 Vdout0_6ck87 = 0 time = 880
.meas tran vdout0_6ck87 FIND v(dout0_6) AT=880.05n

* CHECK dout0_7 Vdout0_7ck87 = 0 time = 880
.meas tran vdout0_7ck87 FIND v(dout0_7) AT=880.05n

* CHECK dout0_0 Vdout0_0ck89 = 1.8 time = 900
.meas tran vdout0_0ck89 FIND v(dout0_0) AT=900.05n

* CHECK dout0_1 Vdout0_1ck89 = 0 time = 900
.meas tran vdout0_1ck89 FIND v(dout0_1) AT=900.05n

* CHECK dout0_2 Vdout0_2ck89 = 0 time = 900
.meas tran vdout0_2ck89 FIND v(dout0_2) AT=900.05n

* CHECK dout0_3 Vdout0_3ck89 = 1.8 time = 900
.meas tran vdout0_3ck89 FIND v(dout0_3) AT=900.05n

* CHECK dout0_4 Vdout0_4ck89 = 0 time = 900
.meas tran vdout0_4ck89 FIND v(dout0_4) AT=900.05n

* CHECK dout0_5 Vdout0_5ck89 = 0 time = 900
.meas tran vdout0_5ck89 FIND v(dout0_5) AT=900.05n

* CHECK dout0_6 Vdout0_6ck89 = 0 time = 900
.meas tran vdout0_6ck89 FIND v(dout0_6) AT=900.05n

* CHECK dout0_7 Vdout0_7ck89 = 0 time = 900
.meas tran vdout0_7ck89 FIND v(dout0_7) AT=900.05n

* CHECK dout1_0 Vdout1_0ck89 = 1.8 time = 900
.meas tran vdout1_0ck89 FIND v(dout1_0) AT=900.05n

* CHECK dout1_1 Vdout1_1ck89 = 0 time = 900
.meas tran vdout1_1ck89 FIND v(dout1_1) AT=900.05n

* CHECK dout1_2 Vdout1_2ck89 = 0 time = 900
.meas tran vdout1_2ck89 FIND v(dout1_2) AT=900.05n

* CHECK dout1_3 Vdout1_3ck89 = 0 time = 900
.meas tran vdout1_3ck89 FIND v(dout1_3) AT=900.05n

* CHECK dout1_4 Vdout1_4ck89 = 1.8 time = 900
.meas tran vdout1_4ck89 FIND v(dout1_4) AT=900.05n

* CHECK dout1_5 Vdout1_5ck89 = 1.8 time = 900
.meas tran vdout1_5ck89 FIND v(dout1_5) AT=900.05n

* CHECK dout1_6 Vdout1_6ck89 = 1.8 time = 900
.meas tran vdout1_6ck89 FIND v(dout1_6) AT=900.05n

* CHECK dout1_7 Vdout1_7ck89 = 1.8 time = 900
.meas tran vdout1_7ck89 FIND v(dout1_7) AT=900.05n

* CHECK dout1_0 Vdout1_0ck92 = 1.8 time = 930
.meas tran vdout1_0ck92 FIND v(dout1_0) AT=930.05n

* CHECK dout1_1 Vdout1_1ck92 = 1.8 time = 930
.meas tran vdout1_1ck92 FIND v(dout1_1) AT=930.05n

* CHECK dout1_2 Vdout1_2ck92 = 0 time = 930
.meas tran vdout1_2ck92 FIND v(dout1_2) AT=930.05n

* CHECK dout1_3 Vdout1_3ck92 = 1.8 time = 930
.meas tran vdout1_3ck92 FIND v(dout1_3) AT=930.05n

* CHECK dout1_4 Vdout1_4ck92 = 0 time = 930
.meas tran vdout1_4ck92 FIND v(dout1_4) AT=930.05n

* CHECK dout1_5 Vdout1_5ck92 = 0 time = 930
.meas tran vdout1_5ck92 FIND v(dout1_5) AT=930.05n

* CHECK dout1_6 Vdout1_6ck92 = 1.8 time = 930
.meas tran vdout1_6ck92 FIND v(dout1_6) AT=930.05n

* CHECK dout1_7 Vdout1_7ck92 = 1.8 time = 930
.meas tran vdout1_7ck92 FIND v(dout1_7) AT=930.05n

* CHECK dout0_0 Vdout0_0ck93 = 1.8 time = 940
.meas tran vdout0_0ck93 FIND v(dout0_0) AT=940.05n

* CHECK dout0_1 Vdout0_1ck93 = 0 time = 940
.meas tran vdout0_1ck93 FIND v(dout0_1) AT=940.05n

* CHECK dout0_2 Vdout0_2ck93 = 1.8 time = 940
.meas tran vdout0_2ck93 FIND v(dout0_2) AT=940.05n

* CHECK dout0_3 Vdout0_3ck93 = 1.8 time = 940
.meas tran vdout0_3ck93 FIND v(dout0_3) AT=940.05n

* CHECK dout0_4 Vdout0_4ck93 = 1.8 time = 940
.meas tran vdout0_4ck93 FIND v(dout0_4) AT=940.05n

* CHECK dout0_5 Vdout0_5ck93 = 0 time = 940
.meas tran vdout0_5ck93 FIND v(dout0_5) AT=940.05n

* CHECK dout0_6 Vdout0_6ck93 = 0 time = 940
.meas tran vdout0_6ck93 FIND v(dout0_6) AT=940.05n

* CHECK dout0_7 Vdout0_7ck93 = 1.8 time = 940
.meas tran vdout0_7ck93 FIND v(dout0_7) AT=940.05n

* CHECK dout1_0 Vdout1_0ck93 = 0 time = 940
.meas tran vdout1_0ck93 FIND v(dout1_0) AT=940.05n

* CHECK dout1_1 Vdout1_1ck93 = 1.8 time = 940
.meas tran vdout1_1ck93 FIND v(dout1_1) AT=940.05n

* CHECK dout1_2 Vdout1_2ck93 = 0 time = 940
.meas tran vdout1_2ck93 FIND v(dout1_2) AT=940.05n

* CHECK dout1_3 Vdout1_3ck93 = 1.8 time = 940
.meas tran vdout1_3ck93 FIND v(dout1_3) AT=940.05n

* CHECK dout1_4 Vdout1_4ck93 = 1.8 time = 940
.meas tran vdout1_4ck93 FIND v(dout1_4) AT=940.05n

* CHECK dout1_5 Vdout1_5ck93 = 1.8 time = 940
.meas tran vdout1_5ck93 FIND v(dout1_5) AT=940.05n

* CHECK dout1_6 Vdout1_6ck93 = 1.8 time = 940
.meas tran vdout1_6ck93 FIND v(dout1_6) AT=940.05n

* CHECK dout1_7 Vdout1_7ck93 = 0 time = 940
.meas tran vdout1_7ck93 FIND v(dout1_7) AT=940.05n

* CHECK dout0_0 Vdout0_0ck94 = 1.8 time = 950
.meas tran vdout0_0ck94 FIND v(dout0_0) AT=950.05n

* CHECK dout0_1 Vdout0_1ck94 = 0 time = 950
.meas tran vdout0_1ck94 FIND v(dout0_1) AT=950.05n

* CHECK dout0_2 Vdout0_2ck94 = 1.8 time = 950
.meas tran vdout0_2ck94 FIND v(dout0_2) AT=950.05n

* CHECK dout0_3 Vdout0_3ck94 = 0 time = 950
.meas tran vdout0_3ck94 FIND v(dout0_3) AT=950.05n

* CHECK dout0_4 Vdout0_4ck94 = 1.8 time = 950
.meas tran vdout0_4ck94 FIND v(dout0_4) AT=950.05n

* CHECK dout0_5 Vdout0_5ck94 = 1.8 time = 950
.meas tran vdout0_5ck94 FIND v(dout0_5) AT=950.05n

* CHECK dout0_6 Vdout0_6ck94 = 1.8 time = 950
.meas tran vdout0_6ck94 FIND v(dout0_6) AT=950.05n

* CHECK dout0_7 Vdout0_7ck94 = 0 time = 950
.meas tran vdout0_7ck94 FIND v(dout0_7) AT=950.05n

* CHECK dout1_0 Vdout1_0ck94 = 0 time = 950
.meas tran vdout1_0ck94 FIND v(dout1_0) AT=950.05n

* CHECK dout1_1 Vdout1_1ck94 = 0 time = 950
.meas tran vdout1_1ck94 FIND v(dout1_1) AT=950.05n

* CHECK dout1_2 Vdout1_2ck94 = 0 time = 950
.meas tran vdout1_2ck94 FIND v(dout1_2) AT=950.05n

* CHECK dout1_3 Vdout1_3ck94 = 0 time = 950
.meas tran vdout1_3ck94 FIND v(dout1_3) AT=950.05n

* CHECK dout1_4 Vdout1_4ck94 = 1.8 time = 950
.meas tran vdout1_4ck94 FIND v(dout1_4) AT=950.05n

* CHECK dout1_5 Vdout1_5ck94 = 1.8 time = 950
.meas tran vdout1_5ck94 FIND v(dout1_5) AT=950.05n

* CHECK dout1_6 Vdout1_6ck94 = 1.8 time = 950
.meas tran vdout1_6ck94 FIND v(dout1_6) AT=950.05n

* CHECK dout1_7 Vdout1_7ck94 = 0 time = 950
.meas tran vdout1_7ck94 FIND v(dout1_7) AT=950.05n

* CHECK dout0_0 Vdout0_0ck95 = 1.8 time = 960
.meas tran vdout0_0ck95 FIND v(dout0_0) AT=960.05n

* CHECK dout0_1 Vdout0_1ck95 = 0 time = 960
.meas tran vdout0_1ck95 FIND v(dout0_1) AT=960.05n

* CHECK dout0_2 Vdout0_2ck95 = 1.8 time = 960
.meas tran vdout0_2ck95 FIND v(dout0_2) AT=960.05n

* CHECK dout0_3 Vdout0_3ck95 = 1.8 time = 960
.meas tran vdout0_3ck95 FIND v(dout0_3) AT=960.05n

* CHECK dout0_4 Vdout0_4ck95 = 1.8 time = 960
.meas tran vdout0_4ck95 FIND v(dout0_4) AT=960.05n

* CHECK dout0_5 Vdout0_5ck95 = 0 time = 960
.meas tran vdout0_5ck95 FIND v(dout0_5) AT=960.05n

* CHECK dout0_6 Vdout0_6ck95 = 1.8 time = 960
.meas tran vdout0_6ck95 FIND v(dout0_6) AT=960.05n

* CHECK dout0_7 Vdout0_7ck95 = 1.8 time = 960
.meas tran vdout0_7ck95 FIND v(dout0_7) AT=960.05n

* CHECK dout0_0 Vdout0_0ck96 = 1.8 time = 970
.meas tran vdout0_0ck96 FIND v(dout0_0) AT=970.05n

* CHECK dout0_1 Vdout0_1ck96 = 1.8 time = 970
.meas tran vdout0_1ck96 FIND v(dout0_1) AT=970.05n

* CHECK dout0_2 Vdout0_2ck96 = 0 time = 970
.meas tran vdout0_2ck96 FIND v(dout0_2) AT=970.05n

* CHECK dout0_3 Vdout0_3ck96 = 1.8 time = 970
.meas tran vdout0_3ck96 FIND v(dout0_3) AT=970.05n

* CHECK dout0_4 Vdout0_4ck96 = 0 time = 970
.meas tran vdout0_4ck96 FIND v(dout0_4) AT=970.05n

* CHECK dout0_5 Vdout0_5ck96 = 0 time = 970
.meas tran vdout0_5ck96 FIND v(dout0_5) AT=970.05n

* CHECK dout0_6 Vdout0_6ck96 = 1.8 time = 970
.meas tran vdout0_6ck96 FIND v(dout0_6) AT=970.05n

* CHECK dout0_7 Vdout0_7ck96 = 1.8 time = 970
.meas tran vdout0_7ck96 FIND v(dout0_7) AT=970.05n

* CHECK dout1_0 Vdout1_0ck96 = 1.8 time = 970
.meas tran vdout1_0ck96 FIND v(dout1_0) AT=970.05n

* CHECK dout1_1 Vdout1_1ck96 = 0 time = 970
.meas tran vdout1_1ck96 FIND v(dout1_1) AT=970.05n

* CHECK dout1_2 Vdout1_2ck96 = 1.8 time = 970
.meas tran vdout1_2ck96 FIND v(dout1_2) AT=970.05n

* CHECK dout1_3 Vdout1_3ck96 = 1.8 time = 970
.meas tran vdout1_3ck96 FIND v(dout1_3) AT=970.05n

* CHECK dout1_4 Vdout1_4ck96 = 1.8 time = 970
.meas tran vdout1_4ck96 FIND v(dout1_4) AT=970.05n

* CHECK dout1_5 Vdout1_5ck96 = 0 time = 970
.meas tran vdout1_5ck96 FIND v(dout1_5) AT=970.05n

* CHECK dout1_6 Vdout1_6ck96 = 0 time = 970
.meas tran vdout1_6ck96 FIND v(dout1_6) AT=970.05n

* CHECK dout1_7 Vdout1_7ck96 = 1.8 time = 970
.meas tran vdout1_7ck96 FIND v(dout1_7) AT=970.05n

* CHECK dout0_0 Vdout0_0ck97 = 0 time = 980
.meas tran vdout0_0ck97 FIND v(dout0_0) AT=980.05n

* CHECK dout0_1 Vdout0_1ck97 = 0 time = 980
.meas tran vdout0_1ck97 FIND v(dout0_1) AT=980.05n

* CHECK dout0_2 Vdout0_2ck97 = 1.8 time = 980
.meas tran vdout0_2ck97 FIND v(dout0_2) AT=980.05n

* CHECK dout0_3 Vdout0_3ck97 = 0 time = 980
.meas tran vdout0_3ck97 FIND v(dout0_3) AT=980.05n

* CHECK dout0_4 Vdout0_4ck97 = 0 time = 980
.meas tran vdout0_4ck97 FIND v(dout0_4) AT=980.05n

* CHECK dout0_5 Vdout0_5ck97 = 0 time = 980
.meas tran vdout0_5ck97 FIND v(dout0_5) AT=980.05n

* CHECK dout0_6 Vdout0_6ck97 = 0 time = 980
.meas tran vdout0_6ck97 FIND v(dout0_6) AT=980.05n

* CHECK dout0_7 Vdout0_7ck97 = 1.8 time = 980
.meas tran vdout0_7ck97 FIND v(dout0_7) AT=980.05n

* CHECK dout1_0 Vdout1_0ck98 = 1.8 time = 990
.meas tran vdout1_0ck98 FIND v(dout1_0) AT=990.05n

* CHECK dout1_1 Vdout1_1ck98 = 0 time = 990
.meas tran vdout1_1ck98 FIND v(dout1_1) AT=990.05n

* CHECK dout1_2 Vdout1_2ck98 = 1.8 time = 990
.meas tran vdout1_2ck98 FIND v(dout1_2) AT=990.05n

* CHECK dout1_3 Vdout1_3ck98 = 1.8 time = 990
.meas tran vdout1_3ck98 FIND v(dout1_3) AT=990.05n

* CHECK dout1_4 Vdout1_4ck98 = 1.8 time = 990
.meas tran vdout1_4ck98 FIND v(dout1_4) AT=990.05n

* CHECK dout1_5 Vdout1_5ck98 = 0 time = 990
.meas tran vdout1_5ck98 FIND v(dout1_5) AT=990.05n

* CHECK dout1_6 Vdout1_6ck98 = 0 time = 990
.meas tran vdout1_6ck98 FIND v(dout1_6) AT=990.05n

* CHECK dout1_7 Vdout1_7ck98 = 1.8 time = 990
.meas tran vdout1_7ck98 FIND v(dout1_7) AT=990.05n

* CHECK dout1_0 Vdout1_0ck99 = 1.8 time = 1000
.meas tran vdout1_0ck99 FIND v(dout1_0) AT=1000.05n

* CHECK dout1_1 Vdout1_1ck99 = 0 time = 1000
.meas tran vdout1_1ck99 FIND v(dout1_1) AT=1000.05n

* CHECK dout1_2 Vdout1_2ck99 = 1.8 time = 1000
.meas tran vdout1_2ck99 FIND v(dout1_2) AT=1000.05n

* CHECK dout1_3 Vdout1_3ck99 = 1.8 time = 1000
.meas tran vdout1_3ck99 FIND v(dout1_3) AT=1000.05n

* CHECK dout1_4 Vdout1_4ck99 = 1.8 time = 1000
.meas tran vdout1_4ck99 FIND v(dout1_4) AT=1000.05n

* CHECK dout1_5 Vdout1_5ck99 = 0 time = 1000
.meas tran vdout1_5ck99 FIND v(dout1_5) AT=1000.05n

* CHECK dout1_6 Vdout1_6ck99 = 1.8 time = 1000
.meas tran vdout1_6ck99 FIND v(dout1_6) AT=1000.05n

* CHECK dout1_7 Vdout1_7ck99 = 1.8 time = 1000
.meas tran vdout1_7ck99 FIND v(dout1_7) AT=1000.05n

* CHECK dout1_0 Vdout1_0ck100 = 0 time = 1010
.meas tran vdout1_0ck100 FIND v(dout1_0) AT=1010.05n

* CHECK dout1_1 Vdout1_1ck100 = 1.8 time = 1010
.meas tran vdout1_1ck100 FIND v(dout1_1) AT=1010.05n

* CHECK dout1_2 Vdout1_2ck100 = 0 time = 1010
.meas tran vdout1_2ck100 FIND v(dout1_2) AT=1010.05n

* CHECK dout1_3 Vdout1_3ck100 = 1.8 time = 1010
.meas tran vdout1_3ck100 FIND v(dout1_3) AT=1010.05n

* CHECK dout1_4 Vdout1_4ck100 = 1.8 time = 1010
.meas tran vdout1_4ck100 FIND v(dout1_4) AT=1010.05n

* CHECK dout1_5 Vdout1_5ck100 = 1.8 time = 1010
.meas tran vdout1_5ck100 FIND v(dout1_5) AT=1010.05n

* CHECK dout1_6 Vdout1_6ck100 = 1.8 time = 1010
.meas tran vdout1_6ck100 FIND v(dout1_6) AT=1010.05n

* CHECK dout1_7 Vdout1_7ck100 = 0 time = 1010
.meas tran vdout1_7ck100 FIND v(dout1_7) AT=1010.05n

* CHECK dout0_0 Vdout0_0ck102 = 1.8 time = 1030
.meas tran vdout0_0ck102 FIND v(dout0_0) AT=1030.05n

* CHECK dout0_1 Vdout0_1ck102 = 1.8 time = 1030
.meas tran vdout0_1ck102 FIND v(dout0_1) AT=1030.05n

* CHECK dout0_2 Vdout0_2ck102 = 0 time = 1030
.meas tran vdout0_2ck102 FIND v(dout0_2) AT=1030.05n

* CHECK dout0_3 Vdout0_3ck102 = 1.8 time = 1030
.meas tran vdout0_3ck102 FIND v(dout0_3) AT=1030.05n

* CHECK dout0_4 Vdout0_4ck102 = 0 time = 1030
.meas tran vdout0_4ck102 FIND v(dout0_4) AT=1030.05n

* CHECK dout0_5 Vdout0_5ck102 = 0 time = 1030
.meas tran vdout0_5ck102 FIND v(dout0_5) AT=1030.05n

* CHECK dout0_6 Vdout0_6ck102 = 1.8 time = 1030
.meas tran vdout0_6ck102 FIND v(dout0_6) AT=1030.05n

* CHECK dout0_7 Vdout0_7ck102 = 1.8 time = 1030
.meas tran vdout0_7ck102 FIND v(dout0_7) AT=1030.05n

* CHECK dout0_0 Vdout0_0ck103 = 1.8 time = 1040
.meas tran vdout0_0ck103 FIND v(dout0_0) AT=1040.05n

* CHECK dout0_1 Vdout0_1ck103 = 1.8 time = 1040
.meas tran vdout0_1ck103 FIND v(dout0_1) AT=1040.05n

* CHECK dout0_2 Vdout0_2ck103 = 1.8 time = 1040
.meas tran vdout0_2ck103 FIND v(dout0_2) AT=1040.05n

* CHECK dout0_3 Vdout0_3ck103 = 1.8 time = 1040
.meas tran vdout0_3ck103 FIND v(dout0_3) AT=1040.05n

* CHECK dout0_4 Vdout0_4ck103 = 1.8 time = 1040
.meas tran vdout0_4ck103 FIND v(dout0_4) AT=1040.05n

* CHECK dout0_5 Vdout0_5ck103 = 0 time = 1040
.meas tran vdout0_5ck103 FIND v(dout0_5) AT=1040.05n

* CHECK dout0_6 Vdout0_6ck103 = 0 time = 1040
.meas tran vdout0_6ck103 FIND v(dout0_6) AT=1040.05n

* CHECK dout0_7 Vdout0_7ck103 = 0 time = 1040
.meas tran vdout0_7ck103 FIND v(dout0_7) AT=1040.05n

* CHECK dout0_0 Vdout0_0ck105 = 0 time = 1060
.meas tran vdout0_0ck105 FIND v(dout0_0) AT=1060.05n

* CHECK dout0_1 Vdout0_1ck105 = 1.8 time = 1060
.meas tran vdout0_1ck105 FIND v(dout0_1) AT=1060.05n

* CHECK dout0_2 Vdout0_2ck105 = 0 time = 1060
.meas tran vdout0_2ck105 FIND v(dout0_2) AT=1060.05n

* CHECK dout0_3 Vdout0_3ck105 = 1.8 time = 1060
.meas tran vdout0_3ck105 FIND v(dout0_3) AT=1060.05n

* CHECK dout0_4 Vdout0_4ck105 = 1.8 time = 1060
.meas tran vdout0_4ck105 FIND v(dout0_4) AT=1060.05n

* CHECK dout0_5 Vdout0_5ck105 = 1.8 time = 1060
.meas tran vdout0_5ck105 FIND v(dout0_5) AT=1060.05n

* CHECK dout0_6 Vdout0_6ck105 = 1.8 time = 1060
.meas tran vdout0_6ck105 FIND v(dout0_6) AT=1060.05n

* CHECK dout0_7 Vdout0_7ck105 = 0 time = 1060
.meas tran vdout0_7ck105 FIND v(dout0_7) AT=1060.05n

* CHECK dout0_0 Vdout0_0ck106 = 0 time = 1070
.meas tran vdout0_0ck106 FIND v(dout0_0) AT=1070.05n

* CHECK dout0_1 Vdout0_1ck106 = 0 time = 1070
.meas tran vdout0_1ck106 FIND v(dout0_1) AT=1070.05n

* CHECK dout0_2 Vdout0_2ck106 = 1.8 time = 1070
.meas tran vdout0_2ck106 FIND v(dout0_2) AT=1070.05n

* CHECK dout0_3 Vdout0_3ck106 = 0 time = 1070
.meas tran vdout0_3ck106 FIND v(dout0_3) AT=1070.05n

* CHECK dout0_4 Vdout0_4ck106 = 0 time = 1070
.meas tran vdout0_4ck106 FIND v(dout0_4) AT=1070.05n

* CHECK dout0_5 Vdout0_5ck106 = 1.8 time = 1070
.meas tran vdout0_5ck106 FIND v(dout0_5) AT=1070.05n

* CHECK dout0_6 Vdout0_6ck106 = 0 time = 1070
.meas tran vdout0_6ck106 FIND v(dout0_6) AT=1070.05n

* CHECK dout0_7 Vdout0_7ck106 = 0 time = 1070
.meas tran vdout0_7ck106 FIND v(dout0_7) AT=1070.05n

* CHECK dout0_0 Vdout0_0ck107 = 1.8 time = 1080
.meas tran vdout0_0ck107 FIND v(dout0_0) AT=1080.05n

* CHECK dout0_1 Vdout0_1ck107 = 1.8 time = 1080
.meas tran vdout0_1ck107 FIND v(dout0_1) AT=1080.05n

* CHECK dout0_2 Vdout0_2ck107 = 0 time = 1080
.meas tran vdout0_2ck107 FIND v(dout0_2) AT=1080.05n

* CHECK dout0_3 Vdout0_3ck107 = 1.8 time = 1080
.meas tran vdout0_3ck107 FIND v(dout0_3) AT=1080.05n

* CHECK dout0_4 Vdout0_4ck107 = 0 time = 1080
.meas tran vdout0_4ck107 FIND v(dout0_4) AT=1080.05n

* CHECK dout0_5 Vdout0_5ck107 = 0 time = 1080
.meas tran vdout0_5ck107 FIND v(dout0_5) AT=1080.05n

* CHECK dout0_6 Vdout0_6ck107 = 1.8 time = 1080
.meas tran vdout0_6ck107 FIND v(dout0_6) AT=1080.05n

* CHECK dout0_7 Vdout0_7ck107 = 1.8 time = 1080
.meas tran vdout0_7ck107 FIND v(dout0_7) AT=1080.05n

* CHECK dout1_0 Vdout1_0ck107 = 1.8 time = 1080
.meas tran vdout1_0ck107 FIND v(dout1_0) AT=1080.05n

* CHECK dout1_1 Vdout1_1ck107 = 0 time = 1080
.meas tran vdout1_1ck107 FIND v(dout1_1) AT=1080.05n

* CHECK dout1_2 Vdout1_2ck107 = 0 time = 1080
.meas tran vdout1_2ck107 FIND v(dout1_2) AT=1080.05n

* CHECK dout1_3 Vdout1_3ck107 = 1.8 time = 1080
.meas tran vdout1_3ck107 FIND v(dout1_3) AT=1080.05n

* CHECK dout1_4 Vdout1_4ck107 = 0 time = 1080
.meas tran vdout1_4ck107 FIND v(dout1_4) AT=1080.05n

* CHECK dout1_5 Vdout1_5ck107 = 0 time = 1080
.meas tran vdout1_5ck107 FIND v(dout1_5) AT=1080.05n

* CHECK dout1_6 Vdout1_6ck107 = 0 time = 1080
.meas tran vdout1_6ck107 FIND v(dout1_6) AT=1080.05n

* CHECK dout1_7 Vdout1_7ck107 = 0 time = 1080
.meas tran vdout1_7ck107 FIND v(dout1_7) AT=1080.05n

* CHECK dout0_0 Vdout0_0ck109 = 1.8 time = 1100
.meas tran vdout0_0ck109 FIND v(dout0_0) AT=1100.05n

* CHECK dout0_1 Vdout0_1ck109 = 0 time = 1100
.meas tran vdout0_1ck109 FIND v(dout0_1) AT=1100.05n

* CHECK dout0_2 Vdout0_2ck109 = 1.8 time = 1100
.meas tran vdout0_2ck109 FIND v(dout0_2) AT=1100.05n

* CHECK dout0_3 Vdout0_3ck109 = 0 time = 1100
.meas tran vdout0_3ck109 FIND v(dout0_3) AT=1100.05n

* CHECK dout0_4 Vdout0_4ck109 = 1.8 time = 1100
.meas tran vdout0_4ck109 FIND v(dout0_4) AT=1100.05n

* CHECK dout0_5 Vdout0_5ck109 = 1.8 time = 1100
.meas tran vdout0_5ck109 FIND v(dout0_5) AT=1100.05n

* CHECK dout0_6 Vdout0_6ck109 = 1.8 time = 1100
.meas tran vdout0_6ck109 FIND v(dout0_6) AT=1100.05n

* CHECK dout0_7 Vdout0_7ck109 = 0 time = 1100
.meas tran vdout0_7ck109 FIND v(dout0_7) AT=1100.05n

* CHECK dout1_0 Vdout1_0ck109 = 1.8 time = 1100
.meas tran vdout1_0ck109 FIND v(dout1_0) AT=1100.05n

* CHECK dout1_1 Vdout1_1ck109 = 0 time = 1100
.meas tran vdout1_1ck109 FIND v(dout1_1) AT=1100.05n

* CHECK dout1_2 Vdout1_2ck109 = 1.8 time = 1100
.meas tran vdout1_2ck109 FIND v(dout1_2) AT=1100.05n

* CHECK dout1_3 Vdout1_3ck109 = 0 time = 1100
.meas tran vdout1_3ck109 FIND v(dout1_3) AT=1100.05n

* CHECK dout1_4 Vdout1_4ck109 = 1.8 time = 1100
.meas tran vdout1_4ck109 FIND v(dout1_4) AT=1100.05n

* CHECK dout1_5 Vdout1_5ck109 = 0 time = 1100
.meas tran vdout1_5ck109 FIND v(dout1_5) AT=1100.05n

* CHECK dout1_6 Vdout1_6ck109 = 0 time = 1100
.meas tran vdout1_6ck109 FIND v(dout1_6) AT=1100.05n

* CHECK dout1_7 Vdout1_7ck109 = 0 time = 1100
.meas tran vdout1_7ck109 FIND v(dout1_7) AT=1100.05n

* CHECK dout1_0 Vdout1_0ck110 = 0 time = 1110
.meas tran vdout1_0ck110 FIND v(dout1_0) AT=1110.05n

* CHECK dout1_1 Vdout1_1ck110 = 0 time = 1110
.meas tran vdout1_1ck110 FIND v(dout1_1) AT=1110.05n

* CHECK dout1_2 Vdout1_2ck110 = 0 time = 1110
.meas tran vdout1_2ck110 FIND v(dout1_2) AT=1110.05n

* CHECK dout1_3 Vdout1_3ck110 = 0 time = 1110
.meas tran vdout1_3ck110 FIND v(dout1_3) AT=1110.05n

* CHECK dout1_4 Vdout1_4ck110 = 1.8 time = 1110
.meas tran vdout1_4ck110 FIND v(dout1_4) AT=1110.05n

* CHECK dout1_5 Vdout1_5ck110 = 1.8 time = 1110
.meas tran vdout1_5ck110 FIND v(dout1_5) AT=1110.05n

* CHECK dout1_6 Vdout1_6ck110 = 1.8 time = 1110
.meas tran vdout1_6ck110 FIND v(dout1_6) AT=1110.05n

* CHECK dout1_7 Vdout1_7ck110 = 0 time = 1110
.meas tran vdout1_7ck110 FIND v(dout1_7) AT=1110.05n

* CHECK dout1_0 Vdout1_0ck111 = 1.8 time = 1120
.meas tran vdout1_0ck111 FIND v(dout1_0) AT=1120.05n

* CHECK dout1_1 Vdout1_1ck111 = 0 time = 1120
.meas tran vdout1_1ck111 FIND v(dout1_1) AT=1120.05n

* CHECK dout1_2 Vdout1_2ck111 = 1.8 time = 1120
.meas tran vdout1_2ck111 FIND v(dout1_2) AT=1120.05n

* CHECK dout1_3 Vdout1_3ck111 = 0 time = 1120
.meas tran vdout1_3ck111 FIND v(dout1_3) AT=1120.05n

* CHECK dout1_4 Vdout1_4ck111 = 1.8 time = 1120
.meas tran vdout1_4ck111 FIND v(dout1_4) AT=1120.05n

* CHECK dout1_5 Vdout1_5ck111 = 1.8 time = 1120
.meas tran vdout1_5ck111 FIND v(dout1_5) AT=1120.05n

* CHECK dout1_6 Vdout1_6ck111 = 1.8 time = 1120
.meas tran vdout1_6ck111 FIND v(dout1_6) AT=1120.05n

* CHECK dout1_7 Vdout1_7ck111 = 0 time = 1120
.meas tran vdout1_7ck111 FIND v(dout1_7) AT=1120.05n

* CHECK dout0_0 Vdout0_0ck114 = 1.8 time = 1150
.meas tran vdout0_0ck114 FIND v(dout0_0) AT=1150.05n

* CHECK dout0_1 Vdout0_1ck114 = 0 time = 1150
.meas tran vdout0_1ck114 FIND v(dout0_1) AT=1150.05n

* CHECK dout0_2 Vdout0_2ck114 = 1.8 time = 1150
.meas tran vdout0_2ck114 FIND v(dout0_2) AT=1150.05n

* CHECK dout0_3 Vdout0_3ck114 = 0 time = 1150
.meas tran vdout0_3ck114 FIND v(dout0_3) AT=1150.05n

* CHECK dout0_4 Vdout0_4ck114 = 1.8 time = 1150
.meas tran vdout0_4ck114 FIND v(dout0_4) AT=1150.05n

* CHECK dout0_5 Vdout0_5ck114 = 0 time = 1150
.meas tran vdout0_5ck114 FIND v(dout0_5) AT=1150.05n

* CHECK dout0_6 Vdout0_6ck114 = 0 time = 1150
.meas tran vdout0_6ck114 FIND v(dout0_6) AT=1150.05n

* CHECK dout0_7 Vdout0_7ck114 = 0 time = 1150
.meas tran vdout0_7ck114 FIND v(dout0_7) AT=1150.05n

* CHECK dout1_0 Vdout1_0ck114 = 1.8 time = 1150
.meas tran vdout1_0ck114 FIND v(dout1_0) AT=1150.05n

* CHECK dout1_1 Vdout1_1ck114 = 0 time = 1150
.meas tran vdout1_1ck114 FIND v(dout1_1) AT=1150.05n

* CHECK dout1_2 Vdout1_2ck114 = 1.8 time = 1150
.meas tran vdout1_2ck114 FIND v(dout1_2) AT=1150.05n

* CHECK dout1_3 Vdout1_3ck114 = 1.8 time = 1150
.meas tran vdout1_3ck114 FIND v(dout1_3) AT=1150.05n

* CHECK dout1_4 Vdout1_4ck114 = 1.8 time = 1150
.meas tran vdout1_4ck114 FIND v(dout1_4) AT=1150.05n

* CHECK dout1_5 Vdout1_5ck114 = 0 time = 1150
.meas tran vdout1_5ck114 FIND v(dout1_5) AT=1150.05n

* CHECK dout1_6 Vdout1_6ck114 = 1.8 time = 1150
.meas tran vdout1_6ck114 FIND v(dout1_6) AT=1150.05n

* CHECK dout1_7 Vdout1_7ck114 = 1.8 time = 1150
.meas tran vdout1_7ck114 FIND v(dout1_7) AT=1150.05n

* CHECK dout0_0 Vdout0_0ck116 = 1.8 time = 1170
.meas tran vdout0_0ck116 FIND v(dout0_0) AT=1170.05n

* CHECK dout0_1 Vdout0_1ck116 = 0 time = 1170
.meas tran vdout0_1ck116 FIND v(dout0_1) AT=1170.05n

* CHECK dout0_2 Vdout0_2ck116 = 1.8 time = 1170
.meas tran vdout0_2ck116 FIND v(dout0_2) AT=1170.05n

* CHECK dout0_3 Vdout0_3ck116 = 0 time = 1170
.meas tran vdout0_3ck116 FIND v(dout0_3) AT=1170.05n

* CHECK dout0_4 Vdout0_4ck116 = 1.8 time = 1170
.meas tran vdout0_4ck116 FIND v(dout0_4) AT=1170.05n

* CHECK dout0_5 Vdout0_5ck116 = 1.8 time = 1170
.meas tran vdout0_5ck116 FIND v(dout0_5) AT=1170.05n

* CHECK dout0_6 Vdout0_6ck116 = 1.8 time = 1170
.meas tran vdout0_6ck116 FIND v(dout0_6) AT=1170.05n

* CHECK dout0_7 Vdout0_7ck116 = 0 time = 1170
.meas tran vdout0_7ck116 FIND v(dout0_7) AT=1170.05n

* CHECK dout1_0 Vdout1_0ck116 = 0 time = 1170
.meas tran vdout1_0ck116 FIND v(dout1_0) AT=1170.05n

* CHECK dout1_1 Vdout1_1ck116 = 0 time = 1170
.meas tran vdout1_1ck116 FIND v(dout1_1) AT=1170.05n

* CHECK dout1_2 Vdout1_2ck116 = 1.8 time = 1170
.meas tran vdout1_2ck116 FIND v(dout1_2) AT=1170.05n

* CHECK dout1_3 Vdout1_3ck116 = 0 time = 1170
.meas tran vdout1_3ck116 FIND v(dout1_3) AT=1170.05n

* CHECK dout1_4 Vdout1_4ck116 = 0 time = 1170
.meas tran vdout1_4ck116 FIND v(dout1_4) AT=1170.05n

* CHECK dout1_5 Vdout1_5ck116 = 1.8 time = 1170
.meas tran vdout1_5ck116 FIND v(dout1_5) AT=1170.05n

* CHECK dout1_6 Vdout1_6ck116 = 0 time = 1170
.meas tran vdout1_6ck116 FIND v(dout1_6) AT=1170.05n

* CHECK dout1_7 Vdout1_7ck116 = 0 time = 1170
.meas tran vdout1_7ck116 FIND v(dout1_7) AT=1170.05n

* CHECK dout0_0 Vdout0_0ck118 = 0 time = 1190
.meas tran vdout0_0ck118 FIND v(dout0_0) AT=1190.05n

* CHECK dout0_1 Vdout0_1ck118 = 1.8 time = 1190
.meas tran vdout0_1ck118 FIND v(dout0_1) AT=1190.05n

* CHECK dout0_2 Vdout0_2ck118 = 1.8 time = 1190
.meas tran vdout0_2ck118 FIND v(dout0_2) AT=1190.05n

* CHECK dout0_3 Vdout0_3ck118 = 0 time = 1190
.meas tran vdout0_3ck118 FIND v(dout0_3) AT=1190.05n

* CHECK dout0_4 Vdout0_4ck118 = 1.8 time = 1190
.meas tran vdout0_4ck118 FIND v(dout0_4) AT=1190.05n

* CHECK dout0_5 Vdout0_5ck118 = 0 time = 1190
.meas tran vdout0_5ck118 FIND v(dout0_5) AT=1190.05n

* CHECK dout0_6 Vdout0_6ck118 = 1.8 time = 1190
.meas tran vdout0_6ck118 FIND v(dout0_6) AT=1190.05n

* CHECK dout0_7 Vdout0_7ck118 = 1.8 time = 1190
.meas tran vdout0_7ck118 FIND v(dout0_7) AT=1190.05n

* CHECK dout0_0 Vdout0_0ck121 = 0 time = 1220
.meas tran vdout0_0ck121 FIND v(dout0_0) AT=1220.05n

* CHECK dout0_1 Vdout0_1ck121 = 0 time = 1220
.meas tran vdout0_1ck121 FIND v(dout0_1) AT=1220.05n

* CHECK dout0_2 Vdout0_2ck121 = 1.8 time = 1220
.meas tran vdout0_2ck121 FIND v(dout0_2) AT=1220.05n

* CHECK dout0_3 Vdout0_3ck121 = 1.8 time = 1220
.meas tran vdout0_3ck121 FIND v(dout0_3) AT=1220.05n

* CHECK dout0_4 Vdout0_4ck121 = 0 time = 1220
.meas tran vdout0_4ck121 FIND v(dout0_4) AT=1220.05n

* CHECK dout0_5 Vdout0_5ck121 = 0 time = 1220
.meas tran vdout0_5ck121 FIND v(dout0_5) AT=1220.05n

* CHECK dout0_6 Vdout0_6ck121 = 0 time = 1220
.meas tran vdout0_6ck121 FIND v(dout0_6) AT=1220.05n

* CHECK dout0_7 Vdout0_7ck121 = 1.8 time = 1220
.meas tran vdout0_7ck121 FIND v(dout0_7) AT=1220.05n

* CHECK dout0_0 Vdout0_0ck124 = 1.8 time = 1250
.meas tran vdout0_0ck124 FIND v(dout0_0) AT=1250.05n

* CHECK dout0_1 Vdout0_1ck124 = 1.8 time = 1250
.meas tran vdout0_1ck124 FIND v(dout0_1) AT=1250.05n

* CHECK dout0_2 Vdout0_2ck124 = 1.8 time = 1250
.meas tran vdout0_2ck124 FIND v(dout0_2) AT=1250.05n

* CHECK dout0_3 Vdout0_3ck124 = 1.8 time = 1250
.meas tran vdout0_3ck124 FIND v(dout0_3) AT=1250.05n

* CHECK dout0_4 Vdout0_4ck124 = 0 time = 1250
.meas tran vdout0_4ck124 FIND v(dout0_4) AT=1250.05n

* CHECK dout0_5 Vdout0_5ck124 = 1.8 time = 1250
.meas tran vdout0_5ck124 FIND v(dout0_5) AT=1250.05n

* CHECK dout0_6 Vdout0_6ck124 = 1.8 time = 1250
.meas tran vdout0_6ck124 FIND v(dout0_6) AT=1250.05n

* CHECK dout0_7 Vdout0_7ck124 = 1.8 time = 1250
.meas tran vdout0_7ck124 FIND v(dout0_7) AT=1250.05n

* CHECK dout1_0 Vdout1_0ck124 = 1.8 time = 1250
.meas tran vdout1_0ck124 FIND v(dout1_0) AT=1250.05n

* CHECK dout1_1 Vdout1_1ck124 = 0 time = 1250
.meas tran vdout1_1ck124 FIND v(dout1_1) AT=1250.05n

* CHECK dout1_2 Vdout1_2ck124 = 1.8 time = 1250
.meas tran vdout1_2ck124 FIND v(dout1_2) AT=1250.05n

* CHECK dout1_3 Vdout1_3ck124 = 0 time = 1250
.meas tran vdout1_3ck124 FIND v(dout1_3) AT=1250.05n

* CHECK dout1_4 Vdout1_4ck124 = 1.8 time = 1250
.meas tran vdout1_4ck124 FIND v(dout1_4) AT=1250.05n

* CHECK dout1_5 Vdout1_5ck124 = 0 time = 1250
.meas tran vdout1_5ck124 FIND v(dout1_5) AT=1250.05n

* CHECK dout1_6 Vdout1_6ck124 = 0 time = 1250
.meas tran vdout1_6ck124 FIND v(dout1_6) AT=1250.05n

* CHECK dout1_7 Vdout1_7ck124 = 0 time = 1250
.meas tran vdout1_7ck124 FIND v(dout1_7) AT=1250.05n

* CHECK dout0_0 Vdout0_0ck126 = 1.8 time = 1270
.meas tran vdout0_0ck126 FIND v(dout0_0) AT=1270.05n

* CHECK dout0_1 Vdout0_1ck126 = 1.8 time = 1270
.meas tran vdout0_1ck126 FIND v(dout0_1) AT=1270.05n

* CHECK dout0_2 Vdout0_2ck126 = 1.8 time = 1270
.meas tran vdout0_2ck126 FIND v(dout0_2) AT=1270.05n

* CHECK dout0_3 Vdout0_3ck126 = 1.8 time = 1270
.meas tran vdout0_3ck126 FIND v(dout0_3) AT=1270.05n

* CHECK dout0_4 Vdout0_4ck126 = 1.8 time = 1270
.meas tran vdout0_4ck126 FIND v(dout0_4) AT=1270.05n

* CHECK dout0_5 Vdout0_5ck126 = 0 time = 1270
.meas tran vdout0_5ck126 FIND v(dout0_5) AT=1270.05n

* CHECK dout0_6 Vdout0_6ck126 = 0 time = 1270
.meas tran vdout0_6ck126 FIND v(dout0_6) AT=1270.05n

* CHECK dout0_7 Vdout0_7ck126 = 0 time = 1270
.meas tran vdout0_7ck126 FIND v(dout0_7) AT=1270.05n

* CHECK dout1_0 Vdout1_0ck126 = 1.8 time = 1270
.meas tran vdout1_0ck126 FIND v(dout1_0) AT=1270.05n

* CHECK dout1_1 Vdout1_1ck126 = 1.8 time = 1270
.meas tran vdout1_1ck126 FIND v(dout1_1) AT=1270.05n

* CHECK dout1_2 Vdout1_2ck126 = 0 time = 1270
.meas tran vdout1_2ck126 FIND v(dout1_2) AT=1270.05n

* CHECK dout1_3 Vdout1_3ck126 = 1.8 time = 1270
.meas tran vdout1_3ck126 FIND v(dout1_3) AT=1270.05n

* CHECK dout1_4 Vdout1_4ck126 = 1.8 time = 1270
.meas tran vdout1_4ck126 FIND v(dout1_4) AT=1270.05n

* CHECK dout1_5 Vdout1_5ck126 = 1.8 time = 1270
.meas tran vdout1_5ck126 FIND v(dout1_5) AT=1270.05n

* CHECK dout1_6 Vdout1_6ck126 = 1.8 time = 1270
.meas tran vdout1_6ck126 FIND v(dout1_6) AT=1270.05n

* CHECK dout1_7 Vdout1_7ck126 = 0 time = 1270
.meas tran vdout1_7ck126 FIND v(dout1_7) AT=1270.05n

* CHECK dout0_0 Vdout0_0ck129 = 1.8 time = 1300
.meas tran vdout0_0ck129 FIND v(dout0_0) AT=1300.05n

* CHECK dout0_1 Vdout0_1ck129 = 1.8 time = 1300
.meas tran vdout0_1ck129 FIND v(dout0_1) AT=1300.05n

* CHECK dout0_2 Vdout0_2ck129 = 1.8 time = 1300
.meas tran vdout0_2ck129 FIND v(dout0_2) AT=1300.05n

* CHECK dout0_3 Vdout0_3ck129 = 1.8 time = 1300
.meas tran vdout0_3ck129 FIND v(dout0_3) AT=1300.05n

* CHECK dout0_4 Vdout0_4ck129 = 0 time = 1300
.meas tran vdout0_4ck129 FIND v(dout0_4) AT=1300.05n

* CHECK dout0_5 Vdout0_5ck129 = 1.8 time = 1300
.meas tran vdout0_5ck129 FIND v(dout0_5) AT=1300.05n

* CHECK dout0_6 Vdout0_6ck129 = 1.8 time = 1300
.meas tran vdout0_6ck129 FIND v(dout0_6) AT=1300.05n

* CHECK dout0_7 Vdout0_7ck129 = 1.8 time = 1300
.meas tran vdout0_7ck129 FIND v(dout0_7) AT=1300.05n

* CHECK dout0_0 Vdout0_0ck130 = 1.8 time = 1310
.meas tran vdout0_0ck130 FIND v(dout0_0) AT=1310.05n

* CHECK dout0_1 Vdout0_1ck130 = 0 time = 1310
.meas tran vdout0_1ck130 FIND v(dout0_1) AT=1310.05n

* CHECK dout0_2 Vdout0_2ck130 = 0 time = 1310
.meas tran vdout0_2ck130 FIND v(dout0_2) AT=1310.05n

* CHECK dout0_3 Vdout0_3ck130 = 1.8 time = 1310
.meas tran vdout0_3ck130 FIND v(dout0_3) AT=1310.05n

* CHECK dout0_4 Vdout0_4ck130 = 0 time = 1310
.meas tran vdout0_4ck130 FIND v(dout0_4) AT=1310.05n

* CHECK dout0_5 Vdout0_5ck130 = 0 time = 1310
.meas tran vdout0_5ck130 FIND v(dout0_5) AT=1310.05n

* CHECK dout0_6 Vdout0_6ck130 = 0 time = 1310
.meas tran vdout0_6ck130 FIND v(dout0_6) AT=1310.05n

* CHECK dout0_7 Vdout0_7ck130 = 0 time = 1310
.meas tran vdout0_7ck130 FIND v(dout0_7) AT=1310.05n

* CHECK dout1_0 Vdout1_0ck132 = 0 time = 1330
.meas tran vdout1_0ck132 FIND v(dout1_0) AT=1330.05n

* CHECK dout1_1 Vdout1_1ck132 = 1.8 time = 1330
.meas tran vdout1_1ck132 FIND v(dout1_1) AT=1330.05n

* CHECK dout1_2 Vdout1_2ck132 = 1.8 time = 1330
.meas tran vdout1_2ck132 FIND v(dout1_2) AT=1330.05n

* CHECK dout1_3 Vdout1_3ck132 = 0 time = 1330
.meas tran vdout1_3ck132 FIND v(dout1_3) AT=1330.05n

* CHECK dout1_4 Vdout1_4ck132 = 1.8 time = 1330
.meas tran vdout1_4ck132 FIND v(dout1_4) AT=1330.05n

* CHECK dout1_5 Vdout1_5ck132 = 0 time = 1330
.meas tran vdout1_5ck132 FIND v(dout1_5) AT=1330.05n

* CHECK dout1_6 Vdout1_6ck132 = 1.8 time = 1330
.meas tran vdout1_6ck132 FIND v(dout1_6) AT=1330.05n

* CHECK dout1_7 Vdout1_7ck132 = 1.8 time = 1330
.meas tran vdout1_7ck132 FIND v(dout1_7) AT=1330.05n

* CHECK dout0_0 Vdout0_0ck133 = 1.8 time = 1340
.meas tran vdout0_0ck133 FIND v(dout0_0) AT=1340.05n

* CHECK dout0_1 Vdout0_1ck133 = 0 time = 1340
.meas tran vdout0_1ck133 FIND v(dout0_1) AT=1340.05n

* CHECK dout0_2 Vdout0_2ck133 = 1.8 time = 1340
.meas tran vdout0_2ck133 FIND v(dout0_2) AT=1340.05n

* CHECK dout0_3 Vdout0_3ck133 = 1.8 time = 1340
.meas tran vdout0_3ck133 FIND v(dout0_3) AT=1340.05n

* CHECK dout0_4 Vdout0_4ck133 = 0 time = 1340
.meas tran vdout0_4ck133 FIND v(dout0_4) AT=1340.05n

* CHECK dout0_5 Vdout0_5ck133 = 1.8 time = 1340
.meas tran vdout0_5ck133 FIND v(dout0_5) AT=1340.05n

* CHECK dout0_6 Vdout0_6ck133 = 1.8 time = 1340
.meas tran vdout0_6ck133 FIND v(dout0_6) AT=1340.05n

* CHECK dout0_7 Vdout0_7ck133 = 0 time = 1340
.meas tran vdout0_7ck133 FIND v(dout0_7) AT=1340.05n

* CHECK dout1_0 Vdout1_0ck133 = 0 time = 1340
.meas tran vdout1_0ck133 FIND v(dout1_0) AT=1340.05n

* CHECK dout1_1 Vdout1_1ck133 = 1.8 time = 1340
.meas tran vdout1_1ck133 FIND v(dout1_1) AT=1340.05n

* CHECK dout1_2 Vdout1_2ck133 = 1.8 time = 1340
.meas tran vdout1_2ck133 FIND v(dout1_2) AT=1340.05n

* CHECK dout1_3 Vdout1_3ck133 = 0 time = 1340
.meas tran vdout1_3ck133 FIND v(dout1_3) AT=1340.05n

* CHECK dout1_4 Vdout1_4ck133 = 1.8 time = 1340
.meas tran vdout1_4ck133 FIND v(dout1_4) AT=1340.05n

* CHECK dout1_5 Vdout1_5ck133 = 0 time = 1340
.meas tran vdout1_5ck133 FIND v(dout1_5) AT=1340.05n

* CHECK dout1_6 Vdout1_6ck133 = 1.8 time = 1340
.meas tran vdout1_6ck133 FIND v(dout1_6) AT=1340.05n

* CHECK dout1_7 Vdout1_7ck133 = 1.8 time = 1340
.meas tran vdout1_7ck133 FIND v(dout1_7) AT=1340.05n

* CHECK dout0_0 Vdout0_0ck135 = 1.8 time = 1360
.meas tran vdout0_0ck135 FIND v(dout0_0) AT=1360.05n

* CHECK dout0_1 Vdout0_1ck135 = 0 time = 1360
.meas tran vdout0_1ck135 FIND v(dout0_1) AT=1360.05n

* CHECK dout0_2 Vdout0_2ck135 = 0 time = 1360
.meas tran vdout0_2ck135 FIND v(dout0_2) AT=1360.05n

* CHECK dout0_3 Vdout0_3ck135 = 0 time = 1360
.meas tran vdout0_3ck135 FIND v(dout0_3) AT=1360.05n

* CHECK dout0_4 Vdout0_4ck135 = 1.8 time = 1360
.meas tran vdout0_4ck135 FIND v(dout0_4) AT=1360.05n

* CHECK dout0_5 Vdout0_5ck135 = 1.8 time = 1360
.meas tran vdout0_5ck135 FIND v(dout0_5) AT=1360.05n

* CHECK dout0_6 Vdout0_6ck135 = 1.8 time = 1360
.meas tran vdout0_6ck135 FIND v(dout0_6) AT=1360.05n

* CHECK dout0_7 Vdout0_7ck135 = 1.8 time = 1360
.meas tran vdout0_7ck135 FIND v(dout0_7) AT=1360.05n

* CHECK dout1_0 Vdout1_0ck135 = 1.8 time = 1360
.meas tran vdout1_0ck135 FIND v(dout1_0) AT=1360.05n

* CHECK dout1_1 Vdout1_1ck135 = 1.8 time = 1360
.meas tran vdout1_1ck135 FIND v(dout1_1) AT=1360.05n

* CHECK dout1_2 Vdout1_2ck135 = 1.8 time = 1360
.meas tran vdout1_2ck135 FIND v(dout1_2) AT=1360.05n

* CHECK dout1_3 Vdout1_3ck135 = 0 time = 1360
.meas tran vdout1_3ck135 FIND v(dout1_3) AT=1360.05n

* CHECK dout1_4 Vdout1_4ck135 = 1.8 time = 1360
.meas tran vdout1_4ck135 FIND v(dout1_4) AT=1360.05n

* CHECK dout1_5 Vdout1_5ck135 = 1.8 time = 1360
.meas tran vdout1_5ck135 FIND v(dout1_5) AT=1360.05n

* CHECK dout1_6 Vdout1_6ck135 = 1.8 time = 1360
.meas tran vdout1_6ck135 FIND v(dout1_6) AT=1360.05n

* CHECK dout1_7 Vdout1_7ck135 = 0 time = 1360
.meas tran vdout1_7ck135 FIND v(dout1_7) AT=1360.05n

* CHECK dout0_0 Vdout0_0ck137 = 0 time = 1380
.meas tran vdout0_0ck137 FIND v(dout0_0) AT=1380.05n

* CHECK dout0_1 Vdout0_1ck137 = 1.8 time = 1380
.meas tran vdout0_1ck137 FIND v(dout0_1) AT=1380.05n

* CHECK dout0_2 Vdout0_2ck137 = 0 time = 1380
.meas tran vdout0_2ck137 FIND v(dout0_2) AT=1380.05n

* CHECK dout0_3 Vdout0_3ck137 = 1.8 time = 1380
.meas tran vdout0_3ck137 FIND v(dout0_3) AT=1380.05n

* CHECK dout0_4 Vdout0_4ck137 = 0 time = 1380
.meas tran vdout0_4ck137 FIND v(dout0_4) AT=1380.05n

* CHECK dout0_5 Vdout0_5ck137 = 0 time = 1380
.meas tran vdout0_5ck137 FIND v(dout0_5) AT=1380.05n

* CHECK dout0_6 Vdout0_6ck137 = 1.8 time = 1380
.meas tran vdout0_6ck137 FIND v(dout0_6) AT=1380.05n

* CHECK dout0_7 Vdout0_7ck137 = 0 time = 1380
.meas tran vdout0_7ck137 FIND v(dout0_7) AT=1380.05n

* CHECK dout1_0 Vdout1_0ck137 = 1.8 time = 1380
.meas tran vdout1_0ck137 FIND v(dout1_0) AT=1380.05n

* CHECK dout1_1 Vdout1_1ck137 = 1.8 time = 1380
.meas tran vdout1_1ck137 FIND v(dout1_1) AT=1380.05n

* CHECK dout1_2 Vdout1_2ck137 = 1.8 time = 1380
.meas tran vdout1_2ck137 FIND v(dout1_2) AT=1380.05n

* CHECK dout1_3 Vdout1_3ck137 = 0 time = 1380
.meas tran vdout1_3ck137 FIND v(dout1_3) AT=1380.05n

* CHECK dout1_4 Vdout1_4ck137 = 1.8 time = 1380
.meas tran vdout1_4ck137 FIND v(dout1_4) AT=1380.05n

* CHECK dout1_5 Vdout1_5ck137 = 1.8 time = 1380
.meas tran vdout1_5ck137 FIND v(dout1_5) AT=1380.05n

* CHECK dout1_6 Vdout1_6ck137 = 1.8 time = 1380
.meas tran vdout1_6ck137 FIND v(dout1_6) AT=1380.05n

* CHECK dout1_7 Vdout1_7ck137 = 0 time = 1380
.meas tran vdout1_7ck137 FIND v(dout1_7) AT=1380.05n

* CHECK dout0_0 Vdout0_0ck139 = 0 time = 1400
.meas tran vdout0_0ck139 FIND v(dout0_0) AT=1400.05n

* CHECK dout0_1 Vdout0_1ck139 = 0 time = 1400
.meas tran vdout0_1ck139 FIND v(dout0_1) AT=1400.05n

* CHECK dout0_2 Vdout0_2ck139 = 0 time = 1400
.meas tran vdout0_2ck139 FIND v(dout0_2) AT=1400.05n

* CHECK dout0_3 Vdout0_3ck139 = 0 time = 1400
.meas tran vdout0_3ck139 FIND v(dout0_3) AT=1400.05n

* CHECK dout0_4 Vdout0_4ck139 = 1.8 time = 1400
.meas tran vdout0_4ck139 FIND v(dout0_4) AT=1400.05n

* CHECK dout0_5 Vdout0_5ck139 = 0 time = 1400
.meas tran vdout0_5ck139 FIND v(dout0_5) AT=1400.05n

* CHECK dout0_6 Vdout0_6ck139 = 0 time = 1400
.meas tran vdout0_6ck139 FIND v(dout0_6) AT=1400.05n

* CHECK dout0_7 Vdout0_7ck139 = 0 time = 1400
.meas tran vdout0_7ck139 FIND v(dout0_7) AT=1400.05n

* CHECK dout1_0 Vdout1_0ck140 = 0 time = 1410
.meas tran vdout1_0ck140 FIND v(dout1_0) AT=1410.05n

* CHECK dout1_1 Vdout1_1ck140 = 0 time = 1410
.meas tran vdout1_1ck140 FIND v(dout1_1) AT=1410.05n

* CHECK dout1_2 Vdout1_2ck140 = 0 time = 1410
.meas tran vdout1_2ck140 FIND v(dout1_2) AT=1410.05n

* CHECK dout1_3 Vdout1_3ck140 = 0 time = 1410
.meas tran vdout1_3ck140 FIND v(dout1_3) AT=1410.05n

* CHECK dout1_4 Vdout1_4ck140 = 1.8 time = 1410
.meas tran vdout1_4ck140 FIND v(dout1_4) AT=1410.05n

* CHECK dout1_5 Vdout1_5ck140 = 0 time = 1410
.meas tran vdout1_5ck140 FIND v(dout1_5) AT=1410.05n

* CHECK dout1_6 Vdout1_6ck140 = 0 time = 1410
.meas tran vdout1_6ck140 FIND v(dout1_6) AT=1410.05n

* CHECK dout1_7 Vdout1_7ck140 = 0 time = 1410
.meas tran vdout1_7ck140 FIND v(dout1_7) AT=1410.05n

* CHECK dout1_0 Vdout1_0ck143 = 1.8 time = 1440
.meas tran vdout1_0ck143 FIND v(dout1_0) AT=1440.05n

* CHECK dout1_1 Vdout1_1ck143 = 1.8 time = 1440
.meas tran vdout1_1ck143 FIND v(dout1_1) AT=1440.05n

* CHECK dout1_2 Vdout1_2ck143 = 0 time = 1440
.meas tran vdout1_2ck143 FIND v(dout1_2) AT=1440.05n

* CHECK dout1_3 Vdout1_3ck143 = 1.8 time = 1440
.meas tran vdout1_3ck143 FIND v(dout1_3) AT=1440.05n

* CHECK dout1_4 Vdout1_4ck143 = 1.8 time = 1440
.meas tran vdout1_4ck143 FIND v(dout1_4) AT=1440.05n

* CHECK dout1_5 Vdout1_5ck143 = 0 time = 1440
.meas tran vdout1_5ck143 FIND v(dout1_5) AT=1440.05n

* CHECK dout1_6 Vdout1_6ck143 = 0 time = 1440
.meas tran vdout1_6ck143 FIND v(dout1_6) AT=1440.05n

* CHECK dout1_7 Vdout1_7ck143 = 0 time = 1440
.meas tran vdout1_7ck143 FIND v(dout1_7) AT=1440.05n

* CHECK dout0_0 Vdout0_0ck144 = 1.8 time = 1450
.meas tran vdout0_0ck144 FIND v(dout0_0) AT=1450.05n

* CHECK dout0_1 Vdout0_1ck144 = 1.8 time = 1450
.meas tran vdout0_1ck144 FIND v(dout0_1) AT=1450.05n

* CHECK dout0_2 Vdout0_2ck144 = 1.8 time = 1450
.meas tran vdout0_2ck144 FIND v(dout0_2) AT=1450.05n

* CHECK dout0_3 Vdout0_3ck144 = 1.8 time = 1450
.meas tran vdout0_3ck144 FIND v(dout0_3) AT=1450.05n

* CHECK dout0_4 Vdout0_4ck144 = 0 time = 1450
.meas tran vdout0_4ck144 FIND v(dout0_4) AT=1450.05n

* CHECK dout0_5 Vdout0_5ck144 = 1.8 time = 1450
.meas tran vdout0_5ck144 FIND v(dout0_5) AT=1450.05n

* CHECK dout0_6 Vdout0_6ck144 = 1.8 time = 1450
.meas tran vdout0_6ck144 FIND v(dout0_6) AT=1450.05n

* CHECK dout0_7 Vdout0_7ck144 = 1.8 time = 1450
.meas tran vdout0_7ck144 FIND v(dout0_7) AT=1450.05n

* CHECK dout1_0 Vdout1_0ck144 = 1.8 time = 1450
.meas tran vdout1_0ck144 FIND v(dout1_0) AT=1450.05n

* CHECK dout1_1 Vdout1_1ck144 = 1.8 time = 1450
.meas tran vdout1_1ck144 FIND v(dout1_1) AT=1450.05n

* CHECK dout1_2 Vdout1_2ck144 = 1.8 time = 1450
.meas tran vdout1_2ck144 FIND v(dout1_2) AT=1450.05n

* CHECK dout1_3 Vdout1_3ck144 = 1.8 time = 1450
.meas tran vdout1_3ck144 FIND v(dout1_3) AT=1450.05n

* CHECK dout1_4 Vdout1_4ck144 = 1.8 time = 1450
.meas tran vdout1_4ck144 FIND v(dout1_4) AT=1450.05n

* CHECK dout1_5 Vdout1_5ck144 = 0 time = 1450
.meas tran vdout1_5ck144 FIND v(dout1_5) AT=1450.05n

* CHECK dout1_6 Vdout1_6ck144 = 0 time = 1450
.meas tran vdout1_6ck144 FIND v(dout1_6) AT=1450.05n

* CHECK dout1_7 Vdout1_7ck144 = 0 time = 1450
.meas tran vdout1_7ck144 FIND v(dout1_7) AT=1450.05n

* CHECK dout0_0 Vdout0_0ck145 = 0 time = 1460
.meas tran vdout0_0ck145 FIND v(dout0_0) AT=1460.05n

* CHECK dout0_1 Vdout0_1ck145 = 1.8 time = 1460
.meas tran vdout0_1ck145 FIND v(dout0_1) AT=1460.05n

* CHECK dout0_2 Vdout0_2ck145 = 1.8 time = 1460
.meas tran vdout0_2ck145 FIND v(dout0_2) AT=1460.05n

* CHECK dout0_3 Vdout0_3ck145 = 0 time = 1460
.meas tran vdout0_3ck145 FIND v(dout0_3) AT=1460.05n

* CHECK dout0_4 Vdout0_4ck145 = 1.8 time = 1460
.meas tran vdout0_4ck145 FIND v(dout0_4) AT=1460.05n

* CHECK dout0_5 Vdout0_5ck145 = 0 time = 1460
.meas tran vdout0_5ck145 FIND v(dout0_5) AT=1460.05n

* CHECK dout0_6 Vdout0_6ck145 = 1.8 time = 1460
.meas tran vdout0_6ck145 FIND v(dout0_6) AT=1460.05n

* CHECK dout0_7 Vdout0_7ck145 = 1.8 time = 1460
.meas tran vdout0_7ck145 FIND v(dout0_7) AT=1460.05n

* CHECK dout0_0 Vdout0_0ck146 = 1.8 time = 1470
.meas tran vdout0_0ck146 FIND v(dout0_0) AT=1470.05n

* CHECK dout0_1 Vdout0_1ck146 = 1.8 time = 1470
.meas tran vdout0_1ck146 FIND v(dout0_1) AT=1470.05n

* CHECK dout0_2 Vdout0_2ck146 = 1.8 time = 1470
.meas tran vdout0_2ck146 FIND v(dout0_2) AT=1470.05n

* CHECK dout0_3 Vdout0_3ck146 = 1.8 time = 1470
.meas tran vdout0_3ck146 FIND v(dout0_3) AT=1470.05n

* CHECK dout0_4 Vdout0_4ck146 = 0 time = 1470
.meas tran vdout0_4ck146 FIND v(dout0_4) AT=1470.05n

* CHECK dout0_5 Vdout0_5ck146 = 1.8 time = 1470
.meas tran vdout0_5ck146 FIND v(dout0_5) AT=1470.05n

* CHECK dout0_6 Vdout0_6ck146 = 1.8 time = 1470
.meas tran vdout0_6ck146 FIND v(dout0_6) AT=1470.05n

* CHECK dout0_7 Vdout0_7ck146 = 1.8 time = 1470
.meas tran vdout0_7ck146 FIND v(dout0_7) AT=1470.05n

* CHECK dout0_0 Vdout0_0ck147 = 1.8 time = 1480
.meas tran vdout0_0ck147 FIND v(dout0_0) AT=1480.05n

* CHECK dout0_1 Vdout0_1ck147 = 1.8 time = 1480
.meas tran vdout0_1ck147 FIND v(dout0_1) AT=1480.05n

* CHECK dout0_2 Vdout0_2ck147 = 0 time = 1480
.meas tran vdout0_2ck147 FIND v(dout0_2) AT=1480.05n

* CHECK dout0_3 Vdout0_3ck147 = 1.8 time = 1480
.meas tran vdout0_3ck147 FIND v(dout0_3) AT=1480.05n

* CHECK dout0_4 Vdout0_4ck147 = 1.8 time = 1480
.meas tran vdout0_4ck147 FIND v(dout0_4) AT=1480.05n

* CHECK dout0_5 Vdout0_5ck147 = 0 time = 1480
.meas tran vdout0_5ck147 FIND v(dout0_5) AT=1480.05n

* CHECK dout0_6 Vdout0_6ck147 = 0 time = 1480
.meas tran vdout0_6ck147 FIND v(dout0_6) AT=1480.05n

* CHECK dout0_7 Vdout0_7ck147 = 0 time = 1480
.meas tran vdout0_7ck147 FIND v(dout0_7) AT=1480.05n

* CHECK dout0_0 Vdout0_0ck148 = 1.8 time = 1490
.meas tran vdout0_0ck148 FIND v(dout0_0) AT=1490.05n

* CHECK dout0_1 Vdout0_1ck148 = 1.8 time = 1490
.meas tran vdout0_1ck148 FIND v(dout0_1) AT=1490.05n

* CHECK dout0_2 Vdout0_2ck148 = 1.8 time = 1490
.meas tran vdout0_2ck148 FIND v(dout0_2) AT=1490.05n

* CHECK dout0_3 Vdout0_3ck148 = 1.8 time = 1490
.meas tran vdout0_3ck148 FIND v(dout0_3) AT=1490.05n

* CHECK dout0_4 Vdout0_4ck148 = 1.8 time = 1490
.meas tran vdout0_4ck148 FIND v(dout0_4) AT=1490.05n

* CHECK dout0_5 Vdout0_5ck148 = 1.8 time = 1490
.meas tran vdout0_5ck148 FIND v(dout0_5) AT=1490.05n

* CHECK dout0_6 Vdout0_6ck148 = 1.8 time = 1490
.meas tran vdout0_6ck148 FIND v(dout0_6) AT=1490.05n

* CHECK dout0_7 Vdout0_7ck148 = 0 time = 1490
.meas tran vdout0_7ck148 FIND v(dout0_7) AT=1490.05n

* CHECK dout1_0 Vdout1_0ck149 = 1.8 time = 1500
.meas tran vdout1_0ck149 FIND v(dout1_0) AT=1500.05n

* CHECK dout1_1 Vdout1_1ck149 = 1.8 time = 1500
.meas tran vdout1_1ck149 FIND v(dout1_1) AT=1500.05n

* CHECK dout1_2 Vdout1_2ck149 = 1.8 time = 1500
.meas tran vdout1_2ck149 FIND v(dout1_2) AT=1500.05n

* CHECK dout1_3 Vdout1_3ck149 = 1.8 time = 1500
.meas tran vdout1_3ck149 FIND v(dout1_3) AT=1500.05n

* CHECK dout1_4 Vdout1_4ck149 = 1.8 time = 1500
.meas tran vdout1_4ck149 FIND v(dout1_4) AT=1500.05n

* CHECK dout1_5 Vdout1_5ck149 = 0 time = 1500
.meas tran vdout1_5ck149 FIND v(dout1_5) AT=1500.05n

* CHECK dout1_6 Vdout1_6ck149 = 0 time = 1500
.meas tran vdout1_6ck149 FIND v(dout1_6) AT=1500.05n

* CHECK dout1_7 Vdout1_7ck149 = 0 time = 1500
.meas tran vdout1_7ck149 FIND v(dout1_7) AT=1500.05n

* CHECK dout0_0 Vdout0_0ck150 = 1.8 time = 1510
.meas tran vdout0_0ck150 FIND v(dout0_0) AT=1510.05n

* CHECK dout0_1 Vdout0_1ck150 = 0 time = 1510
.meas tran vdout0_1ck150 FIND v(dout0_1) AT=1510.05n

* CHECK dout0_2 Vdout0_2ck150 = 0 time = 1510
.meas tran vdout0_2ck150 FIND v(dout0_2) AT=1510.05n

* CHECK dout0_3 Vdout0_3ck150 = 1.8 time = 1510
.meas tran vdout0_3ck150 FIND v(dout0_3) AT=1510.05n

* CHECK dout0_4 Vdout0_4ck150 = 0 time = 1510
.meas tran vdout0_4ck150 FIND v(dout0_4) AT=1510.05n

* CHECK dout0_5 Vdout0_5ck150 = 0 time = 1510
.meas tran vdout0_5ck150 FIND v(dout0_5) AT=1510.05n

* CHECK dout0_6 Vdout0_6ck150 = 0 time = 1510
.meas tran vdout0_6ck150 FIND v(dout0_6) AT=1510.05n

* CHECK dout0_7 Vdout0_7ck150 = 0 time = 1510
.meas tran vdout0_7ck150 FIND v(dout0_7) AT=1510.05n

* CHECK dout0_0 Vdout0_0ck151 = 1.8 time = 1520
.meas tran vdout0_0ck151 FIND v(dout0_0) AT=1520.05n

* CHECK dout0_1 Vdout0_1ck151 = 0 time = 1520
.meas tran vdout0_1ck151 FIND v(dout0_1) AT=1520.05n

* CHECK dout0_2 Vdout0_2ck151 = 0 time = 1520
.meas tran vdout0_2ck151 FIND v(dout0_2) AT=1520.05n

* CHECK dout0_3 Vdout0_3ck151 = 1.8 time = 1520
.meas tran vdout0_3ck151 FIND v(dout0_3) AT=1520.05n

* CHECK dout0_4 Vdout0_4ck151 = 0 time = 1520
.meas tran vdout0_4ck151 FIND v(dout0_4) AT=1520.05n

* CHECK dout0_5 Vdout0_5ck151 = 0 time = 1520
.meas tran vdout0_5ck151 FIND v(dout0_5) AT=1520.05n

* CHECK dout0_6 Vdout0_6ck151 = 0 time = 1520
.meas tran vdout0_6ck151 FIND v(dout0_6) AT=1520.05n

* CHECK dout0_7 Vdout0_7ck151 = 0 time = 1520
.meas tran vdout0_7ck151 FIND v(dout0_7) AT=1520.05n

* CHECK dout1_0 Vdout1_0ck151 = 1.8 time = 1520
.meas tran vdout1_0ck151 FIND v(dout1_0) AT=1520.05n

* CHECK dout1_1 Vdout1_1ck151 = 0 time = 1520
.meas tran vdout1_1ck151 FIND v(dout1_1) AT=1520.05n

* CHECK dout1_2 Vdout1_2ck151 = 0 time = 1520
.meas tran vdout1_2ck151 FIND v(dout1_2) AT=1520.05n

* CHECK dout1_3 Vdout1_3ck151 = 1.8 time = 1520
.meas tran vdout1_3ck151 FIND v(dout1_3) AT=1520.05n

* CHECK dout1_4 Vdout1_4ck151 = 0 time = 1520
.meas tran vdout1_4ck151 FIND v(dout1_4) AT=1520.05n

* CHECK dout1_5 Vdout1_5ck151 = 0 time = 1520
.meas tran vdout1_5ck151 FIND v(dout1_5) AT=1520.05n

* CHECK dout1_6 Vdout1_6ck151 = 0 time = 1520
.meas tran vdout1_6ck151 FIND v(dout1_6) AT=1520.05n

* CHECK dout1_7 Vdout1_7ck151 = 0 time = 1520
.meas tran vdout1_7ck151 FIND v(dout1_7) AT=1520.05n

* CHECK dout1_0 Vdout1_0ck152 = 1.8 time = 1530
.meas tran vdout1_0ck152 FIND v(dout1_0) AT=1530.05n

* CHECK dout1_1 Vdout1_1ck152 = 0 time = 1530
.meas tran vdout1_1ck152 FIND v(dout1_1) AT=1530.05n

* CHECK dout1_2 Vdout1_2ck152 = 1.8 time = 1530
.meas tran vdout1_2ck152 FIND v(dout1_2) AT=1530.05n

* CHECK dout1_3 Vdout1_3ck152 = 1.8 time = 1530
.meas tran vdout1_3ck152 FIND v(dout1_3) AT=1530.05n

* CHECK dout1_4 Vdout1_4ck152 = 0 time = 1530
.meas tran vdout1_4ck152 FIND v(dout1_4) AT=1530.05n

* CHECK dout1_5 Vdout1_5ck152 = 1.8 time = 1530
.meas tran vdout1_5ck152 FIND v(dout1_5) AT=1530.05n

* CHECK dout1_6 Vdout1_6ck152 = 1.8 time = 1530
.meas tran vdout1_6ck152 FIND v(dout1_6) AT=1530.05n

* CHECK dout1_7 Vdout1_7ck152 = 0 time = 1530
.meas tran vdout1_7ck152 FIND v(dout1_7) AT=1530.05n

* CHECK dout0_0 Vdout0_0ck154 = 1.8 time = 1550
.meas tran vdout0_0ck154 FIND v(dout0_0) AT=1550.05n

* CHECK dout0_1 Vdout0_1ck154 = 1.8 time = 1550
.meas tran vdout0_1ck154 FIND v(dout0_1) AT=1550.05n

* CHECK dout0_2 Vdout0_2ck154 = 1.8 time = 1550
.meas tran vdout0_2ck154 FIND v(dout0_2) AT=1550.05n

* CHECK dout0_3 Vdout0_3ck154 = 1.8 time = 1550
.meas tran vdout0_3ck154 FIND v(dout0_3) AT=1550.05n

* CHECK dout0_4 Vdout0_4ck154 = 1.8 time = 1550
.meas tran vdout0_4ck154 FIND v(dout0_4) AT=1550.05n

* CHECK dout0_5 Vdout0_5ck154 = 1.8 time = 1550
.meas tran vdout0_5ck154 FIND v(dout0_5) AT=1550.05n

* CHECK dout0_6 Vdout0_6ck154 = 0 time = 1550
.meas tran vdout0_6ck154 FIND v(dout0_6) AT=1550.05n

* CHECK dout0_7 Vdout0_7ck154 = 1.8 time = 1550
.meas tran vdout0_7ck154 FIND v(dout0_7) AT=1550.05n

* CHECK dout0_0 Vdout0_0ck155 = 0 time = 1560
.meas tran vdout0_0ck155 FIND v(dout0_0) AT=1560.05n

* CHECK dout0_1 Vdout0_1ck155 = 0 time = 1560
.meas tran vdout0_1ck155 FIND v(dout0_1) AT=1560.05n

* CHECK dout0_2 Vdout0_2ck155 = 0 time = 1560
.meas tran vdout0_2ck155 FIND v(dout0_2) AT=1560.05n

* CHECK dout0_3 Vdout0_3ck155 = 0 time = 1560
.meas tran vdout0_3ck155 FIND v(dout0_3) AT=1560.05n

* CHECK dout0_4 Vdout0_4ck155 = 1.8 time = 1560
.meas tran vdout0_4ck155 FIND v(dout0_4) AT=1560.05n

* CHECK dout0_5 Vdout0_5ck155 = 0 time = 1560
.meas tran vdout0_5ck155 FIND v(dout0_5) AT=1560.05n

* CHECK dout0_6 Vdout0_6ck155 = 0 time = 1560
.meas tran vdout0_6ck155 FIND v(dout0_6) AT=1560.05n

* CHECK dout0_7 Vdout0_7ck155 = 0 time = 1560
.meas tran vdout0_7ck155 FIND v(dout0_7) AT=1560.05n

* CHECK dout1_0 Vdout1_0ck157 = 0 time = 1580
.meas tran vdout1_0ck157 FIND v(dout1_0) AT=1580.05n

* CHECK dout1_1 Vdout1_1ck157 = 0 time = 1580
.meas tran vdout1_1ck157 FIND v(dout1_1) AT=1580.05n

* CHECK dout1_2 Vdout1_2ck157 = 0 time = 1580
.meas tran vdout1_2ck157 FIND v(dout1_2) AT=1580.05n

* CHECK dout1_3 Vdout1_3ck157 = 0 time = 1580
.meas tran vdout1_3ck157 FIND v(dout1_3) AT=1580.05n

* CHECK dout1_4 Vdout1_4ck157 = 1.8 time = 1580
.meas tran vdout1_4ck157 FIND v(dout1_4) AT=1580.05n

* CHECK dout1_5 Vdout1_5ck157 = 0 time = 1580
.meas tran vdout1_5ck157 FIND v(dout1_5) AT=1580.05n

* CHECK dout1_6 Vdout1_6ck157 = 0 time = 1580
.meas tran vdout1_6ck157 FIND v(dout1_6) AT=1580.05n

* CHECK dout1_7 Vdout1_7ck157 = 0 time = 1580
.meas tran vdout1_7ck157 FIND v(dout1_7) AT=1580.05n

* CHECK dout1_0 Vdout1_0ck158 = 1.8 time = 1590
.meas tran vdout1_0ck158 FIND v(dout1_0) AT=1590.05n

* CHECK dout1_1 Vdout1_1ck158 = 1.8 time = 1590
.meas tran vdout1_1ck158 FIND v(dout1_1) AT=1590.05n

* CHECK dout1_2 Vdout1_2ck158 = 1.8 time = 1590
.meas tran vdout1_2ck158 FIND v(dout1_2) AT=1590.05n

* CHECK dout1_3 Vdout1_3ck158 = 1.8 time = 1590
.meas tran vdout1_3ck158 FIND v(dout1_3) AT=1590.05n

* CHECK dout1_4 Vdout1_4ck158 = 0 time = 1590
.meas tran vdout1_4ck158 FIND v(dout1_4) AT=1590.05n

* CHECK dout1_5 Vdout1_5ck158 = 1.8 time = 1590
.meas tran vdout1_5ck158 FIND v(dout1_5) AT=1590.05n

* CHECK dout1_6 Vdout1_6ck158 = 1.8 time = 1590
.meas tran vdout1_6ck158 FIND v(dout1_6) AT=1590.05n

* CHECK dout1_7 Vdout1_7ck158 = 1.8 time = 1590
.meas tran vdout1_7ck158 FIND v(dout1_7) AT=1590.05n

* CHECK dout0_0 Vdout0_0ck159 = 0 time = 1600
.meas tran vdout0_0ck159 FIND v(dout0_0) AT=1600.05n

* CHECK dout0_1 Vdout0_1ck159 = 0 time = 1600
.meas tran vdout0_1ck159 FIND v(dout0_1) AT=1600.05n

* CHECK dout0_2 Vdout0_2ck159 = 0 time = 1600
.meas tran vdout0_2ck159 FIND v(dout0_2) AT=1600.05n

* CHECK dout0_3 Vdout0_3ck159 = 0 time = 1600
.meas tran vdout0_3ck159 FIND v(dout0_3) AT=1600.05n

* CHECK dout0_4 Vdout0_4ck159 = 1.8 time = 1600
.meas tran vdout0_4ck159 FIND v(dout0_4) AT=1600.05n

* CHECK dout0_5 Vdout0_5ck159 = 0 time = 1600
.meas tran vdout0_5ck159 FIND v(dout0_5) AT=1600.05n

* CHECK dout0_6 Vdout0_6ck159 = 0 time = 1600
.meas tran vdout0_6ck159 FIND v(dout0_6) AT=1600.05n

* CHECK dout0_7 Vdout0_7ck159 = 0 time = 1600
.meas tran vdout0_7ck159 FIND v(dout0_7) AT=1600.05n

* CHECK dout0_0 Vdout0_0ck161 = 0 time = 1620
.meas tran vdout0_0ck161 FIND v(dout0_0) AT=1620.05n

* CHECK dout0_1 Vdout0_1ck161 = 0 time = 1620
.meas tran vdout0_1ck161 FIND v(dout0_1) AT=1620.05n

* CHECK dout0_2 Vdout0_2ck161 = 0 time = 1620
.meas tran vdout0_2ck161 FIND v(dout0_2) AT=1620.05n

* CHECK dout0_3 Vdout0_3ck161 = 1.8 time = 1620
.meas tran vdout0_3ck161 FIND v(dout0_3) AT=1620.05n

* CHECK dout0_4 Vdout0_4ck161 = 0 time = 1620
.meas tran vdout0_4ck161 FIND v(dout0_4) AT=1620.05n

* CHECK dout0_5 Vdout0_5ck161 = 0 time = 1620
.meas tran vdout0_5ck161 FIND v(dout0_5) AT=1620.05n

* CHECK dout0_6 Vdout0_6ck161 = 1.8 time = 1620
.meas tran vdout0_6ck161 FIND v(dout0_6) AT=1620.05n

* CHECK dout0_7 Vdout0_7ck161 = 0 time = 1620
.meas tran vdout0_7ck161 FIND v(dout0_7) AT=1620.05n

* CHECK dout1_0 Vdout1_0ck163 = 1.8 time = 1640
.meas tran vdout1_0ck163 FIND v(dout1_0) AT=1640.05n

* CHECK dout1_1 Vdout1_1ck163 = 1.8 time = 1640
.meas tran vdout1_1ck163 FIND v(dout1_1) AT=1640.05n

* CHECK dout1_2 Vdout1_2ck163 = 1.8 time = 1640
.meas tran vdout1_2ck163 FIND v(dout1_2) AT=1640.05n

* CHECK dout1_3 Vdout1_3ck163 = 1.8 time = 1640
.meas tran vdout1_3ck163 FIND v(dout1_3) AT=1640.05n

* CHECK dout1_4 Vdout1_4ck163 = 1.8 time = 1640
.meas tran vdout1_4ck163 FIND v(dout1_4) AT=1640.05n

* CHECK dout1_5 Vdout1_5ck163 = 0 time = 1640
.meas tran vdout1_5ck163 FIND v(dout1_5) AT=1640.05n

* CHECK dout1_6 Vdout1_6ck163 = 0 time = 1640
.meas tran vdout1_6ck163 FIND v(dout1_6) AT=1640.05n

* CHECK dout1_7 Vdout1_7ck163 = 0 time = 1640
.meas tran vdout1_7ck163 FIND v(dout1_7) AT=1640.05n

* CHECK dout0_0 Vdout0_0ck164 = 0 time = 1650
.meas tran vdout0_0ck164 FIND v(dout0_0) AT=1650.05n

* CHECK dout0_1 Vdout0_1ck164 = 0 time = 1650
.meas tran vdout0_1ck164 FIND v(dout0_1) AT=1650.05n

* CHECK dout0_2 Vdout0_2ck164 = 1.8 time = 1650
.meas tran vdout0_2ck164 FIND v(dout0_2) AT=1650.05n

* CHECK dout0_3 Vdout0_3ck164 = 0 time = 1650
.meas tran vdout0_3ck164 FIND v(dout0_3) AT=1650.05n

* CHECK dout0_4 Vdout0_4ck164 = 0 time = 1650
.meas tran vdout0_4ck164 FIND v(dout0_4) AT=1650.05n

* CHECK dout0_5 Vdout0_5ck164 = 1.8 time = 1650
.meas tran vdout0_5ck164 FIND v(dout0_5) AT=1650.05n

* CHECK dout0_6 Vdout0_6ck164 = 0 time = 1650
.meas tran vdout0_6ck164 FIND v(dout0_6) AT=1650.05n

* CHECK dout0_7 Vdout0_7ck164 = 0 time = 1650
.meas tran vdout0_7ck164 FIND v(dout0_7) AT=1650.05n

* CHECK dout0_0 Vdout0_0ck165 = 0 time = 1660
.meas tran vdout0_0ck165 FIND v(dout0_0) AT=1660.05n

* CHECK dout0_1 Vdout0_1ck165 = 0 time = 1660
.meas tran vdout0_1ck165 FIND v(dout0_1) AT=1660.05n

* CHECK dout0_2 Vdout0_2ck165 = 1.8 time = 1660
.meas tran vdout0_2ck165 FIND v(dout0_2) AT=1660.05n

* CHECK dout0_3 Vdout0_3ck165 = 1.8 time = 1660
.meas tran vdout0_3ck165 FIND v(dout0_3) AT=1660.05n

* CHECK dout0_4 Vdout0_4ck165 = 1.8 time = 1660
.meas tran vdout0_4ck165 FIND v(dout0_4) AT=1660.05n

* CHECK dout0_5 Vdout0_5ck165 = 1.8 time = 1660
.meas tran vdout0_5ck165 FIND v(dout0_5) AT=1660.05n

* CHECK dout0_6 Vdout0_6ck165 = 1.8 time = 1660
.meas tran vdout0_6ck165 FIND v(dout0_6) AT=1660.05n

* CHECK dout0_7 Vdout0_7ck165 = 1.8 time = 1660
.meas tran vdout0_7ck165 FIND v(dout0_7) AT=1660.05n

* CHECK dout1_0 Vdout1_0ck165 = 1.8 time = 1660
.meas tran vdout1_0ck165 FIND v(dout1_0) AT=1660.05n

* CHECK dout1_1 Vdout1_1ck165 = 1.8 time = 1660
.meas tran vdout1_1ck165 FIND v(dout1_1) AT=1660.05n

* CHECK dout1_2 Vdout1_2ck165 = 0 time = 1660
.meas tran vdout1_2ck165 FIND v(dout1_2) AT=1660.05n

* CHECK dout1_3 Vdout1_3ck165 = 0 time = 1660
.meas tran vdout1_3ck165 FIND v(dout1_3) AT=1660.05n

* CHECK dout1_4 Vdout1_4ck165 = 0 time = 1660
.meas tran vdout1_4ck165 FIND v(dout1_4) AT=1660.05n

* CHECK dout1_5 Vdout1_5ck165 = 1.8 time = 1660
.meas tran vdout1_5ck165 FIND v(dout1_5) AT=1660.05n

* CHECK dout1_6 Vdout1_6ck165 = 0 time = 1660
.meas tran vdout1_6ck165 FIND v(dout1_6) AT=1660.05n

* CHECK dout1_7 Vdout1_7ck165 = 1.8 time = 1660
.meas tran vdout1_7ck165 FIND v(dout1_7) AT=1660.05n

* CHECK dout1_0 Vdout1_0ck166 = 1.8 time = 1670
.meas tran vdout1_0ck166 FIND v(dout1_0) AT=1670.05n

* CHECK dout1_1 Vdout1_1ck166 = 0 time = 1670
.meas tran vdout1_1ck166 FIND v(dout1_1) AT=1670.05n

* CHECK dout1_2 Vdout1_2ck166 = 1.8 time = 1670
.meas tran vdout1_2ck166 FIND v(dout1_2) AT=1670.05n

* CHECK dout1_3 Vdout1_3ck166 = 1.8 time = 1670
.meas tran vdout1_3ck166 FIND v(dout1_3) AT=1670.05n

* CHECK dout1_4 Vdout1_4ck166 = 0 time = 1670
.meas tran vdout1_4ck166 FIND v(dout1_4) AT=1670.05n

* CHECK dout1_5 Vdout1_5ck166 = 1.8 time = 1670
.meas tran vdout1_5ck166 FIND v(dout1_5) AT=1670.05n

* CHECK dout1_6 Vdout1_6ck166 = 1.8 time = 1670
.meas tran vdout1_6ck166 FIND v(dout1_6) AT=1670.05n

* CHECK dout1_7 Vdout1_7ck166 = 0 time = 1670
.meas tran vdout1_7ck166 FIND v(dout1_7) AT=1670.05n

* CHECK dout0_0 Vdout0_0ck167 = 0 time = 1680
.meas tran vdout0_0ck167 FIND v(dout0_0) AT=1680.05n

* CHECK dout0_1 Vdout0_1ck167 = 0 time = 1680
.meas tran vdout0_1ck167 FIND v(dout0_1) AT=1680.05n

* CHECK dout0_2 Vdout0_2ck167 = 1.8 time = 1680
.meas tran vdout0_2ck167 FIND v(dout0_2) AT=1680.05n

* CHECK dout0_3 Vdout0_3ck167 = 1.8 time = 1680
.meas tran vdout0_3ck167 FIND v(dout0_3) AT=1680.05n

* CHECK dout0_4 Vdout0_4ck167 = 1.8 time = 1680
.meas tran vdout0_4ck167 FIND v(dout0_4) AT=1680.05n

* CHECK dout0_5 Vdout0_5ck167 = 1.8 time = 1680
.meas tran vdout0_5ck167 FIND v(dout0_5) AT=1680.05n

* CHECK dout0_6 Vdout0_6ck167 = 1.8 time = 1680
.meas tran vdout0_6ck167 FIND v(dout0_6) AT=1680.05n

* CHECK dout0_7 Vdout0_7ck167 = 1.8 time = 1680
.meas tran vdout0_7ck167 FIND v(dout0_7) AT=1680.05n

* CHECK dout1_0 Vdout1_0ck167 = 1.8 time = 1680
.meas tran vdout1_0ck167 FIND v(dout1_0) AT=1680.05n

* CHECK dout1_1 Vdout1_1ck167 = 0 time = 1680
.meas tran vdout1_1ck167 FIND v(dout1_1) AT=1680.05n

* CHECK dout1_2 Vdout1_2ck167 = 1.8 time = 1680
.meas tran vdout1_2ck167 FIND v(dout1_2) AT=1680.05n

* CHECK dout1_3 Vdout1_3ck167 = 1.8 time = 1680
.meas tran vdout1_3ck167 FIND v(dout1_3) AT=1680.05n

* CHECK dout1_4 Vdout1_4ck167 = 0 time = 1680
.meas tran vdout1_4ck167 FIND v(dout1_4) AT=1680.05n

* CHECK dout1_5 Vdout1_5ck167 = 1.8 time = 1680
.meas tran vdout1_5ck167 FIND v(dout1_5) AT=1680.05n

* CHECK dout1_6 Vdout1_6ck167 = 1.8 time = 1680
.meas tran vdout1_6ck167 FIND v(dout1_6) AT=1680.05n

* CHECK dout1_7 Vdout1_7ck167 = 0 time = 1680
.meas tran vdout1_7ck167 FIND v(dout1_7) AT=1680.05n

* CHECK dout1_0 Vdout1_0ck168 = 0 time = 1690
.meas tran vdout1_0ck168 FIND v(dout1_0) AT=1690.05n

* CHECK dout1_1 Vdout1_1ck168 = 0 time = 1690
.meas tran vdout1_1ck168 FIND v(dout1_1) AT=1690.05n

* CHECK dout1_2 Vdout1_2ck168 = 1.8 time = 1690
.meas tran vdout1_2ck168 FIND v(dout1_2) AT=1690.05n

* CHECK dout1_3 Vdout1_3ck168 = 0 time = 1690
.meas tran vdout1_3ck168 FIND v(dout1_3) AT=1690.05n

* CHECK dout1_4 Vdout1_4ck168 = 1.8 time = 1690
.meas tran vdout1_4ck168 FIND v(dout1_4) AT=1690.05n

* CHECK dout1_5 Vdout1_5ck168 = 1.8 time = 1690
.meas tran vdout1_5ck168 FIND v(dout1_5) AT=1690.05n

* CHECK dout1_6 Vdout1_6ck168 = 1.8 time = 1690
.meas tran vdout1_6ck168 FIND v(dout1_6) AT=1690.05n

* CHECK dout1_7 Vdout1_7ck168 = 0 time = 1690
.meas tran vdout1_7ck168 FIND v(dout1_7) AT=1690.05n

* CHECK dout1_0 Vdout1_0ck170 = 0 time = 1710
.meas tran vdout1_0ck170 FIND v(dout1_0) AT=1710.05n

* CHECK dout1_1 Vdout1_1ck170 = 0 time = 1710
.meas tran vdout1_1ck170 FIND v(dout1_1) AT=1710.05n

* CHECK dout1_2 Vdout1_2ck170 = 1.8 time = 1710
.meas tran vdout1_2ck170 FIND v(dout1_2) AT=1710.05n

* CHECK dout1_3 Vdout1_3ck170 = 1.8 time = 1710
.meas tran vdout1_3ck170 FIND v(dout1_3) AT=1710.05n

* CHECK dout1_4 Vdout1_4ck170 = 1.8 time = 1710
.meas tran vdout1_4ck170 FIND v(dout1_4) AT=1710.05n

* CHECK dout1_5 Vdout1_5ck170 = 1.8 time = 1710
.meas tran vdout1_5ck170 FIND v(dout1_5) AT=1710.05n

* CHECK dout1_6 Vdout1_6ck170 = 1.8 time = 1710
.meas tran vdout1_6ck170 FIND v(dout1_6) AT=1710.05n

* CHECK dout1_7 Vdout1_7ck170 = 1.8 time = 1710
.meas tran vdout1_7ck170 FIND v(dout1_7) AT=1710.05n

* CHECK dout0_0 Vdout0_0ck171 = 1.8 time = 1720
.meas tran vdout0_0ck171 FIND v(dout0_0) AT=1720.05n

* CHECK dout0_1 Vdout0_1ck171 = 1.8 time = 1720
.meas tran vdout0_1ck171 FIND v(dout0_1) AT=1720.05n

* CHECK dout0_2 Vdout0_2ck171 = 1.8 time = 1720
.meas tran vdout0_2ck171 FIND v(dout0_2) AT=1720.05n

* CHECK dout0_3 Vdout0_3ck171 = 0 time = 1720
.meas tran vdout0_3ck171 FIND v(dout0_3) AT=1720.05n

* CHECK dout0_4 Vdout0_4ck171 = 1.8 time = 1720
.meas tran vdout0_4ck171 FIND v(dout0_4) AT=1720.05n

* CHECK dout0_5 Vdout0_5ck171 = 0 time = 1720
.meas tran vdout0_5ck171 FIND v(dout0_5) AT=1720.05n

* CHECK dout0_6 Vdout0_6ck171 = 1.8 time = 1720
.meas tran vdout0_6ck171 FIND v(dout0_6) AT=1720.05n

* CHECK dout0_7 Vdout0_7ck171 = 0 time = 1720
.meas tran vdout0_7ck171 FIND v(dout0_7) AT=1720.05n

* CHECK dout1_0 Vdout1_0ck171 = 0 time = 1720
.meas tran vdout1_0ck171 FIND v(dout1_0) AT=1720.05n

* CHECK dout1_1 Vdout1_1ck171 = 0 time = 1720
.meas tran vdout1_1ck171 FIND v(dout1_1) AT=1720.05n

* CHECK dout1_2 Vdout1_2ck171 = 1.8 time = 1720
.meas tran vdout1_2ck171 FIND v(dout1_2) AT=1720.05n

* CHECK dout1_3 Vdout1_3ck171 = 0 time = 1720
.meas tran vdout1_3ck171 FIND v(dout1_3) AT=1720.05n

* CHECK dout1_4 Vdout1_4ck171 = 1.8 time = 1720
.meas tran vdout1_4ck171 FIND v(dout1_4) AT=1720.05n

* CHECK dout1_5 Vdout1_5ck171 = 1.8 time = 1720
.meas tran vdout1_5ck171 FIND v(dout1_5) AT=1720.05n

* CHECK dout1_6 Vdout1_6ck171 = 1.8 time = 1720
.meas tran vdout1_6ck171 FIND v(dout1_6) AT=1720.05n

* CHECK dout1_7 Vdout1_7ck171 = 0 time = 1720
.meas tran vdout1_7ck171 FIND v(dout1_7) AT=1720.05n

* CHECK dout0_0 Vdout0_0ck172 = 1.8 time = 1730
.meas tran vdout0_0ck172 FIND v(dout0_0) AT=1730.05n

* CHECK dout0_1 Vdout0_1ck172 = 1.8 time = 1730
.meas tran vdout0_1ck172 FIND v(dout0_1) AT=1730.05n

* CHECK dout0_2 Vdout0_2ck172 = 1.8 time = 1730
.meas tran vdout0_2ck172 FIND v(dout0_2) AT=1730.05n

* CHECK dout0_3 Vdout0_3ck172 = 1.8 time = 1730
.meas tran vdout0_3ck172 FIND v(dout0_3) AT=1730.05n

* CHECK dout0_4 Vdout0_4ck172 = 1.8 time = 1730
.meas tran vdout0_4ck172 FIND v(dout0_4) AT=1730.05n

* CHECK dout0_5 Vdout0_5ck172 = 1.8 time = 1730
.meas tran vdout0_5ck172 FIND v(dout0_5) AT=1730.05n

* CHECK dout0_6 Vdout0_6ck172 = 1.8 time = 1730
.meas tran vdout0_6ck172 FIND v(dout0_6) AT=1730.05n

* CHECK dout0_7 Vdout0_7ck172 = 0 time = 1730
.meas tran vdout0_7ck172 FIND v(dout0_7) AT=1730.05n

* CHECK dout0_0 Vdout0_0ck173 = 1.8 time = 1740
.meas tran vdout0_0ck173 FIND v(dout0_0) AT=1740.05n

* CHECK dout0_1 Vdout0_1ck173 = 1.8 time = 1740
.meas tran vdout0_1ck173 FIND v(dout0_1) AT=1740.05n

* CHECK dout0_2 Vdout0_2ck173 = 1.8 time = 1740
.meas tran vdout0_2ck173 FIND v(dout0_2) AT=1740.05n

* CHECK dout0_3 Vdout0_3ck173 = 0 time = 1740
.meas tran vdout0_3ck173 FIND v(dout0_3) AT=1740.05n

* CHECK dout0_4 Vdout0_4ck173 = 1.8 time = 1740
.meas tran vdout0_4ck173 FIND v(dout0_4) AT=1740.05n

* CHECK dout0_5 Vdout0_5ck173 = 0 time = 1740
.meas tran vdout0_5ck173 FIND v(dout0_5) AT=1740.05n

* CHECK dout0_6 Vdout0_6ck173 = 1.8 time = 1740
.meas tran vdout0_6ck173 FIND v(dout0_6) AT=1740.05n

* CHECK dout0_7 Vdout0_7ck173 = 0 time = 1740
.meas tran vdout0_7ck173 FIND v(dout0_7) AT=1740.05n

* CHECK dout1_0 Vdout1_0ck173 = 0 time = 1740
.meas tran vdout1_0ck173 FIND v(dout1_0) AT=1740.05n

* CHECK dout1_1 Vdout1_1ck173 = 0 time = 1740
.meas tran vdout1_1ck173 FIND v(dout1_1) AT=1740.05n

* CHECK dout1_2 Vdout1_2ck173 = 0 time = 1740
.meas tran vdout1_2ck173 FIND v(dout1_2) AT=1740.05n

* CHECK dout1_3 Vdout1_3ck173 = 1.8 time = 1740
.meas tran vdout1_3ck173 FIND v(dout1_3) AT=1740.05n

* CHECK dout1_4 Vdout1_4ck173 = 0 time = 1740
.meas tran vdout1_4ck173 FIND v(dout1_4) AT=1740.05n

* CHECK dout1_5 Vdout1_5ck173 = 0 time = 1740
.meas tran vdout1_5ck173 FIND v(dout1_5) AT=1740.05n

* CHECK dout1_6 Vdout1_6ck173 = 1.8 time = 1740
.meas tran vdout1_6ck173 FIND v(dout1_6) AT=1740.05n

* CHECK dout1_7 Vdout1_7ck173 = 0 time = 1740
.meas tran vdout1_7ck173 FIND v(dout1_7) AT=1740.05n

* CHECK dout0_0 Vdout0_0ck175 = 0 time = 1760
.meas tran vdout0_0ck175 FIND v(dout0_0) AT=1760.05n

* CHECK dout0_1 Vdout0_1ck175 = 0 time = 1760
.meas tran vdout0_1ck175 FIND v(dout0_1) AT=1760.05n

* CHECK dout0_2 Vdout0_2ck175 = 1.8 time = 1760
.meas tran vdout0_2ck175 FIND v(dout0_2) AT=1760.05n

* CHECK dout0_3 Vdout0_3ck175 = 1.8 time = 1760
.meas tran vdout0_3ck175 FIND v(dout0_3) AT=1760.05n

* CHECK dout0_4 Vdout0_4ck175 = 1.8 time = 1760
.meas tran vdout0_4ck175 FIND v(dout0_4) AT=1760.05n

* CHECK dout0_5 Vdout0_5ck175 = 1.8 time = 1760
.meas tran vdout0_5ck175 FIND v(dout0_5) AT=1760.05n

* CHECK dout0_6 Vdout0_6ck175 = 1.8 time = 1760
.meas tran vdout0_6ck175 FIND v(dout0_6) AT=1760.05n

* CHECK dout0_7 Vdout0_7ck175 = 1.8 time = 1760
.meas tran vdout0_7ck175 FIND v(dout0_7) AT=1760.05n

* CHECK dout1_0 Vdout1_0ck175 = 1.8 time = 1760
.meas tran vdout1_0ck175 FIND v(dout1_0) AT=1760.05n

* CHECK dout1_1 Vdout1_1ck175 = 0 time = 1760
.meas tran vdout1_1ck175 FIND v(dout1_1) AT=1760.05n

* CHECK dout1_2 Vdout1_2ck175 = 0 time = 1760
.meas tran vdout1_2ck175 FIND v(dout1_2) AT=1760.05n

* CHECK dout1_3 Vdout1_3ck175 = 1.8 time = 1760
.meas tran vdout1_3ck175 FIND v(dout1_3) AT=1760.05n

* CHECK dout1_4 Vdout1_4ck175 = 1.8 time = 1760
.meas tran vdout1_4ck175 FIND v(dout1_4) AT=1760.05n

* CHECK dout1_5 Vdout1_5ck175 = 1.8 time = 1760
.meas tran vdout1_5ck175 FIND v(dout1_5) AT=1760.05n

* CHECK dout1_6 Vdout1_6ck175 = 0 time = 1760
.meas tran vdout1_6ck175 FIND v(dout1_6) AT=1760.05n

* CHECK dout1_7 Vdout1_7ck175 = 0 time = 1760
.meas tran vdout1_7ck175 FIND v(dout1_7) AT=1760.05n

* CHECK dout0_0 Vdout0_0ck176 = 1.8 time = 1770
.meas tran vdout0_0ck176 FIND v(dout0_0) AT=1770.05n

* CHECK dout0_1 Vdout0_1ck176 = 1.8 time = 1770
.meas tran vdout0_1ck176 FIND v(dout0_1) AT=1770.05n

* CHECK dout0_2 Vdout0_2ck176 = 1.8 time = 1770
.meas tran vdout0_2ck176 FIND v(dout0_2) AT=1770.05n

* CHECK dout0_3 Vdout0_3ck176 = 1.8 time = 1770
.meas tran vdout0_3ck176 FIND v(dout0_3) AT=1770.05n

* CHECK dout0_4 Vdout0_4ck176 = 1.8 time = 1770
.meas tran vdout0_4ck176 FIND v(dout0_4) AT=1770.05n

* CHECK dout0_5 Vdout0_5ck176 = 0 time = 1770
.meas tran vdout0_5ck176 FIND v(dout0_5) AT=1770.05n

* CHECK dout0_6 Vdout0_6ck176 = 0 time = 1770
.meas tran vdout0_6ck176 FIND v(dout0_6) AT=1770.05n

* CHECK dout0_7 Vdout0_7ck176 = 0 time = 1770
.meas tran vdout0_7ck176 FIND v(dout0_7) AT=1770.05n

* CHECK dout1_0 Vdout1_0ck176 = 1.8 time = 1770
.meas tran vdout1_0ck176 FIND v(dout1_0) AT=1770.05n

* CHECK dout1_1 Vdout1_1ck176 = 1.8 time = 1770
.meas tran vdout1_1ck176 FIND v(dout1_1) AT=1770.05n

* CHECK dout1_2 Vdout1_2ck176 = 1.8 time = 1770
.meas tran vdout1_2ck176 FIND v(dout1_2) AT=1770.05n

* CHECK dout1_3 Vdout1_3ck176 = 1.8 time = 1770
.meas tran vdout1_3ck176 FIND v(dout1_3) AT=1770.05n

* CHECK dout1_4 Vdout1_4ck176 = 0 time = 1770
.meas tran vdout1_4ck176 FIND v(dout1_4) AT=1770.05n

* CHECK dout1_5 Vdout1_5ck176 = 1.8 time = 1770
.meas tran vdout1_5ck176 FIND v(dout1_5) AT=1770.05n

* CHECK dout1_6 Vdout1_6ck176 = 1.8 time = 1770
.meas tran vdout1_6ck176 FIND v(dout1_6) AT=1770.05n

* CHECK dout1_7 Vdout1_7ck176 = 1.8 time = 1770
.meas tran vdout1_7ck176 FIND v(dout1_7) AT=1770.05n

* CHECK dout0_0 Vdout0_0ck178 = 1.8 time = 1790
.meas tran vdout0_0ck178 FIND v(dout0_0) AT=1790.05n

* CHECK dout0_1 Vdout0_1ck178 = 1.8 time = 1790
.meas tran vdout0_1ck178 FIND v(dout0_1) AT=1790.05n

* CHECK dout0_2 Vdout0_2ck178 = 1.8 time = 1790
.meas tran vdout0_2ck178 FIND v(dout0_2) AT=1790.05n

* CHECK dout0_3 Vdout0_3ck178 = 1.8 time = 1790
.meas tran vdout0_3ck178 FIND v(dout0_3) AT=1790.05n

* CHECK dout0_4 Vdout0_4ck178 = 1.8 time = 1790
.meas tran vdout0_4ck178 FIND v(dout0_4) AT=1790.05n

* CHECK dout0_5 Vdout0_5ck178 = 1.8 time = 1790
.meas tran vdout0_5ck178 FIND v(dout0_5) AT=1790.05n

* CHECK dout0_6 Vdout0_6ck178 = 0 time = 1790
.meas tran vdout0_6ck178 FIND v(dout0_6) AT=1790.05n

* CHECK dout0_7 Vdout0_7ck178 = 1.8 time = 1790
.meas tran vdout0_7ck178 FIND v(dout0_7) AT=1790.05n

* CHECK dout1_0 Vdout1_0ck178 = 0 time = 1790
.meas tran vdout1_0ck178 FIND v(dout1_0) AT=1790.05n

* CHECK dout1_1 Vdout1_1ck178 = 0 time = 1790
.meas tran vdout1_1ck178 FIND v(dout1_1) AT=1790.05n

* CHECK dout1_2 Vdout1_2ck178 = 1.8 time = 1790
.meas tran vdout1_2ck178 FIND v(dout1_2) AT=1790.05n

* CHECK dout1_3 Vdout1_3ck178 = 0 time = 1790
.meas tran vdout1_3ck178 FIND v(dout1_3) AT=1790.05n

* CHECK dout1_4 Vdout1_4ck178 = 0 time = 1790
.meas tran vdout1_4ck178 FIND v(dout1_4) AT=1790.05n

* CHECK dout1_5 Vdout1_5ck178 = 1.8 time = 1790
.meas tran vdout1_5ck178 FIND v(dout1_5) AT=1790.05n

* CHECK dout1_6 Vdout1_6ck178 = 0 time = 1790
.meas tran vdout1_6ck178 FIND v(dout1_6) AT=1790.05n

* CHECK dout1_7 Vdout1_7ck178 = 0 time = 1790
.meas tran vdout1_7ck178 FIND v(dout1_7) AT=1790.05n

* CHECK dout0_0 Vdout0_0ck179 = 1.8 time = 1800
.meas tran vdout0_0ck179 FIND v(dout0_0) AT=1800.05n

* CHECK dout0_1 Vdout0_1ck179 = 1.8 time = 1800
.meas tran vdout0_1ck179 FIND v(dout0_1) AT=1800.05n

* CHECK dout0_2 Vdout0_2ck179 = 1.8 time = 1800
.meas tran vdout0_2ck179 FIND v(dout0_2) AT=1800.05n

* CHECK dout0_3 Vdout0_3ck179 = 1.8 time = 1800
.meas tran vdout0_3ck179 FIND v(dout0_3) AT=1800.05n

* CHECK dout0_4 Vdout0_4ck179 = 0 time = 1800
.meas tran vdout0_4ck179 FIND v(dout0_4) AT=1800.05n

* CHECK dout0_5 Vdout0_5ck179 = 1.8 time = 1800
.meas tran vdout0_5ck179 FIND v(dout0_5) AT=1800.05n

* CHECK dout0_6 Vdout0_6ck179 = 1.8 time = 1800
.meas tran vdout0_6ck179 FIND v(dout0_6) AT=1800.05n

* CHECK dout0_7 Vdout0_7ck179 = 1.8 time = 1800
.meas tran vdout0_7ck179 FIND v(dout0_7) AT=1800.05n

* CHECK dout1_0 Vdout1_0ck179 = 0 time = 1800
.meas tran vdout1_0ck179 FIND v(dout1_0) AT=1800.05n

* CHECK dout1_1 Vdout1_1ck179 = 0 time = 1800
.meas tran vdout1_1ck179 FIND v(dout1_1) AT=1800.05n

* CHECK dout1_2 Vdout1_2ck179 = 0 time = 1800
.meas tran vdout1_2ck179 FIND v(dout1_2) AT=1800.05n

* CHECK dout1_3 Vdout1_3ck179 = 0 time = 1800
.meas tran vdout1_3ck179 FIND v(dout1_3) AT=1800.05n

* CHECK dout1_4 Vdout1_4ck179 = 1.8 time = 1800
.meas tran vdout1_4ck179 FIND v(dout1_4) AT=1800.05n

* CHECK dout1_5 Vdout1_5ck179 = 0 time = 1800
.meas tran vdout1_5ck179 FIND v(dout1_5) AT=1800.05n

* CHECK dout1_6 Vdout1_6ck179 = 0 time = 1800
.meas tran vdout1_6ck179 FIND v(dout1_6) AT=1800.05n

* CHECK dout1_7 Vdout1_7ck179 = 0 time = 1800
.meas tran vdout1_7ck179 FIND v(dout1_7) AT=1800.05n

* CHECK dout1_0 Vdout1_0ck180 = 0 time = 1810
.meas tran vdout1_0ck180 FIND v(dout1_0) AT=1810.05n

* CHECK dout1_1 Vdout1_1ck180 = 0 time = 1810
.meas tran vdout1_1ck180 FIND v(dout1_1) AT=1810.05n

* CHECK dout1_2 Vdout1_2ck180 = 0 time = 1810
.meas tran vdout1_2ck180 FIND v(dout1_2) AT=1810.05n

* CHECK dout1_3 Vdout1_3ck180 = 1.8 time = 1810
.meas tran vdout1_3ck180 FIND v(dout1_3) AT=1810.05n

* CHECK dout1_4 Vdout1_4ck180 = 0 time = 1810
.meas tran vdout1_4ck180 FIND v(dout1_4) AT=1810.05n

* CHECK dout1_5 Vdout1_5ck180 = 0 time = 1810
.meas tran vdout1_5ck180 FIND v(dout1_5) AT=1810.05n

* CHECK dout1_6 Vdout1_6ck180 = 1.8 time = 1810
.meas tran vdout1_6ck180 FIND v(dout1_6) AT=1810.05n

* CHECK dout1_7 Vdout1_7ck180 = 0 time = 1810
.meas tran vdout1_7ck180 FIND v(dout1_7) AT=1810.05n

* CHECK dout0_0 Vdout0_0ck182 = 1.8 time = 1830
.meas tran vdout0_0ck182 FIND v(dout0_0) AT=1830.05n

* CHECK dout0_1 Vdout0_1ck182 = 1.8 time = 1830
.meas tran vdout0_1ck182 FIND v(dout0_1) AT=1830.05n

* CHECK dout0_2 Vdout0_2ck182 = 1.8 time = 1830
.meas tran vdout0_2ck182 FIND v(dout0_2) AT=1830.05n

* CHECK dout0_3 Vdout0_3ck182 = 0 time = 1830
.meas tran vdout0_3ck182 FIND v(dout0_3) AT=1830.05n

* CHECK dout0_4 Vdout0_4ck182 = 1.8 time = 1830
.meas tran vdout0_4ck182 FIND v(dout0_4) AT=1830.05n

* CHECK dout0_5 Vdout0_5ck182 = 0 time = 1830
.meas tran vdout0_5ck182 FIND v(dout0_5) AT=1830.05n

* CHECK dout0_6 Vdout0_6ck182 = 1.8 time = 1830
.meas tran vdout0_6ck182 FIND v(dout0_6) AT=1830.05n

* CHECK dout0_7 Vdout0_7ck182 = 0 time = 1830
.meas tran vdout0_7ck182 FIND v(dout0_7) AT=1830.05n

* CHECK dout1_0 Vdout1_0ck183 = 0 time = 1840
.meas tran vdout1_0ck183 FIND v(dout1_0) AT=1840.05n

* CHECK dout1_1 Vdout1_1ck183 = 0 time = 1840
.meas tran vdout1_1ck183 FIND v(dout1_1) AT=1840.05n

* CHECK dout1_2 Vdout1_2ck183 = 0 time = 1840
.meas tran vdout1_2ck183 FIND v(dout1_2) AT=1840.05n

* CHECK dout1_3 Vdout1_3ck183 = 0 time = 1840
.meas tran vdout1_3ck183 FIND v(dout1_3) AT=1840.05n

* CHECK dout1_4 Vdout1_4ck183 = 1.8 time = 1840
.meas tran vdout1_4ck183 FIND v(dout1_4) AT=1840.05n

* CHECK dout1_5 Vdout1_5ck183 = 0 time = 1840
.meas tran vdout1_5ck183 FIND v(dout1_5) AT=1840.05n

* CHECK dout1_6 Vdout1_6ck183 = 0 time = 1840
.meas tran vdout1_6ck183 FIND v(dout1_6) AT=1840.05n

* CHECK dout1_7 Vdout1_7ck183 = 0 time = 1840
.meas tran vdout1_7ck183 FIND v(dout1_7) AT=1840.05n

* CHECK dout0_0 Vdout0_0ck184 = 1.8 time = 1850
.meas tran vdout0_0ck184 FIND v(dout0_0) AT=1850.05n

* CHECK dout0_1 Vdout0_1ck184 = 1.8 time = 1850
.meas tran vdout0_1ck184 FIND v(dout0_1) AT=1850.05n

* CHECK dout0_2 Vdout0_2ck184 = 1.8 time = 1850
.meas tran vdout0_2ck184 FIND v(dout0_2) AT=1850.05n

* CHECK dout0_3 Vdout0_3ck184 = 1.8 time = 1850
.meas tran vdout0_3ck184 FIND v(dout0_3) AT=1850.05n

* CHECK dout0_4 Vdout0_4ck184 = 1.8 time = 1850
.meas tran vdout0_4ck184 FIND v(dout0_4) AT=1850.05n

* CHECK dout0_5 Vdout0_5ck184 = 1.8 time = 1850
.meas tran vdout0_5ck184 FIND v(dout0_5) AT=1850.05n

* CHECK dout0_6 Vdout0_6ck184 = 0 time = 1850
.meas tran vdout0_6ck184 FIND v(dout0_6) AT=1850.05n

* CHECK dout0_7 Vdout0_7ck184 = 1.8 time = 1850
.meas tran vdout0_7ck184 FIND v(dout0_7) AT=1850.05n

* CHECK dout0_0 Vdout0_0ck185 = 1.8 time = 1860
.meas tran vdout0_0ck185 FIND v(dout0_0) AT=1860.05n

* CHECK dout0_1 Vdout0_1ck185 = 1.8 time = 1860
.meas tran vdout0_1ck185 FIND v(dout0_1) AT=1860.05n

* CHECK dout0_2 Vdout0_2ck185 = 1.8 time = 1860
.meas tran vdout0_2ck185 FIND v(dout0_2) AT=1860.05n

* CHECK dout0_3 Vdout0_3ck185 = 1.8 time = 1860
.meas tran vdout0_3ck185 FIND v(dout0_3) AT=1860.05n

* CHECK dout0_4 Vdout0_4ck185 = 0 time = 1860
.meas tran vdout0_4ck185 FIND v(dout0_4) AT=1860.05n

* CHECK dout0_5 Vdout0_5ck185 = 1.8 time = 1860
.meas tran vdout0_5ck185 FIND v(dout0_5) AT=1860.05n

* CHECK dout0_6 Vdout0_6ck185 = 1.8 time = 1860
.meas tran vdout0_6ck185 FIND v(dout0_6) AT=1860.05n

* CHECK dout0_7 Vdout0_7ck185 = 1.8 time = 1860
.meas tran vdout0_7ck185 FIND v(dout0_7) AT=1860.05n

* CHECK dout1_0 Vdout1_0ck185 = 1.8 time = 1860
.meas tran vdout1_0ck185 FIND v(dout1_0) AT=1860.05n

* CHECK dout1_1 Vdout1_1ck185 = 1.8 time = 1860
.meas tran vdout1_1ck185 FIND v(dout1_1) AT=1860.05n

* CHECK dout1_2 Vdout1_2ck185 = 1.8 time = 1860
.meas tran vdout1_2ck185 FIND v(dout1_2) AT=1860.05n

* CHECK dout1_3 Vdout1_3ck185 = 1.8 time = 1860
.meas tran vdout1_3ck185 FIND v(dout1_3) AT=1860.05n

* CHECK dout1_4 Vdout1_4ck185 = 1.8 time = 1860
.meas tran vdout1_4ck185 FIND v(dout1_4) AT=1860.05n

* CHECK dout1_5 Vdout1_5ck185 = 1.8 time = 1860
.meas tran vdout1_5ck185 FIND v(dout1_5) AT=1860.05n

* CHECK dout1_6 Vdout1_6ck185 = 0 time = 1860
.meas tran vdout1_6ck185 FIND v(dout1_6) AT=1860.05n

* CHECK dout1_7 Vdout1_7ck185 = 1.8 time = 1860
.meas tran vdout1_7ck185 FIND v(dout1_7) AT=1860.05n

* CHECK dout0_0 Vdout0_0ck187 = 1.8 time = 1880
.meas tran vdout0_0ck187 FIND v(dout0_0) AT=1880.05n

* CHECK dout0_1 Vdout0_1ck187 = 1.8 time = 1880
.meas tran vdout0_1ck187 FIND v(dout0_1) AT=1880.05n

* CHECK dout0_2 Vdout0_2ck187 = 1.8 time = 1880
.meas tran vdout0_2ck187 FIND v(dout0_2) AT=1880.05n

* CHECK dout0_3 Vdout0_3ck187 = 0 time = 1880
.meas tran vdout0_3ck187 FIND v(dout0_3) AT=1880.05n

* CHECK dout0_4 Vdout0_4ck187 = 1.8 time = 1880
.meas tran vdout0_4ck187 FIND v(dout0_4) AT=1880.05n

* CHECK dout0_5 Vdout0_5ck187 = 0 time = 1880
.meas tran vdout0_5ck187 FIND v(dout0_5) AT=1880.05n

* CHECK dout0_6 Vdout0_6ck187 = 1.8 time = 1880
.meas tran vdout0_6ck187 FIND v(dout0_6) AT=1880.05n

* CHECK dout0_7 Vdout0_7ck187 = 0 time = 1880
.meas tran vdout0_7ck187 FIND v(dout0_7) AT=1880.05n

* CHECK dout1_0 Vdout1_0ck187 = 1.8 time = 1880
.meas tran vdout1_0ck187 FIND v(dout1_0) AT=1880.05n

* CHECK dout1_1 Vdout1_1ck187 = 1.8 time = 1880
.meas tran vdout1_1ck187 FIND v(dout1_1) AT=1880.05n

* CHECK dout1_2 Vdout1_2ck187 = 1.8 time = 1880
.meas tran vdout1_2ck187 FIND v(dout1_2) AT=1880.05n

* CHECK dout1_3 Vdout1_3ck187 = 1.8 time = 1880
.meas tran vdout1_3ck187 FIND v(dout1_3) AT=1880.05n

* CHECK dout1_4 Vdout1_4ck187 = 0 time = 1880
.meas tran vdout1_4ck187 FIND v(dout1_4) AT=1880.05n

* CHECK dout1_5 Vdout1_5ck187 = 1.8 time = 1880
.meas tran vdout1_5ck187 FIND v(dout1_5) AT=1880.05n

* CHECK dout1_6 Vdout1_6ck187 = 1.8 time = 1880
.meas tran vdout1_6ck187 FIND v(dout1_6) AT=1880.05n

* CHECK dout1_7 Vdout1_7ck187 = 1.8 time = 1880
.meas tran vdout1_7ck187 FIND v(dout1_7) AT=1880.05n

* CHECK dout1_0 Vdout1_0ck190 = 0 time = 1910
.meas tran vdout1_0ck190 FIND v(dout1_0) AT=1910.05n

* CHECK dout1_1 Vdout1_1ck190 = 0 time = 1910
.meas tran vdout1_1ck190 FIND v(dout1_1) AT=1910.05n

* CHECK dout1_2 Vdout1_2ck190 = 1.8 time = 1910
.meas tran vdout1_2ck190 FIND v(dout1_2) AT=1910.05n

* CHECK dout1_3 Vdout1_3ck190 = 1.8 time = 1910
.meas tran vdout1_3ck190 FIND v(dout1_3) AT=1910.05n

* CHECK dout1_4 Vdout1_4ck190 = 1.8 time = 1910
.meas tran vdout1_4ck190 FIND v(dout1_4) AT=1910.05n

* CHECK dout1_5 Vdout1_5ck190 = 1.8 time = 1910
.meas tran vdout1_5ck190 FIND v(dout1_5) AT=1910.05n

* CHECK dout1_6 Vdout1_6ck190 = 1.8 time = 1910
.meas tran vdout1_6ck190 FIND v(dout1_6) AT=1910.05n

* CHECK dout1_7 Vdout1_7ck190 = 1.8 time = 1910
.meas tran vdout1_7ck190 FIND v(dout1_7) AT=1910.05n

* CHECK dout0_0 Vdout0_0ck191 = 0 time = 1920
.meas tran vdout0_0ck191 FIND v(dout0_0) AT=1920.05n

* CHECK dout0_1 Vdout0_1ck191 = 0 time = 1920
.meas tran vdout0_1ck191 FIND v(dout0_1) AT=1920.05n

* CHECK dout0_2 Vdout0_2ck191 = 1.8 time = 1920
.meas tran vdout0_2ck191 FIND v(dout0_2) AT=1920.05n

* CHECK dout0_3 Vdout0_3ck191 = 0 time = 1920
.meas tran vdout0_3ck191 FIND v(dout0_3) AT=1920.05n

* CHECK dout0_4 Vdout0_4ck191 = 1.8 time = 1920
.meas tran vdout0_4ck191 FIND v(dout0_4) AT=1920.05n

* CHECK dout0_5 Vdout0_5ck191 = 1.8 time = 1920
.meas tran vdout0_5ck191 FIND v(dout0_5) AT=1920.05n

* CHECK dout0_6 Vdout0_6ck191 = 1.8 time = 1920
.meas tran vdout0_6ck191 FIND v(dout0_6) AT=1920.05n

* CHECK dout0_7 Vdout0_7ck191 = 0 time = 1920
.meas tran vdout0_7ck191 FIND v(dout0_7) AT=1920.05n

* CHECK dout1_0 Vdout1_0ck191 = 1.8 time = 1920
.meas tran vdout1_0ck191 FIND v(dout1_0) AT=1920.05n

* CHECK dout1_1 Vdout1_1ck191 = 0 time = 1920
.meas tran vdout1_1ck191 FIND v(dout1_1) AT=1920.05n

* CHECK dout1_2 Vdout1_2ck191 = 0 time = 1920
.meas tran vdout1_2ck191 FIND v(dout1_2) AT=1920.05n

* CHECK dout1_3 Vdout1_3ck191 = 1.8 time = 1920
.meas tran vdout1_3ck191 FIND v(dout1_3) AT=1920.05n

* CHECK dout1_4 Vdout1_4ck191 = 1.8 time = 1920
.meas tran vdout1_4ck191 FIND v(dout1_4) AT=1920.05n

* CHECK dout1_5 Vdout1_5ck191 = 1.8 time = 1920
.meas tran vdout1_5ck191 FIND v(dout1_5) AT=1920.05n

* CHECK dout1_6 Vdout1_6ck191 = 0 time = 1920
.meas tran vdout1_6ck191 FIND v(dout1_6) AT=1920.05n

* CHECK dout1_7 Vdout1_7ck191 = 0 time = 1920
.meas tran vdout1_7ck191 FIND v(dout1_7) AT=1920.05n

* CHECK dout0_0 Vdout0_0ck192 = 0 time = 1930
.meas tran vdout0_0ck192 FIND v(dout0_0) AT=1930.05n

* CHECK dout0_1 Vdout0_1ck192 = 0 time = 1930
.meas tran vdout0_1ck192 FIND v(dout0_1) AT=1930.05n

* CHECK dout0_2 Vdout0_2ck192 = 0 time = 1930
.meas tran vdout0_2ck192 FIND v(dout0_2) AT=1930.05n

* CHECK dout0_3 Vdout0_3ck192 = 1.8 time = 1930
.meas tran vdout0_3ck192 FIND v(dout0_3) AT=1930.05n

* CHECK dout0_4 Vdout0_4ck192 = 1.8 time = 1930
.meas tran vdout0_4ck192 FIND v(dout0_4) AT=1930.05n

* CHECK dout0_5 Vdout0_5ck192 = 0 time = 1930
.meas tran vdout0_5ck192 FIND v(dout0_5) AT=1930.05n

* CHECK dout0_6 Vdout0_6ck192 = 1.8 time = 1930
.meas tran vdout0_6ck192 FIND v(dout0_6) AT=1930.05n

* CHECK dout0_7 Vdout0_7ck192 = 0 time = 1930
.meas tran vdout0_7ck192 FIND v(dout0_7) AT=1930.05n

* CHECK dout1_0 Vdout1_0ck194 = 1.8 time = 1950
.meas tran vdout1_0ck194 FIND v(dout1_0) AT=1950.05n

* CHECK dout1_1 Vdout1_1ck194 = 1.8 time = 1950
.meas tran vdout1_1ck194 FIND v(dout1_1) AT=1950.05n

* CHECK dout1_2 Vdout1_2ck194 = 1.8 time = 1950
.meas tran vdout1_2ck194 FIND v(dout1_2) AT=1950.05n

* CHECK dout1_3 Vdout1_3ck194 = 0 time = 1950
.meas tran vdout1_3ck194 FIND v(dout1_3) AT=1950.05n

* CHECK dout1_4 Vdout1_4ck194 = 1.8 time = 1950
.meas tran vdout1_4ck194 FIND v(dout1_4) AT=1950.05n

* CHECK dout1_5 Vdout1_5ck194 = 0 time = 1950
.meas tran vdout1_5ck194 FIND v(dout1_5) AT=1950.05n

* CHECK dout1_6 Vdout1_6ck194 = 1.8 time = 1950
.meas tran vdout1_6ck194 FIND v(dout1_6) AT=1950.05n

* CHECK dout1_7 Vdout1_7ck194 = 0 time = 1950
.meas tran vdout1_7ck194 FIND v(dout1_7) AT=1950.05n

* CHECK dout1_0 Vdout1_0ck196 = 0 time = 1970
.meas tran vdout1_0ck196 FIND v(dout1_0) AT=1970.05n

* CHECK dout1_1 Vdout1_1ck196 = 0 time = 1970
.meas tran vdout1_1ck196 FIND v(dout1_1) AT=1970.05n

* CHECK dout1_2 Vdout1_2ck196 = 0 time = 1970
.meas tran vdout1_2ck196 FIND v(dout1_2) AT=1970.05n

* CHECK dout1_3 Vdout1_3ck196 = 1.8 time = 1970
.meas tran vdout1_3ck196 FIND v(dout1_3) AT=1970.05n

* CHECK dout1_4 Vdout1_4ck196 = 1.8 time = 1970
.meas tran vdout1_4ck196 FIND v(dout1_4) AT=1970.05n

* CHECK dout1_5 Vdout1_5ck196 = 0 time = 1970
.meas tran vdout1_5ck196 FIND v(dout1_5) AT=1970.05n

* CHECK dout1_6 Vdout1_6ck196 = 1.8 time = 1970
.meas tran vdout1_6ck196 FIND v(dout1_6) AT=1970.05n

* CHECK dout1_7 Vdout1_7ck196 = 0 time = 1970
.meas tran vdout1_7ck196 FIND v(dout1_7) AT=1970.05n

* CHECK dout0_0 Vdout0_0ck201 = 1.8 time = 2020
.meas tran vdout0_0ck201 FIND v(dout0_0) AT=2020.05n

* CHECK dout0_1 Vdout0_1ck201 = 1.8 time = 2020
.meas tran vdout0_1ck201 FIND v(dout0_1) AT=2020.05n

* CHECK dout0_2 Vdout0_2ck201 = 1.8 time = 2020
.meas tran vdout0_2ck201 FIND v(dout0_2) AT=2020.05n

* CHECK dout0_3 Vdout0_3ck201 = 0 time = 2020
.meas tran vdout0_3ck201 FIND v(dout0_3) AT=2020.05n

* CHECK dout0_4 Vdout0_4ck201 = 1.8 time = 2020
.meas tran vdout0_4ck201 FIND v(dout0_4) AT=2020.05n

* CHECK dout0_5 Vdout0_5ck201 = 0 time = 2020
.meas tran vdout0_5ck201 FIND v(dout0_5) AT=2020.05n

* CHECK dout0_6 Vdout0_6ck201 = 1.8 time = 2020
.meas tran vdout0_6ck201 FIND v(dout0_6) AT=2020.05n

* CHECK dout0_7 Vdout0_7ck201 = 0 time = 2020
.meas tran vdout0_7ck201 FIND v(dout0_7) AT=2020.05n

* CHECK dout1_0 Vdout1_0ck201 = 0 time = 2020
.meas tran vdout1_0ck201 FIND v(dout1_0) AT=2020.05n

* CHECK dout1_1 Vdout1_1ck201 = 0 time = 2020
.meas tran vdout1_1ck201 FIND v(dout1_1) AT=2020.05n

* CHECK dout1_2 Vdout1_2ck201 = 0 time = 2020
.meas tran vdout1_2ck201 FIND v(dout1_2) AT=2020.05n

* CHECK dout1_3 Vdout1_3ck201 = 0 time = 2020
.meas tran vdout1_3ck201 FIND v(dout1_3) AT=2020.05n

* CHECK dout1_4 Vdout1_4ck201 = 1.8 time = 2020
.meas tran vdout1_4ck201 FIND v(dout1_4) AT=2020.05n

* CHECK dout1_5 Vdout1_5ck201 = 0 time = 2020
.meas tran vdout1_5ck201 FIND v(dout1_5) AT=2020.05n

* CHECK dout1_6 Vdout1_6ck201 = 0 time = 2020
.meas tran vdout1_6ck201 FIND v(dout1_6) AT=2020.05n

* CHECK dout1_7 Vdout1_7ck201 = 0 time = 2020
.meas tran vdout1_7ck201 FIND v(dout1_7) AT=2020.05n

* CHECK dout0_0 Vdout0_0ck202 = 0 time = 2030
.meas tran vdout0_0ck202 FIND v(dout0_0) AT=2030.05n

* CHECK dout0_1 Vdout0_1ck202 = 0 time = 2030
.meas tran vdout0_1ck202 FIND v(dout0_1) AT=2030.05n

* CHECK dout0_2 Vdout0_2ck202 = 0 time = 2030
.meas tran vdout0_2ck202 FIND v(dout0_2) AT=2030.05n

* CHECK dout0_3 Vdout0_3ck202 = 1.8 time = 2030
.meas tran vdout0_3ck202 FIND v(dout0_3) AT=2030.05n

* CHECK dout0_4 Vdout0_4ck202 = 0 time = 2030
.meas tran vdout0_4ck202 FIND v(dout0_4) AT=2030.05n

* CHECK dout0_5 Vdout0_5ck202 = 0 time = 2030
.meas tran vdout0_5ck202 FIND v(dout0_5) AT=2030.05n

* CHECK dout0_6 Vdout0_6ck202 = 1.8 time = 2030
.meas tran vdout0_6ck202 FIND v(dout0_6) AT=2030.05n

* CHECK dout0_7 Vdout0_7ck202 = 0 time = 2030
.meas tran vdout0_7ck202 FIND v(dout0_7) AT=2030.05n

* CHECK dout0_0 Vdout0_0ck204 = 0 time = 2050
.meas tran vdout0_0ck204 FIND v(dout0_0) AT=2050.05n

* CHECK dout0_1 Vdout0_1ck204 = 0 time = 2050
.meas tran vdout0_1ck204 FIND v(dout0_1) AT=2050.05n

* CHECK dout0_2 Vdout0_2ck204 = 0 time = 2050
.meas tran vdout0_2ck204 FIND v(dout0_2) AT=2050.05n

* CHECK dout0_3 Vdout0_3ck204 = 0 time = 2050
.meas tran vdout0_3ck204 FIND v(dout0_3) AT=2050.05n

* CHECK dout0_4 Vdout0_4ck204 = 1.8 time = 2050
.meas tran vdout0_4ck204 FIND v(dout0_4) AT=2050.05n

* CHECK dout0_5 Vdout0_5ck204 = 0 time = 2050
.meas tran vdout0_5ck204 FIND v(dout0_5) AT=2050.05n

* CHECK dout0_6 Vdout0_6ck204 = 0 time = 2050
.meas tran vdout0_6ck204 FIND v(dout0_6) AT=2050.05n

* CHECK dout0_7 Vdout0_7ck204 = 0 time = 2050
.meas tran vdout0_7ck204 FIND v(dout0_7) AT=2050.05n

* CHECK dout1_0 Vdout1_0ck204 = 1.8 time = 2050
.meas tran vdout1_0ck204 FIND v(dout1_0) AT=2050.05n

* CHECK dout1_1 Vdout1_1ck204 = 0 time = 2050
.meas tran vdout1_1ck204 FIND v(dout1_1) AT=2050.05n

* CHECK dout1_2 Vdout1_2ck204 = 0 time = 2050
.meas tran vdout1_2ck204 FIND v(dout1_2) AT=2050.05n

* CHECK dout1_3 Vdout1_3ck204 = 1.8 time = 2050
.meas tran vdout1_3ck204 FIND v(dout1_3) AT=2050.05n

* CHECK dout1_4 Vdout1_4ck204 = 1.8 time = 2050
.meas tran vdout1_4ck204 FIND v(dout1_4) AT=2050.05n

* CHECK dout1_5 Vdout1_5ck204 = 1.8 time = 2050
.meas tran vdout1_5ck204 FIND v(dout1_5) AT=2050.05n

* CHECK dout1_6 Vdout1_6ck204 = 1.8 time = 2050
.meas tran vdout1_6ck204 FIND v(dout1_6) AT=2050.05n

* CHECK dout1_7 Vdout1_7ck204 = 1.8 time = 2050
.meas tran vdout1_7ck204 FIND v(dout1_7) AT=2050.05n

* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

