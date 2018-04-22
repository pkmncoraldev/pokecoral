const_value set 2
	const STARGLOWMART_MART

OlivineLighthouse6F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

OlivineLighthouse6F_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 6, LAKE_OF_RAGE
	warp_def 7, 3, 6, LAKE_OF_RAGE

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 3
	person_event SPRITE_CLERK, 3, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, StarglowMartClerk, -1
	person_event SPRITE_REDS_MOM, 6, 5, SPRITEMOVEDATA_WANDER, 0, 1, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, StarglowMartNPC1, -1
	person_event SPRITE_POKEFAN_M, 2, 7, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, StarglowMartNPC2, -1

StarglowMartClerk:
	opentext
	pokemart MARTTYPE_STANDARD, MART_AZALEA
	closetext
	end
	
StarglowMartNPC1:
	jumptextfaceplayer StarglowMartNPC1Text
	
StarglowMartNPC2:
	jumptextfaceplayer StarglowMartNPC2Text
	
StarglowMartNPC1Text:
	text "Different shops"
	line "sell different"
	cont "items."
	
	para "You should always"
	line "check the #MART"
	
	para "in every town you"
	line "visit."
	done
	
StarglowMartNPC2Text:
	text "This town's MART"
	line "doesn't sell"
	cont "GREAT BALLS?"
	
	para "I guess I'll have"
	line "to take the trek"
	
	para "over to the next"
	line "town."
	done