const_value set 2
	const ROUTE6GENTLEMAN
	const ROUTE6LASS
	const ROUTE6YOUNGSTER
	const ROUTE6LASS2
	const ROUTE6PSYDUCK
	const ROUTE6TRAINER1
	const ROUTE6TRAINER2
	const ROUTE6TRAINER3
	const ROUTE6TRAINER4
	const ROUTE6TRAINER5
	const ROUTE6TRAINER6
	const ROUTE6TRAINER7
	const ROUTE6LASS3
	const ROUTE6FISHER
	const ROUTE6POKEBALL_THUNDERPUNCH

Route45_MapScriptHeader:
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
	
Route45_MapEventHeader:: db 0, 0

.Warps: db 1
	warp_def 5, 71, 3, ROUTE_43_MAHOGANY_GATE

.CoordEvents: db 8
	xy_trigger 0, 35, 65, 0, SunBeamTollBoothStop, 0, 0
	xy_trigger 0, 6, 54, 0, Route6PokeFanM, 0, 0
	xy_trigger 0, 7, 54, 0, Route6PokeFanF, 0, 0
	xy_trigger 0, 6, 53, 0, Route6PokeFanM2, 0, 0
	xy_trigger 0, 7, 53, 0, Route6PokeFanF2, 0, 0
	xy_trigger 0, 6, 52, 0, Route6PokeFanM2, 0, 0
	xy_trigger 0, 7, 52, 0, Route6PokeFanF2, 0, 0
	xy_trigger 0, 6, 51, 0, Route6PokeFanM2, 0, 0

.BGEvents: db 5
	signpost 34, 64, SIGNPOST_READ, Route45IslandSign
	signpost 6, 72, SIGNPOST_READ, Route45HouseSign
	signpost 3, 32, SIGNPOST_READ, Route45LakeSign
	signpost 35, 66, SIGNPOST_READ, SunBeamTollTalk
	signpost 4, 14, SIGNPOST_ITEM, Route6HiddenUltraBall

.ObjectEvents: db 15
	person_event SPRITE_GENTLEMAN, 23, 62, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, Route6Gentleman, -1
	person_event SPRITE_COOLTRAINER_F, 19, 62, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, Route6Lass, -1
	person_event SPRITE_YOUNGSTER, 17, 62, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Route6Youngster, -1
	person_event SPRITE_COOLTRAINER_F, 30, 63, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, Route6Lass2, -1
	person_event SPRITE_PSYDUCK, 30, 62, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, Route6Psyduck, -1
	person_event SPRITE_YOUNGSTER, 8, 54, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 2, TrainerRoute6_2, -1
	person_event SPRITE_LASS, 8, 55, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 2, TrainerRoute6_1, -1
	person_event SPRITE_POKEFAN_M, 6, 50, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 0, TrainerRoute6_3, -1
	person_event SPRITE_POKEFAN_F, 7, 51, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 0, TrainerRoute6_4, -1
	person_event SPRITE_GRANNY, 5, 41, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerRoute6_5, -1
	person_event SPRITE_COOLTRAINER_F, 4, 15, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 2, TrainerRoute6_6, -1
	person_event SPRITE_GENTLEMAN, 6, 21, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 2, TrainerRoute6_7, -1
	person_event SPRITE_LASS, 9, 73, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, Route6Lass3, -1
	person_event SPRITE_FISHER, 6, 29, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, Route6Fisher, -1
	person_event SPRITE_POKE_BALL, 2, 25, SPRITEMOVEDATA_ITEM_TREE, 0, 2, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, Route6PokeBallThunderPunch, EVENT_ROUTE_6_POKE_BALL_THUNDERPUNCH

Route6PokeFanM:
	checkevent EVENT_BEAT_ROUTE6_TRAINER_3
	iftrue .end
	playmusic MUSIC_HIKER_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE6TRAINER3,  30
	applymovement ROUTE6TRAINER3, Movement_Route6_PokeFanM
	opentext
	writetext TrainerRoute6_3SeenText2
	waitbutton
	closetext
	winlosstext TrainerRoute6_3BeatenText, 0
	setlasttalked ROUTE6TRAINER3
	loadtrainer POKEFANM, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROUTE6_TRAINER_3
.end
	end
	
Route6PokeFanM2:
	checkevent EVENT_BEAT_ROUTE6_TRAINER_3
	iftrue .end
	playmusic MUSIC_HIKER_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE6TRAINER3,  30
	applymovement ROUTE6TRAINER3, Movement_Route6_PokeFanM
	opentext
	writetext TrainerRoute6_3SeenText1
	waitbutton
	closetext
	winlosstext TrainerRoute6_3BeatenText, 0
	setlasttalked ROUTE6TRAINER3
	loadtrainer POKEFANM, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROUTE6_TRAINER_3
