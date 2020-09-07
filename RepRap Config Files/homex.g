; homex.g
; called to home the X axis

G91               	; relative positioning
M201 X400       	; Set accelerations (mm/s^2)
M906 X800 Y800		; Set motor current (mA)
G1 Z5 F3000 H2    	; lift Z relative to current position
G1 H1 X-210 F3000 	; move quickly to X axis endstop and stop there
G1 Z-5 F3000 H2   	; lower Z again
M906 X1200 Y1200	; Set motor current (mA)
M201 X4000       	; Set accelerations (mm/s^2)
G90               	; absolute positioning