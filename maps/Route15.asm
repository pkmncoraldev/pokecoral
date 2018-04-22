const_value set 2

Route15_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0



Route15_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $4, $2, 3, ROUTE_15_FUCHSIA_GATE
	warp_def $5, $2, 4, ROUTE_15_FUCHSIA_GATE

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 0