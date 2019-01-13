const_value set 2

Route3_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


Route3_MapEventHeader:: db 0, 0

.Warps: db 1
	warp_def 21, 11, 1, CELADON_CAFE

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 3
	person_event SPRITE_CAMPFIRE, 24, 11, SPRITEMOVEDATA_POKEMON, 0, 0, 17, 5, (1 << 3) | PAL_OW_SILVER, PERSONTYPE_SCRIPT, 0, SnowTentFire, -1
	person_event SPRITE_YOUNGSTER, 15, 12, SPRITEMOVEDATA_STANDING_UP, 0, 0, 5, 17, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SnowTentNPC, -1
	person_event SPRITE_WIGGLYTUFF, 15, 11, SPRITEMOVEDATA_POKEMON, 0, 0, 5, 17, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SnowTentPokemon, -1

SnowTentNPC:
	end
	
SnowTentPokemon:
	end
	
SnowTentFire:
	opentext
	writetext SnowTentFireText
	waitbutton
	closetext
	end

SnowTentFireText:
	text "The fire rages!"
	done