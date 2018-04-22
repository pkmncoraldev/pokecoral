const_value set 2
	const GLINTGYM_STANLEY
	const GLINTGYM_TRAINER1
	const GLINTGYM_TRAINER2
	const GLINTGYM_LIBRARIAN
	const GLINTGYM_GYM_GUY

AzaleaGym_MapScriptHeader:
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
	
GlintGymStanley:
	faceplayer
	opentext
	checkevent EVENT_BEAT_STANLEY
	iftrue .FightDone
	writetext GlintGymStanleyTextBeforeBattle1
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintGymMovePlayer
	spriteface PLAYER, RIGHT
	applymovement GLINTGYM_STANLEY, Movement_GlintGymMoveStanley
	faceplayer
	opentext
	writetext GlintGymStanleyTextBeforeBattle2
	waitbutton
	closetext
	winlosstext GlintGymStanleyTextWinLoss, 0
	loadtrainer STANLEY, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_STANLEY
	opentext
	writetext Text_ReceivedFirstBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_FIRSTBADGE
	checkcode VAR_BADGES
	
	
.FightDone:	
	checkevent EVENT_GOT_TM_FROM_STANLEY
	iftrue .GotTMFromStanley
	checkitem RIVAL_POKEDEX
	iftrue .FightDoneCont
	setevent EVENT_GLINT_BIRDS
	
.FightDoneCont:
	setevent EVENT_BEAT_GLINT_GYM_TRAINER_1
	setevent EVENT_BEAT_GLINT_GYM_TRAINER_2
	writetext GlintGymStanleyTextAfterBattle
	buttonsound
	verbosegiveitem TM_FAKE_OUT
	iffalse .NoRoomForTM
	setevent EVENT_GOT_TM_FROM_STANLEY
	writetext GlintGymStanleyTextTMSpeech
	waitbutton
	closetext
	end

.GotTMFromStanley:
	writetext GlintGymStanleyTextLoop
	waitbutton
.NoRoomForTM:
	closetext
	end
	
AzaleaGymTriggerRockets:
	if_equal 7, .RadioTowerRockets
	if_equal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd goldenrodrockets

.RadioTowerRockets:
	jumpstd radiotowerrockets

GlintGymTrainer1:
	trainer EVENT_BEAT_GLINT_GYM_TRAINER_1, SCHOOLBOY, TIMMY_SCHOOLBOY, GlintGymTrainer1TextSeen, GlintGymTrainer1TextBeaten, 0, .AfterScript

.AfterScript:
	end_if_just_battled
	opentext
	writetext GlintGymTrainer1TextAfterBattle
	waitbutton
	closetext
	end

GlintGymTrainer2:
	trainer EVENT_BEAT_GLINT_GYM_TRAINER_2, SCHOOLBOY, DAMIAN_SCHOOLBOY, GlintGymTrainer2TextSeen, GlintGymTrainer2TextBeaten, 0, .AfterScript

.AfterScript:
	end_if_just_battled
	opentext
	writetext GlintGymTrainer2TextAfterBattle
	waitbutton
	closetext
	end

GlintGymGuyScript:
	faceplayer
	checkevent EVENT_BEAT_STANLEY
	iftrue .GlintGymGuyWinScript
	opentext
	writetext GlintGymGuyText
	waitbutton
	closetext
	end

.GlintGymGuyWinScript:
	opentext
	writetext GlintGymGuyWinText
	waitbutton
	closetext
	end

GlintGymLibrarian:
	faceplayer
	checkitem LIBRARY_CARD
	iftrue .GlintGymLibrarian2
	opentext
	writetext GlintGymLibrarianText1
	waitbutton
	closetext
	end
	
.GlintGymLibrarian2:
	checkevent EVENT_SHOWN_LIBRARY_CARD
	iftrue .GlintGymLibrarian3
	setevent EVENT_SHOWN_LIBRARY_CARD
	opentext
	writetext GlintGymLibrarianText2
	waitbutton
	closetext
	end
	
.GlintGymLibrarian3:
	opentext
	writetext GlintGymLibrarianText3
	waitbutton
	closetext
	end
	
GlintGymStatue:
	checkflag ENGINE_FIRSTBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext STANLEY, 1, $1
	jumpstd gymstatue2

GlintGymLibrarianStopsYou1:
	checkitem LIBRARY_CARD
	iftrue GlintGymLibrarianStopsYou1_2
	callasm .StopRunning
	opentext
	spriteface PLAYER, LEFT
	writetext GlintGymLibrarianStopsYouText
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintGymLibrarianStopsYou1
	spriteface PLAYER, LEFT
	opentext
	writetext GlintGymLibrarianText1
	waitbutton
	closetext
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
GlintGymLibrarianStopsYou1_2
	callasm .StopRunning
	opentext
	spriteface PLAYER, LEFT
	writetext GlintGymLibrarianStopsYouText
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintGymLibrarianStopsYou1
	spriteface PLAYER, LEFT
	opentext
	writetext GlintGymLibrarianText2
	waitbutton
	closetext
	setevent EVENT_SHOWN_LIBRARY_CARD
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
	
