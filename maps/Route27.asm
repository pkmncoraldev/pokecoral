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
;	setevent EVENT_BEAT_GLINT_GYM_TRAINER_1
;	setevent EVENT_BEAT_GLINT_GYM_TRAINER_2
	writetext SunbeamGymLeilaniTextAfterBattle
	buttonsound
	verbosegiveitem TM_FAKE_OUT
	iffalse .NoRoomForTM
	setevent EVENT_GOT_TM_FROM_LEILANI
	writetext SunbeamGymLeilaniTextTMSpeech
	waitbutton
	closetext
	end

.GotTMFromLeilani:
	writetext SunbeamGymLeilaniTextLoop
	waitbutton
.NoRoomForTM:
	closetext
	end

SunbeamGymLeilaniTextBeforeBattle1:
	text "TEXT 1"
	done
	
SunbeamGymLeilaniTextBeforeBattle2:
	text "TEXT 2"
	done
	
SunbeamGymLeilaniTextWinLoss:
	text "WIN/LOSS"
	done
	
SunbeamGymLeilaniTextAfterBattle:
	text "TEXT 3"
	done
	
SunbeamGymLeilaniTextTMSpeech:
	text "TM TEXT"
	done
	
SunbeamGymLeilaniTextLoop:
	text "LOOP"
	done
	
Text_ReceivedThirdBadge:
	text "GOT 3RD BADGE"
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