const_value set 2
	const ROUTE8GATE_OFFICER

IlexForestAzaleaGate_MapScriptHeader:
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

IlexForestAzaleaGate_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 4, 0, 3, ILEX_FOREST
	warp_def 5, 0, 4, ILEX_FOREST
	warp_def 4, 9, 1, ROUTE_11
	warp_def 5, 9, 2, ROUTE_11

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_OFFICER, 2, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Route8GateOfficer, -1

Route8GateOfficer:
	jumptextfaceplayer Route8GateOfficerText
	
Route8GateOfficerText:
	text "There have been"
	line "reports of a small"
	
	para "girl being sighted"
	line "in the forest, but"
	
	para "we haven't seen"
	line "anything suggest-"
	cont "ing that's true."
	done

