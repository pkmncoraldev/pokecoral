const_value set 2
	const TRAINSTATIONGREENGUY1
	const TRAINSTATIONNPC1
	const TRAINSTATIONNPC2
	const TRAINSTATIONNPC3
	const TRAINSTATIONNPC4
	const TRAINSTATIONNPC5
	const TRAINSTATIONNPC6

VermilionCity_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1

	; callbacks
	dbw MAPCALLBACK_NEWMAP, .Flypoint
	
	
.Flypoint:
	setflag ENGINE_FLYPOINT_VERMILION
	return

VermilionCity_MapEventHeader:: db 0, 0

.Warps: db 10
	warp_def 18, 39, 1, ROUTE_6_UNDERGROUND_ENTRANCE
	warp_def 19, 39, 2, ROUTE_6_UNDERGROUND_ENTRANCE
	warp_def 20, 39, 3, ROUTE_6_UNDERGROUND_ENTRANCE
	warp_def 21, 39, 4, ROUTE_6_UNDERGROUND_ENTRANCE
	warp_def 25, 25, 2, GOLDENROD_MAGNET_TRAIN_STATION
	warp_def 25, 26, 2, GOLDENROD_MAGNET_TRAIN_STATION
	warp_def 27, 11, 1, VERMILION_POKECENTER_1F
	warp_def 13, 9, 1, VERMILION_MART
	warp_def 13, 19, 1, VERMILION_HOUSE_FISHING_SPEECH_HOUSE
	warp_def 13, 31, 1, VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE

.CoordEvents: db 0

.BGEvents: db 5
	signpost 27, 12, SIGNPOST_READ, FlickerCenterSign
	signpost 13, 10, SIGNPOST_READ, FlickerMartSign
	signpost 33, 15, SIGNPOST_READ, FlickerSign
	signpost 25, 25, SIGNPOST_READ, FlickerStationClosed
	signpost 25, 26, SIGNPOST_READ, FlickerStationClosed

.ObjectEvents: db 7
	person_event SPRITE_FISHER, -6, -6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, TrainStationNPC1, EVENT_TRAIN_STATION_GUY_1
	person_event SPRITE_OFFICER, 26, 31, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, TrainStationNPC1, -1
	person_event SPRITE_COOLTRAINER_F, 30, 17, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, TrainStationNPC2, -1
	person_event SPRITE_BUG_CATCHER, 16, 23, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, TrainStationNPC3, -1
	person_event SPRITE_TWIN, 16, 24, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, TrainStationNPC4, -1
	person_event SPRITE_YOUNGSTER, 14, 13, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, TrainStationNPC5, -1
	person_event SPRITE_YOUNGSTER, 31, 29, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, TrainStationNPC6, -1

FlickerStationClosed:
	jumptext FlickerStationClosedText
	
FlickerSign:
	jumptext FlickerSignText
	
FlickerCenterSign:
	jumpstd pokecentersign

FlickerMartSign:
	jumpstd martsign
	
TrainStationNPC1:
	checkevent EVENT_END_DEMO
	iftrue .enddemo
	faceplayer
	opentext
	writetext TrainStationNPC1Text
	waitbutton
	setevent EVENT_END_DEMO
	closetext
	end
	
.enddemo
	faceplayer
	opentext
	writetext TrainStationNPC1Text2
	yesorno
	iffalse .no
	writetext TrainStationNPC1Text3
	waitbutton
	credits
	end
	
.no
	writetext TrainStationNPC1Text4
	waitbutton
	closetext
	end
	
TrainStationNPC2:
	jumptextfaceplayer TrainStationNPC2Text
	
TrainStationNPC3:
	faceplayer
	opentext
	writetext TrainStationNPC3Text
	waitbutton
	spriteface TRAINSTATIONNPC3, DOWN
	closetext
	end
	
TrainStationNPC4:
	faceplayer
	opentext
	writetext TrainStationNPC4Text
	waitbutton
	spriteface TRAINSTATIONNPC4, DOWN
	closetext
	end
	
TrainStationNPC5:
	jumptextfaceplayer TrainStationNPC5Text
	
TrainStationNPC6:
	jumptextfaceplayer TrainStationNPC6Text
	
FlickerStationClosedText:
	text "Closed for"
	line "renovations."
	done
	
FlickerSignText:
	text "FLICKER STATION"
	
	para "The charming por-"
	line "tal to prosperity."
	done
	
TrainStationNPC6Text:
	text "The train station"
	line "is closed."
	
	para "What a shame…"
	done
	
TrainStationNPC1Text:
	text "This is as far as"
	line "you can go in"
	cont "this demo."
	
	para "Have you read all"
	line "the books in the"
	cont "GLINT LIBRARY?"
	
	para "Come talk to me"
	line "again when you"
	
	para "want to end the"
	line "game."
	done
	
TrainStationNPC1Text2:
	text "Would you like to"
	line "end the game?"
	done
	
TrainStationNPC1Text3:
	text "Ok!"
	
	para "Thank you so much"
	line "for playing"
	cont "#MON CORAL"
	cont "VERSION!"
	done
	
TrainStationNPC1Text4:
	text "Ok."
	
	para "Have you read all"
	line "the books in the"
	cont "GLINT LIBRARY?"
	
	para "Come talk to me"
	line "again when you"
	
	para "want to end the"
	line "game."
	done
	
TrainStationNPC2Text:
	text "The train here"
	line "runs to LUSTER"
	cont "CITY."
	
	para "This little town"
	line "is kinda like a"
	
	para "gateway to the"
	line "biggest city in"
	cont "ONWA!"
	done
	
TrainStationNPC3Text:
	text "Woah!"

	para "Look a the trains!"
	
	para "So cool!"
	done
	
TrainStationNPC4Text:
	text "All he talks about"
	line "is trains…"
	
	para "I'm so bored of"
	line "trains!"
	done
	
TrainStationNPC5Text:
	text "I'm so tired of"
	line "dirt roads."
	
	para "I keep getting"
	line "gravel in my"
	cont "shoes."
	
	para "I just want to go"
	line "to the city!"
	done