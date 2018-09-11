const_value set 2
	const LAKEBOATMANOUTSIDER
	const LAKEBOATMANOUTSIDEL
	const LAKEBOAT1L
	const LAKEBOAT1R
	const LAKEBOAT2L
	const LAKEBOAT2R
	const LAKENPC1
	const LAKENPC2
	const LAKENPC3
	const LAKENPC4
	const LAKESNARE
	const LAKEPOKEBALL
	
Route30_MapScriptHeader:
.MapTriggers:
	db 4
	
	maptrigger .Trigger0
	maptrigger .Trigger1
	maptrigger .Trigger2
	maptrigger .Trigger3

.MapCallbacks:
	db 0
	
.Trigger0:
	end
	
.Trigger1:
	priorityjump JustRodeBoatR
	end

.Trigger2:
	priorityjump JustRodeBoatL
	end
	
.Trigger3:
	end
	
JustRodeBoatR:
	applymovement PLAYER, Movement_PlayerStepOffBoat
	opentext
	writetext JustRodeBoatText
	waitbutton
	closetext
	spriteface PLAYER, RIGHT
	applymovement LAKEBOATMANOUTSIDER, Movement_JustRodeBoatR
	playsound SFX_EXIT_BUILDING
	disappear LAKEBOATMANOUTSIDER
	disappear LAKEBOATMANOUTSIDEL
	waitsfx
	setevent EVENT_BOAT_BOYS_BEGONE
	checkevent EVENT_ISLAND_GREEM_MAN
	iffalse .JustRodeBoatR2
	dotrigger $0
	end
.JustRodeBoatR2:
	dotrigger $3
	end
	
JustRodeBoatL:
	applymovement PLAYER, Movement_PlayerStepOffBoat
	opentext
	writetext JustRodeBoatText
	waitbutton
	closetext
	spriteface PLAYER, LEFT
	applymovement LAKEBOATMANOUTSIDEL, Movement_JustRodeBoatL
	playsound SFX_EXIT_BUILDING
	disappear LAKEBOATMANOUTSIDER
	disappear LAKEBOATMANOUTSIDEL
	waitsfx
	setevent EVENT_BOAT_BOYS_BEGONE
	checkevent EVENT_ISLAND_GREEM_MAN
	iffalse .JustRodeBoatL2
	dotrigger $0
	end
.JustRodeBoatL2:
	dotrigger $3
	end
	
Route30_MapEventHeader:: db 0, 0

.Warps: db 6
	warp_def 29, 43, 1, ROUTE_35_GOLDENROD_GATE
	warp_def 23, 19, 1, ROUTE_36_RUINS_OF_ALPH_GATE
	warp_def 5, 37, 1, ROUTE_19___FUCHSIA_GATE
	warp_def 22, 5, 1, ROUTE_35_NATIONAL_PARK_GATE
	warp_def 16, 11, 1, ROUTE_36_NATIONAL_PARK_GATE
	warp_def 17, 17, 1, CINNABAR_POKECENTER_2F_BETA

.CoordEvents: db 4
	xy_trigger 3, 24, 54, 0, LakeSnareWalk, 0, 0
	xy_trigger 3, 25, 54, 0, LakeSnareWalk, 0, 0
	xy_trigger 3, 26, 54, 0, LakeSnareWalk, 0, 0
	xy_trigger 3, 27, 54, 0, LakeSnareWalk, 0, 0

.BGEvents: db 6
	signpost 25, 57, SIGNPOST_READ, LakeSign
	signpost 29, 46, SIGNPOST_READ, LakeBoatHouseSignR
	signpost 23, 17, SIGNPOST_READ, LakeBoatHouseSignL
	signpost 23, 6, SIGNPOST_READ, LakeNameRaterSign
	signpost 17, 18, SIGNPOST_READ, LakeCenterSign
	signpost 8, 30, SIGNPOST_READ, MtOnwaSign

.ObjectEvents: db 13
	person_event SPRITE_FISHER, 30, 39, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoatManDummy, EVENT_BOAT_BOYS_BEGONE
	person_event SPRITE_FISHER, 24, 24, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoatManDummy, EVENT_BOAT_BOYS_BEGONE
	person_event SPRITE_BOAT_L, 32, 38, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoat, -1
	person_event SPRITE_BOAT_R, 32, 39, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoat, -1
	person_event SPRITE_BOAT_L, 26, 24, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoat, -1
	person_event SPRITE_BOAT_R, 26, 25, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoat, -1
	person_event SPRITE_YOUNGSTER, 32, 46, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, LakeNpc1, -1
	person_event SPRITE_FISHER, 27, 10, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, LakeNpc2, -1
	person_event SPRITE_LASS, 12, 24, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, LakeNpc3, -1
	person_event SPRITE_GRANNY, 20, 8, SPRITEMOVEDATA_WANDER, 0, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, LakeNpc4, -1
	person_event SPRITE_LEILANI_PSYDUCK, 27, 56, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, LakeBoatManDummy, EVENT_ISLAND_GREEM_MAN
	person_event SPRITE_POKE_BALL, -6, -6, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, LakePokeBall, EVENT_LAKE_ONWA_POKE_BALL
	person_event SPRITE_POKE_BALL, 6, 26, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_ITEMBALL, 0, LakePokeBall2, EVENT_LAKE_ONWA_POKE_BALL2

