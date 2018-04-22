const_value set 2
	const LIGHTHOUSE_ABNER
	const LIGHTHOUSE_RIVAL
SunsetLighthouse_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0
	
.Trigger0:
	priorityjump LighthouseStartGetStarterScene
	end

.Trigger1:
	end
	
DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	jump LighthousePokeMenu
	closetext
	end

AlreadyGotPokemonScript:
	opentext
	writetext LighthousePokeBallText
	waitbutton
	closetext
	end
	
LighthouseStartGetStarterScene:
	callasm .StopRunning
	special Special_FadeOutMusic
	pause 5
	dotrigger $1
	playmusic MUSIC_PROF_ELM
	applymovement PLAYER, Movement_EnterLighthouse
	spriteface PLAYER, UP
	opentext
	writetext LighthouseAbnerText1
	waitbutton
	closetext
	applymovement LIGHTHOUSE_ABNER, Movement_AbnerLighthouseWalk1
	spriteface LIGHTHOUSE_ABNER, DOWN
	opentext
	writetext PickStarterText
	waitbutton
	jump LighthousePokeMenu
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
LighthousePokeMenu:
	refreshscreen $0
	loadmenudata LighthousePokemonMenuData
	verticalmenu
	closewindow
	if_equal $1, .Charmander
	if_equal $2, .Squirtle
	if_equal $3, .Bulbasaur
	if_equal $4, .Cyndaquil
	if_equal $5, .Totodile
	if_equal $6, .Chikorita
		
.Charmander:
	refreshscreen $0
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	opentext
	writetext LighthouseTakeCharmanderText
	yesorno
	iffalse DidntChooseStarterScript
	setevent EVENT_GOT_CHARMANDER_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem CHARMANDER, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke CHARMANDER, 5, BERRY
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	jump LighthouseGetStarterScene_part2
	end
.Squirtle:
	refreshscreen $0
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext LighthouseTakeSquirtleText
	yesorno
	iffalse DidntChooseStarterScript
	setevent EVENT_GOT_SQUIRTLE_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem SQUIRTLE, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke SQUIRTLE, 5, BERRY
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	jump LighthouseGetStarterScene_part2
	end
.Bulbasaur:
	refreshscreen $0
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext LighthouseTakeBulbasaurText
	yesorno
	iffalse DidntChooseStarterScript
	setevent EVENT_GOT_BULBASAUR_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem BULBASAUR, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke BULBASAUR, 5, BERRY
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	jump LighthouseGetStarterScene_part2
	end	
.Cyndaquil:
	refreshscreen $0
	pokepic CYNDAQUIL
	cry CYNDAQUIL
	waitbutton
	closepokepic
	opentext
	writetext LighthouseTakeCyndaquilText
	yesorno
	iffalse DidntChooseStarterScript
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem CYNDAQUIL, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CYNDAQUIL, 5, BERRY
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	jump LighthouseGetStarterScene_part2
	end
	
.Totodile:
	refreshscreen $0
	pokepic TOTODILE
	cry TOTODILE
	waitbutton
	closepokepic
	opentext
	writetext LighthouseTakeTotodileText
	yesorno
	iffalse DidntChooseStarterScript
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem TOTODILE, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke TOTODILE, 5, BERRY
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	jump LighthouseGetStarterScene_part2
	end
	
.Chikorita:
	refreshscreen $0
	pokepic CHIKORITA
	cry CHIKORITA
	waitbutton
	closepokepic
	opentext
	writetext LighthouseTakeChikoritaText
	yesorno
	iffalse DidntChooseStarterScript
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem CHIKORITA, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CHIKORITA, 5, BERRY
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	jump LighthouseGetStarterScene_part2
	end
	
LighthousePokemonMenuData:
	db $40 ; flags
	db 00, 00 ; start coords
	db 14, 14 ; end coords
	dw .MenuData
	db 1 ; default option

