const_value set 2
	const ROUTE3_TRAINER1
	const ROUTE3_TRAINER2
	const ROUTE3_TRAINER3
	const ROUTE3_TRAINER4
	const ROUTE3_TRAINER5
	const ROUTE3_RODMAN
	const ROUTE3_OFFICER


Route43_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

	; callbacks

TrainerRoute3_1:
	trainer EVENT_BEAT_ROUTE_3_TRAINER_1, YOUNGSTER, 3, TrainerRoute3_1SeenText, TrainerRoute3_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute3_1NormalText
	waitbutton
	closetext
	end
	
TrainerRoute3_2:
	trainer EVENT_BEAT_ROUTE_3_TRAINER_2, FISHER, 1, TrainerRoute3_2SeenText, TrainerRoute3_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute3_2NormalText
	waitbutton
	spriteface ROUTE3_TRAINER2, RIGHT
	closetext
	end
	
TrainerRoute3_3:
	trainer EVENT_BEAT_ROUTE_3_TRAINER_3, CAMPER, 1, TrainerRoute3_3SeenText, TrainerRoute3_3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute3_3NormalText
	waitbutton
	closetext
	end

TrainerRoute3_4:
	trainer EVENT_BEAT_ROUTE_3_TRAINER_4, PICNICKER, 1, TrainerRoute3_4SeenText, TrainerRoute3_4BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute3_4NormalText
	waitbutton
	closetext
	end
	
TrainerRoute3_5:
	trainer EVENT_BEAT_ROUTE_3_TRAINER_5, LASS, 2, TrainerRoute3_5SeenText, TrainerRoute3_5BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerRoute3_5NormalText
	waitbutton
	closetext
	end
	
Route3Officer:
	checkevent EVENT_HAVE_SURF
	iftrue .havesurf
	faceplayer
	opentext
	writetext Route3OfficerText1
	buttonsound
	verbosegiveitem HM_SURF
	writetext Route3OfficerText2
	buttonsound
	writetext Route3OfficerText3
	waitbutton
	setevent EVENT_HAVE_SURF
	setflag ENGINE_GOT_SURF
	spriteface ROUTE3_OFFICER, DOWN
	closetext
	end
.havesurf
	checkevent EVENT_TRIO_BROS2
	iffalse .check2
	faceplayer
	opentext
	writetext Route3OfficerText3
	waitbutton
	spriteface ROUTE3_OFFICER, DOWN
	closetext
	end
.check2
	checkevent EVENT_WATERWAY_POKE_BALL
	iftrue .enddemo
	faceplayer
	opentext
	writetext Route3OfficerText3
	waitbutton
	spriteface ROUTE3_OFFICER, DOWN
	closetext
	end
	
.enddemo
	faceplayer
	opentext
	writetext Route3OfficerText4
	waitbutton
	credits
	
Route3Rodman:
	checkevent EVENT_GOT_OLD_ROD
	iffalse .donthaverod
	faceplayer
	opentext
	writetext Route3RodmanText3
	waitbutton
	spriteface ROUTE3_RODMAN, DOWN
	closetext
	end
.donthaverod
	faceplayer
	opentext
	writetext Route3RodmanText1
	yesorno
	iffalse .norod
	writetext Route3RodmanText5
	waitbutton
	verbosegiveitem OLD_ROD
	writetext Route3RodmanText2
	waitbutton
	spriteface ROUTE3_RODMAN, DOWN
	setevent EVENT_GOT_OLD_ROD
	closetext
	end
.norod
	writetext Route3RodmanText4
	waitbutton
	spriteface ROUTE3_RODMAN, DOWN
	closetext
	end
		
Route3new_sign:
	jumptext Route3new_signtext
	
Route3new_sign2:
	jumptext Route3new_sign2text
	
FruitTreeScript_Route3new:
	fruittree FRUITTREE_ROUTE_3

Route3newPokeBall:
	itemball GREAT_BALL
	
Route3newPokeBall2:
	itemball RARE_CANDY
	
TrainerRoute3_1SeenText:
	text "You beat STANLEY?"
	
	para "That's so cool!"
	
	para "Can I see your"
	line "badge?"	
	done
	
TrainerRoute3_1BeatenText:
	text "You really ARE"
	line "strong!"
	done
	
TrainerRoute3_1NormalText:
	text "Someday I'm gonna"
	line "beat STANLEY and"
	cont "get my own badge."
	done
	
TrainerRoute3_2SeenText:
	text "Freshwater or"
	line "saltwater fishing?"
	
	para "Which do you"
	line "prefer?"
	done
	
TrainerRoute3_2BeatenText:
	text "Personally, I pre-"
	line "fer freshwater."
	done
	
TrainerRoute3_2NormalText:
	text "I caught my WOOPER"
	line "right in this very"
	cont "river."
	done	
	
TrainerRoute3_3SeenText:
	text "I love this spot."

	para "I feel at one with"
	line "nature when I"
	
	para "stand among the"
	line "trees."
	done
	
