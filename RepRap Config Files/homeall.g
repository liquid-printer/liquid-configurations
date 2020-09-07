; homeall.g
; called to home the X, Y, Z axis

G91               			; relative positioning
M201 X400 Y400				; Set accelerations (mm/s^2)
M906 X800 Y800				; Set motor current (mA)
G1 Z5 F3000 H2   			; lift Z relative to current position
G1 H1 X-210 F3000 			; move quickly to X axis endstop and stop there
G1 X4 F8000	 				; move away from the endstops
G1 H1 Y-220 F3000 			; move quickly to X axis endstop and stop there
G1 Y4 F8000	 				; move away from the endstops
G1 H0 X100 Y100 F4500  		; move quickly to X axis endstop and stop there
G1 H1 Z-205 F200 			; move Z down until the switch triggers
G92 Z1.15					; set new z position
G1 H2 Z20 F1800			   	; lift Z relative to current position
M906 X1200 Y1200			; Set motor current (mA)
M201 X4000 Y4000			; Set accelerations (mm/s^2)
G90               			; absolute positioning