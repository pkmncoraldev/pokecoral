const_value set 2

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

.Warps: db 2
	warp_def 4, 0, 3, ILEX_FOREST
	warp_def 5, 0, 4, ILEX_FOREST

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 0
