const_value set 2
	const GLINTMART_CLERK
	const GLINTMART_NPC1
	const GLINTMART_NPC2

AzaleaMart_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

GlintMartClerk:
	opentext
	pokemart MARTTYPE_STANDARD, MART_AZALEA
	closetext
	end

GlintMartNpc1:
	jumptextfaceplayer GlintMartNpc1Text

GlintMartNpc2:
	jumptextfaceplayer GlintMartNpc2Text

GlintMartNpc1Text:
	text "I'm on my way to"
	line "GLINT GROVE to"
	
	para "catch some FAIRY"
	line "#MON."
	
	para "I just needed to"
	line "stop by the MART"
	
	para "to grab some #-"
	line "BALLS."
	
	para "You should grab"
	line "some too."
	done

GlintMartNpc2Text:
	text "I'm looking for a"
	line "#DOLL for my"
	cont "little girl."
	
	para "They don't seem to"
	line "have anything like"
	cont "that here, though."
	done
	
AzaleaMart_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 2, AZALEA_TOWN
	warp_def 7, 3, 2, AZALEA_TOWN

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 3
	person_event SPRITE_CLERK, 3, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, GlintMartClerk, -1
	person_event SPRITE_FISHING_GURU, 2, 6, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, GlintMartNpc1, -1
	person_event SPRITE_POKEFAN_F, 6, 7, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GlintMartNpc2, -1

