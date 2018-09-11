const_value set 2
	const VERMILIONMART_CLERK

VermilionMart_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ClerkScript_0x191f7e:
	opentext
	pokemart MARTTYPE_STANDARD, MART_STATION
	closetext
	end

VermilionMart_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 8, VERMILION_CITY
	warp_def 7, 3, 8, VERMILION_CITY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_CLERK, 3, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ClerkScript_0x191f7e, -1
	person_event SPRITE_YOUNGSTER, 6, 8, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, FlickerMartNPC1, -1

FlickerMartNPC1:
	jumptextfaceplayer FlickerMartNPC1Text
	
FlickerMartNPC1Text:
	text "I've heard that"
	line "when the trains"
	
	para "aren't running,"
	line "some people try to"
	cont "walk the tracks."
	
	para "Seems really dan-"
	line "gerous."
	done
	
	

