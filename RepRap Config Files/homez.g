; homez.g
; called to home the Z axis

G91               	; relative positioning
G1 Z5 F4000 H2    	; lift Z relative to current position
G1 H1 Z-205 F200 	; move Z down until the switch triggers
G92 Z1.15			; set new z position
G1 Z5 F1800 H2   	; lift Z relative to current position
G90              	; absolute positioning