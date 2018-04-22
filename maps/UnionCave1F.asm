const_value set 2
	const STARGLOWCAVERN_TRAINER1
	const STARGLOWCAVERN_TRAINER2
	const STARGLOWCAVERN_TRAINER3
	const STARGLOWCAVERN_NUGGETMAN
	const STARGLOWCAVERN_POKEBALL
	const STARGLOWCAVERN_TRAINER4_POKEBALL
	const STARGLOWCAVERN_DISGUISEMAN
	const STARGLOWCAVERN_DISGUISEMAN2
	const STARGLOWCAVERN_DISGUISEMAN3

UnionCave1F_MapScriptHeader:
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
	
UnionCave1F_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 29, 5, 1, ROUTE_43
	warp_def 27, 31, 1, ROUTE_33
	warp_def 5, 23, 1, UNION_CAVE_B1F
	warp_def 11, 33, 2, UNION_CAVE_B1F

.CoordEvents: db 1
	xy_trigger 0, 19, 34, 0, StarglowCavernNuggeyManStopsYou, 0, 0

.BGEvents: db 0

.ObjectEvents: db 9
	person_event SPRITE_FISHER, 22, 13, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 1, TrainerStarglowCavern_1, -1
	person_event SPRITE_FISHER, 11, 21, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 1, TrainerStarglowCavern_2, -1
	person_event SPRITE_FISHER, 5, 10, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 4, TrainerStarglowCavern_3, -1
	person_event SPRITE_FISHER, 19, 35, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, StarglowCavern1FNPC1, -1
	person_event SPRITE_POKE_BALL, 14, 3, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, StarglowCavern1FPokeBall1, EVENT_STAR_GLOW_CAVERN_POKE_BALL1
	person_event SPRITE_DISGUISEMAN, 19, 30, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, StarglowCavern1FNPC2, EVENT_STAR_GLOW_CAVERN_POKE_BALL2
	person_event SPRITE_FISHER, 19, 30, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, EVENT_STARGLOW_CAVERN_DISGUISEMAN
	person_event SPRITE_FISHER, 24, 31, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, EVENT_INITIALIZED_EVENTS
	person_event SPRITE_FISHER, 20, 34, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, EVENT_INITIALIZED_EVENTS

TrainerStarglowCavern_1:
	trainer EVENT_BEAT_STARGLOW_CAVERN_TRAINER_1, HIKER, HIKER_DOUG, TrainerStarglowCavern_1SeenText, TrainerStarglowCavern_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerStarglowCavern_1NormalText
	waitbutton
	closetext
	end
	
TrainerStarglowCavern_2:
	trainer EVENT_BEAT_STARGLOW_CAVERN_TRAINER_2, HIKER, HIKER_WILL, TrainerStarglowCavern_2SeenText, TrainerStarglowCavern_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerStarglowCavern_2NormalText
	waitbutton
	closetext
	end
	
TrainerStarglowCavern_3:
	trainer EVENT_BEAT_STARGLOW_CAVERN_TRAINER_3, HIKER, HIKER_ROB, TrainerStarglowCavern_3SeenText, TrainerStarglowCavern_3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerStarglowCavern_3NormalText
	waitbutton
	closetext
	end
	
StarglowCavernNuggeyManStopsYou:
	callasm .StopRunning
	playsound SFX_PAY_DAY
	showemote EMOTE_SHOCK, STARGLOWCAVERN_NUGGETMAN, 15
	pause 7
	spriteface PLAYER, RIGHT
	jump StarglowCavern1FNPC1
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
StarglowCavern1FNPC1:
	checkevent EVENT_GOT_NUGGET_FROM_STARGLOW_CAVERN_HIKER
	iftrue .alreadygotnugget
	checkevent EVENT_PUNKS_LEAVE_STARGLOW
	iftrue .didntgetnuggetlasttime
	opentext
	writetext StarglowCavern_NuggetManText1
	buttonsound
	verbosegiveitem NUGGET
	writetext StarglowCavern_NuggetManText2
	waitbutton
	closetext
	variablesprite SPRITE_DISGUISEMAN, SPRITE_FISHER
	special MapCallbackSprites_LoadUsedSpritesGFX
	applymovement STARGLOWCAVERN_TRAINER4_POKEBALL, Movement_StarglowCavern_DisguiseMan2
	disappear STARGLOWCAVERN_TRAINER4_POKEBALL
	opentext
	writetext StarglowCavern_DisguiseMan1Text4
	waitbutton
	closetext
	appear STARGLOWCAVERN_DISGUISEMAN3
	applymovement STARGLOWCAVERN_DISGUISEMAN3, Movement_StarglowCavern_DisguiseMan1
	opentext
	writetext StarglowCavern_DisguiseMan1Text5
	waitbutton
	closetext
	spriteface STARGLOWCAVERN_DISGUISEMAN3, UP
	spriteface PLAYER, DOWN
	opentext
	writetext StarglowCavern_DisguiseMan1Text6
	waitbutton
	closetext
	applymovement STARGLOWCAVERN_DISGUISEMAN3, Movement_StarglowCavern_DisguiseMan2
	disappear STARGLOWCAVERN_DISGUISEMAN3
	opentext
	writetext StarglowCavern_DisguiseMan1Text4
	waitbutton
	closetext
	pause 7
	spriteface PLAYER, RIGHT
	opentext
	writetext StarglowCavern_NuggetManText3
	waitbutton
	closetext
	dotrigger $1
	setevent EVENT_GOT_NUGGET_FROM_STARGLOW_CAVERN_HIKER
	end
