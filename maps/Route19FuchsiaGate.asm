const_value set 2

Route19FuchsiaGate_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

Route19FuchsiaGate_MapEventHeader:: db 0, 0

.Warps: db 3
	warp_def 23, 19, 3, ROUTE_30
	warp_def 1, 9, 1, DANCE_THEATRE
	warp_def 11, 5, 3, ROUTE_20

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 4
	person_event SPRITE_SUPER_NERD, 16, 13, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 1, TrainerMtOnwa_1, -1
	person_event SPRITE_FISHER, 8, 20, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 1, TrainerMtOnwa_2, -1
	person_event SPRITE_FISHER, 9, 13, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 2, TrainerMtOnwa_3, -1
	person_event SPRITE_SUPER_NERD, 3, 8, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerMtOnwa_4, -1

TrainerMtOnwa_1:
	trainer EVENT_BEAT_MT_ONWA_TRAINER_1, JUGGLER, 1, TrainerMtOnwa_1SeenText, TrainerMtOnwa_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerMtOnwa_1NormalText
	waitbutton
	closetext
	end

TrainerMtOnwa_2:
	trainer EVENT_BEAT_MT_ONWA_TRAINER_2, HIKER, 8, TrainerMtOnwa_2SeenText, TrainerMtOnwa_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerMtOnwa_2NormalText
	waitbutton
	closetext
	end
	
TrainerMtOnwa_3:
	trainer EVENT_BEAT_MT_ONWA_TRAINER_3, HIKER, 9, TrainerMtOnwa_3SeenText, TrainerMtOnwa_3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerMtOnwa_3NormalText
	waitbutton
	closetext
	end
	
TrainerMtOnwa_4:
	trainer EVENT_BEAT_MT_ONWA_TRAINER_4, JUGGLER, 2, TrainerMtOnwa_4SeenText, TrainerMtOnwa_4BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerMtOnwa_4NormalText
	waitbutton
	closetext
	end
	
TrainerMtOnwa_1SeenText:
	text "Wanna see a cool"
	line "trick?"
	
	para "Check this out!"
	done
	
TrainerMtOnwa_1BeatenText:
	text "What?"
	
	para "You aren't"
	line "impressed?"
	done
	
TrainerMtOnwa_1NormalText:
	text "Seems like my"
	line "battling could use"
	
	para "just as much work"
	line "as my act!"
	done
	
TrainerMtOnwa_2SeenText:
	text "Hi!"
	
	para "I like vests!"
	
	para "They're comfy and"
	line "easy to wear!"
	done
	
TrainerMtOnwa_2BeatenText:
	text "I don't believe"
	line "it!"
	done
	
TrainerMtOnwa_2NormalText:
	text "I always wear"
	line "vests, even in"
	cont "summer!"
	done
	
TrainerMtOnwa_3SeenText:
	text "This part of the"
	line "cave seems hotter"
	cont "than over there."
	done
	
TrainerMtOnwa_3BeatenText:
	text "YEOWCH!"
	done
	
TrainerMtOnwa_3NormalText:
	text "I'm getting all"
	line "sweaty standing"
	cont "around here."
	done
	
TrainerMtOnwa_4SeenText:
	text "Hey!"
	
	para "Why not stop for"
	line "a while and have"
	cont "a battle?"
	done
	
TrainerMtOnwa_4BeatenText:
	text "I lost?"
	done
	
TrainerMtOnwa_4NormalText:
	text "Aren't you even a"
	line "little bit tired?"
	done