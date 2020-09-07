; bed.g
; called to perform automatic bed compensation via G32

M561                		; clear any bed transform
G28                 		; home all axes
M201 X500 Y500 Z100			; Set accelerations (mm/s^2)
G29							; mesh bed leveling
M201 X1000 Y1000 Z100		; Set accelerations (mm/s^2)