GlintGymLibrarianStopsYou2:
	checkitem LIBRARY_CARD
	iftrue GlintGymLibrarianStopsYou2_2
	callasm .StopRunning
	opentext
	spriteface PLAYER, LEFT
	writetext GlintGymLibrarianStopsYouText
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintGymLibrarianStopsYou2
	opentext
	writetext GlintGymLibrarianText1
	waitbutton
	closetext
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
GlintGymLibrarianStopsYou2_2
	callasm .StopRunning
	opentext
	spriteface PLAYER, LEFT
	writetext GlintGymLibrarianStopsYouText
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintGymLibrarianStopsYou2
	opentext
	writetext GlintGymLibrarianText2
	waitbutton
	closetext
	setevent EVENT_SHOWN_LIBRARY_CARD
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
	
GlintGymLibrarianStopsYou3:
	checkitem LIBRARY_CARD
	iftrue GlintGymLibrarianStopsYou3_2
	callasm .StopRunning
	opentext
	spriteface PLAYER, LEFT
	writetext GlintGymLibrarianStopsYouText
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintGymLibrarianStopsYou3
	opentext
	writetext GlintGymLibrarianText1
	waitbutton
	closetext
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
GlintGymLibrarianStopsYou3_2
	callasm .StopRunning
	opentext
	spriteface PLAYER, LEFT
	writetext GlintGymLibrarianStopsYouText
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintGymLibrarianStopsYou3
	opentext
	writetext GlintGymLibrarianText2
	waitbutton
	closetext
	setevent EVENT_SHOWN_LIBRARY_CARD
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
	
GlintGymLibrarianStopsYou4:
	checkitem LIBRARY_CARD
	iftrue GlintGymLibrarianStopsYou4_2
	callasm .StopRunning
	opentext
	spriteface PLAYER, LEFT
	writetext GlintGymLibrarianStopsYouText
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintGymLibrarianStopsYou4
	opentext
	writetext GlintGymLibrarianText1
	waitbutton
	closetext
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
GlintGymLibrarianStopsYou4_2
	callasm .StopRunning
	opentext
	spriteface PLAYER, LEFT
	writetext GlintGymLibrarianStopsYouText
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintGymLibrarianStopsYou4
	opentext
	writetext GlintGymLibrarianText2
	waitbutton
	closetext
	setevent EVENT_SHOWN_LIBRARY_CARD
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
	
GlintGymLibrarianStopsYouEnd:
	end
	
Movement_GlintGymMovePlayer:
	step LEFT
	step_end
	
Movement_GlintGymMoveStanley:
	step DOWN
	step_end
	
Movement_GlintGymLibrarianStopsYou1:
	step DOWN
	step_end
	
Movement_GlintGymLibrarianStopsYou2:
	step DOWN
	step LEFT
	step_end
	
Movement_GlintGymLibrarianStopsYou3:
	step DOWN
	step LEFT
	step LEFT
	step_end
	
Movement_GlintGymLibrarianStopsYou4:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step_end
	
GlintGymStanleyTextBeforeBattle1:
	text "Ah. You came."
	
	para "I knew you were"
	line "something special"
	
	para "when I met you in"
	line "the grove."
	
	para "I'm STANLEY."
	
	para "I'm the GLINT CITY"
	line "GYM LEADER."
	
	para "I graduated top of"
	line "my class at the"
	
	para "DAYBREAK #MON"
	line "TRAINER SCHOOL."
	
	para "NORMAL TYPES are"
	line "vastly underrated."
	
	para "Sure, they don't"
	line "have many"
	cont "strentghs,"
	
	para "but they don't have"
	line "many weaknesses"
	cont "either."
	done
	
GlintGymStanleyTextBeforeBattle2:
	text "I'll show you that"
	line "sound strategy is"
	
	para "far more important"
	line "than pure power!"
	done
	
GlintGymStanleyTextWinLoss
	text "I guess your stra-"
	line "tegy trumped mine."
	
	para "Take this."
	
	para "It's the #MON"
	line "LEAGUE STARKBADGE."
	done
	
Text_ReceivedFirstBadge:
	text "<PLAYER> received"
	line "the STARKBADGE."
	done
	
GlintGymStanleyTextAfterBattle:
	text "That badge shows"
	line "that you bested me"
	cont "in battle."
	
	para "It also allows you"
	line "to use the HM"
	
	para "ROCK SMASH outside"
	line "of battle."
	
	para "You're #MON doesn't"
	line "even need to know"
	cont "the move."
	
	para "As long as they can"
	line "learn it, you're"
	cont "good to go!"
	
	para "You'll need to"
	line "find the HM your-"
	cont "self, though."
	
	para "I also want you to"
	line "have this."	
	done
	
