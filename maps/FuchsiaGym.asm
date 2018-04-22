const_value set 2

FuchsiaGym_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


FuchsiaGym_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $11, $4, 3, FUCHSIA_CITY
	warp_def $11, $5, 3, FUCHSIA_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 0
