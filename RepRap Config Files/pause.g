; pause.g
; called when a print from SD card is paused

M83            		; relative extruder moves
G1 E-4 F3600   		; retract 4mm of filament
G91            		; relative positioning
G1 Z5 F360	     	; lift Z by 5mm
G90            		; absolute positioning
G1 X10 Y200 F6000 	; go to X=0 Y=200