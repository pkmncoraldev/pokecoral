const_value set 2

GuideGentsHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

GuideGentsHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 4, CHERRYGROVE_CITY
	warp_def $7, $3, 4, CHERRYGROVE_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 0