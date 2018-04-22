const_value set 2

CeladonGym_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


CeladonGym_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $11, $4, 8, CELADON_CITY
	warp_def $11, $5, 8, CELADON_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 0
