const_value set 2

Route25_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

Route25_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $5, $2f, 1, BILLS_HOUSE

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 0
