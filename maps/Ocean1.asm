const_value set 2
	const OCEAN2_TRAINER1
	const OCEAN2_TRAINER2

Ocean1_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerOcean2_1:
	trainer EVENT_BEAT_OCEAN2_TRAINER1, SWIMMERF, JESS_SWIMMERF, TrainerOcean2_1SeenText, TrainerOcean2_1BeatenText, 0, .Script
	
.Script:
	end_if_just_battled
	opentext
	writetext TrainerOcean2_1NormalText
	waitbutton
	closetext
	end
	
TrainerOcean2_2:
	trainer EVENT_BEAT_OCEAN2_TRAINER2, FISHER, HAROLD_FISHER, TrainerOcean2_2SeenText, TrainerOcean2_2BeatenText, 0, .Script
	
.Script:
	end_if_just_battled
	opentext
	writetext TrainerOcean2_2NormalText
	waitbutton
	closetext
	end
	
TrainerOcean2_1SeenText:
	text "I just got a new"
	line "swimsuit!"
	
	para "Do you like it?"
	done
	
TrainerOcean2_1BeatenText:
	text "Ahhh!"
	done
	
TrainerOcean2_1NormalText:
	text "I think my swim-"
	line "suit might be a"
	cont "bit too small…"
	done
	
TrainerOcean2_2SeenText:
	text "I love fishing in"
	line "the ocean."
	
	para "The salty air"
	line "makes me feel"
	cont "alive!"
	done
	
TrainerOcean2_2BeatenText:
	text "Ahaha!"
	done
	
TrainerOcean2_2NormalText:
	text "Great battle!"
	
	para "Now, back to"
	line "fishing."
	done
	
Ocean1_MapEventHeader:: db 0, 0

.Warps: db 0

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_SWIMMER_GIRL, 9, 7, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerOcean2_1, -1
	person_event SPRITE_FISHER, 5, 14, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 0, TrainerOcean2_2, -1