.alreadygotnugget:
	opentext
	writetext StarglowCavern_NuggetManText4
	waitbutton
	closetext
	end
.didntgetnuggetlasttime:
	opentext
	writetext StarglowCavern_NuggetManText5
	waitbutton
	closetext
	end
	
StarglowCavern1FNPC2:
	variablesprite SPRITE_DISGUISEMAN, SPRITE_FISHER
	special MapCallbackSprites_LoadUsedSpritesGFX
	applymovement STARGLOWCAVERN_TRAINER4_POKEBALL, Movement_StarglowCavern_DisguiseMan1
	appear STARGLOWCAVERN_DISGUISEMAN
	opentext
	writetext StarglowCavern_DisguiseMan1Text1
	waitbutton
	closetext
	disappear STARGLOWCAVERN_TRAINER4_POKEBALL
	spriteface STARGLOWCAVERN_DISGUISEMAN, RIGHT
	opentext
	writetext StarglowCavern_DisguiseMan1Text2
	waitbutton
	closetext
	winlosstext TrainerStarglowCavern_4BeatenText, -1
	setlasttalked STARGLOWCAVERN_TRAINER4_POKEBALL
	loadtrainer DISGUISEMAN, DISGUISEMAN1
	startbattle
	reloadmapafterbattle
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .girl
	opentext
	writetext StarglowCavern_DisguiseMan1Text3_boy
	waitbutton
	closetext
	jump .cont
.girl
	opentext
	writetext StarglowCavern_DisguiseMan1Text3_girl
	waitbutton
	closetext
.cont
	applymovement STARGLOWCAVERN_DISGUISEMAN, Movement_StarglowCavern_DisguiseMan2
	disappear STARGLOWCAVERN_DISGUISEMAN
	opentext
	writetext StarglowCavern_DisguiseMan1Text4
	waitbutton
	closetext
	dotrigger $1
	end
	
StarglowCavern1FPokeBall1:
	itemball POTION

StarglowCavern_DisguiseMan1Text1:
	text "Ohohohoho!"
	
	para "Appearing right,"
	line "before your eyes!"
	
	para "It's I, the MASTER"
	line"OF DISGUISE!"
	done
	
StarglowCavern_DisguiseMan1Text2:
	text "This item looked "
	line "so free to take,"
	
	para "but now you real-"
	line "ize your mistake."
	
	para "If you'd talked to"
	line "him, over there,"
	
	para "you could've passed"
	line "without a care."
	
	para "He's not a TRAINER"
	line "can't you see?"
	
	para "I cannot say the"
	line "same for me."
	
	para "But, greed, it got"
	line "the best of you,"
	
	para "and now there's no-"
	line "thing you can do,"
	
	para "but see that your"
	line "and my eyes meet."
	
	para "So now prepare"
	line "for your defeat!"
	done
	
StarglowCavern_DisguiseMan1Text3_boy:
	text "A TRAINER strong,"
	line "and handsome, too."
	
	para "It seem's that I"
	line "have lost to you."
	
	para "Someday I'll cut"
	line "you down to size,"
	
	para "for I'm the MASTER"
	line "OF DISGUISE!"
	done
	
StarglowCavern_DisguiseMan1Text3_girl:
	text "A TRAINER strong,"
	line "and pretty, too."
	
	para "It seem's that I"
	line "have lost to you."
	
	para "Someday I'll cut"
	line "you down to size,"
	
	para "for I'm the MASTER"
	line "OF DISGUISE!"
	done
	
