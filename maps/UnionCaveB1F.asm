const_value set 2

UnionCaveB1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

UnionCaveB1F_MapEventHeader:: db 0, 0

.Warps: db 3
	warp_def 23, 3, 3, UNION_CAVE_1F
	warp_def 23, 25, 4, UNION_CAVE_1F
	warp_def 3, 5, 1, UNION_CAVE_1F

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 4
	person_event SPRITE_FISHER, 14, 4, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 3, TrainerStarglowCavernB1F_1, -1
	person_event SPRITE_FISHER, 16, 17, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 2, TrainerStarglowCavernB1F_2, -1
	person_event SPRITE_POKE_BALL, -6, -6, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_ITEMBALL, 0, StarglowCavern2FPokeBall, EVENT_STAR_GLOW_CAVERN_POKE_BALL3
	person_event SPRITE_POKE_BALL, 22, 9, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, StarglowCavern2FPokeBall2, EVENT_STAR_GLOW_CAVERN_POKE_BALL4

TrainerStarglowCavernB1F_1:
	trainer EVENT_BEAT_STARGLOW_CAVERN_TRAINERB1F_1, HIKER, 4, TrainerStarglowCavernB1F_1SeenText, TrainerStarglowCavernB1F_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerStarglowCavernB1F_1NormalText
	waitbutton
	closetext
	end
	
TrainerStarglowCavernB1F_2:
	trainer EVENT_BEAT_STARGLOW_CAVERN_TRAINERB1F_2, HIKER, 5, TrainerStarglowCavernB1F_2SeenText, TrainerStarglowCavernB1F_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerStarglowCavernB1F_2NormalText
	waitbutton
	closetext
	end
	
StarglowCavern2FNPC1:
	end
	
StarglowCavern2FPokeBall:
	itemball POTION
	
StarglowCavern2FPokeBall2:
	itemball ETHER

TrainerStarglowCavernB1F_1SeenText:
	text "Ah!"
	
	para "It's so cool and"
	line "damp down here." 
	done
	
TrainerStarglowCavernB1F_1BeatenText:
	text "Ahhh…"
	done
	
TrainerStarglowCavernB1F_1NormalText:
	text "It's so nice and"
	line "refreshing down"
	cont "here."
	done
	
TrainerStarglowCavernB1F_2SeenText:
	text "Feeling tired?"
	
	para "You're almost"
	line "through!"
	done
	
TrainerStarglowCavernB1F_2BeatenText:
	text "Wow!"
	
	para "Still looking"
	line "spry!"
	done
	
TrainerStarglowCavernB1F_2NormalText:
	text "The exit is near-"
	line "by."
	
	para "Good luck, kid!"
	done