const_value set 2
	const ROUTE4LASS
	const ROUTE4FISHER1
	const ROUTE4FISHER2
	const ROUTE4FISHER3
	const ROUTE4SNORLAX
	const ROUTE4SNORLAXNPC1
	const ROUTE4SNORLAXNPC2
	const ROUTE4SNORLAXNPC3

Route34_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

Route34_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 6, 39, 1, ROUTE_34_ILEX_FOREST_GATE
	warp_def 7, 39, 2, ROUTE_34_ILEX_FOREST_GATE

.CoordEvents: db 0

.BGEvents: db 3
	signpost 7, 2, SIGNPOST_READ, Route4Sign
	signpost 5, 38, SIGNPOST_READ, Route4ForestSign
	signpost 8, 16, SIGNPOST_READ, FruitTreeScript_Route4new

.ObjectEvents: db 8
	person_event SPRITE_LASS, 7, 7, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 2, TrainerRoute4_1, -1
	person_event SPRITE_RODNEY_FISHER, 11, 12, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 0, TrainerRoute4_2, -1
	person_event SPRITE_RODNEY_FISHER, 16, 11, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 0, TrainerRoute4_3, -1
	person_event SPRITE_RODNEY_FISHER, 16, 15, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 0, TrainerRoute4_4, -1
	person_event SPRITE_BIG_SNORLAX, 10, 20, SPRITEMOVEDATA_SNORLAX, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, Route4Snorlax, EVENT_FOUGHT_SNORLAX_ROUTE_4
	person_event SPRITE_LASS, 10, 18, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, Route4NPC5, EVENT_FOUGHT_SNORLAX_ROUTE_4
	person_event SPRITE_YOUNGSTER, 10, 24, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, Route4NPC7, EVENT_FOUGHT_SNORLAX_ROUTE_4
	person_event SPRITE_POKEFAN_M, 11, 23, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Route4NPC8, EVENT_FOUGHT_SNORLAX_ROUTE_4

TrainerRoute4_1:
	trainer EVENT_BEAT_ROUTE4_TRAINER_1, LASS, JUNE_LASS, TrainerRoute4_1SeenText, TrainerRoute4_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute4_1NormalText
	waitbutton
	closetext
	end
	
TrainerRoute4_2:
	trainer EVENT_BEAT_ROUTE4_TRAINER_2, FISHER, HOMER_FISHER, TrainerRoute4_2SeenText, TrainerRoute4_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute4_2NormalText
	waitbutton
	closetext
	end
	
TrainerRoute4_3:
	trainer EVENT_BEAT_ROUTE4_TRAINER_3, FISHER, HUE_FISHER, TrainerRoute4_3SeenText, TrainerRoute4_3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute4_3NormalText
	waitbutton
	closetext
	end
	
TrainerRoute4_4:
	trainer EVENT_BEAT_ROUTE4_TRAINER_4, FISHER, DARREN_FISHER, TrainerRoute4_4SeenText, TrainerRoute4_4BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute4_4NormalText
	waitbutton
	closetext
	end
	
Route4NPC5:
	checkevent EVENT_FOUGHT_SNORLAX_ROUTE_4
	iftrue .foughtthatsleepyboi
	jumptextfaceplayer Route4NPC5Text
.foughtthatsleepyboi
	jumptextfaceplayer Route4NPC5Text2
	
Route4NPC7:
	jumptextfaceplayer Route4NPC7Text
	
Route4NPC8:
	jumptextfaceplayer Route4NPC8Text
	
Route4Snorlax:
	checkitem POKE_FLUTE
	iffalse noflute
	opentext
	writetext Route4SnorlaxTextHaveFlute
	yesorno
	iffalse dontuseflute
Route4PlayedFluteForSnorlax::
	spriteface ROUTE4SNORLAXNPC1, RIGHT
	spriteface ROUTE4SNORLAXNPC2, LEFT
	spriteface ROUTE4SNORLAXNPC3, LEFT
	writetext Route4SnorlaxTextUseFlute
	playsound SFX_POKEFLUTE2
	waitsfx
	writetext Route4SnorlaxTextWakeUp
	cry SNORLAX
	waitbutton
	closetext
	loadwildmon SNORLAX, 1
	startbattle
	if_equal $2, DidntBeatSnorlaxRoute4
	disappear ROUTE4SNORLAX
	reloadmapafterbattle
	opentext
	writetext Route4SnorlaxTextSnorlaxGone
	waitbutton
	closetext
	setevent EVENT_FOUGHT_SNORLAX_ROUTE_4
	end
	
