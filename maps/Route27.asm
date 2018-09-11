const_value set 2
	const SUNBEAM_GYM_LEILANI

Route27_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

Route27_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 18, 2, 3, CHERRYGROVE_GYM_SPEECH_HOUSE
	warp_def 19, 2, 4, CHERRYGROVE_GYM_SPEECH_HOUSE

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_LEILANI, 12, 6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamGymLeilani, -1

SunbeamGymLeilani:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LEILANI
	iftrue .FightDone
	writetext SunbeamGymLeilaniTextBeforeBattle1
	waitbutton
	closetext
	applymovement SUNBEAM_GYM_LEILANI, Movement_SunbeamGymLeilani
	faceplayer
	opentext
	writetext SunbeamGymLeilaniTextBeforeBattle2
	waitbutton
	closetext
	winlosstext SunbeamGymLeilaniTextWinLoss, 0
	loadtrainer LEILANI, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LEILANI
	opentext
	writetext Text_ReceivedThirdBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_THIRDBADGE
	checkcode VAR_BADGES
	
	
.FightDone:	
	checkevent EVENT_GOT_TM_FROM_LEILANI
	iftrue .GotTMFromLeilani
	writetext SunbeamGymLeilaniTextAfterBattle
	buttonsound
	verbosegiveitem TM_SUNNY_DAY
	iffalse .NoRoomForTM
	setevent EVENT_GOT_TM_FROM_LEILANI
	writetext SunbeamGymLeilaniTextTMSpeech
	waitbutton
	closetext
	clearevent EVENT_ISLAND_GREEM_MAN
	clearevent EVENT_ISLAND_BLUE_CORSOLA
	clearevent EVENT_ISLAND_SAVED_LADY_CHAN
	domaptrigger VIOLET_GYM, $1
	domaptrigger ROUTE_30_BERRY_SPEECH_HOUSE, $1
	domaptrigger CHERRYGROVE_CITY, $2
	setflag ENGINE_PUNKS_IN_STARGLOW
	variablesprite SPRITE_LEILANI_PSYDUCK, SPRITE_ROCKET
	variablesprite SPRITE_GENTLEMAN_GRUNTF, SPRITE_ROCKET_GIRL
	blackoutmod CHERRYGROVE_CITY
	end

.GotTMFromLeilani:
	writetext SunbeamGymLeilaniTextLoop
	waitbutton
.NoRoomForTM:
	closetext
	end

SunbeamGymLeilaniTextBeforeBattle1:
	text "Hey!"
	
	para "It's the kid from"
	line "the beach!"
	
	para "I'm LEILANI!"
	
	para "As I said earlier,"
	line "I'm the GYM LEADER"
	cont "of SUNBEAM ISLAND."	
	done
	
SunbeamGymLeilaniTextBeforeBattle2:
	text "You made it"
	line "through the"
	cont "jungle!"
	
	para "The harsh climate"
	line "and tough TRAINERS"
	
	para "usually weed out"
	line "the serious chal-"
	
	para "lengers from the"
	line "rest."
	
	para "You know, all my"
	line "life I've been told"
	cont "I'm beautiful, but"
	
	para "sometimes I feel"
	line "like that's all"
	cont "people see in me."
	
	para "I've spent so much"
	line "time and effort"
	
	para "refining not only"
	line "my appearance, but"
	
	para "also my battle"
	line "skills!"
	
	para "Now it's time to"
	line "prove once and for"
	
	para "all that I'm more"
	line "than just a pretty"
	cont "face!"
	done
	
SunbeamGymLeilaniTextWinLoss:
	text "Haha!"
	
	para "Looks like you"
	line "win."
	
	para "Take this."
	done
	
SunbeamGymLeilaniTextAfterBattle:
	text "You really are"
	line "something!"
	
	para "When I met you, I"
	line "had no idea you"
	cont "would be so tough."
	
	para "I judged you based"
	line "on you looks just"
	cont "like others judge"
	cont "me."
	
	para "I see now that I"
	line "was wrong."
	
	para "As an apology, I"
	line "want you to have"
	cont "this."
	done
	
SunbeamGymLeilaniTextTMSpeech:
	text "That TM contains"
	line "SUNNY DAY."
	
	para "Using it, you can"
	line "summon intense"
	cont "rays of sunlight"
	cont "at any time."
	
	para "The harsh sunlight"
	line "powers up FIRE-"
	
	para "type moves, but"
	line "also can assist"
	cont "GRASS-types."
	
	para "It even works in"
	line "the middle of the"
	cont "night!"
	
	para "Go out and prove"
	line "your worth by"
	
	para "taking on the rest"
	line "of the GYMs."
	
	para "I'll stay here and"
	line "better myself as"
	cont "well as my skills"
	cont "in battle!"
	done
	
SunbeamGymLeilaniTextLoop:
	text "Go out and prove"
	line "your worth by"
	
	para "taking on the rest"
	line "of the GYMs."
	
	para "I'll stay here and"
	line "better myself as"
	cont "well as my skills"
	cont "in battle!"
	done
	
Text_ReceivedThirdBadge:
	text "<PLAYER> received"
	line "the PETALBADGE."
	done
	
Movement_SunbeamGymLeilani:
	turn_head DOWN
	step_sleep 12
	turn_head LEFT
	step_sleep 12
	turn_head UP
	step_sleep 12
	turn_head RIGHT
	step_sleep 12
	step_end