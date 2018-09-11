const_value set 2


VioletCity_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1

	; callbacks
	dbw MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_DAYBREAK
	return

	

VioletCity_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 11, 4, 2, EARLS_POKEMON_ACADEMY
	warp_def 7, 13, 2, VIOLET_POKECENTER_1F
	warp_def 11, 17, 2, VIOLET_NICKNAME_SPEECH_HOUSE
	warp_def 7, 19, 2, VIOLET_ONIX_TRADE_HOUSE

.CoordEvents: db 0

.BGEvents: db 4
	signpost 11, 11, SIGNPOST_READ, DaybreakVillageSign
	signpost 13, 5, SIGNPOST_READ, TrainerSchoolSign
	signpost 7, 14, SIGNPOST_READ, DayBreakPokeCenterSign
	signpost 4, 19, SIGNPOST_ITEM, DayBreakHiddenSuperPotion

.ObjectEvents: db 2
	person_event SPRITE_GRANNY, 8, 10, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DayBreakNPC1, -1
	person_event SPRITE_POKE_BALL, -6, -6, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, DayBreakRareCandy, EVENT_DAYBREAK_RARE_CANDY

DayBreakNPC1:
	checkevent	EVENT_BEAT_TEACHER
	iftrue .DayBreakNPCBeatTeacher
	jumptextfaceplayer DayBreakNPC1Text1
	
.DayBreakNPCBeatTeacher
	jumptextfaceplayer DayBreakNPC1Text2
	
DayBreakRareCandy:
	itemball RARE_CANDY
	
DaybreakVillageSign:
	jumptext DaybreakVillageSignText

TrainerSchoolSign:
	jumptext TrainerSchoolSignText
	
DayBreakPokeCenterSign:
	jumpstd pokecentersign
	
DayBreakHiddenSuperPotion:
	dwb EVENT_DAYBREAK_HIDDEN_SUPER_POTION, SUPER_POTION
	
DayBreakNPC1Text1:
	text "Is that a #MON?"
	
	para "Oh, it's so cute!"
	
	para "You should show"
	line "your old teacher."
	
	para "She's probably in"
	line "the schoolhouse"
	cont "teaching class."
	
	para "She'll be so proud."
	done
	
DayBreakNPC1Text2:
	text "Did you show your"
	line "teacher your"
	cont "#MON?"
	
	para "She gave you a"
	line "QUICK CLAW?"
	
	para "That's a useful"
	line "item!"
	
	para "Make sure you take"
	line "good care of it."
	done
	
DaybreakVillageSignText:
	text "DAYBREAK VILLAGE"
	
	para "A village of new"
	line "beginings."
	done
	
TrainerSchoolSignText:
	text "DAYBREAK #MON"
	line "TRAINER SCHOOL"
	done
