const_value set 2

Route35_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

Route35_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 4, 9, 1, ROUTE_32
	warp_def 4, 8, 2, ROUTE_32

.CoordEvents: db 0

.BGEvents: db 1
	signpost 10, 10, SIGNPOST_READ, GlintGroveSign

.ObjectEvents: db 0

GlintGroveSign:
	jumptext GlintGroveSignText
	
GlintGroveSignText:
	text "GLINT GROVE"
	done