GlintGymStanleyTextTMSpeech:
	text "TMs teach your"
	line "#MON new moves."

	para "That TM contains"
	line "the move FAKE OUT."
	
	para "FAKE OUT always"
	line "goes first and"
	
	para "always makes your"
	line "opponent flinch."
	
	para "You can only use"
	line "it on the first"
	
	para "turn that your"
	line "#MON is in"
	cont "battle, however."
	
	para "It's a great strat-"
	line "egic move!"
	
	para "You gave a really"
	line "good fight."
	
	para "I'll study and"
	line "train harder."
	
	para "Good luck on your"
	line "journey!"
	done
	
GlintGymStanleyTextLoop:
	text "You gave a really"
	line "good fight."
	
	para "I'll study and"
	line "train harder."
	
	para "Good luck on your"
	line "journey!"
	done
	
GlintGymTrainer1TextSeen:
	text "I'm reading through"
	line "the library's set"
	cont "of encyclopedias."
	
	para "I'm starting with"
	line "the letter 'A'."
	done
	
GlintGymTrainer1TextBeaten:
	text "I couldn't read"
	line "you…"
	done
	
GlintGymTrainer1TextAfterBattle:
	text "I haven't made it"
	line "to 'B' yet."
	
	para "Don't make fun of"
	line "me."
	done
	
GlintGymTrainer2TextSeen:
	text "Shhhh!"
	
	para "Quiet in the"
	line "library!"
	done
	
GlintGymTrainer2TextBeaten:
	text "I guess I need to"
	line "read more about"
	cont "type matchups…"
	done
	
GlintGymTrainer2TextAfterBattle:
	text "At least I now I"
	line "can study in"
	cont "peace."
	done

GlintGymGuyText:
	text "Yo!"
	
	para "Champ in making!"
	
	para "This must be your"
	line "first GYM."
	
	para "The TRAINERS here"
	line "specialize in"
	
	para "NORMAL TYPE #-"
	line "MON."
	
	para "They can't take a"
	line "hit from FIGHTING"
	
	para "TYPE moves, but"
	line "GHOST moves can't"
	cont "touch them at all."
	
	para "You should be"
	line "ready for"
	cont "anything."
	done

GlintGymGuyWinText:
	text "You won?"

	para "Nice!"
	
	para "That's your first"
	line "step to becoming"
	
	para "the CHAMPION of"
	line "the ONWA REGION!"
	
	para "Keep it up, kid!"
	done

GlintGymLibrarianStopsYouText:
	text "Excuse me!"
	done
	
GlintGymLibrarianText1:
	text "Welcome to the"
	line "GLINT CITY #-"
	cont "MON GYM."
	
	para "The GYM doubles as"
	line "a library, so"
	
	para "please keep your"
	line "voice down."
	
	para "You need a LIBRARY"
	line "CARD to enter."
	
	para "Please return with"
	line "a LIBRARY CARD."
	done

GlintGymLibrarianText2:
	text "Welcome to the"
	line "GLINT CITY #-"
	cont "MON GYM."
	
	para "The GYM doubles as"
	line "a library, so"
	
	para "please keep your"
	line "voice down."
	
	para "You need a LIBRARY"
	line "CARD to enter."
	
	para "Let me see."
	
	para "Ok, <PLAYER>."
	
	para "Have a nice visit."
	done

GlintGymLibrarianText3:
	text "Welcome to the"
	line "GLINT CITY #-"
	cont "MON GYM."
	
	para "The GYM doubles as"
	line "a library, so"
	
	para "please keep your"
	line "voice down."
	
	para "Have a nice visit."
	done	
	
AzaleaGym_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 17, 5, 7, AZALEA_TOWN
	warp_def 17, 4, 7, AZALEA_TOWN

.CoordEvents: db 4
	xy_trigger 0, 15, 3, 0, GlintGymLibrarianStopsYou1, 0, 0
	xy_trigger 0, 15, 4, 0, GlintGymLibrarianStopsYou2, 0, 0
	xy_trigger 0, 15, 5, 0, GlintGymLibrarianStopsYou3, 0, 0
	xy_trigger 0, 15, 6, 0, GlintGymLibrarianStopsYou4, 0, 0

.BGEvents: db 2
	signpost 13, 3, SIGNPOST_READ, GlintGymStatue
	signpost 13, 6, SIGNPOST_READ, GlintGymStatue

.ObjectEvents: db 5
	person_event SPRITE_STANLEY, 1, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, GlintGymStanley, -1
	person_event SPRITE_BUG_CATCHER, 10, 6, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 2, GlintGymTrainer1, -1
	person_event SPRITE_BUG_CATCHER, 7, 3, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, GlintGymTrainer2, -1
	person_event SPRITE_TEACHER, 16, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, GlintGymLibrarian, -1
	person_event SPRITE_GYM_GUY, 15, 7, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GlintGymGuyScript, -1

