const_value set 2
	const ROUTE5ROUTE6GATE_OFFICER

Route43MahoganyGate_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

OfficerScript_0x19ab0b:
	faceplayer
	opentext
	writetext UnknownText_0x19ab1f
	waitbutton
	closetext
	end

UnknownText_0x19ab1f:
	text "South of here is"
	line "SUNBEAM ISLAND."

	para "The #MON PROF."
	line "conductes his"
	
	para "research on the"
	line "island."
	done

Route43MahoganyGate_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 0, 4, 1, ROUTE_42
	warp_def 0, 5, 2, ROUTE_42
	warp_def 7, 4, 1, ROUTE_45
	warp_def 7, 5, 1, ROUTE_45

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_OFFICER, 4, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, OfficerScript_0x19ab0b, -1

