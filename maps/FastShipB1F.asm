const_value set 2

FastShipB1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


FastShipB1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $b, $5, 11, FAST_SHIP_1F
	warp_def $d, $1f, 12, FAST_SHIP_1F

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 0
