const_value set 2

Route35NationalParkgate_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

Route35NationalParkgate_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 4, ROUTE_30
	warp_def 7, 3, 4, ROUTE_30

.CoordEvents: db 0

.BGEvents: db 3
	signpost 1, 6, SIGNPOST_READ, LakeNameRaterBookshelf
	signpost 1, 7, SIGNPOST_READ, LakeNameRaterBookshelf
	signpost 0, 2, SIGNPOST_READ, LakeNameRaterRockTown

.ObjectEvents: db 1
	person_event SPRITE_GENTLEMAN, 4, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, LakeNameRater, -1

LakeNameRater:
	faceplayer
	opentext
	special SpecialNameRater
	waitbutton
	closetext
	end
	
LakeNameRaterBookshelf:
	jumpstd difficultbookshelf
	
LakeNameRaterRockTown:
	jumptext LakeNameRaterRockTownText
	
LakeNameRaterRockTownText:
	text "A very strange"
	line "looking piece of"
	cont "land near a lake."
	
	para "Cheap looking rock"
	line "buildings are"
	cont "scattered about."
	
	para "The picture is"
	line "labelled:"
	cont "<``>ROCK TOWN.<''>"
	done