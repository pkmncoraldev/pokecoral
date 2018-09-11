const_value set 2
	const LAKEBOATMAN1
	
Route35Goldenrodgate_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


Route35Goldenrodgate_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 5, 2, 1, ROUTE_30
	warp_def 5, 3, 1, ROUTE_30

.CoordEvents: db 0

.BGEvents: db 1
	signpost 1, 5, SIGNPOST_READ, LakeBoat1Trashcan

.ObjectEvents: db 1
	person_event SPRITE_FISHER, 1, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LakeBoatMan1, -1

LakeBoat1Trashcan:
	jumptext LakeBoatTrashcanText
	
LakeBoatMan1:
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
	writetext LakeBoatManText3
	waitbutton
	closetext
	special FadeOutPalettes
	special Special_FadeOutMusic
	setevent EVENT_TAKEN_LAKE_BOAT_ONCE
	setevent EVENT_LAKE_BOAT_RIGHT_GONE
	setevent EVENT_JUST_TOOK_BOAT
	clearevent EVENT_LAKE_BOAT_LEFT_GONE
	clearevent EVENT_BOAT_BOYS_BEGONE
	domaptrigger ROUTE_30, $2
	warp ROUTE_30, $18, $1a
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

