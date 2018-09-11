const_value set 2
	const SUNSET_CAPE_NPC_1
	const SUNSET_CAPE_NPC_2
	const SUNSET_CAPE_NPC_3
	const SUNSET_CAPE_NPC_4
	const SUNSET_CAPE_NPC_5
	const SUNSET_CAPE_TRAINER
	const SUNSET_CAPE_POKE_BALL1

SunsetCape_MapScriptHeader:
.MapTriggers:
	db 0
	
.MapCallbacks:
	db 1
	
	dbw MAPCALLBACK_OBJECTS, .SunsetCapeNpcCallback

.SunsetCapeNpcCallback:
	checkmorn
	iftrue .morn
	checkday
	iftrue .day
	setevent EVENT_SUNSET_CAPE_MORN_NPC
	setevent EVENT_SUNSET_CAPE_DAY_NPC
	clearevent EVENT_SUNSET_CAPE_NIGHT_NPC
	jump .end
	
.morn:
	setevent EVENT_SUNSET_CAPE_DAY_NPC
	setevent EVENT_SUNSET_CAPE_NIGHT_NPC
	clearevent EVENT_SUNSET_CAPE_MORN_NPC
	jump .end
	
.day:
	setevent EVENT_SUNSET_CAPE_MORN_NPC
	setevent EVENT_SUNSET_CAPE_NIGHT_NPC
	clearevent EVENT_SUNSET_CAPE_DAY_NPC
	
.end:
	return
	
SunsetCapeNpc1:
	faceplayer
	opentext
	writetext SunsetCapeNpc1Text
	waitbutton
	spriteface SUNSET_CAPE_NPC_1, DOWN
	closetext
	end
	
SunsetCapeNpc2:
	opentext
	writetext SunsetCapeNpc2Text
	cry RAICHU
	waitbutton
	closetext
	end
	
SunsetCapeNpc3:
	faceplayer
	opentext
	writetext SunsetCapeNpc3Text
	waitbutton
	spriteface SUNSET_CAPE_NPC_3, DOWN
	closetext
	end
	
SunsetCapeNpc4:
	jumptext SunsetCapeNpc4Text
	
SunsetCapeSign:
	jumptext SunsetCapeSignText
	
SunsetLighthouseSign:
	jumptext SunsetLighthouseSignText
	
SunsetCapePokeBall:
	itemball POKE_BALL
	
FruitTreeScript_SunsetCape:
	fruittree FRUITTREE_SUNSET_CAPE
	
TrainerSunsetCape:
	trainer EVENT_BEAT_SUNSET_CAPE_TRAINER, SWIMMERF, 1, TrainerSunsetCapeSeenText, TrainerSunsetCapeBeatenText, 0, .Script
	
.Script:
	end_if_just_battled
	opentext
	writetext TrainerSunsetCapeNormalText
	waitbutton
	closetext
	end

TrainerSunsetCapeSeenText:
	text "I love swimming in"
	line "this spot."
	
	para "It's nice and"
	line "secluded."
	done
	
TrainerSunsetCapeBeatenText:
	text "…"
	done
	
TrainerSunsetCapeNormalText:
	text "Well, It WAS nice"
	line "and secluded…"
	done
	
SunsetCapeNpc1Text:
	text "I had my first"
	line "date with my wife"
	
	para "at this very"
	line "spot."
	
	para "I come here every-"
	line "day with my RAICHU"
	
	para "to watch the"
	line "sunrise."
	done
	
SunsetCapeNpc2Text:
	text "RAICHU: CHU! CHU!"
	line "RAI!"
	done
	
SunsetCapeNpc3Text:
	text "My ex-boyfriend"
	line "and I used to come"
	cont "here all the time."
	
	para "He turned out to"
	line "be a jerk!"
	
	para "Will I ever find"
	line "true love?"
	done
	
SunsetCapeNpc4Text:
	text "They're holding"
	line "hands."
	done	
	
SunsetCapeSignText:
	text "SUNSET CAPE"
	
	para "NORTH:"
	line "ROUTE 1"
	
	para "SOUTH:"
	line "LIGHTHOUSE"
	done
	
SunsetLighthouseSignText:
	text "SUNSET CAPE"
	line "LIGHTHOUSE"
	done
	
SunsetCape_MapEventHeader:: db 0, 0

.Warps: db 3
	warp_def 27, 3, 1, SUNSET_LIGHTHOUSE
	warp_def 5, 5, 2, SUNSET_CAPE_ROUTE_1_GATE
	warp_def 16, 15, 2, ROUTE_43_GATE

.CoordEvents: db 0

.BGEvents: db 3
	signpost 11, 6, SIGNPOST_READ, SunsetCapeSign
	signpost 27, 8, SIGNPOST_READ, SunsetLighthouseSign
	signpost 12, 16, SIGNPOST_READ, FruitTreeScript_SunsetCape

.ObjectEvents: db 7
	person_event SPRITE_GRAMPS, 32, 6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunsetCapeNpc1, EVENT_SUNSET_CAPE_MORN_NPC
	person_event SPRITE_RAICHU, 32, 5, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, SunsetCapeNpc2, EVENT_SUNSET_CAPE_MORN_NPC
	person_event SPRITE_TEACHER, 32, 6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, SunsetCapeNpc3, EVENT_SUNSET_CAPE_DAY_NPC
	person_event SPRITE_SUPER_NERD, 32, 6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunsetCapeNpc4, EVENT_SUNSET_CAPE_NIGHT_NPC
	person_event SPRITE_LASS, 32, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SunsetCapeNpc4, EVENT_SUNSET_CAPE_NIGHT_NPC
	person_event SPRITE_SWIMMER_GIRL, 32, 19, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerSunsetCape, -1
	person_event SPRITE_POKE_BALL, 20, 1, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SunsetCapePokeBall, EVENT_SUNSET_CAPE_POKE_BALL

