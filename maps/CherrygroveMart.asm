const_value set 2

CherrygroveMart_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ClerkScript_0x19680a:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE
	closetext
	end


CherrygroveMart_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 1, CHERRYGROVE_CITY
	warp_def $7, $3, 1, CHERRYGROVE_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_CLERK, 3, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ClerkScript_0x19680a, -1