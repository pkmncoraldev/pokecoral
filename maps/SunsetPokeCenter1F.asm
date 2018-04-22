const_value set 2
	const SunsetPokeCenter1F_NURSE
	const SunsetPokeCenter1F_FISHING_GURU
	const SunsetPokeCenter1F_FISHER
	const SunsetPokeCenter1F_TEACHER

SunsetPokeCenter1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

NurseScript_0x9c002:
	jumpstd pokecenternurse

SunsetPokeCenterYoungin:
	jumptextfaceplayer SunsetPokeCenterSunsetPokeCenterYounginText

SunsetPokeCenterFireGuy:
	jumptextfaceplayer SunsetPokeCenterFireGuyText

SunsetPokeCenterFairyGirl:
	jumptextfaceplayer SunsetPokeCenterFairyGirlText

SunsetPokeCenterSunsetPokeCenterYounginText:
	text "I want to be a"
	line "#MON trainer,"
	
	para "but I'm not old"
	line "enough yet."
	
	para "I come here to"
	line "see as many"
	cont "#MON as I can."
	done

SunsetPokeCenterFireGuyText:
	text "Have you talked"
	line "to my sister and"
	
	para "her husband in the"
	line "house next door?"
	
	para "Don't listen to"
	line "them!"
	
	para "FIRE #MON are"
	line "the best #MON!"
	done

SunsetPokeCenterFairyGirlText:
	text "Have you heard of"
	line "FAIRY #MON?"
	
	para "They're great and"
	line "all so adorable!"
	done
	
SunsetPokeCenter1F_MapEventHeader:: db 0, 0

.Warps: db 3
	warp_def 7, 5, 2, SUNSET_BAY
	warp_def 7, 4, 2, SUNSET_BAY
	warp_def 7, -1, 1, POKECENTER_2F

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 4
	person_event SPRITE_NURSE, 1, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, NurseScript_0x9c002, -1
	person_event SPRITE_BUG_CATCHER, 3, 5, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SunsetPokeCenterYoungin, -1
	person_event SPRITE_FISHER, 6, 8, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunsetPokeCenterFireGuy, -1
	person_event SPRITE_COOLTRAINER_F, 4, 0, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SunsetPokeCenterFairyGirl, -1