.MenuData:
	db $81 ; flags
	db 6 ; items
	db "CHARMANDER@"
	db "SQUIRTLE@"
	db "BULBASAUR@"
	db "CYNDAQUIL@"
	db "TOTODILE@"
	db "CHIKORITA@"
	end

LighthouseGetStarterScene_part2:
	clearevent EVENT_LIGHTHOUSE_KIDS_DIE
	applymovement LIGHTHOUSE_ABNER, Movement_AbnerLighthouseWalk2
	spriteface LIGHTHOUSE_ABNER, DOWN
	opentext
	writetext LighthouseAbnerTextToRival
	waitbutton
	closetext
	checkevent EVENT_GOT_SQUIRTLE_FROM_ELM
	iftrue .RivalSquirtleText
	checkevent EVENT_GOT_BULBASAUR_FROM_ELM
	iftrue .RivalBulbasaurText
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	iftrue .RivalCyndaquilText
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .RivalTotodileText
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .RivalChikoritaText
	opentext
	writetext RivalPicksTotodileText
	playsound SFX_LEVEL_UP 
	waitsfx
	waitbutton
	closetext
	jump .continueLighthouseGetStarterScene_part2
.RivalSquirtleText
	opentext
	writetext RivalPicksChikoritaText
	playsound SFX_LEVEL_UP 
	waitsfx
	waitbutton
	closetext
	jump .continueLighthouseGetStarterScene_part2
.RivalBulbasaurText
	opentext
	writetext RivalPicksCyndaquilText
	playsound SFX_LEVEL_UP 
	waitsfx
	waitbutton
	closetext
	jump .continueLighthouseGetStarterScene_part2
.RivalCyndaquilText
	opentext
	writetext RivalPicksSquirtleText
	playsound SFX_LEVEL_UP 
	waitsfx
	waitbutton
	closetext
	jump .continueLighthouseGetStarterScene_part2
.RivalTotodileText
	opentext
	writetext RivalPicksBulbasaurText
	playsound SFX_LEVEL_UP 
	waitsfx
	waitbutton
	closetext
	jump .continueLighthouseGetStarterScene_part2
.RivalChikoritaText
	opentext
	writetext RivalPicksCharmanderText
	playsound SFX_LEVEL_UP 
	waitsfx
	waitbutton
	closetext
.continueLighthouseGetStarterScene_part2
	applymovement LIGHTHOUSE_ABNER, Movement_AbnerLighthouseReturn
	spriteface LIGHTHOUSE_ABNER, DOWN
	opentext
	writetext LighthouseAbnerText2
	waitbutton
	closetext
	spriteface LIGHTHOUSE_RIVAL, RIGHT
	spriteface PLAYER, LEFT
	opentext
	writetext LighthouseRivalText1
	waitbutton
	closetext
	spriteface PLAYER, UP
	opentext
	writetext LighthouseAbnerText3
	waitbutton
	closetext
	spriteface PLAYER, LEFT
	opentext
	writetext LighthouseRivalText2
	waitbutton
	closetext
	checkevent EVENT_GOT_SQUIRTLE_FROM_ELM
	iftrue .Squirtle
	checkevent EVENT_GOT_BULBASAUR_FROM_ELM
	iftrue .Bulbasaur
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	iftrue .Cyndaquil
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext LighthouseRivalWinText, LighthouseRivalLoseText
	setlasttalked LIGHTHOUSE_RIVAL
	loadtrainer RIVAL1, RIVAL1_3
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iffalse .LighthouseAfterVictorious
	jump .LighthouseAfterYourDefeat
	
.Squirtle
	winlosstext LighthouseRivalWinText, LighthouseRivalLoseText
	setlasttalked LIGHTHOUSE_RIVAL
	loadtrainer RIVAL1, RIVAL1_1
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iffalse .LighthouseAfterVictorious
	jump .LighthouseAfterYourDefeat
	