.end
	end
	
Route6PokeFanF:
	checkevent EVENT_BEAT_ROUTE6_TRAINER_4
	iftrue .end
	playmusic MUSIC_BEAUTY_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE6TRAINER4,  30
	applymovement ROUTE6TRAINER4, Movement_Route6_PokeFanF
	opentext
	writetext TrainerRoute6_4SeenText2
	waitbutton
	closetext
	winlosstext TrainerRoute6_4BeatenText, 0
	setlasttalked ROUTE6TRAINER4
	loadtrainer POKEFANF, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROUTE6_TRAINER_4
.end
	end
	
Route6PokeFanF2:
	checkevent EVENT_BEAT_ROUTE6_TRAINER_4
	iftrue .end
	playmusic MUSIC_BEAUTY_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE6TRAINER4,  30
	applymovement ROUTE6TRAINER4, Movement_Route6_PokeFanF
	opentext
	writetext TrainerRoute6_4SeenText1
	waitbutton
	closetext
	winlosstext TrainerRoute6_4BeatenText, 0
	setlasttalked ROUTE6TRAINER4
	loadtrainer POKEFANF, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROUTE6_TRAINER_4
.end
	end
	
Route6PokeBallThunderPunch:
	disappear ROUTE6POKEBALL_THUNDERPUNCH
	opentext
	verbosegiveitem TM_THUNDERPUNCH
	closetext
	setevent EVENT_ROUTE_6_POKE_BALL_THUNDERPUNCH
	end
	
Route6HiddenUltraBall:
	dwb EVENT_ROUTE6_HIDDEN_ULTRA_BALL, ULTRA_BALL
	
TrainerRoute6_1:
	trainer EVENT_BEAT_ROUTE6_TRAINER_1, PICNICKER, BETH_PICNICKER, TrainerRoute6_1SeenText, TrainerRoute6_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute6_1NormalText
	waitbutton
	closetext
	end
	
TrainerRoute6_2:
	trainer EVENT_BEAT_ROUTE6_TRAINER_2, CAMPER, VINCENT_CAMPER, TrainerRoute6_2SeenText, TrainerRoute6_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute6_2NormalText
	waitbutton
	closetext
	end
	
TrainerRoute6_3:
	trainer EVENT_BEAT_ROUTE6_TRAINER_3, POKEFANM, RON_POKEFANM, TrainerRoute6_3SeenText1, TrainerRoute6_3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute6_3NormalText
	waitbutton
	closetext
	end
	
TrainerRoute6_4:
	trainer EVENT_BEAT_ROUTE6_TRAINER_4, POKEFANF, SUSAN_POKEFANF, TrainerRoute6_4SeenText1, TrainerRoute6_4BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute6_4NormalText
	waitbutton
	closetext
	end
	
TrainerRoute6_5:
	trainer EVENT_BEAT_ROUTE6_TRAINER_5, LADY, RUTH_LADY, TrainerRoute6_5SeenText, TrainerRoute6_5BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute6_5NormalText
	waitbutton
	closetext
	end
	
TrainerRoute6_6:
	trainer EVENT_BEAT_ROUTE6_TRAINER_6, COOLTRAINERF, SARAH_COOLTRAINERF, TrainerRoute6_6SeenText, TrainerRoute6_6BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute6_6NormalText
	waitbutton
	closetext
	end
	
TrainerRoute6_7:
	trainer EVENT_BEAT_ROUTE6_TRAINER_7, COOLTRAINERM, CODY_COOLTRAINERM, TrainerRoute6_7SeenText, TrainerRoute6_7BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute6_7NormalText
	waitbutton
	closetext
	end
	
SunBeamTollBoothStop
	callasm .StopRunning
	playsound SFX_PAY_DAY
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext SunBeamTollBoothText1
	waitbutton
	closetext
	spriteface PLAYER, RIGHT
	checkitem ISLAND_PASS
	iffalse .noislandpass
	opentext
	writetext SunBeamTollBoothText5
	waitbutton
	closetext
	dotrigger $1
	jump .end
.noislandpass
	setevent EVENT_CAN_GET_PASS_FROM_MOM
	opentext
	writetext SunBeamTollBoothText2
	yesorno
	iffalse .no
	opentext
	writetext SunBeamTollBoothText3
	waitbutton
	closetext
	jump .cont
