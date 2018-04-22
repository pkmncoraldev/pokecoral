const_value set 2
	const VIOLETNICKNAMESPEECHHOUSE_POKEFAN_M

VioletNicknameSpeechHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

AlexDad:
	jumptextfaceplayer AlexDadText

AlexDadText:
	text "You're one of ALEX's"
	line "friends, right?"

	para "She's already left"
	line "for GLINT CITY to"
	
	para "get her first GYM"
	line "BADGE."
	
	para "If you see her,"
	line "tell her I said"
	cont "hi!"
	done

VioletNicknameSpeechHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 3, 3, VIOLET_CITY
	warp_def 7, 4, 3, VIOLET_CITY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_POKEFAN_M, 4, 5, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, AlexDad, -1

