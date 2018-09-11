const_value set 2

Route41_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


Route41_MapEventHeader:: db 0, 0

.Warps: db 0

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_POKE_BALL, 26, 15, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, Route7Dummy, EVENT_ROUTE_6_POKE_BALL_THUNDERPUNCH
	person_event SPRITE_FISHER, 11, 16, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 3, TrainerRoute7_1, -1

Route7Dummy:
	end
	
TrainerRoute7_1:
	trainer EVENT_BEAT_ROUTE7_TRAINER_1, HIKER, 7, TrainerRoute7_1SeenText, TrainerRoute7_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute7_1NormalText
	waitbutton
	closetext
	end
	
TrainerRoute7_1SeenText:
	text "A fresh, young"
	line "TRAINER!"
	
	para "How about a"
	line "battle?"
	done
	
TrainerRoute7_1BeatenText:
	text "Amazing!"
	done
	
TrainerRoute7_1NormalText:
	text "So young, but so"
	line "strong!"
	
	para "Keep that spirit!"
	done