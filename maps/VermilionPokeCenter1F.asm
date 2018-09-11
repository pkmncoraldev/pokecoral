const_value set 2
	const VERMILIONPOKECENTER1F_NURSE

VermilionPokeCenter1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

NurseScript_0x191603:
	blackoutmod VERMILION_CITY
	jumpstd pokecenternurse

VermilionPokeCenter1F_MapEventHeader:: db 0, 0

.Warps: db 3
	warp_def 7, 4, 7, VERMILION_CITY
	warp_def 7, 5, 7, VERMILION_CITY
	warp_def 7, 0, 1, POKECENTER_2F

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 3
	person_event SPRITE_NURSE, 1, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, NurseScript_0x191603, -1
	person_event SPRITE_LASS, 5, 6, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, FlickerCenterNPC1, -1
	person_event SPRITE_TEACHER, 4, 1, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, FlickerCenterNPC2, -1

FlickerCenterNPC1:
	jumptextfaceplayer FlickerCenterNPC1Text
	
FlickerCenterNPC2:
	jumptextfaceplayer FlickerCenterNPC2Text
	
FlickerCenterNPC1Text:
	text "I heard this town"
	line "was great for"
	cont "training."
	
	para "Turns out it"
	line "wasn't the same"
	
	para "kind of training"
	line "I thought it was."
	done
	
FlickerCenterNPC2Text:
	text "There's a group of"
	line "kids that hang out"
	
	para "in the train"
	line "tunnel and cause"
	cont "problems."
	done