.Bulbasaur
	winlosstext LighthouseRivalWinText, LighthouseRivalLoseText
	setlasttalked LIGHTHOUSE_RIVAL
	loadtrainer RIVAL1, RIVAL1_2
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iffalse .LighthouseAfterVictorious
	jump .LighthouseAfterYourDefeat
	
.Cyndaquil
	winlosstext LighthouseRivalWinText, LighthouseRivalLoseText
	setlasttalked LIGHTHOUSE_RIVAL
	loadtrainer RIVAL1, RIVAL1_6
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iffalse .LighthouseAfterVictorious
	jump .LighthouseAfterYourDefeat
	
.Totodile
	winlosstext LighthouseRivalWinText, LighthouseRivalLoseText
	setlasttalked LIGHTHOUSE_RIVAL
	loadtrainer RIVAL1, RIVAL1_4
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iffalse .LighthouseAfterVictorious
	jump .LighthouseAfterYourDefeat
	
.Chikorita
	winlosstext LighthouseRivalWinText, LighthouseRivalLoseText
	setlasttalked LIGHTHOUSE_RIVAL
	loadtrainer RIVAL1, RIVAL1_5
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iffalse .LighthouseAfterVictorious
	jump .LighthouseAfterYourDefeat
	
.LighthouseAfterVictorious:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext LighthouseRivalText_YouWon
	waitbutton
	closetext
	jump .LighthouseFinishRival

.LighthouseAfterYourDefeat:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext LighthouseRivalText_YouLost
	waitbutton
	closetext
.LighthouseFinishRival:
	applymovement LIGHTHOUSE_RIVAL, Movement_LighthouseRivalLeaves
	playsound SFX_EXIT_BUILDING
	disappear LIGHTHOUSE_RIVAL
	special HealParty
	special Special_FadeOutMusic
	pause 10
	playmusic MUSIC_PROF_ELM
	applymovement LIGHTHOUSE_ABNER, Movement_AbnerLighthouseWalk1
	spriteface LIGHTHOUSE_ABNER, DOWN
	spriteface PLAYER, UP
	opentext
	writetext LighthouseAbnerText4
	waitbutton
	closetext
	opentext
	writetext LighthouseAbnerTextGiveDex
	waitbutton
	writetext Lighthouse_GetDexText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_POKEDEX
	writetext LighthouseAbnerText5
	buttonsound
	giveitem RIVAL_POKEDEX
	writetext LighthouseGotRivalDexText
	playsound SFX_KEY_ITEM
	waitsfx
	setevent EVENT_GOT_RIVAL_POKEDEX
	buttonsound
	writetext LighthousePutAwayRivalDexText
	waitbutton
	writetext LighthouseAbnerText6
	waitbutton
	closetext
	special Special_FadeOutMusic
	pause 5
	playmapmusic
	domaptrigger SUNSET_BAY, $1
	end	
		
LighthouseAbner:
	checkevent EVENT_MOM_SPEECH_LOOP
	iftrue LighthouseAbnerPostPokeGear
	jumptextfaceplayer LighthouseAbnerText
	end
	
LighthouseRival:
	end
		
LighthouseAbnerPostPokeGear:
	jumptextfaceplayer LighthouseAbnerTextPostPokeGear
	
Movement_EnterLighthouse:
	step UP
	step UP
	step UP
	step_end
	
Movement_AbnerLighthouseWalk1:
	step DOWN
	step_end
	
Movement_AbnerLighthouseWalk2:
	step LEFT
	step_end
		
Movement_AbnerLighthouseReturn:
	step RIGHT
	step UP
	step_end
	
Movement_LighthouseRivalLeaves:
	step DOWN
	step DOWN
	step RIGHT
	step DOWN
	step_end
	
LighthouseGotRivalDexText:
	text "<PLAYER> received"
	line "<RIVAL>'s #DEX!"
	done
	
