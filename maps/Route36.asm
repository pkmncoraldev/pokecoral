const_value set 2
	const ROUTE2_NEW_NPC1
	const ROUTE2_NEW_NPC2
	const ROUTE2_NEW_NPC3
	const ROUTE2_NEW_NPC4
	const ROUTE2_NEW_BALL1
	const ROUTE2_NEW_BALL2
	const ROUTE2_NEW_BALL3

Route36_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	dw .Trigger0, 0
	dw .Trigger1, 0

.MapCallbacks:
	db 0

	; callbacks


.Trigger0:
	end

.Trigger1:
	end


TrainerRoute2_1:
	trainer EVENT_BEAT_ROUTE_2_TRAINER_1, YOUNGSTER, 1, TrainerRoute2_1SeenText, TrainerRoute2_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute2_1NormalText
	waitbutton
	closetext
	end

TrainerRoute2_2:
	trainer EVENT_BEAT_ROUTE_2_TRAINER_2, LASS, 1, TrainerRoute2_2SeenText, TrainerRoute2_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute2_2NormalText
	waitbutton
	closetext
	end
		
TrainerRoute2_3:
	trainer EVENT_BEAT_ROUTE_2_TRAINER_3, YOUNGSTER, 2, TrainerRoute2_3SeenText, TrainerRoute2_3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute2_3NormalText
	waitbutton
	closetext
	end
	
Route2NPC1:
	jumptextfaceplayer	Route2NPC1Text
	
Route2newPokeBall:
	itemball POTION
	
Route2newPokeBall2:
	disappear ROUTE2_NEW_BALL2
	opentext
	verbosegiveitem HM_FLY
	closetext
	setevent EVENT_ROUTE_2NEW_POKE_BALL2
	setflag ENGINE_GOT_FLY
	end
	
FruitTreeScript_Route2new:
	fruittree FRUITTREE_ROUTE_2
	
Route2newSign:
	jumptext Route2newSignText
	
Route2PokeballDummy:
	end
	
WateredWeirdTreeScript::
	end
	
Route2NPC1Text:
	text "I've heard that"
	line "there is a cave"
	
	para "around here where"
	line "you can see some"
	cont "rare #MON!"
	
	para "I can't find it,"
	line "though."
	done
	
TrainerRoute2_1SeenText:
	text "We locked eyes!"
	
	para "That means we have"
	line "to battle!"
	done
	
TrainerRoute2_1BeatenText:
	text "I should have"
	line "looked away."
	done
	
TrainerRoute2_1NormalText:
	text "If you want to"
	line "avoid battle,"
	
	para "you should stay"
	line "out of other"
	cont "TRAINER'S view."
	done	
	
TrainerRoute2_2SeenText:
	text "You look easy."
	
	para "I'll take you"
	line "down with my"
	cont "precious #MON!"
	done
	
TrainerRoute2_2BeatenText:
	text "How could my"
	line "#MON lose?"
	done
	
TrainerRoute2_2NormalText:
	text "I guess I need to"
	line "train my little"
	cont "#MON some more."
	done
	
	
TrainerRoute2_3SeenText:
	text "I just got my"
	line "#MON!"
	
	para "I wanna try it"
	line "in battle!"
	done
	
TrainerRoute2_3BeatenText:
	text "Woo!"
	
	para "That was awesome!"
	done
	
TrainerRoute2_3NormalText:
	text "We're going to"
	line "battle non-stop."
	
	para "Someday we'll be"
	line "the strongest"
	cont "team around!"
	done
	
Route2newSignText:
	text "ROUTE 2"
	
	para "NORTH:"
	line "GLINT CITY"
	
	para "SOUTH:"
	line "DAYBREAK VILLAGE"
	done
	
Route36_MapEventHeader:: db 0, 0

.Warps: db 1
	warp_def 33, 28, 1, VIOLET_MART

.CoordEvents: db 0

.BGEvents: db 2
	signpost 40, 20, SIGNPOST_READ, Route2newSign
	signpost 7, 4, SIGNPOST_READ, FruitTreeScript_Route2new

.ObjectEvents: db 7
	person_event SPRITE_YOUNGSTER, 23, 17, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerRoute2_1, -1
	person_event SPRITE_LASS, 18, 16, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 5, TrainerRoute2_2, -1
	person_event SPRITE_YOUNGSTER, 12, 11, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerRoute2_3, -1
	person_event SPRITE_FISHER, 28, 26, SPRITEMOVEDATA_WANDER, 2, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, Route2NPC1, -1
	person_event SPRITE_POKE_BALL, 36, 23, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, Route2newPokeBall, EVENT_ROUTE_2NEW_POKE_BALL
	person_event SPRITE_POKE_BALL, 31, -6, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, Route2newPokeBall2, EVENT_ROUTE_2NEW_POKE_BALL2
	person_event SPRITE_POKE_BALL, 52, 16, SPRITEMOVEDATA_ITEM_TREE, 2, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route2PokeballDummy, EVENT_DAYBREAK_RARE_CANDY

