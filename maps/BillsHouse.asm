const_value set 2
	const GLINT_APT22F_NPC1

BillsHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

GlintApt22FNpc1:
	jumptextfaceplayer GlintApt22FNpc1Text
	
GlintApt22FNpc1Text:
	text "GLINT CITY is nice"
	line "and all, but I"
	
	para "want to go some-"
	line "where bigger!"
	
	para "I've always dreamed"
	line "of living in"
	cont "LUSTER CITY."
	
	para "I've heard they"
	line "have a huge mall"
	
	para "with a GYM and a"
	line "#MON CENTER in"
	cont "it!"
	done
	
BillsHouse_MapEventHeader:: db 0, 0

.Warps: db 1
	warp_def 1, 1, 3, KURTS_HOUSE

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_COOLTRAINER_F, 5, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GlintApt22FNpc1, -1

