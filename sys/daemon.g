; Test loop for temperature and pump control
while true
    ; Display water temperature (uncomment for debugging)
    ; M118 P0 L2 S{"Water temp: " ^ sensors.analog[4].lastReading ^ " C"}

    ; Control pump based on global water temperature threshold
    if sensors.analog[3].lastReading > global.waterTemp
        ; M118 P0 L2 S{"Water temp too high"}
        M42 P1 S1  ; Turn on pump
    elif sensors.analog[3].lastReading < global.waterTemp - 0.2
        ; M118 P0 L2 S{"Water temp ok"}
        M42 P1 S0  ; Turn off pump

    G4 S0.2   ; Small delay to prevent overloading