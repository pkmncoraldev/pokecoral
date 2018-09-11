const_value set 2

VermilionHouseDiglettsCaveSpeechHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

VermilionHouseDiglettsCaveSpeechHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 10, VERMILION_CITY
	warp_def 7, 3, 10, VERMILION_CITY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_GRAMPS, 4, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 5, FlickerHouse2NPC1, -1
	person_event SPRITE_REDS_MOM, 3, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 5, FlickerHouse2NPC2, -1
	
FlickerHouse2NPC1:
	jumptextfaceplayer FlickerHouse2NPC1Text
	
FlickerHouse2NPC2:
	jumptextfaceplayer FlickerHouse2NPC2Text
	
FlickerHouse2NPC1Text:
	text "I used to work the"
	line "railroad as a"
	
	para "young man when"
	line "they first built"
	cont "the station."
	
	para "Since then, this"
	line "little town has"
	
	para "gotten a lot"
	line "bigger."
	done
	
FlickerHouse2NPC2Text:
	text "FLICKER STATION is"
	line "the name of this"
	
	para "town, but it's"
	line "also the name of"
	cont "the train station."
	
	para "Apparently the"
	line "town was built"
	
	para "around the"
	line "station."
	
	para "I guess that would"
	line "explain the weird"
	cont "name…"
	
	para "Still doesn't"
	line "make it any less"
	
	para "confusing in con-"
	line "versation."
	done