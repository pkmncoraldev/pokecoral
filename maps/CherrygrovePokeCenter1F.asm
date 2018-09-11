const_value set 2
	const SUNBEAMPOKECENTER_NURSE

CherrygrovePokeCenter1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

NurseScript_0x19696d:
	blackoutmod CHERRYGROVE_CITY
	jumpstd pokecenternurse

CherrygrovePokeCenter1F_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 4, 2, CHERRYGROVE_CITY
	warp_def 7, 5, 2, CHERRYGROVE_CITY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 4
	person_event SPRITE_NURSE, 1, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, NurseScript_0x19696d, -1
	person_event SPRITE_SUPER_NERD, 3, 8, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunbeamPokecenterNPC1, -1
	person_event SPRITE_COOLTRAINER_F, 5, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, SunbeamPokecenterNPC2, -1
	person_event SPRITE_MEOWTH, 5, 1, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamPokecenterNPC3, -1

SunbeamPokecenterNPC1:
	jumptextfaceplayer SunbeamPokecenterNPC1Text
	
SunbeamPokecenterNPC2:
	jumptextfaceplayer SunbeamPokecenterNPC2Text
	
SunbeamPokecenterNPC3:
	opentext
	writetext SunbeamPokecenterNPC3Text
	cry MEOWTH
	waitsfx
	waitbutton
	closetext
	end
	
SunbeamPokecenterNPC1Text:
	text "I heard CORSOLA"
	line "are sometimes"
	
	para "known to gather"
	line "near the docks on"
	
	para "the WEST side of"
	line "the island."
	done
	
SunbeamPokecenterNPC2Text:
	text "Lately my MEOWTH"
	line "has been acting"
	cont "out a lot more."
	
	para "I wonder if he's"
	line "getting close to"
	cont "evolving."
	done
	
SunbeamPokecenterNPC3Text:
	text "MEOWTH: OWTH!"
	line "ME-OWTH!"
	done