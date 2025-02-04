
; Configuration file for RepRapFirmware on Duet 3 Main Board 6HC
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.5.10 on Thu Jan 16 2025 13:27:49 GMT+0100 (Central European Standard Time)

; General
G90 ; absolute coordinates
M83 ; relative extruder moves
M550 P"indyprinter1" ; set hostname

; Wait a moment for the CAN expansion boards to become available
G4 S2

; Smart Drivers
M569 P0.0 S1 D2 ; driver 0.0 goes forwards (extruder 0)
M569 P70.0 S0 D2 ; driver 70.0 goes backwards (X axis)
M569 P71.0 S1 D2 ; driver 71.0 goes forwards (Y axis)
M569 P72.0 S0 D2 ; driver 72.0 goes backwards (Z axis)
M569 P73.0 S0 D2 ; driver 73.0 goes backwards (Z axis)
M569 P74.0 S1 D2 ; driver 74.0 goes forwards (extruder 0)

; Motor Idle Current Reduction
M906 I30 ; set motor current idle factor
M84 S30 ; set motor current idle timeout

; Closed-Loop Drivers
M569.1 P70.0 T3 ; driver 70.0 has a magnetic encoder
M569.1 P71.0 T3 ; driver 71.0 has a magnetic encoder
M569.1 P72.0 T3 ; driver 72.0 has a magnetic encoder
M569.1 P73.0 T3 ; driver 73.0 has a magnetic encoder
M569.1 P74.0 T3 ; driver 74.0 has a magnetic encoder

; Axes
M584 X71.0 Y70.0 Z72.0:73.0 E74.0; set axis mapping
M350 X16 Y16 Z16 E16 I1 ; configure microstepping with interpolation
M906 X800 Y800 Z1500 E4000 ; set axis driver currents
M92 X32 Y32 Z1290 E420; configure steps per mm
M208 X0:550 Y0:550 Z0:500 ; set minimum and maximum axis limits
M566 X2000 Y2000 Z100 E120; set maximum instantaneous speed changes (mm/min)
M203 X40000 Y40000 Z500 E3600; set maximum speeds (mm/min)
M201 X2000 Y2000 Z30 E250; set accelerations (mm/s^2)

; Temp sensors
M308 S0 P"temp0" Y"thermistor" A"Heated Bed" T100000 B4725 C7.06e-8 ; Bed sensor
M308 S1 P"1.spi.cs0" Y"rtdmax31865" A"Nozzle" W2 F50     ; configure sensor #1
M308 S2 P"1.spi.cs1" Y"rtdmax31865" A"Bandheater" W2 F50 ; configure sensor #2
M308 S3 P"1.temp0" Y"pt1000" A"Inlet"              ; configure sensor #3

; Heaters
M950 H0 C"out1" T0                ; create bed heater
M143 H0 P0 T0 C0 S140 A0          ; configure heater monitor #0 for bed heater
M307 H0 R0.5 D5.5 E1.35 K0.56 B1  ; configure model of bed heater

M950 H2 C"1.out7" T1              ; create heater #2
M143 H2 P0 T1 C0 S285 A0          ; configure heater monitor #0 for heater #2
M307 H2 R0.5 D5.5 E1.35 K0.56 B1 ; configure model of heater #2

M950 H1 C"1.out6" T2              ; create heater #1
M143 H1 P0 T1 C0 S285 A0          ; configure heater monitor #0 for heater #1
M307 H1 R0.5 D5.5 E1.35 K0.56 B1 ; configure model of heater #1

; Fan
M950 F0 C"!1.out3+out3.tach"   ; create fan #0
M106 P0 C"Tool" S0 L0 X1 B0.1 ; configure fan #0

; Heated beds
M140 P0 H0                        ; configure heated bed
M143 H0 S100                       ; set temperature limit for heater 0 

; Kinematics
M669 K1 ; configure CoreXY kinematics

; Endstops
M574 X1 P"!io0.in" S1 ; configure X axis endstop
M574 Y1 P"!io2.in" S1 ; configure Y axis endstop
M574 Z1 P"!io3.in" S1 ; configure Z axis endstop

; Tools
M563 P0 D0 H1:2 F0 ; create tool #0
M568 P0 R0 S0      ; set initial tool #0 active and standby temperatures to 0C

; Pins
M950 P1 C"out7"
M950 P2 C"out8"

global waterTemp = 60

; Miscellaneous
T0 ; select first tool
