const_value set 2

Route44_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


Route44_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 23, 39, 6, ROUTE_46
	warp_def 7, 11, 7, ROUTE_46
	warp_def 23, 3, 1, ROUTE_31
	warp_def 7, 10, 4, ROUTE_31

.CoordEvents: db 0

.BGEvents: db 1
	signpost 25, 2, SIGNPOST_ITEM, LavaCaveBF3HiddenRevive

.ObjectEvents: db 0

LavaCaveBF3HiddenRevive:
	dwb EVENT_LAVA_CAVE_BF3_HIDDEN_REVIVE, REVIVE