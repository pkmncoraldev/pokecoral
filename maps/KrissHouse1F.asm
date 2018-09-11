const_value set 2
	const KRISSHOUSE1F_MOM1
	const KRISSHOUSE1F_MOM2

KrissHouse1F_MapScriptHeader:
.MapTriggers:
	db 3
	
	maptrigger .Trigger0
	maptrigger .Trigger1
	maptrigger .Trigger2

	; triggers

.MapCallbacks:
	db 0
	
.Trigger0:
	end
	
.Trigger1:
;	checkevent EVENT_KRISS_HOUSE_MOM_2
;	iffalse .end
;	appear KRISSHOUSE1F_MOM2
;	dotrigger $2
;.end
	end
	
.Trigger2:
	end
	
SunsetMomStopsYou:
	checkevent EVENT_TALKED_TO_MOM
	iftrue SunsetMomStopsYouEnd
	callasm .StopRunning
	checkflag ENGINE_PLAYER_IS_FEMALE
	iffalse .boy
	variablesprite SPRITE_PLAYER_CUTSCENE, SPRITE_KRIS_CUTSCENE
	setevent EVENT_PLAYER_IS_FEMALE
	jump .cont
.boy
	setevent EVENT_PLAYER_IS_MALE
.cont
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, KRISSHOUSE1F_MOM1, 15
	applymovement KRISSHOUSE1F_MOM1, SunsetMomStopsYouMovement
	opentext
	writetext SunsetMomText1
	buttonsound
	closetext
	applymovement KRISSHOUSE1F_MOM1, SunsetMomStopsYouReturn
	special RestartMapMusic
	setevent EVENT_TALKED_TO_MOM
	dotrigger $1
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret

SunsetMomScript:
	checkevent EVENT_CAN_GET_PASS_FROM_MOM
	iftrue SunsetMomGetPass
	checkevent EVENT_MOM_SPEECH_LOOP
	iftrue SunsetMomSpeech
	checkevent EVENT_MOM_GOT_POKEGEAR
	iftrue SunsetMomGotPokeGear
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue SunsetMomGotAPokemon
	checkevent EVENT_TALKED_TO_MAN_IN_SHACK
	iftrue SunsetMomGoToLighthouse
	jumptextfaceplayer SunsetMomText2
	
SunsetMomGetPass:
	checkevent EVENT_TALKED_TO_MOM_ABOUT_PASS
	iffalse .howdidyouknow
	faceplayer
	opentext
	writetext SunsetMomTextGivePass1
	waitbutton
	verbosegiveitem ISLAND_PASS
	writetext SunsetMomTextGivePass2
	waitbutton
	closetext
	spriteface KRISSHOUSE1F_MOM1, LEFT
	clearevent EVENT_CAN_GET_PASS_FROM_MOM
	clearevent EVENT_ISLAND_GREEM_MAN
	setevent EVENT_KRISS_HOUSE_MOM_2
	setevent EVENT_RIVAL_ROUTE_6
	clearevent EVENT_KRISS_HOUSE_MOM_1
	variablesprite SPRITE_LEILANI_PSYDUCK, SPRITE_ROCKET
	end
.howdidyouknow
	faceplayer
	opentext
	writetext SunsetMomTextGivePass3
	waitbutton
	verbosegiveitem ISLAND_PASS
	writetext SunsetMomTextGivePass2
	waitbutton
	closetext
	spriteface KRISSHOUSE1F_MOM1, LEFT
	clearevent EVENT_CAN_GET_PASS_FROM_MOM
	clearevent EVENT_ISLAND_GREEM_MAN
	setevent EVENT_KRISS_HOUSE_MOM_2
	setevent EVENT_RIVAL_ROUTE_6
	clearevent EVENT_KRISS_HOUSE_MOM_1
	variablesprite SPRITE_LEILANI_PSYDUCK, SPRITE_ROCKET
	end
	
