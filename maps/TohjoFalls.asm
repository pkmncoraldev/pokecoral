const_value set 2
	const TOHJOFALLS_POKE_BALL_1
	const TOHJOFALLS_POKE_BALL_2
	const TOHJOFALLS_POKE_BALL_3

TohjoFalls_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TohjoFalls_MapEventHeader:: db 0, 0

.Warps: db 0

.CoordEvents: db 0

.BGEvents: db 2
	signpost 10, 27, SIGNPOST_ITEM, HuntersHiddenSunStone
	signpost 4, 6, SIGNPOST_READ, FruitTreeScript_Hunters

.ObjectEvents: db 6
	person_event SPRITE_POKE_BALL, 10, 3, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, HuntersThicketBall1, EVENT_HUNTERS_THICKET_BALL_1
	person_event SPRITE_POKE_BALL, 19, 16, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, HuntersThicketBall2, EVENT_HUNTERS_THICKET_BALL_2
	person_event SPRITE_POKE_BALL, 11, 12, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, HuntersThicketBall3, EVENT_HUNTERS_THICKET_BALL_3
	person_event SPRITE_COOLTRAINER_F, 19, 17, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 2, TrainerHunters_1, -1
	person_event SPRITE_BUG_CATCHER, 6, 21, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 2, TrainerHunters_2, -1
	person_event SPRITE_LASS, 9, 13, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 2, TrainerHunters_3, -1

HuntersThicketBall1:
	itemball LEAF_STONE
	
HuntersThicketBall2:
	itemball REPEL
	
HuntersThicketBall3:
	itemball X_SPEED

HuntersHiddenSunStone:
	dwb EVENT_HUNTERS_THICKET_HIDDEN_SUN_STONE, SUN_STONE
	
FruitTreeScript_Hunters:
	fruittree FRUITTREE_HUNTERS
	
TrainerHunters_1:
	trainer EVENT_BEAT_HUNTERS_TRAINER_1, COOLTRAINERF, 2, TrainerHunters_1SeenText, TrainerHunters_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerHunters_1NormalText
	waitbutton
	closetext
	end
	
TrainerHunters_2:
	trainer EVENT_BEAT_HUNTERS_TRAINER_2, BUG_CATCHER, 3, TrainerHunters_2SeenText, TrainerHunters_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerHunters_2NormalText
	waitbutton
	closetext
	end
	
TrainerHunters_3
	trainer EVENT_BEAT_HUNTERS_TRAINER_3, PICNICKER, 5, TrainerHunters_3SeenText, TrainerHunters_3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerHunters_3NormalText
	waitbutton
	closetext
	end
	
TrainerHunters_1SeenText:
	text "Nice!"
	
	para "Another TRAINER!"
	
	para "Time to keep my"
	line "winning streak"
	cont "going!"
	done
	
TrainerHunters_1BeatenText:
	text "No!"
	
	para "My winning streak!"
	done
	
TrainerHunters_1NormalText:
	text "I was at 19 wins"
	line "in a row until you"
	cont "came along…"
	done
	
TrainerHunters_2SeenText:
	text "Bug #MON rock!"
	
	para "Let me show you!"
	done
	
TrainerHunters_2BeatenText:
	text "See?"
	
	para "I told you."
	done
	
TrainerHunters_2NormalText:
	text "My bug #MON"
	line "ARE rocks!"
	done
	
TrainerHunters_3SeenText:
	text "Isn't this spot"
	line "just beautiful?"
	
	para "This is my favor-"
	line "ite place in the"
	cont "whole wide world!"
	done
	
TrainerHunters_3BeatenText:
	text "Who invited you?"
	done
	
TrainerHunters_3NormalText:
	text "Why'd you have to"
	line "come along and"
	cont "ruin my good time?"
	done