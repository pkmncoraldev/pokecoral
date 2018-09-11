const_value set 2
	const STARGLOWGYM_RODNEY
	const STARGLOWGYM_GYM_GUY
	const STARGLOWGYM_TRAINER_1
	const STARGLOWGYM_TRAINER_2
	const STARGLOWGYM_TRAINER_3
	const STARGLOWGYM_TRAINER_4

SeafoamGym_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

SeafoamGym_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 21, 3, 7, LAKE_OF_RAGE
	warp_def 21, 4, 7, LAKE_OF_RAGE

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 6
	person_event SPRITE_RODNEY, 1, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, StarglowGymRodneyScript, -1
	person_event SPRITE_GYM_GUY, 20, 6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, StarglowGymGuyScript, -1
	person_event SPRITE_FISHER, 13, 4, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 1, TrainerStarglowGym_1, -1
	person_event SPRITE_FISHER, 7, 0, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 1, TrainerStarglowGym_2, -1
	person_event SPRITE_FISHER, 11, 7, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 1, TrainerStarglowGym_3, -1
	person_event SPRITE_FISHER, 6, 5, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerStarglowGym_4, -1

StarglowGymRodneyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_RODNEY
	iftrue .FightDone
	writetext SunbeamGymRodneyTextBeforeBattle
	waitbutton
	closetext
	winlosstext SunbeamGymRodneyTextWinLoss, 0
	loadtrainer RODNEY, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_RODNEY
	opentext
	writetext Text_ReceivedSecondBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_SECONDBADGE
	checkcode VAR_BADGES
	
	
.FightDone:	
	checkevent EVENT_GOT_TM_FROM_RODNEY
	iftrue .GotTMFromRodney
	setevent EVENT_BEAT_STARGLOW_GYM_TRAINER_1
	setevent EVENT_BEAT_STARGLOW_GYM_TRAINER_2
	setevent EVENT_BEAT_STARGLOW_GYM_TRAINER_3
	setevent EVENT_BEAT_STARGLOW_GYM_TRAINER_4
	setevent EVENT_DAYBREAK_GROTTO_HIKER
	writetext SunbeamGymRodneyTextAfterBattle
	buttonsound
	verbosegiveitem TM_RAIN_DANCE
	iffalse .NoRoomForTM
	setevent EVENT_GOT_TM_FROM_RODNEY
	writetext SunbeamGymRodneyTextTMSpeech
	waitbutton
	closetext
	specialphonecall SPECIALCALL_COMETOISLAND
	end

.GotTMFromRodney:
	writetext SunbeamGymRodneyTextLoop
	waitbutton
.NoRoomForTM:
	closetext
	end

StarglowGymGuyScript:
	faceplayer
	checkevent EVENT_BEAT_RODNEY
	iftrue .StarglowGymGuyWinScript
	opentext
	writetext StarglowGymGuyText
	waitbutton
	closetext
	end

.StarglowGymGuyWinScript:
	opentext
	writetext StarglowGymGuyWinText
	waitbutton
	closetext
	end
	
TrainerStarglowGym_1:
	trainer EVENT_BEAT_STARGLOW_GYM_TRAINER_1, FISHER, 5, TrainerStarglowGym_1SeenText, TrainerStarglowGym_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerStarglowGym_1NormalText
	waitbutton
	closetext
	end
	
TrainerStarglowGym_2:
	trainer EVENT_BEAT_STARGLOW_GYM_TRAINER_2, FISHER, 6, TrainerStarglowGym_2SeenText, TrainerStarglowGym_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerStarglowGym_2NormalText
	waitbutton
	closetext
	end
	
TrainerStarglowGym_3:
	trainer EVENT_BEAT_STARGLOW_GYM_TRAINER_3, FISHER, 7, TrainerStarglowGym_3SeenText, TrainerStarglowGym_3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerStarglowGym_3NormalText
	waitbutton
	closetext
	end
	
TrainerStarglowGym_4:
	trainer EVENT_BEAT_STARGLOW_GYM_TRAINER_4, FISHER, 8, TrainerStarglowGym_4SeenText, TrainerStarglowGym_4BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerStarglowGym_4NormalText
	waitbutton
	closetext
	end
	
TrainerStarglowGym_1SeenText:
	text "RODNEY is the best"
	line "fisherman the"
	
	para "world has ever"
	line "seen!"
	
	para "If he deemed you"
	line "worthy, you must"
	cont "be good."
	done
	
TrainerStarglowGym_1BeatenText:
	text "Just like I said!"
	done
	
TrainerStarglowGym_1NormalText:
	text "You're going"
	line "places, kid!"
	done
	
