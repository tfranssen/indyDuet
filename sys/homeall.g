; increase Z
G91                                                   ; relative positioning
G1 H2 Z5 F6000                                        ; move Z relative to current position to avoid dragging nozzle over the bed
G90                                                   ; absolute positioning

; home XY
var xTravel = move.axes[0].max - move.axes[0].min + 5 ; calculate how far X can travel plus 5mm
var yTravel = move.axes[1].max - move.axes[1].min + 5 ; calculate how far Y can travel plus 5mm
G91                                                   ; relative positioning
G1 H1 X{-var.xTravel} Y{-var.yTravel} F2000            ; coarse home
G1 H1 X{-var.xTravel} F2000                            ; coarse home in the -X direction
G1 H1 Y{-var.yTravel} F2000                            ; coarse home in the -Y direction
G1 X5 Y5 F6000                                        ; move back 5mm
G1 H1 X{-var.xTravel} Y{-var.yTravel} F300            ; fine home
G1 H1 X{-var.xTravel} F300                            ; fine home in the -X direction
G1 H1 Y{-var.yTravel} F300                            ; fine home in the -Y direction
G90                                                   ; absolute positioning

; home Z
var zTravel = move.axes[2].max - move.axes[2].min + 5 ; calculate how far Z can travel plus 5mm
G91                                                   ; relative positioning
G1 H1 Z{-var.zTravel} F300                            ; coarse home in the -Z direction
G1 Z5 F6000                                           ; move back 5mm
G1 H1 Z-10 F300                                       ; fine home in the -Z direction
G90                                                   ; absolute positioning