const_value set 2

SunsetOldCoupleHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

SunsetNPC1House3:
	jumptextfaceplayer SunsetNPC1House3Text

SunsetNPC2House3:
	jumptextfaceplayer SunsetNPC2House3Text
	
SunsetGengarHouse3:
	opentext
	writetext SunsetGengarHouse3Text1
	cry GENGAR
	buttonsound
	writetext SunsetGengarHouse3Text2
	waitbutton
	closetext
	end
	
SunsetOldCoupleHouseBookshelf2:
	jumpstd picturebookshelf

SunsetOldCoupleHouseBookshelf1:
	jumpstd magazinebookshelf

SunsetNPC1House3Text:
	text "I've known my"
	line "GENGAR, BUTTERCUP,"
	cont "for many years."
	
	para "She still likes to"
	line "play pranks."
	done

SunsetNPC2House3Text:
	text "So, you're"
	line "starting your"
	
	para "#MON journey,"
	line "eh?"
	
	para "Come back here"
	line "when you become"
	
	para "the ONWA #MON"
	line "LEAGUE CHAMPION."
	
	para "I'll make sure"
	line "to give you"
	cont "something special."
	
	para "Hohohoho."
	done

SunsetGengarHouse3Text1:
	text "BUTTERCUP: Ga gan!"
	done
	
SunsetGengarHouse3Text2:
	text "She untied your"
	line "shoelaces."
	done
	
SunsetOldCoupleHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 7, SUNSET_BAY
	warp_def 7, 3, 7, SUNSET_BAY

.CoordEvents: db 0

.BGEvents: db 2
	signpost 1, 0, SIGNPOST_READ, SunsetOldCoupleHouseBookshelf1
	signpost 1, 1, SIGNPOST_READ, SunsetOldCoupleHouseBookshelf2

.ObjectEvents: db 3
	person_event SPRITE_GRANNY, 4, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, SunsetNPC1House3, -1
	person_event SPRITE_GRAMPS, 3, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SunsetNPC2House3, -1
	person_event SPRITE_GENGAR, 3, 6, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunsetGengarHouse3, -1