SunsetMomSpeech:
	faceplayer
	opentext
	writetext SunsetMomText6
	waitbutton
	closetext
	spriteface KRISSHOUSE1F_MOM1, LEFT
	end
	
SunsetMomGotPokeGear:
	faceplayer
	opentext
	writetext SunsetMomText5
	waitbutton
	closetext
	spriteface KRISSHOUSE1F_MOM1, LEFT
	end
	
SunsetMomGoToLighthouse:
	faceplayer
	opentext
	writetext SunsetMomText3
	waitbutton
	closetext
	spriteface KRISSHOUSE1F_MOM1, LEFT
	end
	
SunsetMomGotAPokemon:
	faceplayer
	opentext
	writetext SunsetMomText4
	waitbutton
	stringtotext GearName, $1
	scall UnknownScript_0x7a57e
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	setevent EVENT_MOM_GOT_POKEGEAR
;	writetext SetDayOfWeekText
;	buttonsound
;	special Special_SetDayOfWeek
;UnknownScript_0x7a519:
;	writetext UnknownText_0x7a742
;	yesorno
;	iffalse UnknownScript_0x7a52a
;	special Special_InitialSetDSTFlag
;	yesorno
;	iffalse UnknownScript_0x7a519
;	jump UnknownScript_0x7a531
;
;UnknownScript_0x7a52a:
;	special Special_InitialClearDSTFlag
;	yesorno
;	iffalse UnknownScript_0x7a519
;UnknownScript_0x7a531:
	writetext UnknownText_0x7a763
	yesorno
	iffalse UnknownScript_0x7a542
	jump UnknownScript_0x7a549

UnknownScript_0x7a542:
	writetext UnknownText_0x7a807
	waitbutton
	writetext MomAfterGearText
	waitbutton
	closetext
	spriteface KRISSHOUSE1F_MOM1, LEFT
	setevent EVENT_LIGHTHOUSE_KIDS_DIE
	domaptrigger SUNSET_BAY, $2
	domaptrigger SUNSET_CAPE_ROUTE_1_GATE, $1
	end

UnknownScript_0x7a549:
	writetext MomAfterGearText
	waitbutton
	closetext
	spriteface KRISSHOUSE1F_MOM1, LEFT
	setevent EVENT_LIGHTHOUSE_KIDS_DIE
	domaptrigger SUNSET_BAY, $2
	domaptrigger SUNSET_CAPE_ROUTE_1_GATE, $1
	end
	
GearName:
	db "#GEAR@"

UnknownScript_0x7a57e:
	jumpstd receiveitem
	end
	
	
SunsetMomStopsYouEnd:
		end
	
TVScript:
	jumptext TVText

StoveScript:
	jumptext StoveText

SinkScript:
	jumptext SinkText

FridgeScript:
	jumptext FridgeText


	
SunsetMomStopsYouMovement:
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	step_end

SunsetMomStopsYouReturn:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step_end

SunsetMomTextGivePass1:
	text "<PLAYER>!"
	
	para "How's your"
	line "adventure going?"
	
	para "I've got that"
	line "ISLAND PASS right"
	cont "here!"	
	done
	
SunsetMomTextGivePass2:
	text "Be safe,"
	line "<PLAYER>."
	
	para "Don't forget to"
	line "call every once"
	cont "in a while."
	done
	
SunsetMomTextGivePass3:
	text "Oh!"
	
	para "<PLAYER>?"
	
	para "How's your"
	line "adventure going?"
	
	para "What are you"
	line "doing home?"
	
	para "An ISLAND PASS?"
	
	para "I just bought one."
	
	para "Woah…"
	
	para "Deja vu!"
	
	para "We've done this"
	line "before, haven't"
	cont "we?"
	
	para "Well, anyway,"
	line "here you go!"	
	done
	
MomAfterGearText:
	text "You should get"
	line "going."
	
	para "Make sure you"
	line "have everything"
	
	para "you need before"
	line "you leave town."
	
	para "You can stop by"
	line "the CAFE if you"
	
	para "want to get some"
	line "items for your"
	cont "#MON."
	
	para "Good luck out"
	line "there, sweetie."
	done

