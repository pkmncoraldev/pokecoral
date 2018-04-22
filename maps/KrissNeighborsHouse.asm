const_value set 2

KrissNeighborsHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

KrissNeighborsHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 8, CHERRYGROVE_CITY
	warp_def 7, 3, 8, CHERRYGROVE_CITY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_REDS_MOM, 4, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandHouse2NPC1, -1
	person_event SPRITE_POKEFAN_M, 3, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIslandHouse2NPC2, -1

SunbeamIslandHouse2NPC1:
	jumptextfaceplayer SunbeamIslandHouse2NPC1Text
	
SunbeamIslandHouse2NPC2:
	jumptextfaceplayer SunbeamIslandHouse2NPC2Text

SunbeamIslandHouse2NPC1Text:
	text "SUNBEAM ISLAND is"
	line "known for it's"
	
	para "sunny skies and"
	line "bright blue water."
	
	para "GRASS TYPE #MON"
	line "thrive in this"
	
	para "island's sunny"
	line "weather!"
	done
	
SunbeamIslandHouse2NPC2Text:
	text "Our GYM LEADER,"
	line "LEILANI, is just"
	
	para "as strong as she"
	line "is beautiful!"
	done