const_value set 2
	const SUNSET_CAPTAIN

SunsetCaptainsHouse_MapScriptHeader:

.MapTriggers:
	db 2

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1
	
.MapCallbacks:
	db 0
	
.Trigger0:
	priorityjump .CaptainEvent
	end

.Trigger1:
	end
	
.CaptainEvent:
	callasm .StopRunning
	playsound SFX_PAY_DAY
	spriteface SUNSET_CAPTAIN, DOWN
	showemote EMOTE_SHOCK, SUNSET_CAPTAIN, 15
	pause 7
	applymovement SUNSET_CAPTAIN, SunsetCaptainMovement
	spriteface SUNSET_CAPTAIN, DOWN
	opentext
	checkmorn
	iftrue .morn
	checkday
	iftrue .day
	writetext SunsetCaptainText1_Night
.cont:
	buttonsound
	applymovement SUNSET_CAPTAIN, SunsetCaptainMovementReturn
	spriteface SUNSET_CAPTAIN, LEFT
	closetext
	dotrigger $1
	domaptrigger SUNSET_BAY, $1
	setevent EVENT_TALKED_TO_MAN_IN_SHACK
	end
	
.morn:
	writetext SunsetCaptainText1_Morn
	jump .cont
	
.day:
	writetext SunsetCaptainText1_Day
	jump .cont
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
SunsetCaptain:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue SunsetCaptain2
	faceplayer
	opentext
	writetext SunsetCaptainText2
	waitbutton
	closetext
	end
	
SunsetCaptain2:
	faceplayer
	opentext
	writetext SunsetCaptainText3
	waitbutton
	closetext
	end
	
SunsetCaptainMovement:
	step DOWN
	step DOWN
	step LEFT
	step_end
	
SunsetCaptainMovementReturn:
	step RIGHT
	step UP
	step UP
	step_end

CaptainsHouseRadio:
	jumpstd radio2

	
SunsetCaptainText1_Morn:
	text "CAP'N STRAND: Oh!"
	
	para "You're late!"
	
	para "My brother ABNER"
	line "took the #MON"
	cont "to the lighthouse."
	
	para "We weren't going"
	line "to stand outside"
	
	para "on the pier and"
	line "waste the whole"
	cont "morning."
	
	para "He needed to get"
	line "back to tending"
	cont "the lighthouse."
	
	para "To get there just"
	line "leave town and"
	cont "head south."
	done
	
SunsetCaptainText1_Day:
	text "CAP'N STRAND: Oh!"
	
	para "You're late!"
	
	para "My brother ABNER"
	line "took the #MON"
	cont "to the lighthouse."
	
	para "We weren't going"
	line "to stand outside"
	
	para "on the pier all"
	line "day and get"
	cont "sunburned."
	
	para "He needed to get"
	line "back to tending"
	cont "the lighthouse."
	
	para "To get there just"
	line "leave town and"
	cont "head south."
	done
	
SunsetCaptainText1_Night:
	text "CAP'N STRAND: Oh!"
	
	para "You're late!"
	
	para "My brother ABNER"
	line "took the #MON"
	cont "to the lighthouse."
	
	para "We weren't going"
	line "to stand outside"
	
	para "on the pier all"
	line "night and freeze."
	
	para "He needed to get"
	line "back to tending"
	cont "the lighthouse."
	
	para "To get there just"
	line "leave town and"
	cont "head south."
	done
	
SunsetCaptainText2:
	text "What are you"
	line "doing?"
	
	para "The lighthouse"
	line "is east of town"
	
	para "Go get your"
	line "#MON!"
	done 
	
SunsetCaptainText3:
	text "My brother and"
	line "I used to be"
	cont "ship captains."
	
	para "Nowadays, he runs"
	line "the lighthouse."
	
	para "It's an important"
	line "job for sure."
	
	para "Me?"
	
	para "I'd rather waste my"
	line "days away in this"
	cont "little cabin."
	
	para "Hehe…"
	done
	
SunsetCaptainsHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 4, 4, SUNSET_BAY
	warp_def 7, 3, 4, SUNSET_BAY

.CoordEvents: db 0

.BGEvents: db 1
	signpost 1, 0, SIGNPOST_READ, CaptainsHouseRadio

.ObjectEvents: db 1
	person_event SPRITE_ELDER, 4, 5, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SunsetCaptain, -1

