const_value set 2
	const FORESTGHOSTGIRL
	const FORESTGHOSTGIRL2

IlexForest_MapScriptHeader:
.MapTriggers:
	db 3
	
	maptrigger .Trigger0
	maptrigger .Trigger1
	maptrigger .Trigger2

.MapCallbacks:
	db 0

.Trigger0:
	end
	
.Trigger1:
	end

.Trigger2:
	end
	
IlexForest_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 44, 6, 3, ROUTE_34_ILEX_FOREST_GATE
	warp_def 45, 6, 4, ROUTE_34_ILEX_FOREST_GATE
	warp_def 8, 53, 1, ILEX_FOREST_AZALEA_GATE
	warp_def 9, 53, 2, ILEX_FOREST_AZALEA_GATE

.CoordEvents: db 11
	xy_trigger 0, 15, 28, 0, ForestGhostGirlTrigger, 0, 0
	xy_trigger 0, 15, 29, 0, ForestGhostGirlTrigger, 0, 0
	xy_trigger 0, 15, 30, 0, ForestGhostGirlTrigger, 0, 0
	xy_trigger 0, 15, 31, 0, ForestGhostGirlTrigger, 0, 0
	xy_trigger 0, 15, 32, 0, ForestGhostGirlTrigger, 0, 0
	xy_trigger 0, 15, 33, 0, ForestGhostGirlTrigger, 0, 0
	xy_trigger 0, 9, 14, 0, ForestGhostGirlTrigger2, 0, 0
	xy_trigger 0, 9, 15, 0, ForestGhostGirlTrigger2, 0, 0
	xy_trigger 1, 9, 14, 0, ForestGhostGirlTrigger2, 0, 0
	xy_trigger 1, 9, 15, 0, ForestGhostGirlTrigger2, 0, 0
	xy_trigger 0, 7, 34, 0, ForestGhostGirlTrigger, 0, 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_TWIN, 11, 30, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_SILVER, PERSONTYPE_SCRIPT, 0, ForestGhostGirl, EVENT_FOREST_GHOST_GIRL_GONE
	person_event SPRITE_TWIN, 5, 16, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_SILVER, PERSONTYPE_SCRIPT, 0, ForestGhostGirl, EVENT_FOREST_GHOST_GIRL_GONE2

ForestGhostGirl:
	end

ForestGhostGirlTrigger:
	disappear FORESTGHOSTGIRL
	setevent EVENT_FOREST_GHOST_GIRL_GONE
	dotrigger $1
	end	
	
ForestGhostGirlTrigger2:
	disappear FORESTGHOSTGIRL
	disappear FORESTGHOSTGIRL2
	setevent EVENT_FOREST_GHOST_GIRL_GONE
	setevent EVENT_FOREST_GHOST_GIRL_GONE2
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
	
	
Movement_ForestGhostGirl:
	slide_step UP
	slide_step UP
	step_end