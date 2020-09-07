; homey.g
; called to home the Y axis

G91               	; relative positioning
M201 Y400       	; Set accelerations (mm/s^2)
M906 X800 Y800		; Set motor current (mA)
G1 Z5 F3000 H2    	; lift Z relative to current position
G1 H1 Y-220 F3000 	; move quickly to Y axis endstop and stop there (first pass)
G1 Z-5 F3000 H2   	; lower Z again
M906 X1200 Y1200	; Set motor current (mA)
M201 Y4000       	; Set accelerations (mm/s^2)
G90               	; absolute positioning