const_value set 2
	const RANCHBARN_DODRIO
	const RANCHBARN_DODUO1
	const RANCHBARN_DODUO2
	const RANCHBARN_NPC

SilphCo1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

SilphCo1F_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 3, 4, ROUTE_11
	warp_def 7, 4, 4, ROUTE_11

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 4
	person_event SPRITE_DODRIO, 5, 9, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, BarnDodrio, -1
	person_event SPRITE_DODUO, 2, 9, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchDoduo, -1
	person_event SPRITE_DODUO, 2, 3, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchDoduo, -1
	person_event SPRITE_YOUNGSTER, 5, 10, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, RanchBarnNPC, -1

BarnDodrio:
	opentext
	writetext BarnDodrioText
	cry DODRIO
	waitbutton
	closetext
	end
	
RanchBarnNPC:
	faceplayer
	opentext
	writetext RanchBarnNPCText
	waitbutton
	closetext
	spriteface RANCHBARN_NPC, LEFT
	end
	
RanchBarnNPCText:
	text "It's my job to"
	line "take care of all"
	cont "the #MON."
	
	para "It's real hard"
	line "work…"
	done
	
BarnDodrioText:
	text "DODRIO: DRRREEEO!"
	done