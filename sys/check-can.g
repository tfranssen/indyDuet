; Check that all expected CAN boards are online and running
; Expected: expansion board 1 + closed-loop drivers 70-74
;
; Sets global.canBoardsOffline to "" when OK, else a description of missing boards.
; Aborts only when global.canCheckAbort is true (startup / manual check).

if !exists(global.canCheckAbort)
	global canCheckAbort = true
; end if
if !exists(global.canBoardsOffline)
	global canBoardsOffline = ""
; end if

var required = {1, 70, 71, 72, 73, 74}
var offline = ""

while iterations < #var.required
	var addr = var.required[iterations]
	var found = false
	var i = 0
	while var.i < #boards
		if boards[var.i].canAddress = var.addr
			if boards[var.i].state = "running"
				set var.found = true
			else
				set var.offline = var.offline ^ " B" ^ var.addr ^ "(" ^ boards[var.i].state ^ ")"
			; end if
		; end if
		set var.i = var.i + 1
	; end while
	if !var.found
		set var.offline = var.offline ^ " B" ^ var.addr ^ "(missing)"
	; end if
; end while

set global.canBoardsOffline = var.offline

if var.offline != ""
	echo {"CAN boards offline:" ^ var.offline}
	if global.canCheckAbort
		abort {"CAN boards offline:" ^ var.offline}
	; end if
elif global.canCheckAbort
	echo "All CAN boards OK (1, 70-74)"
; end if
