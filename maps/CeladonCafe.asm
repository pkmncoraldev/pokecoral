const_value set 2

CeladonCafe_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

CeladonCafe_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 5, 1, 1, ROUTE_3
	warp_def 5, 2, 1, ROUTE_3

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_YOUNGSTER, 3, 1, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, 17, 5, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SnowTentInsideNPC, -1
	person_event SPRITE_WIGGLYTUFF, 3, 2, SPRITEMOVEDATA_POKEMON, 0, 0, 17, 5, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SnowTentInsidePokemon, -1

SnowTentInsideNPC:
	end
	
SnowTentInsidePokemon:
	end