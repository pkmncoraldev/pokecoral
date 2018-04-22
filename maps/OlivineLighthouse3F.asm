const_value set 2

OlivineLighthouse3F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

OlivineLighthouse3F_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 3, LAKE_OF_RAGE
	warp_def 7, 3, 3, LAKE_OF_RAGE

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_GENTLEMAN, 4, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, StarglowHouse3NPC1, -1
	person_event SPRITE_LASS, 3, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, StarglowHouse3NPC2, -1

StarglowHouse3NPC1:
	jumptextfaceplayer StarglowHouse3NPC1Text
	
StarglowHouse3NPC2:
	jumptextfaceplayer StarglowHouse3NPC2Text
	
StarglowHouse3NPC1Text:
	text "Thank you for your"
	line "help, child,"
	
	para "but I was never in"
	line "any danger."
	
	para "I'm the toughest"
	line "TRAINER around!"
	
	para "Ohohohoho…"
	done
	
StarglowHouse3NPC2Text:
	text "My grandpa thinks"
	line "he's the toughest"
	cont "TRAINER around."
	
	para "Between you and"
	line "me, he's nothing"
	cont "special."
	
	para "I just don't have"
	line "the heart to tell"
	cont "him, though…"
	done