dontuseflute:
	writetext Route4SnorlaxTextDontUseFlute
	waitbutton
	closetext
	end
	
noflute:
	opentext
	writetext Route4SnorlaxTextNoFlute
	waitbutton
	closetext
	end
	
DidntBeatSnorlaxRoute4:
	reloadmapafterbattle
	opentext
	writetext Route4SnorlaxTextRanAway
	waitbutton
	closetext
	end
	
Route4Sign:
	jumptext Route4SignText
	
Route4ForestSign:
	jumptext Route4ForestSignText
	
FruitTreeScript_Route4new:
	fruittree FRUITTREE_ROUTE_4
	
Route4SignText:
	text "ROUTE 4"
	
	para "WEST:"
	line "STARGLOW VALLEY"
	
	para "EAST:"
	line "FOREST"
	
	para "SOUTH:"
	line "ROUTE 5"
	done
	
Route4ForestSignText:
	text "SIGN TEXT"
	done
	
Route4SnorlaxTextHaveFlute:
	text "A sleeping #MON"
	line "blocks the way!"
	
	para "Play the"
	line "# FLUTE?"
	done
	
Route4SnorlaxTextNoFlute:
	text "A sleeping #MON"
	line "blocks the path."
	done
	
Route4SnorlaxTextWakeUp:
	text "SNORLAX woke up!"
	
	para "It attacked in a"
	line "grumpy rage!"
	done
	
Route4SnorlaxTextDontUseFlute:
	text "Better not wake it"
	line "now…"
	done
	
Route4SnorlaxTextUseFlute:
	text "<PLAYER> played the"
	line "# FLUTE."
	done
	
Route4SnorlaxTextSnorlaxGone:
	text "SNORLAX is no"
	line "longer blocking"
	cont "the path!"
	done
	
Route4SnorlaxTextRanAway:
	text "SNORLAX still"
	line "blocks the path."
	done
	
Route4NPC5Text:
	text "It's always some-"
	line "thing."
	
	para "First that weirdo"
	line "wouldn't let me"
	cont "leave town,"
	
	para "and now a SNORLAX"
	line "decided this would"
	
	para "be the perfect"
	line "place to take a"
	cont "nap."
	
	para "I'm just trying to"
	line "get home…"
	done
	
Route4NPC5Text2:
	text "Finally!"
	
	para "Thank you!"
	
	para "Maybe now I can"
	line "finally get home."
	done
	
Route4NPC7Text:
	text "A flute woke it"
	line "up?"
	
	para "How does that even"
	line "work?"
	done
	
Route4NPC8Text:
	text "I wonder if"
	line "SNORLAX realizes"
	
	para "all the trouble"
	line "it's caused."
	
	para "I can't blame it,"
	line "though."
	
	para "If I was as big"
	line "as it, I'd probably"
	
	para "lay around all day"
	line "too!"
	done
	
TrainerRoute4_1SeenText:
	text "SEEN TEXT"
	done
	
TrainerRoute4_1BeatenText:
	text "BEATEN TEXT"
	done
	
TrainerRoute4_1NormalText:
	text "NORMAL TEXT"
	done
	
TrainerRoute4_2SeenText:
	text "SEEN TEXT"
	done
	
TrainerRoute4_2BeatenText:
	text "BEATEN TEXT"
	done
	
TrainerRoute4_2NormalText:
	text "NORMAL TEXT"
	done
	
TrainerRoute4_3SeenText:
	text "SEEN TEXT"
	done
	
TrainerRoute4_3BeatenText:
	text "BEATEN TEXT"
	done
	
TrainerRoute4_3NormalText:
	text "NORMAL TEXT"
	done
	
TrainerRoute4_4SeenText:
	text "SEEN TEXT"
	done
	
TrainerRoute4_4BeatenText:
	text "BEATEN TEXT"
	done
	
TrainerRoute4_4NormalText:
	text "NORMAL TEXT"
	done