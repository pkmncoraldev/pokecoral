const_value set 2
	const SPOOKHOUSE_HALLWAY3_NPC1

RuinsofAlphAerodactylChamber_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0
	
.Trigger0:
	priorityjump .SpookHouseHallwayGhost3
	end

.Trigger1:
	end


.SpookHouseHallwayGhost3:
	callasm .StopRunning
	applymovement SPOOKHOUSE_HALLWAY3_NPC1, Movement_SpookHouseGhost4
	disappear SPOOKHOUSE_HALLWAY3_NPC1
	wait 16
	setevent EVENT_SPOOKHOUSE_SAW_GHOST_4
	dotrigger $1
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret

RuinsofAlphAerodactylChamber_MapEventHeader:: db 0, 0

.Warps: db 9
	warp_def 3, 41, 3, RUINS_OF_ALPH_AERODACTYL_WORD_ROOM
	warp_def 2, 41, 4, RUINS_OF_ALPH_AERODACTYL_WORD_ROOM
	warp_def 3, 0, 9, RUINS_OF_ALPH_OMANYTE_WORD_ROOM
	warp_def 2, 0, 10, RUINS_OF_ALPH_OMANYTE_WORD_ROOM
	warp_def 1, 37, 1, RUINS_OF_ALPH_OMANYTE_WORD_ROOM
	warp_def 1, 29, 1, RUINS_OF_ALPH_OMANYTE_WORD_ROOM
	warp_def 1, 21, 1, RUINS_OF_ALPH_KABUTO_CHAMBER
	warp_def 1, 13, 1, RUINS_OF_ALPH_OMANYTE_WORD_ROOM
	warp_def 1, 5, 1, RUINS_OF_ALPH_OMANYTE_WORD_ROOM

.CoordEvents: db 0

.BGEvents: db 10
	signpost 1, 38, SIGNPOST_READ, SpookHouseDeadLight
	signpost 1, 34, SIGNPOST_READ, SpookHouseDeadLight
	signpost 1, 30, SIGNPOST_READ, SpookHouseDeadLight
	signpost 1, 26, SIGNPOST_READ, SpookHouseDeadLight
	signpost 1, 18, SIGNPOST_READ, SpookHouseDeadLight
	signpost 1, 14, SIGNPOST_READ, SpookHouseDeadLight
	signpost 1, 10, SIGNPOST_READ, SpookHouseDeadLight
	signpost 1, 6, SIGNPOST_READ, SpookHouseDeadLight
	signpost 1, 2, SIGNPOST_READ, SpookHouseDeadLight
	signpost 1, 22, SIGNPOST_READ, SpookHouseFlickerLight

.ObjectEvents: db 1
	person_event SPRITE_TWIN, 2, 40, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_SILVER, PERSONTYPE_SCRIPT, 0, SpookHouseNPC1, EVENT_SPOOKHOUSE_SAW_GHOST_4

Movement_SpookHouseGhost4:
	fix_facing
	set_sliding
	step_sleep 48
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	remove_sliding
	remove_fixed_facing
	step_end
