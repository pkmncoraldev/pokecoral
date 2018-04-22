const_value set 2
	const AZALEAPOKECENTER1F_NURSE
	const AZALEAPOKECENTER1F_GENTLEMAN
	const AZALEAPOKECENTER1F_FISHING_GURU
	const AZALEAPOKECENTER1F_POKEFAN_F

AzaleaPokeCenter1F_MapScriptHeader:
.MapTriggers:
	db 1

	; triggers
	dw UnknownScript_0x18db27, 0

.MapCallbacks:
	db 0

UnknownScript_0x18db27:
	end

NurseScript_0x18db28:
	jumpstd pokecenternurse

GlintPokeCenterNpc1:
	jumptextfaceplayer GlintPokeCenterNpc1Text

GlintPokeCenterNpc2:
	jumptextfaceplayer GlintPokeCenterNpc2Text

GlintPokeCenterNpc3:
	jumptextfaceplayer GlintPokeCenterNpc3Text

GlintPokeCenterNpc1Text:
	text "Our GYM LEADER"
	line "specializes in"
	
	para "NORMAL TYPE"
	line "#MON."
	
	para "NORMAL doesn't"
	line "have many"
	
	para "strengths, but it"
	line "doesn't have many"
	cont "weaknesses either."
	done

GlintPokeCenterNpc2Text:
	text "There is a grove"
	line "NORTH of GLINT"
	cont "CITY."
	
	para "FAIRY TYPE #MON"
	line "seem to be drawn"
	
	para "to it for some"
	line "reason."
	done

GlintPokeCenterNpc3Text:
	text "You can store you"
	line "#MON in the PCs"
	
	para "at every #MON"
	line "CENTER."
	
	para "Each box can store"
	line "up to 20 #MON."
	
	para "Make sure to"
	line "change boxes when"
	
	para "they get full, or"
	line "you won't be able"
	
	para "to catch anymore"
	line "#MON."
	done
	
AzaleaPokeCenter1F_MapEventHeader:: db 0, 0

.Warps: db 3
	warp_def 7, 5, 1, AZALEA_TOWN
	warp_def 7, 4, 1, AZALEA_TOWN
	warp_def 7, -1, 1, POKECENTER_2F

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 4
	person_event SPRITE_NURSE, 1, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, NurseScript_0x18db28, -1
	person_event SPRITE_FISHING_GURU, 5, 6, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, GlintPokeCenterNpc1, -1
	person_event SPRITE_GENTLEMAN, 4, 1, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GlintPokeCenterNpc2, -1
	person_event SPRITE_SUPER_NERD, 2, 7, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, GlintPokeCenterNpc3, -1