TrainerStarglowGym_2SeenText:
	text "Did you know that"
	line "WATER TYPE is the"
	
	para "most common #-"
	line "MON TYPE?"
	
	para "That doesn't mean"
	line "they're weak!"
	done
	
TrainerStarglowGym_2BeatenText:
	text "Maybe it does…"
	done
	
TrainerStarglowGym_2NormalText:
	text "RODNEY's #MON"
	line "are a lot tougher"
	cont "than mine."
	done
	
TrainerStarglowGym_3SeenText:
	text "Fishing is so pop-"
	line "ular around here,"
	
	para "it only makes"
	line "sense for the GYM"
	
	para "to be a tackle"
	line "shop!"
	done
	
TrainerStarglowGym_3BeatenText:
	text "Oof…"
	done
	
TrainerStarglowGym_3NormalText:
	text "As well as train-"
	line "ing, I also get my"
	
	para "fishing supplies"
	line "here."
	done
	
TrainerStarglowGym_4SeenText:
	text "Not so fast!"
	
	para "You'll have to beat"
	line "me to get to the"
	cont "GYM LEADER."
	done
	
TrainerStarglowGym_4BeatenText:
	text "Well, that's that."
	done
	
TrainerStarglowGym_4NormalText:
	text "Go on."
	
	para "I won't try to stop"
	line "you again."
	done
	
SunbeamGymRodneyTextBeforeBattle:
	text "Hahaha!"
	
	para "So you came?"
	
	para "Those thugs were"
	line "causing quite the"
	cont "stir earlier,"
	
	para "but you put 'em"
	line "in their place."
	
	para "I'm RODNEY."
	
	para "GYM LEADER of"
	line "STARGLOW VALLEY!"
	
	para "My grandfather was"
	line "the founder of"
	
	para "this little fish-"
	line "ing town!"
	
	para "He trained me to"
	line "become the master"
	
	para "fisherman you see"
	line "before you."
	
	para "I, in turn, use"
	line "those skills train"
	
	para "my own WATER-type"
	line "#MON!"
	
	para "Let me show you"
	line "the raw power of"
	cont "the rushing waves!"
	done
	
SunbeamGymRodneyTextWinLoss:
	text "Amazing!"
	
	para "You bested my"
	line "fierce WATER-type"
	cont "#MON!"
	
	para "You've earned this."
	done
	
Text_ReceivedSecondBadge:
	text "<PLAYER> received"
	line "the SPLASHBADGE."
	done
	
SunbeamGymRodneyTextAfterBattle:
	text "The SPLASHBADGE"
	line "shows that you"
	cont "beat me in battle."
	
	para "It's real proof of"
	line "your mettle!"
	
	para "It also allows"
	line "your #MON to"
	
	para "use the move CUT"
	line "outside of battle."
	
	para "You should also"
	line "take this."
	done
	
SunbeamGymRodneyTextTMSpeech:
	text "That TM contains"
	line "RAIN DANCE."
	
	para "Using it, your"
	line "#MON can summon"
	
	para "a downpour at any"
	line "time!"
	
	para "WATER-type moves"
	line "are boosted in the"
	cont "rain."
	
	para "It's a great move"
	line "to have at your"
	cont "disposal."
	
	para "When I was young,"
	line "my grandfather"
	
	para "always told me to"
	line "push myself and"
	cont "reach for the"
	cont "stars."
	
	para "Your potential is"
	line "limitless!"
	
	para "Go out and be the"
	line "best TRAINER you"
	cont "can be!"
	done
	
SunbeamGymRodneyTextLoop:
	text "When I was young,"
	line "my grandfather"
	
	para "always told me to"
	line "push myself and"
	cont "reach for the"
	cont "stars."
	
	para "Your potential is"
	line "limitless!"
	
	para "Go out and be the"
	line "best TRAINER you"
	cont "can be!"
	done
	
StarglowGymGuyText:
	text "Yo!"
	
	para "Champ in making!"
	
	para "This gym is also a"
	line "tackle shop!"
	
	para "That means all the"
	line "TRAINERS here use"
	cont "WATER #MON."
	
	para "Hit 'em with an"
	line "ELECTRIC or GRASS"
	
	para "TYPE move to take"
	line "'em out easily."
	
	para "You won't get very"
	line "far with a FIRE or"
	cont "ROCK TYPE, though…"
	
	para "I'm sure you can"
	line "handle it!"
	done
	
StarglowGymGuyWinText:
	text "Great job, kid!"
	
	para "I never doubted"
	line "you for a second!"
	
	para "That's two down!"
	done