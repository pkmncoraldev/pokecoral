const_value set 2
	const LAKEBOATMANOUTSIDER
	const LAKEBOATMANOUTSIDEL
	const LAKEBOAT1L
	const LAKEBOAT1R
	const LAKEBOAT2L
	const LAKEBOAT2R
Route30_MapScriptHeader:
.MapTriggers:
	db 3
	
	maptrigger .Trigger0
	maptrigger .Trigger1
	maptrigger .Trigger2

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
	dotrigger $0
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
	dotrigger $0
	end
	
Route30_MapEventHeader:: db 0, 0

.Warps: db 6
	warp_def 29, 43, 1, ROUTE_35_GOLDENROD_GATE
	warp_def 23, 19, 1, ROUTE_36_RUINS_OF_ALPH_GATE
	warp_def 5, 37, 1, ROUTE_19___FUCHSIA_GATE
	warp_def 23, 5, 1, ROUTE_35_NATIONAL_PARK_GATE
	warp_def 17, 11, 1, ROUTE_36_NATIONAL_PARK_GATE
	warp_def 17, 17, 1, CINNABAR_POKECENTER_2F_BETA

.CoordEvents: db 0

.BGEvents: db 5
	signpost 25, 57, SIGNPOST_READ, LakeSign
	signpost 29, 46, SIGNPOST_READ, LakeBoatHouseSignR
	signpost 23, 17, SIGNPOST_READ, LakeBoatHouseSignL
	signpost 24, 6, SIGNPOST_READ, LakeNameRaterSign
	signpost 17, 18, SIGNPOST_READ, LakeCenterSign

.ObjectEvents: db 6
	person_event SPRITE_FISHER, 30, 39, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoatManDummy, EVENT_BOAT_BOYS_BEGONE
	person_event SPRITE_FISHER, 24, 24, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoatManDummy, EVENT_BOAT_BOYS_BEGONE
	person_event SPRITE_BOAT_L, 32, 38, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoat, EVENT_LAKE_BOAT_RIGHT_GONE
	person_event SPRITE_BOAT_R, 32, 39, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoat, EVENT_LAKE_BOAT_RIGHT_GONE
	person_event SPRITE_BOAT_L, 26, 24, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoat, EVENT_LAKE_BOAT_LEFT_GONE
	person_event SPRITE_BOAT_R, 26, 25, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoat, EVENT_LAKE_BOAT_LEFT_GONE

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