LighthousePutAwayRivalDexText:
	text "<PLAYER> put the"
	line "#DEX in"
	cont "the KEY POCKET."
	done
	
Lighthouse_GetDexText:
	text "<PLAYER> received"
	line "#DEX!"
	done
	
LighthouseAbnerText1:
	text "ABNER: <PLAYER>!"
	
	para "So nice of you to"
	line "finally join us."
	
	para "Now we can get on"
	line "with this."
	
	para "We don't live"
	line "close to PROF."
	
	para "SPRUCE's #MON"
	line "RESEARCH LAB."
	
	para "Because of this,"
	line "my brother and I"
	
	para "are filling in"
	line "for him."
	
	para "I have in this"
	line "bag, six rare"
	cont "#MON."

	para "They were sent"
	line "from the PROF.'s"
	
	para "lab especially"
	line "for all of you."
	
	para "You only get one,"
	line "so choose wisely."
	
	para "But no matter"
	line "which you choose,"
	
	para "you must train"
	line "it well."
	
	para "One of you might"
	line "even become the"
	
	para "next #MON"
	line "LEAGUE CHAMPION!"
	
	para "Ohohohoho!"
	
	para "Ahem."
	
	para "<PLAYER>!"
	
	para "Why don't you"
	line "choose first?"
	
	para "All these three"
	line "have done is"
	
	para "bicker since"
	line "they got here."
	done
	
LighthouseAbnerText2:
	text "ABNER: Congrats!"
	
	para "You are all now"
	line "#MON trainers!"
	
	para "Go out and be"
	line "the best trainers"
	cont "you can be."
	done
	
LighthouseAbnerText3:
	text "ABNER: That's a"
	line "great idea,"
	cont "<RIVAL>."
	
	para "ALEX and MARCUS"
	line "could battle too."
	
	
	done
	
LighthouseAbnerText4:
	text "ABNER: Oh,"
	line "don't worry about"
	cont "<RIVAL>, <PLAYER>."
	
	para "Some people are"
	line "overcompetitive."
	done
	
LighthouseAbnerTextGiveDex:
	text "Oh!"
	
	para "I almost forgot!"
	
	para "I am supposed to"
	line "give you kids each"
	cont "one of these."
	done
	
LighthouseAbnerText5:
	text "<RIVAL> ran off"
	line "before I could"
	cont "give him his…"
	
	para "<PLAYER>."
	
	para "Do you think you"
	line "could take it with"
	cont "you?"
	
	para "<RIVAL> lives in"
	line "GLINT CITY to the"
	cont "NORTH."
	
	para "You're going that"
	line "way anyway, aren't"
	cont "you?"
	done
	
LighthouseAbnerText6:
	text "By the way,"
	line "your MOM called"
	cont "before you came."
	
	para "She has something"
	line "to give you."
	
	para "You should stop by"
	line "before you leave."
	done
	
LighthouseAbnerText:
	text "Did you visit"
	line "your MOM yet?"
	
	para "No?"
	
	para "Then go talk"
	line "to her!"
	done
	
LighthouseAbnerTextPostPokeGear:
	text "Nice #GEAR,"
	line "<PLAYER>."
	
	para "Good luck on"
	line "your journey!"
	done
	
LighthouseAbnerTextToRival:
	text "ABNER: Now you"
	line "pick, <RIVAL>."
	done
	
LighthouseAbnerTextToKid1:
	text "ABNER: Next up,"
	line "ALEX."
	done
	
LighthouseAbnerTextToKid2:
	text "ABNER: And,"
	line "finally, MARCUS."
	done	

LighthouseRivalText1:
	text "<RIVAL>: Your"
	line "#MON looks"
	cont "weak, <PLAYER>."
	
	para "I bet mine could"
	line "wipe the floor"
	cont "with yours!"
	
	para "Why don't we have"
	line "a little battle"
	cont "to find out?"
	done
	