TrainerRoute3_3BeatenText:
	text "You didn't have"
	line "to cut me down."
	done
	
TrainerRoute3_3NormalText:
	text "I don't have many"
	line "friends, so I hang"
	
	para "here, with the"
	line "trees."
	done	
	
TrainerRoute3_4SeenText:
	text "Do you want this"
	line "item?"
	
	para "You're gonna have"
	line "to battle me for"
	cont "it!"
	done
	
TrainerRoute3_4BeatenText:
	text "Fine."
	
	para "If you want it so"
	line "bad, you can have"
	cont "it."
	done
	
TrainerRoute3_4NormalText:
	text "I didn't want it"
	line "that much anyway…"
	done	
	
TrainerRoute3_5SeenText:
	text "I shouldn't have"
	line "worn a skirt out"
	cont "here in the grass."
	
	para "I keep getting bug"
	line "bites on my legs."
	done
	
TrainerRoute3_5BeatenText:
	text "Itchy…"
	done
	
TrainerRoute3_5NormalText:
	text "I gotta get home"
	line "and change."
	done	
	
Route3OfficerText1:
	text "I can't allow"
	line "you to go any"
	cont "further."
	
	para "This is as far"
	line "as you can go in"
	cont "this demo."
	
	para "I am, however,"
	line "allowed to give"
	cont "you this."
	done

Route3OfficerText2:
	text "That HM contains"
	line "the move SURF."
	
	para "Just having that"
	line "HM is enough for"
	
	para "any #MON that"
	line "can learn it to"
	
	para "use it in the"
	line "field."
	done
	
Route3OfficerText3:
	text "There's still"
	line "plenty to explore"
	
	para "in the ONWA"
	line "REGION!"
	
	para "Come back and talk"
	line "to me once you've"
	
	para "seen all there is"
	line "to see."
	done
	
Route3OfficerText4:
	text "Have you explored"
	line "a bit more?"
	
	para "Did you find some"
	line "cool stuff?"
	
	para "Well, it seems"
	line "like you've"
	
	para "experienced all"
	line "this demo has to"
	cont "offer."
	
	para "Keep an eye out"
	line "for the full re-"
	cont "lease."
	
	para "Thank you for"
	line "playing!"
	done
	
Route3RodmanText1:
	text "Hmm?"
	
	para "Could you please"
	line "keep moving?"
	
	para "Your footsteps are"
	line "scaring the WATER"
	cont "#MON away."
	
	para "..."
	
	para "Look."
	
	para "If I give you"
	line "something will you"
	cont "leave?"
	done
	
Route3RodmanText2:
	text "With that OLD ROD"
	line "you can fish up"
	cont "WATER #MON."
	
	para "You won't find"
	line "much with that"
	
	para "piece of junk,"
	line "though."
	done
	
Route3RodmanText3:
	text "I gave you my"
	line "OLD ROD, now will"
	
	para "you please leave"
	line "me alone?"
	
	para "Kids these days."
	done
	
Route3RodmanText4:
	text "Well then,"
	
	para "I guess we're at"
	line "an impasse."
	done

Route3RodmanText5:
	text "Fine. Here."
	done
	
Route3new_signtext:
	text "STARGLOW CAVERN"
	done
	
Route3new_sign2text:
	text "ROUTE 3"
	
	para "EAST:"
	line "STARGLOW CAVERN"
	
	para "WEST:"
	line "GLINT CITY"
	done
	
Route43_MapEventHeader:: db 0, 0

.Warps: db 1
	warp_def 9, 50, 1, UNION_CAVE_1F

.CoordEvents: db 0

.BGEvents: db 3
	signpost 10, 51, SIGNPOST_READ, Route3new_sign
	signpost 9, 0, SIGNPOST_READ, Route3new_sign2
	signpost 7, 40, SIGNPOST_READ, FruitTreeScript_Route3new

.ObjectEvents: db 9
	person_event SPRITE_YOUNGSTER, 8, 10, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 2, TrainerRoute3_1, -1
	person_event SPRITE_FISHER, 16, 19, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 0, TrainerRoute3_2, -1
	person_event SPRITE_YOUNGSTER, 15, 33, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerRoute3_3, -1
	person_event SPRITE_LASS, 6, 35, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 4, TrainerRoute3_4, -1
	person_event SPRITE_LASS, 16, 45, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 3, TrainerRoute3_5, -1
	person_event SPRITE_FISHER, 9, 20, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Route3Rodman, -1
	person_event SPRITE_OFFICER, 0, 0, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, Route3Officer, -1
	person_event SPRITE_POKE_BALL, 6, 34, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, Route3newPokeBall, EVENT_ROUTE_3NEW_POKE_BALL
	person_event SPRITE_POKE_BALL, 23, 43, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, Route3newPokeBall2, EVENT_ROUTE_3NEW_POKE_BALL_2

