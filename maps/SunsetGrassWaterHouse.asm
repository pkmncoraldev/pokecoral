const_value set 2

SunsetGrassWaterHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

SunsetNPC1House1:
	jumptextfaceplayer SunsetNPC1House1Text
	
SunsetNPC2House1:
	jumptextfaceplayer SunsetNPC2House1Text

	
SunsetNPC1House1Text:
	text "I prefer WATER"
	line "#MON, but you'll"
	
	para "be more successful"
	line "with a well-"
	cont "balanced team."
	done
	
SunsetNPC2House1Text:
	text "Do you like GRASS"
	line "#MON?"
	
	para "I love them, but"
	line "I just wish they"
	
	para "didn't have so many"
	line "weaknesses."
	done

GrassWaterHouseBookshelf:
	jumpstd magazinebookshelf

SunsetGrassWaterHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 5, SUNSET_BAY
	warp_def 7, 3, 5, SUNSET_BAY

.CoordEvents: db 0

.BGEvents: db 2
	signpost 1, 0, SIGNPOST_READ, GrassWaterHouseBookshelf
	signpost 1, 1, SIGNPOST_READ, GrassWaterHouseBookshelf

.ObjectEvents: db 2
	person_event SPRITE_FISHING_GURU, 3, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunsetNPC1House1, -1
	person_event SPRITE_TEACHER, 4, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunsetNPC2House1, -1

