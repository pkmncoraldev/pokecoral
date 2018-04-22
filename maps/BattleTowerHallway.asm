const_value set 2
	const BATTLETOWERHALLWAY_RECEPTIONIST

BattleTowerHallway_MapScriptHeader:
.MapTriggers:
	db 0

	; triggers

.MapCallbacks:
	db 0

BattleTowerHallway_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 6
	warp_def $1, $b, 1, BATTLE_TOWER_ELEVATOR
	warp_def $0, $5, 1, BATTLE_TOWER_BATTLE_ROOM
	warp_def $0, $7, 1, BATTLE_TOWER_BATTLE_ROOM
	warp_def $0, $9, 1, BATTLE_TOWER_BATTLE_ROOM
	warp_def $0, $d, 1, BATTLE_TOWER_BATTLE_ROOM
	warp_def $0, $f, 1, BATTLE_TOWER_BATTLE_ROOM

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_RECEPTIONIST, 2, 11, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BattleTowerHallway_MapEventHeader, -1
