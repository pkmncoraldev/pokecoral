const_value set 2

CherrygroveMart_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ClerkScript_0x19680a:
	opentext
	pokemart MARTTYPE_STANDARD, MART_SUNBEAM
	closetext
	end


CherrygroveMart_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 1, CHERRYGROVE_CITY
	warp_def 7, 3, 1, CHERRYGROVE_CITY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 3
	person_event SPRITE_CLERK, 3, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ClerkScript_0x19680a, -1
	person_event SPRITE_SUPER_NERD, 3, 8, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunbeamMartNPC1, -1
	person_event SPRITE_BUG_CATCHER, 5, 2, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamMartNPC2, -1

SunbeamMartNPC1:
	jumptextfaceplayer SunbeamMartNPC1Text
	
SunbeamMartNPC2:
	jumptextfaceplayer SunbeamMartNPC2Text
	
SunbeamMartNPC1Text:
	text "Alright!"
	
	para "GREAT BALLS!"
	
	para "That's great!"
	done
	
SunbeamMartNPC2Text:
	text "I found some candy"
	line "called <``>RARE"
	cont "CANDY.<''>"
	
	para "It was gross!"
	
	para "Now I know why it's"
	line "so rare."
	done