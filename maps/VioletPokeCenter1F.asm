const_value set 2
	const DAYBREAKPOKECENTER1F_NURSE
	const DAYBREAKPOKECENTER1F_GAMEBOY_KID
	const DAYBREAKPOKECENTER1F_GENTLEMAN
	const DAYBREAKPOKECENTER1F_YOUNGSTER

VioletPokeCenter1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

DaybreakPokeCenterNurse:
	jumpstd pokecenternurse

DaybreakPokeCenterNPC1:
	jumptextfaceplayer DaybreakPokeCenterNPC1Text

DaybreakPokeCenterNPC2:
	jumptextfaceplayer DaybreakPokeCenterNPC2Text

DaybreakPokeCenterLedyba:
	opentext
	writetext DaybreakPokeCenterLedybaText
	cry LEDYBA
	waitbutton
	closetext
	end

MovementData_AideWalksStraightOutOfPokecenter:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

MovementData_AideWalksLeftToExitPokecenter:
	step LEFT
	step DOWN
	step_end

MovementData_AideFinishesLeavingPokecenter:
	step DOWN
	step DOWN
	step DOWN
	step_end

DaybreakPokeCenterNPC1Text:
	text "Your a #MON"
	line "TRAINER, right?"
	
	para "We have quite the"
	line "variety of #MON"
	cont "around here."
	
	para "I say you should"
	line "catch a few."
	
	para "They may not look"
	line "like much now,"
	
	para "but looks can be"
	line "deceiving."
	done

DaybreakPokeCenterNPC2Text:
	text "My grandpa says"
	line "that weak #MON"
	
	para "can turn into"
	line "strong #MON."
	
	para "That's why I named"
	line "my LEDYBA CRUSHER!"
	done
	
DaybreakPokeCenterLedybaText:
	text "CRUSHER: …LEDY?"
	done


VioletPokeCenter1F_MapEventHeader:: db 0, 0

.Warps: db 3
	warp_def 7, 5, 2, VIOLET_CITY
	warp_def 7, 4, 2, VIOLET_CITY
	warp_def 7, -1, 1, POKECENTER_2F

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 4
	person_event SPRITE_NURSE, 1, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DaybreakPokeCenterNurse, -1
	person_event SPRITE_GENTLEMAN, 3, 1, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, DaybreakPokeCenterNPC1, -1
	person_event SPRITE_YOUNGSTER, 6, 8, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, DaybreakPokeCenterNPC2, -1
	person_event SPRITE_LEDYBA, 5, 8, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, DaybreakPokeCenterLedyba, -1

