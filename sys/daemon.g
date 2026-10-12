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

        ; Control pellet feeder based on LDR sensor with pelletFeeding condition
    if sensors.analog[7].lastReading > 85 && global.pelletFeeding
        M42 P3 S1  ; Turn on feeder
    elif sensors.analog[7].lastReading < 85|| !global.pelletFeeding
        M42 P3 S0  ; Turn off feeder

    ; Every ~5s: warn if an expected CAN board never came online / is not running
    ; (boards that drop later are already reported by RRF; missing-from-start is not)
    set global.canCheckCounter = global.canCheckCounter + 1
    if global.canCheckCounter >= 25
        set global.canCheckCounter = 0
        set global.canCheckAbort = false
        M98 P"check-can.g"
        if global.canBoardsOffline != ""
            M118 P0 L1 S{"CAN boards offline:" ^ global.canBoardsOffline}
        ; end if
    ; end if

    G4 S0.2   ; Small delay to prevent overloading
