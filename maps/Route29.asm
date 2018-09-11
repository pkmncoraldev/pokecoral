const_value set 2
	const SUNBEAM2_SLOWPOKE
	const SUNBEAM2_LASS
	const SUNBEAM2_YOUNGSTER
	const SUNBEAM2_SNARE1
	const SUNBEAM2_SNARE2
	const SUNBEAM2_SNARE3
	const SUNBEAM2_SNARE4
	const SUNBEAM2_SNARE5
	const SUNBEAM2_CORSOLA_SHINY
	const SUNBEAM2_CORSOLA1
	const SUNBEAM2_CORSOLA2
	const SUNBEAM2_CORSOLA3
	const SUNBEAM2_CORSOLA4
	const SUNBEAM2_CORSOLA5

Route29_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1
	
.MapCallbacks:
	db 0

.Trigger0:
	end
	
.Trigger1:
	end
	
Route29_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 21, 13, 1, ROUTE_30_BERRY_SPEECH_HOUSE
	warp_def 27, 13, 1, VIOLET_GYM

.CoordEvents: db 1
	xy_trigger 1, 22, 13, 0, SunbeamIsland2CorsolaStopsYou, 0, 0

.BGEvents: db 2
	signpost 16, 20, SIGNPOST_READ, SunbeamClue
	signpost 21, 16, SIGNPOST_READ, SunbeamBoatSign

.ObjectEvents: db 14
	person_event SPRITE_SLOWPOKE, 13, 27, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIsland2Slowpoke, -1
	person_event SPRITE_LASS, 16, 28, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SunbeamIsland2Slowpoke, -1
	person_event SPRITE_YOUNGSTER, 45, 29, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIsland2Slowpoke, -1
	person_event SPRITE_LEILANI_PSYDUCK, 22, 10, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 0, SunbeamIsland2Snare1, EVENT_ISLAND_GREEM_MAN
	person_event SPRITE_GENTLEMAN_GRUNTF, 28, 10, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 0, SunbeamIsland2Snare2, EVENT_ISLAND_GREEM_MAN
	person_event SPRITE_LEILANI_PSYDUCK, 24, 19, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, SunbeamIsland2Snare3, EVENT_ISLAND_GREEM_MAN
	person_event SPRITE_LEILANI_PSYDUCK, 31, 16, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, SunbeamIsland2Snare4, EVENT_ISLAND_GREEM_MAN
	person_event SPRITE_GENTLEMAN_GRUNTF, 35, 21, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, SunbeamIsland2Snare5, EVENT_ISLAND_GREEM_MAN
	person_event SPRITE_CORSOLA, 22, 9, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIsland2BlueCorsola, EVENT_ISLAND_BLUE_CORSOLA
	person_event SPRITE_CORSOLA, 26, 7, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SunbeamIsland2Corsola, EVENT_ISLAND_GREEM_MAN
	person_event SPRITE_CORSOLA, 23, 8, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SunbeamIsland2Corsola, EVENT_ISLAND_GREEM_MAN
	person_event SPRITE_CORSOLA, 25, 9, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SunbeamIsland2Corsola, EVENT_ISLAND_GREEM_MAN
	person_event SPRITE_CORSOLA, 28, 8, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SunbeamIsland2Corsola, EVENT_ISLAND_GREEM_MAN
	person_event SPRITE_CORSOLA, 29, 9, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SunbeamIsland2Corsola, EVENT_ISLAND_GREEM_MAN

SunbeamBoatSign:
	jumptext SunbeamBoatSignText
	
SunbeamBoatSignText:
	text "SUNBEAM ISLAND"
	line "BOAT HOUSE"
	done
	
SunbeamClue:
	checkitem CLUE_4
	iffalse .end
	checkitem CLUE_5
	iftrue .end
	opentext
	writetext SunbeamClueText
	waitbutton
	verbosegiveitem CLUE_5
	closetext
	end
.end
	killsfx
	end
	
SunbeamClueText:
	text "You find something"
	line "in the sand…"
	
	para "It's another clue!"
	done
	
SunbeamIsland2BlueCorsola:
	opentext
	writetext SunbeamIsland2CorsolaText3
	pause 15
	cry CORSOLA
	closetext
	loadwildmon CORSOLA, 25
	writecode VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	if_equal $1, SunbeamIsland2BlueCorsola2
	disappear SUNBEAM2_CORSOLA_SHINY
SunbeamIsland2BlueCorsola2:
	reloadmapafterbattle
	opentext
	giveitem CORAL_SHARD
	waitsfx
	writetext GotCoralShardText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end
	
SunbeamIsland2CorsolaStopsYou:
	wait 10
	spriteface PLAYER, LEFT
	opentext
	writetext SunbeamIsland2CorsolaText1
	cry CORSOLA
	waitsfx
	buttonsound
	writetext SunbeamIsland2CorsolaText2
	waitbutton
	closetext
	dotrigger $0
	end
	
