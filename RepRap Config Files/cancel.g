; stop.g
; called when a print is cancelled after a pause.

G10 P0 S0		; turn off temps
M140 S0			; turn off bed heater
M106 S0	 		; turn off fan
M84				; motors off