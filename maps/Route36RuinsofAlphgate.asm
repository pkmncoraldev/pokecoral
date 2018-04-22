const_value set 2
	const LAKEBOATMAN2

Route36RuinsofAlphgate_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

Route36RuinsofAlphgate_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 5, 2, 2, ROUTE_30
	warp_def 5, 3, 2, ROUTE_30

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_FISHER, 1, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoatMan2, -1

LakeBoatMan2:
	opentext
	writetext LakeBoatManText1
	special PlaceMoneyTopRight
	yesorno
	iffalse .end
	checkmoney $0, 500
	if_equal $2, .nomoney
	playsound SFX_TRANSACTION
	takemoney $0, 500
	special PlaceMoneyTopRight
.doit
	checkevent EVENT_LAKE_BOAT_LEFT_GONE
	iffalse .boatishere
	writetext LakeBoatManText4
	waitbutton
	closetext
	applymovement LAKEBOATMAN2, Movement_LakeBoatManPhone1
	opentext
	writetext LakeBoatManText5
	waitbutton
	closetext
	applymovement LAKEBOATMAN2, Movement_LakeBoatManPhone2
	faceplayer
	opentext
.boatishere
	writetext LakeBoatManText3
	waitbutton
	closetext
	special FadeOutPalettes
	special Special_FadeOutMusic
	setevent EVENT_TAKEN_LAKE_BOAT_ONCE
	setevent EVENT_LAKE_BOAT_LEFT_GONE
	setevent EVENT_JUST_TOOK_BOAT
	clearevent EVENT_LAKE_BOAT_RIGHT_GONE
	clearevent EVENT_BOAT_BOYS_BEGONE
	domaptrigger ROUTE_30, $1
	warp ROUTE_30, $27, $20
	end
.nomoney
	checkevent EVENT_TAKEN_LAKE_BOAT_ONCE
	iftrue .noride
	writetext LakeBoatManText6
	waitbutton
	jump .doit
.noride
	writetext LakeBoatManText7
	waitbutton
.end
	writetext LakeBoatManText2
	waitbutton
	closetext
	end
	
LakeBoatManText1:
	text "Welcome to the"
	line "LAKE ONWA BOAT"
	cont "HOUSE."
	
	para "I can take you"
	line "across the lake"
	cont "for ¥500."
	
	para "Would you like a"
	line "ride?"
	done
	
LakeBoatManText2:
	text "Come again."
	done
	
LakeBoatManText3:
	text "Alright."
	
	para "We'll head out"
	line "soon."
	done
	
LakeBoatManText4:
	text "Let me just call"
	line "the boat from the"
	cont "other shore."
	done

LakeBoatManText5:
	text "We have a customer"
	line "over here."
	
	para "Bring the boat"
	line "over."
	done

LakeBoatManText6:
	text "You don't have"
	line "enough money?"
	
	para "Really?"
	
	para "Well…"
	
	para "I guess I can let"
	line "you ride for free"
	cont "this one time."
	done
	
LakeBoatManText7:
	text "I'm sorry, but I"
	line "can't give you a"
	cont "ride for free."
	done
	
Movement_LakeBoatManPhone1:
	step RIGHT
	step_end
	
Movement_LakeBoatManPhone2:
	step LEFT
	step_end