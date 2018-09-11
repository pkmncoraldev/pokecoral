const_value set 2

ElmsHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ElmsHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 7, CHERRYGROVE_CITY
	warp_def 7, 3, 7, CHERRYGROVE_CITY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_GRAMPS, 3, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandHouse1NPC1, -1
	person_event SPRITE_GRANNY, 4, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandHouse1NPC2, -1

SunbeamIslandHouse1NPC1:
	jumptextfaceplayer SunbeamIslandHouse1NPC1Text
	
SunbeamIslandHouse1NPC2:
	jumptextfaceplayer SunbeamIslandHouse1NPC2Text
	
SunbeamIslandHouse1NPC1Text:
	text "This island was"
	line "the perfect place"
	cont "to retire."
	
	para "We have great wea-"
	line "ther, and it isn't"
	
	para "too quiet or too"
	line "busy."
	done
	
SunbeamIslandHouse1NPC2Text:
	text "I try and take a"
	line "walk to the beach"
	
	para "at least once a"
	line "day."
	
	para "It's good exercise,"
	line "and the sunlight's"
	cont "good for my skin."
	done
	