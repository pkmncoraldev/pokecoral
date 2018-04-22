const_value set 2
	const ROUTE4GATE_OFFICER

Route34IlexForestGate_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	clearevent EVENT_FOREST_GHOST_GIRL_GONE
	clearevent EVENT_FOREST_GHOST_GIRL_GONE2
	domaptrigger ILEX_FOREST, $0
	end
	
.Trigger1:
	end
	
Route34IlexForestGate_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 4, 0, 1, ROUTE_34
	warp_def 5, 0, 2, ROUTE_34
	warp_def 4, 9, 1, ILEX_FOREST
	warp_def 5, 9, 2, ILEX_FOREST

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_OFFICER, 2, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Route4GateOfficer, -1

Route4GateOfficer:
	jumptextfaceplayer Route4GateOfficerText
	
Route4GateOfficerText:
	text "TEXT 1"
	done