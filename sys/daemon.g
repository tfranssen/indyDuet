;Test
while true
	; M118 P0 L2 S{"Water temp: " ^ sensors.analog[3].lastReading ^ " C"}
	if {sensors.analog[3].lastReading > 81.0}
		M42 P0 S1 ; turn on pump
	if {sensors.analog[3].lastReading < 80.8}
		M42 P0 S0 ;turn off pump
	G4 S1