SunbeamIsland2Snare1:
	trainer EVENT_BEAT_SUNBEAM_SNARE_1, GRUNTM, 9, SunbeamIsland2Snare1SeenText, SunbeamIsland2Snare1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext SunbeamIsland2Snare1NormalText
	waitbutton
	closetext
	end
	
SunbeamIsland2Snare2:
	trainer EVENT_BEAT_SUNBEAM_SNARE_2, GRUNTF, 2, SunbeamIsland2Snare2SeenText, SunbeamIsland2Snare2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext SunbeamIsland2Snare2NormalText
	waitbutton
	closetext
	end
	
SunbeamIsland2Snare3:
	trainer EVENT_BEAT_SUNBEAM_SNARE_3, GRUNTM, 5, SunbeamIsland2Snare3SeenText, SunbeamIsland2Snare3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext SunbeamIsland2Snare3NormalText
	waitbutton
	closetext
	end
	
SunbeamIsland2Snare4:
	trainer EVENT_BEAT_SUNBEAM_SNARE_4, GRUNTM, 6, SunbeamIsland2Snare4SeenText, SunbeamIsland2Snare4BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext SunbeamIsland2Snare4NormalText
	waitbutton
	closetext
	end
	
SunbeamIsland2Snare5:
	trainer EVENT_BEAT_SUNBEAM_SNARE_5, GRUNTF, 3, SunbeamIsland2Snare5SeenText, SunbeamIsland2Snare5BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext SunbeamIsland2Snare5NormalText
	waitbutton
	closetext
	end
	
SunbeamIsland2Slowpoke:
	jumptext SunbeamIsland2SlowpokeText
	
SunbeamIsland2Corsola:
	end
	
SunbeamIsland2CorsolaText1:
	text "CORSOLA: Cooor…"
	done
	
SunbeamIsland2CorsolaText2:
	text "CORSOLA is calling"
	line "out for you."
	done
	
SunbeamIsland2CorsolaText3:
	text "CORSOLA: Sola!"
	done
	
GotCoralShardText:
	text "<PLAYER> obtained a"
	line "CORAL SHARD."
	done
	
	
SunbeamIsland2Snare1SeenText:
	text "There's something"
	line "wrong with this"
	cont "CORSOLA!"
	
	para "Aren't these"
	line "things supposed to"
	cont "be pink?"
	done
	
SunbeamIsland2Snare1BeatenText:
	text "There must be"
	line "something wrong"
	cont "with me, too!"
	done
	
SunbeamIsland2Snare1NormalText:
	text "Who wants a messed"
	line "up CORSOLA?"
	
	para "This thing's"
	line "useless!"
	done
	
SunbeamIsland2Snare2SeenText:
	text "How're we supposed"
	line "to get all these"
	cont "things outta here?"
	
	para "We need a boat or"
	line "something!"
	done
	
SunbeamIsland2Snare2BeatenText:
	text "What a mess!"
	done
	
SunbeamIsland2Snare2NormalText:
	text "This is all a big"
	line "pain in the…"
	done
	
SunbeamIsland2Snare3SeenText:
	text "Hold it!"
	
	para "Not any further."
	done
	
SunbeamIsland2Snare3BeatenText:
	text "Give me a break!"
	done
	
SunbeamIsland2Snare3NormalText:
	text "I guess I can't"
	line "stop you."
	
	para "I'm never gonna"
	line "hear the end of"
	cont "this."
	done
	
SunbeamIsland2Snare4SeenText:
	text "CORSOLA apparently"
	line "can be turned into"
	
	para "some pretty expen-"
	line "sive jewelry."
	
	para "People overseas go"
	line "crazy for it!"
	done
	
SunbeamIsland2Snare4BeatenText:
	text "You're kidding me!"
	done
	
SunbeamIsland2Snare4NormalText:
	text "Well whatever."
	
	para "Beating me won't"
	line "stop us."
	done
	
SunbeamIsland2Snare5SeenText:
	text "No one is allowed"
	line "over here right"
	cont "now."
	
	para "Why?"
	
	para "Why don't you mind"
	line "your own business?"
	done
	
SunbeamIsland2Snare5BeatenText:
	text "I guess that's why!"
	done
	
SunbeamIsland2Snare5NormalText:
	text "I really wish you"
	line "just minded your"
	cont "own business…"
	done
	
SunbeamIsland2SlowpokeText:
	text "I could really use"
	line "a smoke…"
	
	para "I mean!"
	
	para "Slowwwww…"
	
	para "Phew…"
	done
	
IslandBoatText:
	text "It's a rowboat."
	
	para "It's seen some use,"
	line "but it's still in"
	cont "good shape."
	done
	
Movement_SunbeamIsland2CorsolaStopsYou:
	step LEFT
	step_end