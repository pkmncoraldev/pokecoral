const_value set 2
	const SunsetLegendsHouse_FISHING_GURU

SunsetLegendsHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

HoennBoy:
	faceplayer
	opentext
	writetext HoennBoyText	
	waitbutton
	closetext
	end

GoodRodHouseBookshelf:
; unused
	jumpstd picturebookshelf

HoennBoyText:
	text "I just moved here"
	line "from HOENN."
	

	para "It's a lot calmer"
	line "around here than"
	cont "back home."

	para "The ONWA region"
	line "doesn't seem to"
	
	para "have LEGENDARY"
	line "#MON like"
	cont "other regions do."
	done

SunsetLegendsHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 6, SUNSET_BAY
	warp_def 7, 3, 6, SUNSET_BAY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_FISHING_GURU, 3, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, HoennBoy, -1

