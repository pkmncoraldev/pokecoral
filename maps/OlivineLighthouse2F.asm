const_value set 2

OlivineLighthouse2F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

OlivineLighthouse2F_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 2, LAKE_OF_RAGE
	warp_def 7, 3, 2, LAKE_OF_RAGE

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_SUPER_NERD, 4, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, StarglowHouse2NPC, -1

StarglowHouse2NPC:
	jumptextfaceplayer StarglowHouse2NPCText
	end
	

StarglowHouse2NPCText:
	text "Those guys were"
	line "trying to take my"
	cont "#MON?"
	
	para "Joke's on them!"
	
	para "I don't have a"
	line "#MON!"
	done