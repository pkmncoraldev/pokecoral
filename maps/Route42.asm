const_value set 2


Route42_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0



Route42_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 51, 19, 1, ROUTE_43_MAHOGANY_GATE
	warp_def 51, 20, 2, ROUTE_43_MAHOGANY_GATE
	warp_def 27, 6, 1, ROUTE_40
	warp_def 26, 6, 2, ROUTE_40

.CoordEvents: db 0

.BGEvents: db 5
	signpost 4, 27, SIGNPOST_READ, Route5Sign
	signpost 49, 21, SIGNPOST_READ, Route5GateSign
	signpost 36, 6, SIGNPOST_READ, FruitTreeScript_Route5new1
	signpost 26, 26, SIGNPOST_READ, FruitTreeScript_Route5new2
	signpost 32, 8, SIGNPOST_ITEM, Route5HiddenRareCandy

.ObjectEvents: db 9
	person_event SPRITE_LASS, 9, 22, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerRoute5_1, -1
	person_event SPRITE_YOUNGSTER, 13, 18, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 1, TrainerRoute5_2, -1
	person_event SPRITE_BUG_CATCHER, 18, 14, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerRoute5_3, -1
	person_event SPRITE_LASS, 28, 18, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 3, TrainerRoute5_4, -1
	person_event SPRITE_POKEFAN_M, 41, 7, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 4, TrainerRoute5_5, -1
	person_event SPRITE_YOUNGSTER, 13, 26, SPRITEMOVEDATA_WANDER, 0, 1, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 1, Route5NPC6, -1
	person_event SPRITE_YOUNGSTER, 32, 32, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 1, Route5NPC7, -1
	person_event SPRITE_LASS, 47, 20, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 1, Route5NPC8, -1
	person_event SPRITE_POKE_BALL, 25, 31, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, Route9PokeBall, EVENT_ROUTE_9_POKE_BALL

Route5HiddenRareCandy:
	dwb EVENT_ROUTE_9_HIDDEN_RARE_CANDY, RARE_CANDY
	
Route9PokeBall:
	itemball GREAT_BALL

TrainerRoute5_1:
	trainer EVENT_BEAT_ROUTE5_TRAINER_1, PICNICKER, 4, TrainerRoute5_1SeenText, TrainerRoute5_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute5_1NormalText
	waitbutton
	closetext
	end
	
TrainerRoute5_2:
	trainer EVENT_BEAT_ROUTE5_TRAINER_2, CAMPER, 4, TrainerRoute5_2SeenText, TrainerRoute5_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute5_2NormalText
	waitbutton
	closetext
	end
	
TrainerRoute5_3:
	trainer EVENT_BEAT_ROUTE5_TRAINER_3, BUG_CATCHER, 2, TrainerRoute5_3SeenText, TrainerRoute5_3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute5_3NormalText
	waitbutton
	closetext
	end
	
TrainerRoute5_4:
	trainer EVENT_BEAT_ROUTE5_TRAINER_4, LASS, 5, TrainerRoute5_4SeenText, TrainerRoute5_4BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute5_4NormalText
	waitbutton
	closetext
	end
	
TrainerRoute5_5:
	trainer EVENT_BEAT_ROUTE5_TRAINER_5, HIKER, 6, TrainerRoute5_5SeenText, TrainerRoute5_5BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute5_5NormalText
	waitbutton
	closetext
	end
	
Route5NPC6:
	jumptextfaceplayer Route5NPC6Text
	
Route5NPC7:
	jumptextfaceplayer Route5NPC7Text
	
Route5NPC8:
	jumptextfaceplayer Route5NPC8Text
	
Route5Sign:
	jumptext Route5SignText
	
Route5GateSign:
	jumptext Route5GateSignText
	
FruitTreeScript_Route5new1:
	fruittree FRUITTREE_ROUTE_5_1
	
FruitTreeScript_Route5new2:
	fruittree FRUITTREE_ROUTE_5_2
	
Route5SignText:
	text "ROUTE 5"
	
	para "NORTH:"
	line "ROUTE 4"
	
	para "SOUTH:"
	line "ROUTE 6"
	done
	
Route5GateSignText:
	text "SUNBEAM ISLAND"
	line "AHEAD"
	done
	
TrainerRoute5_1SeenText:
	text "There's so many"
	line "great #MON"
	cont "around here!"
	
	para "I can't wait to"
	line "catch some!"
	done
	
TrainerRoute5_1BeatenText:
	text "This is why I need"
	line "to catch some new"
	cont "#MON…"
	done
	
TrainerRoute5_1NormalText:
	text "There are so many"
	line "different types of"
	
	para "#MON in these"
	line "woods."
	
	para "I just wanna catch"
	line "'em all!"
	done
	
TrainerRoute5_2SeenText:
	text "You're walking"
	line "awful close there."
	
	para "You must want a"
	line "battle!"
	done
	
TrainerRoute5_2BeatenText:
	text "Wow!"
	
	para "You're tough!"
	done
	
TrainerRoute5_2NormalText:
	text "No wonder you"
	line "wanted a battle!"
	done
	
TrainerRoute5_3SeenText:
	text "Nyehehe…"
	
	para "Do you like bugs?"
	done
	
TrainerRoute5_3BeatenText:
	text "Nyehehe…"
	
	para "I guess not…"
	done
	
TrainerRoute5_3NormalText:
	text "Nyehehe…"
	
	para "No on understands"
	line "me or my bugs…"
	done
	
TrainerRoute5_4SeenText:
	text "The grass on this"
	line "ROUTE is so tall!"
	
	para "I'm too scared to"
	line "walk through it!"
	done
	
TrainerRoute5_4BeatenText:
	text "AIIIIEEEE!"
	done
	
TrainerRoute5_4NormalText:
	text "There could be"
	line "anything hiding in"
	cont "this tall grass…"
	
	para "Come on!"
	
	para "I can do this!"
	done
	
TrainerRoute5_5SeenText:
	text "Ahaha!"
	
	para "This weather is"
	line "perfect for a hike"
	cont "though the woods!"
	
	para "It's also perfect"
	line "for a #MON"
	cont "battle!"
	done
	
TrainerRoute5_5BeatenText:
	text "Not even a loss"
	line "can get me down!"
	done
	
TrainerRoute5_5NormalText:
	text "This weather is"
	line "too perfect to get"
	cont "upset over a loss."
	done
	
Route5NPC6Text:
	text "#MON appear"
	line "much more often in"
	cont "the taller grass."
	
	para "That's good for"
	line "me, because I'm"
	
	para "looking for a new"
	line "team member."
	
	para "You might want to"
	line "avoid it, though."
	done
	
Route5NPC7Text:
	text "My friend said he"
	line "caught his SCYTHER"
	cont "in these woods."
	
	para "I want one so bad!"
	
	para "I'm not heading"
	line "back home until I"
	cont "find one!"
	done
	
Route5NPC8Text:
	text "I've heard there is"
	line "a place deep in"
	
	para "these woods where"
	line "you can catch a"
	
	para "rare #MON that"
	line "can evolve into"
	
	para "several different"
	line "#MON!"
	
	para "Pretty cool, huh?"
	done