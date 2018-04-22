const_value set 2
	const OCEAN1_TRAINER1
	const OCEAN1_TRAINER2
	const OCEAN1_TRAINER3
	const OCEAN1_TRAINER4

Ocean2_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerOcean1_1:
	trainer EVENT_BEAT_OCEAN1_TRAINER1, SWIMMERM, TERRY_SWIMMERM, TrainerOcean1_1SeenText, TrainerOcean1_1BeatenText, 0, .Script
	
.Script:
	end_if_just_battled
	opentext
	writetext TrainerOcean1_1NormalText
	waitbutton
	closetext
	end
	
TrainerOcean1_2:
	trainer EVENT_BEAT_OCEAN1_TRAINER2, SWIMMERF, JENNY_SWIMMERF, TrainerOcean1_2SeenText, TrainerOcean1_2BeatenText, 0, .Script
	
.Script:
	end_if_just_battled
	opentext
	writetext TrainerOcean1_2NormalText
	waitbutton
	closetext
	end
	
TrainerOcean1_3:
	trainer EVENT_BEAT_OCEAN1_TRAINER3, SWIMMERM, MIKE_SWIMMERM, TrainerOcean1_3SeenText, TrainerOcean1_3BeatenText, 0, .Script
	
.Script:
	end_if_just_battled
	opentext
	writetext TrainerOcean1_3NormalText
	waitbutton
	closetext
	end
	
TrainerOcean1_4:
	trainer EVENT_BEAT_OCEAN1_TRAINER4, SWIMMERF, SAM_SWIMMERF, TrainerOcean1_4SeenText, TrainerOcean1_4BeatenText, 0, .Script
	
.Script:
	end_if_just_battled
	opentext
	writetext TrainerOcean1_4NormalText
	waitbutton
	closetext
	end
	
TrainerOcean1_1SeenText:
	text "A swimmer has to"
	line "stay in good"
	cont "shape."
	
	para "Same goes for his"
	line "#MON."
	done
	
TrainerOcean1_1BeatenText:
	text "Your #MON are"
	line "in great shape!"
	done
	
TrainerOcean1_1NormalText:
	text "We've still got"
	line "some work to do."
	done
	
TrainerOcean1_2SeenText:
	text "My WATER #MON"
	line "are the best."
	
	para "I'll show you!"
	done
	
TrainerOcean1_2BeatenText:
	text "Maybe not…"
	done
	
TrainerOcean1_2NormalText:
	text "I guess my WATER"
	line "#MON aren't the"
	cont "best…"
	done
	
TrainerOcean1_3SeenText:
	text "Huff…"
	
	para "Huff…"
	
	para "I'm so tired of"
	line "swimming…"
	done
	
TrainerOcean1_3BeatenText:
	text "Huff…"
	
	para "Huff…"
	done
	
TrainerOcean1_3NormalText:
	text "Huff…"
	
	para "Huff…"
	
	para "I've just gotta"
	line "take a break…"
	done
	
TrainerOcean1_4SeenText:
	text "Are you riding on"
	line "your #MON"
	
	para "instead of swim-"
	line "ming?"
	
	para "That's so cute!"
	done
	
TrainerOcean1_4BeatenText:
	text "It's hard to battle"
	line "without standing"
	cont "on solid ground."
	done
	
TrainerOcean1_4NormalText:
	text "I should try rid-"
	line "ing on my #MON"
	cont "sometime."
	done
	
Ocean2_MapEventHeader:: db 0, 0

.Warps: db 0

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 4
	person_event SPRITE_SWIMMER_GUY, 5, 14, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 4, TrainerOcean1_1, -1
	person_event SPRITE_SWIMMER_GIRL, 13, 9, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerOcean1_2, -1
	person_event SPRITE_SWIMMER_GUY, 18, 18, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerOcean1_3, -1
	person_event SPRITE_SWIMMER_GIRL, 11, 20, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerOcean1_4, -1

