; Resume printing file "0:/gcodes/Martijn/140559_Leisten_links__Teenstuk.gcode" after print paused at 2025-03-21 17:41
M568 P0  A2 S210:210 R140:140
M486 S0 A"Process 1"
G21
M98 P"resurrect-prologue.g" X164.243 Y79.770 Z2.400
M290 R0 X0.000 Y0.000 Z0.000
; Workplace coordinates
G10 L2 P1 X0.00 Y0.00 Z0.00
G10 L2 P2 X0.00 Y0.00 Z0.00
G10 L2 P3 X0.00 Y0.00 Z0.00
G10 L2 P4 X0.00 Y0.00 Z0.00
G10 L2 P5 X0.00 Y0.00 Z0.00
G10 L2 P6 X0.00 Y0.00 Z0.00
G10 L2 P7 X0.00 Y0.00 Z0.00
G10 L2 P8 X0.00 Y0.00 Z0.00
G10 L2 P9 X0.00 Y0.00 Z0.00
M596 P0
M486 S0
T0
G54
M106 S1.00
M116
G92 E0.00000
M83
G94
G17
M23 "0:/gcodes/Martijn/140559_Leisten_links__Teenstuk.gcode"
M26 S129426
G0 F6000 Z4.400
G0 F6000 X164.243 Y79.770
G0 F6000 Z2.400
G1 F1200.0 P0
M204 P50000.0 T50000.0
G21
M596 P1
M486 S-1
G54
M106 S0.00
M116
G92 E0.00000
M83
G94
G17
M26 S129764
G1 F30000.0 P0
M204 P50000.0 T50000.0
G21
M596 P0
M106 P0 S1.00
M302 P0
M24
