const_value set 2
	const ROUTE1_NPC

Route37_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0
	
Route1newSign:
	jumptext Route1newSignText
	
FruitTreeScript_Route1:
	fruittree FRUITTREE_ROUTE_1

Route1NPCScript:
	jumptextfaceplayer Route1NPCText

Route1newClue:
	checkitem CLUE_1
	iffalse .end
	checkitem CLUE_2
	iftrue .end
	opentext
	writetext Route1newClueText
	waitbutton
	verbosegiveitem CLUE_2
	closetext
	end
.end
	killsfx
	end
	
Route1newSignText:
	text "ROUTE 1"
	
	para "NORTH:"
	line "DAYBREAK VILLAGE"
	
	para "SOUTH:"
	line "SUNSET BAY"
	done
	
Route1NPCText:
	text "You probably"
	line "already know this,"
	
	para "but if you go into"
	line "the tall grass,"
	
	para "wild #MON might"
	line "attack you."
	
	para "Yeah, you already"
	line "knew that."
	done

Route1newClueText:
	text "You find something"
	line "nestled in the"
	cont "flower patch…"
	
	para "It's another clue!"
	done
	
Route37_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 29, 19, 3, SUNSET_CAPE_ROUTE_1_GATE
	warp_def 29, 20, 3, SUNSET_CAPE_ROUTE_1_GATE

.CoordEvents: db 0

.BGEvents: db 3
	signpost 25, 21, SIGNPOST_READ, Route1newSign
	signpost 6, 2, SIGNPOST_READ, FruitTreeScript_Route1
	signpost 15, 15, SIGNPOST_READ, Route1newClue

.ObjectEvents: db 1
	person_event SPRITE_SUPER_NERD, 9, 10, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, Route1NPCScript, -1