LighthouseRivalText2:
	text "<RIVAL>: This is"
	line "gonna be a piece"
	cont "of cake!"
	done
	
LighthouseRivalText_YouWon:
	text "<RIVAL>: Whatever!"
	
	para "I'm going to go"
	line "train my #MON."
	
	para "This won't happen"
	line "again!"
	done
	
LighthouseRivalText_YouLost:
	text "<RIVAL>: I knew"
	line "I'd win."
	
	para "You'd better stay"
	line "out of my way if"
	
	para "you know what's"
	line "good for you."
	done
	
RivalPicksCharmanderText:
	text "<RIVAL>: <PLAYER>"
	line "picked CHIKORITA,"
	
	para "so I'll pick"
	line "CHARMANDER!"
	
	para "It looks much"
	line "stronger."
	done
	
RivalPicksSquirtleText:
	text "<RIVAL>: <PLAYER>"
	line "picked CYNDAQUIL,"
	
	para "so I'll pick"
	line "SQUIRTLE!"
	
	para "It looks much"
	line "stronger."
	done
	
RivalPicksBulbasaurText:
	text "<RIVAL>: <PLAYER>"
	line "picked TOTODILE,"
	
	para "so I'll pick"
	line "BULBASAUR!"
	
	para "It looks much"
	line "stronger."
	done
	
	
RivalPicksCyndaquilText:
	text "<RIVAL>: <PLAYER>"
	line "picked BULBASAUR,"
	
	para "so I'll pick"
	line "CYNDAQUIL!"
	
	para "It looks much"
	line "stronger."
	done
	
RivalPicksTotodileText:
	text "<RIVAL>: <PLAYER>"
	line "picked CHARMANDER,"
	
	para "so I'll pick"
	line "TOTODILE!"
	
	para "It looks much"
	line "stronger."
	done
	
RivalPicksChikoritaText:
	text "<RIVAL>: <PLAYER>"
	line "picked SQUIRTLE,"
	
	para "so I'll pick"
	line "CHIKORITA!"
	
	para "It looks much"
	line "stronger."
	done
	
LighthouseRivalWinText:
	text "WHAT? How could"
	line "I lose?"
	done

LighthouseRivalLoseText:
	text "Haha!"
	
	para "Looks like I'm the"
	line "better trainer!"
	done
	
LighthouseTakeCharmanderText:
	text "You'll take"
	line "CHARMANDER, the"
	cont "FIRE #MON?"
	done

LighthouseTakeSquirtleText:
	text "Do you want"
	line "SQUIRTLE, the"
	cont "WATER #MON?"
	done

LighthouseTakeBulbasaurText:
	text "So, you like"
	line "BULBASAUR, the"
	cont "GRASS #MON?"
	done
	
LighthouseTakeCyndaquilText:
	text "You'll take"
	line "CYNDAQUIL, the"
	cont "FIRE #MON?"
	done

LighthouseTakeTotodileText:
	text "Do you want"
	line "TOTODILE, the"
	cont "WATER #MON?"
	done

LighthouseTakeChikoritaText:
	text "So, you like"
	line "CHIKORITA, the"
	cont "GRASS #MON?"
	done
	
LighthousePokeBallText:
	text "I already gave"
	line "you a #MON."

	para "Everyone only"
	line "gets one."
	done

PickStarterText:
	text "Go ahead and"
	line "pick a #MON."
	
	para "Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done
	
	
DidntChooseStarterText:
	text "Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

ChoseStarterText:
	text "I think"
	line "that's a great"
	cont "#MON too!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done	
	
SunsetLighthouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 9, 5, 1, SUNSET_CAPE
	warp_def 9, 4, 1, SUNSET_CAPE

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_GENTLEMAN, 4, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, LighthouseAbner, -1
	person_event SPRITE_SILVER, 6, 4, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_GOT_A_POKEMON_FROM_ELM

