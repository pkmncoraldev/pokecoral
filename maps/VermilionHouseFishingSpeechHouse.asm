const_value set 2

VermilionHouseFishingSpeechHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

VermilionHouseFishingSpeechHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 9, VERMILION_CITY
	warp_def 7, 3, 9, VERMILION_CITY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_TEACHER, 3, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 5, FlickerHouse1NPC, -1

FlickerHouse1NPC:
	jumptextfaceplayer FlickerHouse1NPCText
	
FlickerHouse1NPCText:
	text "Living next to a"
	line "train station is"
	cont "great!"
	
	para "The sound of the"
	line "train whistle just"
	cont "never gets old."
	
	para "Even in the middle"
	line "of the night…"
	
	para "It's just great…"
	done