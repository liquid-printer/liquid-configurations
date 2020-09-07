; homeall.g
; called to home the X, Y in case of crash detection

G91               			; relative positioning
M201 X400 Y400		     	; Set accelerations (mm/s^2)
M906 X800 Y800				; Set motor current (mA)
G1 Z5 F3000 H2   			; lift Z relative to current position
G1 H1 X-210 F3000 			; move quickly to X axis endstop and stop there
G1 X4 F8000	 				; move away from the endstops
G1 H1 Y-220 F3000 			; move quickly to X axis endstop and stop there
G1 Y4 F8000	 				; move away from the endstops
M906 X1200 Y1200			; Set motor current (mA)
M201 X4000 Y4000			; Set accelerations (mm/s^2)
G1 E4 F300			   		; extrude 4mm of filament
G90               			; absolute positioning