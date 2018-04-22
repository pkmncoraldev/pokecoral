const_value set 2
	const SUNBEAM2_SLOWPOKE

Route29_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

Route29_MapEventHeader:: db 0, 0

.Warps: db 0

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 7
	person_event SPRITE_SLOWPOKE, 13, 27, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIsland2Slowpoke, -1

SunbeamIsland2Slowpoke:
	jumptext SunbeamIsland2SlowpokeText
	
IslandBoat:
	jumptext IslandBoatText

SunbeamIsland2SlowpokeText:
	text "I could really use"
	line "a smoke…"
	
	para "I mean!"
	
	para "Slowwwww…"
	
	para "Phew…"
	done
	
IslandBoatText:
	text "It's a rowboat."
	
	para "It's seen some use,"
	line "but it's still in"
	cont "good shape."
	done