MtOnwaSign:
	jumptext MtOnwaSignText
	
LakeSnareWalk:
	callasm .StopRunning
	opentext
	writetext LakeSnareWalkText
	waitbutton
	closetext
	applymovement LAKESNARE, Movement_LakeSnareWalk
	disappear LAKESNARE
	setevent EVENT_ISLAND_GREEM_MAN
	variablesprite SPRITE_LEILANI_PSYDUCK, SPRITE_PSYDUCK
	special MapCallbackSprites_LoadUsedSpritesGFX
	dotrigger $0
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
LakeNpc1:
	jumptextfaceplayer LakeNpc1Text
	
LakeNpc2:
	jumptextfaceplayer LakeNpc2Text
	
LakeNpc3:
	jumptextfaceplayer LakeNpc3Text
	
LakeNpc4:
	faceplayer
	opentext
	checkevent EVENT_GOT_MIRACLE_SEED
	iftrue .alreadyhaveseed
	writetext LakeNpc4Text1
	buttonsound
	verbosegiveitem MIRACLE_SEED
	iffalse .NoRoom
	setevent EVENT_GOT_MIRACLE_SEED
.alreadyhaveseed:
	writetext LakeNpc4Text2
	waitbutton
	closetext
	end
.NoRoom:
	writetext LakeNpc4Text3
	waitbutton
	closetext
	end
	
LakePokeBall:
	end
	
LakePokeBall2:
	itemball TM_ICE_PUNCH
	end
	
LakeSign:
	jumptext LakeSignText
	
LakeBoatHouseSignR:
	jumptext LakeBoatHouseSignRText
	
LakeBoatHouseSignL:
	jumptext LakeBoatHouseSignLText
	
LakeNameRaterSign:
	jumptext LakeNameRaterSignText
	
LakeCenterSign:
	jumpstd pokecentersign
	
LakeBoat:
	jumptext LakeBoatText
	
LakeBoatManDummy:
	end

MtOnwaSignText:
	text "MT. ONWA ahead."
	done
	
LakeSnareWalkText:
	text "Roger."
	
	para "Heading to the"
	line "island now."
	done
	
LakeSignText:
	text "LAKE ONWA"
	
	para "WEST:"
	line "MT. ONWA"
	
	para "EAST:"
	line "ROUTE 7"
	done
	
LakeBoatHouseSignRText:
	text "LAKE ONWA BOAT"
	line "HOUSE 1."
	
	para "Inquire inside"
	line "for a ride across"
	cont "the lake."
	done
	
LakeBoatHouseSignLText:
	text "LAKE ONWA BOAT"
	line "HOUSE 2."
	
	para "Inquire inside"
	line "for a ride across"
	cont "the lake."
	done

LakeNameRaterSignText:
	text "NAME RATER"

	para "Get your #MON"
	line "nicknames rated."
	done
	
LakeBoatText:
	text "It's a rowboat."
	
	para "It's seen some use,"
	line "but it's still in"
	cont "good shape."
	done
	
JustRodeBoatText:
	text "Thanks for riding."
	
	para "Come again."
	done
	
LakeNpc1Text:
	text "Unless you have a"
	line "#MON that can"
	
	para "travel across"
	line "water, you'll have"
	cont "to take a boat."
	
	para "It's not even free!"
	
	para "What a rip off…"
	done
	
LakeNpc2Text:
	text "I love this quiet"
	line "little town."
	
	para "Can it even be"
	line "considered a town?"
	
	para "We don't even have"
	line "a GYM or #MART."
	done
	
LakeNpc3Text:
	text "Alright."
	
	para "I've heard this"
	line "mountain is pretty"
	cont "dangerous."
	
	para "I've got my POTIONS"
	line "and #BALLS."
	
	para "I think I'm good"
	line "to go."
	done
	
LakeNpc4Text1:
	text "Aren't these"
	line "flowers just"
	cont "beautiful?"
	
	para "I take care of"
	line "them every day."
	
	para "It's hard work"
	line "for someone as old"
	cont "as I am,"
	
	para "but it's worth"
	line "every minute."
	
	para "Here."
	
	para "Why don't you take"
	line "this?"
	done
	
LakeNpc4Text2:
	text "If you give that"
	line "seed to a #MON,"
	
	para "the power of it's"
	line "GRASS-type moves"
	
	para "will grow as beau-"
	line "tifully as my"
	cont "flowers."
	done
	
LakeNpc4Text3:
	text "You don't seem to"
	line "have enough space"
	cont "to carry this."
	
	para "Come back after"
	line "you've made some"
	cont "room."
	done
	
Movement_LakeSnareWalk:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
Movement_PlayerStepOffBoat:
	step UP
	step_end
	
Movement_JustRodeBoatR:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end
	
Movement_JustRodeBoatL:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step_end