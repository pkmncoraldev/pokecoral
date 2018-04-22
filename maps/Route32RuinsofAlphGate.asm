const_value set 2
	const GLINTSECRET_SMEARGLE

Route32RuinsofAlphGate_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0
	
.Trigger0:
	end

.Trigger1:
	end
	
GlintSecretSmeargle:
	opentext
	writetext GlintSecretSmeargleText
	cry SMEARGLE
	waitbutton
	closetext
	loadwildmon SMEARGLE, 10
	writecode VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	if_equal $1, GlintSecretSmeargle2
	disappear GLINTSECRET_SMEARGLE
GlintSecretSmeargle2:
	reloadmapafterbattle
	special HealParty
	dotrigger $0
	clearevent EVENT_TRIO_BROS
	end
	
GlintSecretTrioRed:
	jumptextfaceplayer GlintSecretTrioRedText
	
GlintSecretTrioBlue:
	jumptextfaceplayer GlintSecretTrioBlueText

GlintSecretTrioYellow:
	jumptextfaceplayer GlintSecretTrioYellowText
	
GlintSecretSmeargleText:
	text "Gooahh!"
	done

GlintSecretTrioRedText:
	text "How are things,"
	line "TRAINER?"
	
	para "We still come"
	line "here to study the"
	cont "SMEARGLE."
	done
	
GlintSecretTrioBlueText:
	text "We still have a"
	line "lot to learn from"
	cont "these SMEARGLE."
	done
	
GlintSecretTrioYellowText:
	text "It might not seem"
	line "like it, but our"
	
	para "research here is"
	line "really quite"
	cont "important."
	done
	
Route32RuinsofAlphGate_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 13, 7, 3, ROUTE_32
	warp_def 13, 6, 4, ROUTE_32

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 4
	person_event SPRITE_SMEARGLE, 2, 6, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, GlintSecretSmeargle, EVENT_GLINT_SECRET_SMEARGLE
	person_event SPRITE_ROCKER, 8, 8, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GlintSecretTrioRed, EVENT_TRIO_BROS2
	person_event SPRITE_ROCKER, 6, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, GlintSecretTrioBlue, EVENT_TRIO_BROS2
	person_event SPRITE_ROCKER, 9, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, GlintSecretTrioYellow, EVENT_TRIO_BROS2

