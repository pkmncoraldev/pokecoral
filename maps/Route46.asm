const_value set 2

Route46_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


Route46_MapEventHeader:: db 0, 0

.Warps: db 7
	warp_def 15, 17, 4, ROUTE_20
	warp_def 19, 31, 4, ROUTE_46
	warp_def 3, 3, 5, ROUTE_46
	warp_def 37, 29, 2, ROUTE_46
	warp_def 37, 5, 3, ROUTE_46
	warp_def 35, 29, 1, ROUTE_44
	warp_def 35, 5, 2, ROUTE_44

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 8
	person_event SPRITE_POKE_BALL, 4, 2, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_ITEMBALL, 0, LavaCaveBF1PokeBall1, EVENT_LAVA_CAVE_BF1_POKE_BALL1
	person_event SPRITE_POKE_BALL, 7, 32, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, LavaCaveBF1PokeBall2, EVENT_LAVA_CAVE_BF1_POKE_BALL2
	person_event SPRITE_POKE_BALL, 18, 10, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, LavaCaveBF1PokeBall3, EVENT_LAVA_CAVE_BF1_POKE_BALL3
	person_event SPRITE_FISHER, 26, 17, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 2, LavaCaveBF1Trainer1, -1
	person_event SPRITE_FISHER, 23, 4, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 1, LavaCaveBF1Trainer2, -1
	person_event SPRITE_FISHER, 23, 29, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 1, LavaCaveBF1Trainer3, -1
	person_event SPRITE_ROCKER, 6, 20, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, LavaCaveBF1NPC1, -1
	person_event SPRITE_ROCKER, 21, 19, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, LavaCaveBF1NPC2, -1

LavaCaveBF1PokeBall1:
	itemball TM_FIRE_PUNCH
	
LavaCaveBF1PokeBall2:
	itemball RARE_CANDY
	
LavaCaveBF1PokeBall3:
	itemball BURN_HEAL
	
LavaCaveBF1Trainer1:
	trainer EVENT_BEAT_LAVA_CAVE_BF1_TRAINER_1, FIREBREATHER, 1, LavaCaveBF1Trainer1SeenText, LavaCaveBF1Trainer1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext LavaCaveBF1Trainer1NormalText
	waitbutton
	closetext
	end
	
LavaCaveBF1Trainer2:
	trainer EVENT_BEAT_LAVA_CAVE_BF1_TRAINER_2, FIREBREATHER, 2, LavaCaveBF1Trainer2SeenText, LavaCaveBF1Trainer2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext LavaCaveBF1Trainer2NormalText
	waitbutton
	closetext
	end
	
LavaCaveBF1Trainer3:
	trainer EVENT_BEAT_LAVA_CAVE_BF1_TRAINER_3, FIREBREATHER, 3, LavaCaveBF1Trainer3SeenText, LavaCaveBF1Trainer3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext LavaCaveBF1Trainer3NormalText
	waitbutton
	closetext
	end
	
LavaCaveBF1NPC1:
	faceplayer 
	opentext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .girl
	writetext LavaCaveBF1NPC1Text_boy
	jump .cont
.girl
	writetext LavaCaveBF1NPC1Text_girl
.cont
	waitbutton
	closetext
	end
	
LavaCaveBF1NPC2:
	faceplayer 
	opentext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .girl
	writetext LavaCaveBF1NPC2Text_boy
	jump .cont
.girl
	writetext LavaCaveBF1NPC2Text_girl
.cont
	waitbutton
	closetext
	end
	
LavaCaveBF1NPC1Text_boy:
	text "Yo, little bro!"
	
	para "Another lava"
	line "surfer!"
	
	para "You see my bro by"
	line "by the entrance?"
	
	para "I thought we were"
	line "the only two cool"
	
	para "enough to ride"
	line "these hot waves!"
	
	para "But you?"
	
	para "You're the real"
	line "deal!"
	
	para "Stay spicy, little"
	line "bro!"
	done
	
LavaCaveBF1NPC1Text_girl:
	text "Yo, little mama!"
	
	para "Another lava"
	line "surfer!"
	
	para "You see my bro by"
	line "by the entrance?"
	
	para "I thought we were"
	line "the only two cool"
	
	para "enough to ride"
	line "these hot waves!"
	
	para "But you?"
	
	para "You're the real"
	line "deal!"
	
	para "Stay spicy, little"
	line "mama!"
	done
	
LavaCaveBF1NPC2Text_boy:
	text "Hey, little bro."
	
	para "You have a FIRE"
	line "TYPE #MON?"
	
	para "Me and my bro surf"
	line "over the lava on"
	
	para "our FIRE #MON"
	line "all the time, bro."
	
	para "You should try it,"
	line "little dude."
	done
	
LavaCaveBF1NPC2Text_girl:
	text "Hey, little mama."
	
	para "You have a FIRE"
	line "TYPE #MON?"
	
	para "Me and my bro surf"
	line "over the lava on"
	
	para "our FIRE #MON"
	line "all the time."
	
	para "You should try it,"
	line "mama."
	done
	
LavaCaveBF1Trainer1SeenText:
	text "You can't beat me"
	line "in this heat."
	
	para "I'm in my element!"
	done
	
LavaCaveBF1Trainer1BeatenText:
	text "Maybe fire isn't"
	line "my element after"
	cont "all…"
	done
	
LavaCaveBF1Trainer1NormalText:
	text "Maybe I should"
	line "catch a WATER-type"
	cont "#MON."
	done
	
LavaCaveBF1Trainer2SeenText:
	text "What's wrong, kid?"
	
	para "Too hot for ya?"
	done
	
LavaCaveBF1Trainer2BeatenText:
	text "Wow!"
	
	para "What a red-hot"
	line "battle!"
	done
	
LavaCaveBF1Trainer2NormalText:
	text "If you can't take"
	line "the heat, stay"
	cont "outta the kitchen."
	done
	
LavaCaveBF1Trainer3SeenText:
	text "If you got here,"
	line "you must have a"
	cont "FIRE-type #MON."
	
	para "Why don't we"
	line "compare?"
	done
	
LavaCaveBF1Trainer3BeatenText:
	text "Huh."
	
	para "I see."
	done
	
LavaCaveBF1Trainer3NormalText:
	text "Looks like your"
	line "fire burns hotter"
	cont "than mine."
	done