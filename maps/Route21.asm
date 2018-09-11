const_value set 2

Route21_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


Route21_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 15, 5, 3, VIOLET_MART
	warp_def 1, 5, 2, ROUTE_19

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_FISHER, 13, 4, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, DaybreakGrotto2NPC, EVENT_DAYBREAK_GROTTO_HIKER

DaybreakGrotto2NPC:
	jumptextfaceplayer DaybreakGrotto2NPCText

DaybreakGrotto2NPCText:
	text "There's a tree"
	line "blocking the way"
	cont "up ahead."
	
	para "I could pass with"
	line "a POKEMON that can"
	cont "learn CUT."
	
	para "Oh well…"
	
	para "I guess I have to"
	line "take the long way"
	cont "around GLINT CITY."
	done
	