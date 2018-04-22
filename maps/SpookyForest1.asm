const_value set 2

SpookyForest1_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	setevent EVENT_FOREST_GHOST_GIRL_GONE
	domaptrigger ILEX_FOREST, $1
	dotrigger $1
	end
	
.Trigger1:
	end
	
SpookyForest1_MapEventHeader:: db 0, 0

.Warps: db 0

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 0

