const_value set 2
	const SPOOKHOUSE_NPC1

RuinsofAlphOmanyteWordRoom_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 1
	
	dbw MAPCALLBACK_TILES, .CheckSideDoor

	
.CheckSideDoor:
	checkevent EVENT_SPOOKHOUSE_DOOR_UNLOCKED
	iftrue .OpenSesame
	return

.OpenSesame:
	changeblock $0, $3, $51
	return
	
.Trigger0:
	end
	
.Trigger1:
	end
	
RuinsofAlphOmanyteWordRoom_MapEventHeader:: db 0, 0

.Warps: db 10
	warp_def 11, 4, 1, WAREHOUSE_ENTRANCE
	warp_def 11, 5, 1, WAREHOUSE_ENTRANCE
	warp_def 5, 1, 1, RUINS_OF_ALPH_OMANYTE_CHAMBER
	warp_def 5, 8, 3, RUINS_OF_ALPH_OMANYTE_CHAMBER
	warp_def 1, 4, 1, RUINS_OF_ALPH_OMANYTE_ITEM_ROOM
	warp_def 1, 5, 2, RUINS_OF_ALPH_OMANYTE_ITEM_ROOM
	warp_def 3, 0, 2, RUINS_OF_ALPH_AERODACTYL_WORD_ROOM
	warp_def 2, 0, 2, RUINS_OF_ALPH_AERODACTYL_WORD_ROOM
	warp_def 3, 9, 1, RUINS_OF_ALPH_AERODACTYL_WORD_ROOM
	warp_def 2, 9, 2, RUINS_OF_ALPH_AERODACTYL_WORD_ROOM

.CoordEvents: db 2
	xy_trigger 1, 6, 5, 0, SpookHouseGhost1_0, 0, 0
	xy_trigger 1, 6, 4, 0, SpookHouseGhost1, 0, 0

.BGEvents: db 6
	signpost 3, 10, SIGNPOST_READ, SpookHouseLockedDoor
	signpost 2, 10, SIGNPOST_READ, SpookHouseLockedDoor
	signpost 5, 3, SIGNPOST_READ, SpookHouseFlickerLight
	signpost 5, 6, SIGNPOST_READ, SpookHouseDeadLight
	signpost 3, -1, SIGNPOST_READ, SpookHouseLockedDoor2
	signpost 2, -1, SIGNPOST_READ, SpookHouseLockedDoor2

.ObjectEvents: db 1
	person_event SPRITE_TWIN, 2, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_SILVER, PERSONTYPE_SCRIPT, 0, SpookHouseNPC1, EVENT_SPOOKHOUSE_SAW_GHOST_1

SpookHouseGhost1_0:
	checkevent EVENT_SPOOKHOUSE_GHOST_WILL_APPEAR
	iffalse NoGhost
	applymovement PLAYER, Movement_SpookHouseWalkLeft1Tile
SpookHouseGhost1:
	checkevent EVENT_SPOOKHOUSE_GHOST_WILL_APPEAR
	iffalse NoGhost
	callasm .StopRunning
	applymovement PLAYER, Movement_SpookHouseGhost1_0
	appear SPOOKHOUSE_NPC1
	applymovement SPOOKHOUSE_NPC1, Movement_SpookHouseGhost1_1
	spriteface PLAYER, UP
	applymovement SPOOKHOUSE_NPC1, Movement_SpookHouseGhost1_2
	applymovement SPOOKHOUSE_NPC1, Movement_SpookHouseGhost1_3
	playsound SFX_EXIT_BUILDING
	disappear SPOOKHOUSE_NPC1
	clearevent EVENT_SPOOKHOUSE_GHOST_WILL_APPEAR
	dotrigger $0
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
NoGhost:
	end
	
SpookHouseNPC1:
	end
	
SpookHouseLockedDoor:
	jumptext SpookHouseLockedDoorText
	
SpookHouseLockedDoor2:
	checkevent EVENT_SPOOKHOUSE_DOOR_UNLOCKED
	iftrue .unlockeddoor
	checkitem OLD_KEY
	iftrue .unlockdoor
	jumptext SpookHouseLockedDoorText2
	
.unlockeddoor:
	jumptext SpookHouseLockedDoor2Text
	
.unlockdoor:
	changeblock $0, $3, $51
	setevent EVENT_SPOOKHOUSE_DOOR_UNLOCKED
	opentext
	writetext SpookHouseLockedDoor2Text
	playsound SFX_WALL_OPEN
	waitbutton
	closetext
	end
	
SpookHouseFlickerLight:
	jumptext SpookHouseFlickerLightText

SpookHouseDeadLight:
	jumptext SpookHouseDeadLightText
	
Movement_SpookHouseWalkLeft1Tile:
	step LEFT
	step_end
	
Movement_SpookHouseGhost1_0:
	step_sleep 24
	step_end
	
Movement_SpookHouseGhost1_1:
	step_sleep 48
	step_end
	
Movement_SpookHouseGhost1_2:
	step_sleep 16
	step_end
	
Movement_SpookHouseGhost1_3:
	set_sliding
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	remove_sliding
	step_end
	
SpookHouseLockedDoorText:
	text "It seems to be"
	line "locked from the"
	cont "other side."
	done
	
SpookHouseLockedDoorText2:
	text "It's locked."
	
	para "There might be"
	line "a key somewhere"
	cont "nearby."
	done
	
SpookHouseLockedDoor2Text:
	text "The door is un-"
	line "locked."
	done
	
SpookHouseFlickerLightText:
	text "It's trying its"
	line "hardest to stay"
	cont "lit."
	done
	
SpookHouseDeadLightText:
	text "It seems to be"
	line "dead."
	done