UnknownText_0x7a763:
	text "#MON GEAR, or"
	line "just #GEAR."

	para "It's essential if"
	line "you want to be a"
	cont "good trainer."

	para "By the way, do you"
	line "know how to use"
	cont "the PHONE?"
	done
	
UnknownText_0x7a807:
	text "I'll read the"
	line "instructions."

	para "Turn the #GEAR"
	line "on and select the"
	cont "PHONE icon."
	
	para "Phone numbers are"
	line "stored in memory."

	para "Just choose a name"
	line "you want to call."

	para "Gee, isn't that"
	line "convenient?"
	done

UnknownText_0x7a850:
	text "Phone numbers are"
	line "stored in memory."

	para "Just choose a name"
	line "you want to call."

	para "Gee, isn't that"
	line "convenient?"
	done
	
SunsetMomText1:
	text "<PLAYER>?"
	para "You're still here?"

	
	para "Get down to the"
	line "docks!"
	
	para "Hurry! You're late!"
	
	para "CAP'N STRAND is"
	line "supposed to give"
	cont "you your #MON"
	cont "today!"
	done

SunsetMomText2:
	text "What are you"
	line "waiting for?"
	
	para "Go get your"
	line "#MON!"
	done
	
SunsetMomText3:
	text "Oh?"
	
	para "CAP'N STRAND didn't"
	line "have your #MON?"
	
	para "You'd better hurry"
	line "down to the light-"
	cont "house then."
	
	para "I'll call ABNER"
	line "and tell him"
	cont "you're coming."
	done
	
SunsetMomText4:
	text "Oh, hey!"
	
	para "You're back!"
	
	para "You got your"
	line "#MON?"
	
	para "Let me see it!"
	
	para "Oh…"
	
	para "So you picked"
	line "THAT one."
	
	para "…"
	
	para "Well, that's okay."
	
	para "Anyway, since"
	line "you're going to"
	
	para "challenge the ONWA"
	line "#MON LEAGUE,"
	
	para "I thought you"
	line "could use this."
	done
	
SunsetMomText5:
	text "Good luck out"
	line "there, sweetie."
	done

SunsetMomText6:
	text "Welcome home!"
	
	para "How is the"
	line "adventure?"
	
	para "If your #MON"
	line "are injured,"
	
	para "make sure to visit"
	line "a #MON CENTER."
	done
	
StoveText:
	text "What's cooking?"

	para "Hmm…"
	
	para "Looks yummy!"
	done

SinkText:
	text "There's a single"
	line "plate in the sink."
	
	para "Looks like MOM al-"
	line "ready ate."
	done

FridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "Nothing good."
	
	line "As usual…"
	done

TVText:
	text "There's a movie on"
	line "TV: A crazy old"

	para "man and a kid in a"
	line "vest are speeding"
	
	para "through an empty"
	line "parking lot."

	para "I'd better get"
	line "rolling too!"
	done

KrissHouse1F_MapEventHeader:: db 0, 0

.Warps: db 3
	warp_def 7, 6, 1, GOLDENROD_CITY
	warp_def 7, 7, 1, SUNSET_BAY
	warp_def 0, 9, 1, KRISS_HOUSE_2F

.CoordEvents: db 1
	xy_trigger 0, 1, 9, 0, SunsetMomStopsYou, 0, 0

.BGEvents: db 4
	signpost 1, 0, SIGNPOST_READ, StoveScript
	signpost 1, 1, SIGNPOST_READ, SinkScript
	signpost 1, 2, SIGNPOST_READ, FridgeScript
	signpost 1, 4, SIGNPOST_READ, TVScript

.ObjectEvents: db 2
	person_event SPRITE_POKEFAN_F, 4, 7, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SunsetMomScript, EVENT_KRISS_HOUSE_MOM_1
	person_event SPRITE_POKEFAN_F, 2, 2, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SunsetMomScript, EVENT_KRISS_HOUSE_MOM_2

