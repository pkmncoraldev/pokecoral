const_value set 2

SpookyForest8_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

SpookyForest8_MapEventHeader:: db 0, 0

.Warps: db 0

.CoordEvents: db 0

.BGEvents: db 1
	signpost 7, 10, SIGNPOST_READ, SpookyForest8Sign

.ObjectEvents: db 7
	person_event SPRITE_TWIN, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1
	person_event SPRITE_POKE_BALL, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1
	person_event SPRITE_YOUNGSTER, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1
	person_event SPRITE_LASS, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1
	person_event SPRITE_TWIN, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1
	person_event SPRITE_POKEFAN_M, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1
	person_event SPRITE_POKEFAN_F, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1

SpookyForest8Sign:
	jumptext SpookyForest8SignText
	
SpookyForest8SignText:
	text "To whoever sees"
	line "this:"
	
	para "There's something"
	line "just not right"
	
	para "about that house"
	line "in the clearing"
	cont "to the NORTH."
	
	para "Be careful around"
	line "here."
	done