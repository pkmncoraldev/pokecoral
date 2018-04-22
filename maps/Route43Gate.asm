const_value set 2
	const WATERWAY_NPC
	const WATERWAY_POKEBALL

Route43Gate_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

WaterwayNpc:
	faceplayer
	opentext
	checkevent EVENT_WATERWAY_POKE_BALL
	iftrue .havemasterball
	writetext WaterwayNpcText1
	waitbutton
	spriteface WATERWAY_NPC, LEFT
	closetext
	end
.havemasterball
	writetext WaterwayNpcText2
	waitbutton
	spriteface WATERWAY_NPC, LEFT
	closetext
	end
	
WaterWayPokeBall:
	itemball MASTER_BALL
	
WaterwayCurrent:
	jumptext WaterwayCurrentText
	
WaterwayNpcText1:
	text "I was riding the"
	line "down the channel,"
	
	para "and I passed a"
	line "cool looking item."
;	cont "item."
	
	para "Now I can't get"
	line "back to it."
	
	para "The current's too"
	line "strong."
	
	para "There has to be a"
	line "way back up there."
;	cont "there."
	done
	
WaterwayNpcText2:
	text "Did you manage to"
	line "reach that item"
	cont "over there?"
	
	para "It was a MASTER"
	line "BALL?"
	
	para "Wow!"
	
	para "That catches #-"
	line "MON without fail."
	
	para "Nice find!"
	done
	
WaterwayCurrentText:
	text "Wow, it's a fast"
	line "current!"
	done
	
Route43Gate_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 13, 3, 2, VIOLET_MART
	warp_def 37, 13, 3, SUNSET_CAPE

.CoordEvents: db 0

.BGEvents: db 6
	signpost 15, 6, SIGNPOST_READ, WaterwayCurrent
	signpost 14, 6, SIGNPOST_READ, WaterwayCurrent
	signpost 33, 7, SIGNPOST_READ, WaterwayCurrent
	signpost 33, 6, SIGNPOST_READ, WaterwayCurrent
	signpost 17, 6, SIGNPOST_READ, WaterwayCurrent
	signpost 16, 6, SIGNPOST_READ, WaterwayCurrent

.ObjectEvents: db 2
	person_event SPRITE_FISHER, 34, 10, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, WaterwayNpc, -1
	person_event SPRITE_POKE_BALL, 15, 2, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, WaterWayPokeBall, EVENT_WATERWAY_POKE_BALL

