const_value set 2

Route20_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

Route20_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 13, 31, 2, DANCE_THEATRE
	warp_def 1, 9, 1, ROUTE_19
	warp_def 25, 19, 3, ROUTE_19___FUCHSIA_GATE
	warp_def 23, 19, 1, ROUTE_46

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_SUPER_NERD, 13, 25, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerMtOnwa2_1, -1
	person_event SPRITE_FISHER, 11, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 2, TrainerMtOnwa2_2, -1

TrainerMtOnwa2_1:
	trainer EVENT_BEAT_MT_ONWA2_TRAINER_1, JUGGLER, 3, TrainerMtOnwa2_1SeenText, TrainerMtOnwa2_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerMtOnwa2_1NormalText
	waitbutton
	closetext
	end

TrainerMtOnwa2_2:
	trainer EVENT_BEAT_MT_ONWA2_TRAINER_2, HIKER, 11, TrainerMtOnwa2_2SeenText, TrainerMtOnwa2_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerMtOnwa2_2NormalText
	waitbutton
	closetext
	end
	
TrainerMtOnwa2_1SeenText:
	text "It's really hard"
	line "juggling work,"
	
	para "responsibilities,"
	line "and #MON train-"
	cont "ing."
	
	para "It gets exhausting"
	line "pretty quickly."
	done
	
TrainerMtOnwa2_1BeatenText:
	text "I dropped the"
	line "ball…"
	done
	
TrainerMtOnwa2_1NormalText:
	text "We're all jugglers"
	line "in the circus of"
	cont "life."
	done
	
TrainerMtOnwa2_2SeenText:
	text "My POKEMON is"
	line "always hungry."
	
	para "Like TRAINER, like"
	line "#MON."
	done
	
TrainerMtOnwa2_2BeatenText:
	text "Ooooh…"
	
	para "I'm so hungry…"
	done
	
TrainerMtOnwa2_2NormalText:
	text "My LARVITAR can"
	line "eat rocks, so it"
	cont "never runs out of"
	cont "of food."
	
	para "Me, on the other"
	line "hand…"
	done