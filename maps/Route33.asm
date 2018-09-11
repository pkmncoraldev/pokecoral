const_value set 2

Route33_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0
	
.Trigger0:
	setflag ENGINE_PUNKS_IN_STARGLOW
	setevent EVENT_PUNKS_HAVENT_LEFT_STARGLOW
	dotrigger $1
	end
	
.Trigger1:
	setevent EVENT_ISLAND_GREEM_MAN
	variablesprite SPRITE_LEILANI_PSYDUCK, SPRITE_PSYDUCK
	end
	
Route33Sign:
	jumptext Route33SignText
	

Route33SignText:
	text "STARGLOW CAVERN"
	
	para "SOUTH:"
	line "STARGLOW VALLEY"
	done
	
Route33_MapEventHeader:: db 0, 0

.Warps: db 1
	warp_def 5, 6, 2, UNION_CAVE_1F

.CoordEvents: db 0

.BGEvents: db 1
	signpost 6, 7, SIGNPOST_READ, Route33Sign

.ObjectEvents: db 0

