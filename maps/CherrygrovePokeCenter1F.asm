const_value set 2
	const SUNBEAMPOKECENTER_NURSE

CherrygrovePokeCenter1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

NurseScript_0x19696d:
	jumpstd pokecenternurse

CherrygrovePokeCenter1F_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 4, 2, CHERRYGROVE_CITY
	warp_def 7, 5, 2, CHERRYGROVE_CITY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_NURSE, 1, 3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, NurseScript_0x19696d, -1