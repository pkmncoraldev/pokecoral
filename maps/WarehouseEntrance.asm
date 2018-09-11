const_value set 2

WarehouseEntrance_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1
	
	dbw MAPCALLBACK_TILES, .CheckFrontDoor

	
.CheckFrontDoor:
	checkevent EVENT_SPOOKHOUSE_FRONT_DOOR_LOCKED
	iftrue .CloseSesame
	return

.CloseSesame:
	changeblock $e, $9, $39
	return

WarehouseEntrance_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 9, 14, 1, RUINS_OF_ALPH_OMANYTE_WORD_ROOM
	warp_def 9, 15, 2, RUINS_OF_ALPH_OMANYTE_WORD_ROOM

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 7
	person_event SPRITE_TWIN, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1
	person_event SPRITE_POKE_BALL, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1
	person_event SPRITE_YOUNGSTER, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1
	person_event SPRITE_LASS, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1
	person_event SPRITE_TWIN, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1
	person_event SPRITE_POKEFAN_M, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1
	person_event SPRITE_POKEFAN_F, -6, -6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1

