const_value set 2

Route41_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


Route41_MapEventHeader:: db 0, 0

.Warps: db 0

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_POKE_BALL, 26, 15, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, Route7Dummy, EVENT_ROUTE_6_POKE_BALL_THUNDERPUNCH

Route7Dummy:
	end