const_value set 2

GuideGentsHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

GuideGentsHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 4, CHERRYGROVE_CITY
	warp_def 7, 3, 4, CHERRYGROVE_CITY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_FISHER, 3, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunbeamIslandHouse3NPC, -1

SunbeamIslandHouse3NPC:
	jumptextfaceplayer SunbeamIslandHouse3NPCText
	
SunbeamIslandHouse3NPCText:
	text "SUNBEAM ISLAND has"
	line "a bikini contest"
	cont "almost every day."
	
	para "I like to go to"
	line "see all the pretty"
	
	para "girls in their"
	line "swimsuits."
	
	para "Hehehe…"
	done