.no
	opentext
	writetext SunBeamTollBoothText4
	waitbutton
	closetext
.cont
	applymovement PLAYER, Movement_SunBeamTollBoothStop	
.end
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
Route6Gentleman:
	faceplayer
	opentext
	writetext Route6GentlemanText
	waitbutton
	spriteface ROUTE6GENTLEMAN, DOWN
	closetext
	end
	
Route6Lass:
	jumptext Route6LassText
	
Route6Youngster:
	faceplayer
	opentext
	writetext Route6YoungsterText
	waitbutton
	spriteface ROUTE6YOUNGSTER, DOWN
	closetext
	end
	
Route6Lass2:
	jumptextfaceplayer Route6Lass2Text
	
Route6Psyduck:
	opentext
	writetext Route6PsyducklText
	cry PSYDUCK
	waitbutton
	closetext
	end
	
Route6Lass3:
	jumptextfaceplayer Route6Lass3Text
	
Route6Fisher:
	jumptextfaceplayer Route6FisherText
	
Route45IslandSign:
	jumptext Route45IslandSignText
	
Route45HouseSign:
	jumptext Route45HouseSignText
	
Route45LakeSign:
	jumptext Route45LakeSignText
	
SunBeamTollTalk
	jumptext SunBeamTollTalkText
	
TrainerRoute6_1SeenText:
	text "My boyfriend and"
	line "I came here to be"
	cont "alone,"
	
	para "but then those two"
	line "creeps showed up…"
	done
	
TrainerRoute6_1BeatenText:
	text "VINCENT!"
	
	para "They beat me!"
	done
	
TrainerRoute6_1NormalText:
	text "This is the worst"
	line "date ever…"
	done
	
TrainerRoute6_2SeenText:
	text "Those two old"
	line "people just showed"
	cont "up out of nowhere."
	
	para "They're really"
	line "killing the mood."
	done
	
TrainerRoute6_2BeatenText:
	text "Arrgghh!"
	done
	
TrainerRoute6_2NormalText:
	text "Can you tell those"
	line "two to go away?"
	
	para "They're totally"
	line "ruining my mojo!"
	done
	
TrainerRoute6_3SeenText1:
	text "Huh?"
	
	para "Oh, wow."
	
	para "You actually want"
	line "to battle me?"
	
	para "Well, that's a"
	line "first!"	
	done
	
TrainerRoute6_3BeatenText:
	text "HAHA- Wait…"
	
	para "What?"
	done
	
TrainerRoute6_3NormalText:
	text "Hey, you're pretty"
	line "good!"
	
	para "Have any tips?"
	done
	
TrainerRoute6_3SeenText2:
	text "I saw you trying"
	line "to get by here"
	cont "without a battle!"
	
	para "Well, now you have"
	line "to battle me!"
	done
		
TrainerRoute6_4SeenText1:
	text "Hello, there."
	
	para "I see you're a"
	line "TRAINER too."
	
	para "Do you want to"
	line "battle?"
	done
	
TrainerRoute6_4BeatenText:
	text "No!"
	
	para "My beautiful"
	line "#MON!"
	done
	
TrainerRoute6_4NormalText:
	text "Leave!"
	
	para "You've done"
	line "enough!"
	done
	
TrainerRoute6_4SeenText2:
	text "AHHH!"
	
	para "You're stepping on"
	line "the flowers!"
	
	para "If you're going to"
	line "stomp all over the"
	cont "flowers,"
	
	para "my #MON will"
	line "STOMP all over"
	cont "you!"
	done
	
TrainerRoute6_5SeenText:
	text "My fool of a"
	line "husband lost our"
	cont "ISLAND PASSES."
	
	para "Now they won't let"
	line "us on the island!"
	
	para "A LADY must keep"
	line "composure, but a"
	
	para "TRAINER can freely"
	line "vent their"
	cont "frustrations!"	
	done
	
TrainerRoute6_5BeatenText:
	text "How uncouth!"
	done
	
TrainerRoute6_5NormalText:
	text "Can you believe"
	line "they won't let me"
	cont "on the island?"
	
	para "Me!?"
	done
	
TrainerRoute6_6SeenText:
	text "Have you been to"
	line "SUNBEAM ISLAND?"
	
	para "Anyone who's anyone"
	line "has been there."
	done
	
TrainerRoute6_6BeatenText:
	text "What? But how?"
	done
	
