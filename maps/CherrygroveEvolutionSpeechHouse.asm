const_value set 2

CherrygroveEvolutionSpeechHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


CherrygroveEvolutionSpeechHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 5, CHERRYGROVE_CITY
	warp_def 7, 3, 5, CHERRYGROVE_CITY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 3
	person_event SPRITE_REDS_MOM, 4, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, SunbeamIslandHouse4NPC1, -1
	person_event SPRITE_POKEFAN_F, 3, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandHouse4NPC2, -1
	person_event SPRITE_DODUO, 4, 7, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandHouse4NPC3, -1

SunbeamIslandHouse4NPC1:
	jumptextfaceplayer SunbeamIslandHouse4NPC1Text
	
SunbeamIslandHouse4NPC2:
	jumptextfaceplayer SunbeamIslandHouse4NPC2Text
	
SunbeamIslandHouse4NPC3:
	opentext
	writetext SunbeamIslandHouse4NPC3Text
	cry DODUO
	waitsfx
	waitbutton
	closetext
	end
	
SunbeamIslandHouse4NPC1Text:
	text "There is a DODRIO"
	line "RANCH to the NORTH"
	cont "EAST."
	
	para "They say the DODUO"
	line "bred there are the"
	cont "fastest around."
	done
	
SunbeamIslandHouse4NPC2Text:
	text "Our DODUO isn't"
	line "from the DODRIO"
	cont "RANCH, but we love"
	cont "it just the same."
	done
	
SunbeamIslandHouse4NPC3Text:
	text "DODUO: DEWO! DEWO!"
	line "DEWO!"
	done