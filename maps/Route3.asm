const_value set 2

Route3_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


Route3_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $1, $34, 1, MOUNT_MOON

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 0