TrainerRoute6_6NormalText:
	text "Fine! I'll admit"
	line "it!"
	
	para "I haven't ever been"
	line "to SUNBEAM ISLAND…"
	done
	
TrainerRoute6_7SeenText:
	text "My wife threw a"
	line "fit when she found"
	
	para "out I lost our"
	line "passes to the"
	cont "island."
	done
	
TrainerRoute6_7BeatenText:
	text "Not bad."
	done
	
TrainerRoute6_7NormalText:
	text "I actually found"
	line "the passes."
	
	para "They were in my"
	line "trousers instead"
	cont "of my jacket."
	
	para "It's too late to"
	line "tell her now."
	
	para "I'll just be in"
	line "even more trouble."
	done
	
Route6GentlemanText:
	text "I wish those two"
	line "behind me would"
	cont "keep it down."
	
	para "I'm trying to"
	line "read the paper."
	done
	
Route6LassText:
	text "…and then I told"
	line "her that he told"
	
	para "me that she said"
	line "that isn't true."
	
	para "Then she said that"
	line "I was lying!"
	
	para "Can you believe"
	line "that?"
	
	para "…"
	
	para "It seems like"
	line "she'll never stop!"
	done
	
Route6YoungsterText:
	text "Boy, she loves to"
	line "talk."
	
	para "She won't even let "
	line "me get a word in"
	cont "edgewise."
	done
	
Route6Lass2Text:
	text "I walked all the"
	line "way here, and they"
	
	para "won't even let me"
	line "on the island!"
	
	para "Talk about unfair!"
	done
	
Route6PsyducklText:
	text "PSYDUCK: Sai-ai-"
	line "ai!"
	done
	
Route6Lass3Text:
	text "Phew!"
	
	para "I made it through"
	line "the woods."
	
	para "I'm almost home!"
	done
	
Route6FisherText:
	text "If you go NORTH"
	line "from here, you'll"
	cont "reach LAKE ONWA."
	
	para "There's a little"
	line "town set up on the"
	cont "lakeside."
	
	para "I don't think they"
	line "have a GYM there,"
	cont "though…"
	done
	
SunBeamTollBoothText1:
	text "Excuse me!"
	done
	
SunBeamTollBoothText2:
	text "You can't come onto"
	line "the island without"
	cont "an ISLAND PASS."
	
	para "You can purchase"
	line "one here for"
	cont "¥1,000,000."
	done
	
SunBeamTollBoothText3:
	text "You can't afford"
	line "that!"
	
	para "Why don't you call"
	line "your MOMMY and"
	cont "see if she'll buy"
	cont "you one?"
	
	para "Hehe…"
	
	para "As if…"
	
	para "Now get outta"
	line "here, kid!"
	
	para "You're holding up"
	line "the line!"
	done
	
SunBeamTollBoothText4:
	text "That's what I"
	line "thought."
	
	para "Why don't you call"
	line "your MOMMY and"
	cont "see if she'll buy"
	cont "you one?"
	
	para "Hehe…"
	
	para "As if…"
	
	para "Now get outta"
	line "here, kid!"
	
	para "You're holding up"
	line "the line!"
	done
	
SunBeamTollBoothText5:
	text "You can't come onto"
	line "the island without"
	cont "an ISLAND PASS."
	
	para "<PLAYER> flashed the"
	line "ISLAND PASS."
	
	para "WHAT!?"
	
	para "You have an ISLAND"
	line "PASS!?"
	
	para "…"
	
	para "Well, I guess I"
	line "have no choice but"
	
	para "to let you onto"
	line "the island."
	
	para "Enjoy your visit"
	line "to SUNBEAM ISLAND…"

	para "Grumble, grumble…"
	done
	
SunBeamTollTalkText:
	text "Enjoy your visit"
	line "to SUNBEAM ISLAND…"

	para "Grumble, grumble…"
	done
	
Route45IslandSignText:
	text "SUNBEAM ISLAND"
	
	para "ISLAND PASS"
	line "required for"
	cont "entry."
	done
	
Route45HouseSignText:
	text "ROUTE 6"
	
	para "NORTH:"
	line "ROUTE 5"
	
	para "WEST:"
	line "LAKE OWNA"
	
	para "SOUTH:"
	line "SUNBEAM ISLAND"
	done
	
Route45LakeSignText:
	text "LAKE ONWA ahead."
	done
	
Movement_SunBeamTollBoothStop:
	step UP
	step_end
	
Movement_Route6_PokeFanM:
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
Movement_Route6_PokeFanF:
	step RIGHT
	step RIGHT
	step_end