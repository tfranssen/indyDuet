; Resume printing file "0:/gcodes/Martijn/140559 Leisten rechts__Heelstuk_PP_3h31m.gcode" after print paused at 2025-03-28 17:12
M140 P0 S0.0
M568 P0  A2 S210:210 R140:140
M486 S0 A"140559_Leisten_rechts__Heelstuk.stl_id_0_copy_0"
M486 S1 A"140559_Leisten_rechts__Teenstuk.stl_id_1_copy_0"
G21
M98 P"resurrect-prologue.g" X285.143 Y378.402 Z41.600
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
M23 "0:/gcodes/Martijn/140559 Leisten rechts__Heelstuk_PP_3h31m.gcode"
M26 S1548212
G0 F6000 Z43.600
G0 F6000 X285.143 Y378.402
G0 F6000 Z41.600
G1 F5681.2 P0
M204 P500.0 T400.0
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
M26 S1548542
G1 F2400.0 P0
M204 P50000.0 T50000.0
G21
M596 P0
M106 P0 S1.00
M302 P0
M24