StarglowCavern_DisguiseMan1Text4:
	text "Ohohohoho!"
	done
	
StarglowCavern_DisguiseMan1Text5:
	text "Appearing right,"
	line "before your eyes!"
	
	para "It's I, the MASTER"
	line"OF DISGUISE!"
	done
	
StarglowCavern_DisguiseMan1Text6:
	text "Correct! Correct!"
	line "How did you know"
	
	para "this was the way"
	line "that you should"
	cont "go?"
	
	para "You saw the item"
	line "over there, but"
	
	para "it seems like you"
	line "just didn't care."
	
	para "To this man you"
	line "chose to speak."
	
	para "Are your #MON"
	line "not weak?"
	
	para "If you'd come and"
	line "spoken to me,"
	
	para "in a battle you"
	line "would be."
	
	para "So keep in mind,"
	line "don't trust your"
	cont "eyes,"
	
	para "for I'm the MASTER"
	line "OF DISGUISE!"
	done
	
StarglowCavern_NuggetManText1:
	text "Woah!"
	
	para "Someone actually"
	line "decided to take"
	cont "this path!"
	
	para "I'm not sure why,"
	line "but most people"
	
	para "who pass by here"
	line "go on the other"
	cont "side."
	
	para "Is it because they"
	line "think I'm going to"
	cont "pick a fight?"
	
	para "Anyway, you're the"
	line "first person I've"
	
	para "talked to in quite"
	line "some time."
	
	para "As thanks for you"
	line "stopping by, I"
	
	para "want you to take"
	line "this."
	done
	
StarglowCavern_NuggetManText2:
	text "That NUGGET is"
	line "worth a lot of"
	cont "money."
	
	para "Make sure not to"
	line "spend it all at"
	cont "one time!"
	done
	
StarglowCavern_NuggetManText3:
	text "What a weird guy…"
	done
	
StarglowCavern_NuggetManText4:
	text "Thanks again for"
	line "stopping by!"
	done
	
StarglowCavern_NuggetManText5:
	text "I saw you pass by"
	line "here a while ago."
	
	para "I was going to"
	line "give you something"
	
	para "if you came and"
	line "talked to me, but"
	
	para "someone else came"
	line "along and I gave"
	cont "it to them."
	
	para "Sorry, kid."
	done
	
TrainerStarglowCavern_1SeenText:
	text "SEEN TEXT"
	done
	
TrainerStarglowCavern_1BeatenText:
	text "BEATEN TEXT"
	done
	
TrainerStarglowCavern_1NormalText:
	text "NORMAL TEXT"
	done
	
TrainerStarglowCavern_2SeenText:
	text "SEEN TEXT"
	done
	
TrainerStarglowCavern_2BeatenText:
	text "BEATEN TEXT"
	done
	
TrainerStarglowCavern_2NormalText:
	text "NORMAL TEXT"
	done
	
TrainerStarglowCavern_3SeenText:
	text "SEEN TEXT"
	done
	
TrainerStarglowCavern_3BeatenText:
	text "BEATEN TEXT"
	done
	
TrainerStarglowCavern_3NormalText:
	text "NORMAL TEXT"
	done
	
TrainerStarglowCavern_4BeatenText:
	text "Kept your footing."
	line "Nice and steady!"
	
	para "I guess it's I who"
	line "wasn't ready…"
	done
	
Movement_StarglowCavern_DisguiseMan1:
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	step_sleep 1
	turn_head DOWN
	step_sleep 1
	turn_head LEFT
	step_sleep 1
	turn_head UP
	step_sleep 1
	turn_head RIGHT
	step_sleep 2
	turn_head DOWN
	step_sleep 2
	turn_head LEFT
	step_sleep 2
	turn_head UP
	step_sleep 3
	turn_head RIGHT
	step_sleep 6
	turn_head DOWN
	step_sleep 12
	step_end

Movement_StarglowCavern_DisguiseMan2:
	turn_head DOWN
	step_sleep 12
	turn_head LEFT
	step_sleep 6
	turn_head UP
	step_sleep 3
	turn_head RIGHT
	step_sleep 2
	turn_head DOWN
	step_sleep 2
	turn_head LEFT
	step_sleep 2
	turn_head UP
	step_sleep 1
	turn_head RIGHT
	step_sleep 1
	turn_head DOWN
	step_sleep 1
	turn_head LEFT
	step_sleep 1
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end