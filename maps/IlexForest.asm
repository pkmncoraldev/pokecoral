const_value set 2
	const FORESTGHOSTGIRL
	const FORESTGHOSTGIRL2

IlexForest_MapScriptHeader:
.MapTriggers:
	db 3
	
	maptrigger .Trigger0
	maptrigger .Trigger1
	maptrigger .Trigger2

.MapCallbacks:
	db 0

.Trigger0:
	end
	
.Trigger1:
	end

.Trigger2:
	end
	
IlexForest_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 44, 6, 3, ROUTE_34_ILEX_FOREST_GATE
	warp_def 45, 6, 4, ROUTE_34_ILEX_FOREST_GATE
	warp_def 8, 53, 1, ILEX_FOREST_AZALEA_GATE
	warp_def 9, 53, 2, ILEX_FOREST_AZALEA_GATE

.CoordEvents: db 11
	xy_trigger 0, 15, 28, 0, ForestGhostGirlTrigger, 0, 0
	xy_trigger 0, 15, 29, 0, ForestGhostGirlTrigger, 0, 0
	xy_trigger 0, 15, 30, 0, ForestGhostGirlTrigger, 0, 0
	xy_trigger 0, 15, 31, 0, ForestGhostGirlTrigger, 0, 0
	xy_trigger 0, 15, 32, 0, ForestGhostGirlTrigger, 0, 0
	xy_trigger 0, 15, 33, 0, ForestGhostGirlTrigger, 0, 0
	xy_trigger 0, 9, 14, 0, ForestGhostGirlTrigger2, 0, 0
	xy_trigger 0, 9, 15, 0, ForestGhostGirlTrigger2, 0, 0
	xy_trigger 1, 9, 14, 0, ForestGhostGirlTrigger2, 0, 0
	xy_trigger 1, 9, 15, 0, ForestGhostGirlTrigger2, 0, 0
	xy_trigger 0, 7, 34, 0, ForestGhostGirlTrigger, 0, 0

.BGEvents: db 2
	signpost 43, 8, SIGNPOST_READ, EventideForestSign
	signpost 14, 32, SIGNPOST_READ, FruitTreeScript_Eventide

.ObjectEvents: db 9
	person_event SPRITE_TWIN, 11, 30, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, ForestGhostGirl, EVENT_FOREST_GHOST_GIRL_GONE
	person_event SPRITE_TWIN, 5, 16, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, ForestGhostGirl, EVENT_FOREST_GHOST_GIRL_GONE2
	person_event SPRITE_POKE_BALL, 26, 35, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, ForestPokeBall1, EVENT_FOREST_POKE_BALL_1
	person_event SPRITE_POKE_BALL, 26, 20, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, ForestPokeBall2, EVENT_FOREST_POKE_BALL_2
	person_event SPRITE_YOUNGSTER, 37, 8, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 2, TrainerEventide_1, -1
	person_event SPRITE_LASS, 30, 19, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 2, TrainerEventide_2, -1
	person_event SPRITE_POKEFAN_M, 28, 28, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 3, TrainerEventide_3, -1
	person_event SPRITE_POKEFAN_F, 2, 39, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 2, TrainerEventide_4, -1
	person_event SPRITE_POKEFAN_M, 18, 29, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 2, TrainerEventide_5, -1

FruitTreeScript_Eventide:
	fruittree FRUITTREE_EVENTIDE
	
EventideForestSign:
	jumptext EventideForestSignText
	
TrainerEventide_1:
	trainer EVENT_BEAT_EVENTIDE_TRAINER_1, YOUNGSTER, 4, TrainerEventide_1TextSeen, TrainerEventide_1TextBeaten, 0, .AfterScript

.AfterScript:
	end_if_just_battled
	opentext
	writetext TrainerEventide_1TextAfterBattle
	waitbutton
	closetext
	end
	
TrainerEventide_2:
	trainer EVENT_BEAT_EVENTIDE_TRAINER_2, LASS, 7, TrainerEventide_2TextSeen, TrainerEventide_2TextBeaten, 0, .AfterScript

.AfterScript:
	end_if_just_battled
	opentext
	writetext TrainerEventide_2TextAfterBattle
	waitbutton
	closetext
	end
	
TrainerEventide_3:
	trainer EVENT_BEAT_EVENTIDE_TRAINER_3, POKEFANM, 2, TrainerEventide_3TextSeen, TrainerEventide_3TextBeaten, 0, .AfterScript

.AfterScript:
	end_if_just_battled
	opentext
	writetext TrainerEventide_3TextAfterBattle
	waitbutton
	closetext
	end
	
TrainerEventide_4:
	trainer EVENT_BEAT_EVENTIDE_TRAINER_4, POKEFANF, 2, TrainerEventide_4TextSeen, TrainerEventide_4TextBeaten, 0, .AfterScript

.AfterScript:
	end_if_just_battled
	opentext
	writetext TrainerEventide_4TextAfterBattle
	waitbutton
	closetext
	end
	
TrainerEventide_5:
	trainer EVENT_BEAT_EVENTIDE_TRAINER_5, POKEFANM, 3, TrainerEventide_5TextSeen, TrainerEventide_5TextBeaten, 0, .AfterScript

.AfterScript:
	end_if_just_battled
	opentext
	writetext TrainerEventide_5TextAfterBattle
	waitbutton
	closetext
	end
	
ForestPokeBall1:
	itemball SUPER_REPEL
	
ForestPokeBall2:
	itemball SUPER_POTION
	
ForestGhostGirl:
	end

ForestGhostGirlTrigger:
	disappear FORESTGHOSTGIRL
	setevent EVENT_FOREST_GHOST_GIRL_GONE
	dotrigger $1
	end	
	
ForestGhostGirlTrigger2:
	disappear FORESTGHOSTGIRL
	disappear FORESTGHOSTGIRL2
	setevent EVENT_FOREST_GHOST_GIRL_GONE
	setevent EVENT_FOREST_GHOST_GIRL_GONE2
	dotrigger $1
	end	
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
EventideForestSignText:
	text "EVENTIDE FOREST"
	
	para "Watch your step in"
	line "the dark!"
	done
	
TrainerEventide_1TextSeen:
	text "AH!"
	
	para "You scared me!"
	done
	
TrainerEventide_1TextBeaten:
	text "Eeep!"
	done
	
TrainerEventide_1TextAfterBattle:
	text "I-I'm not afraid of"
	line "the dark or any-"
	cont "thing."
	
	para "Honest!"
	done
	
TrainerEventide_2TextSeen:
	text "Oh no!"
	
	para "I think I'm lost!"
	
	para "What'll I do if I"
	line "can't find my way"
	cont "out?"
	done
	
TrainerEventide_2TextBeaten:
	text "Lost. Lost."
	line "Lost."
	done
	
TrainerEventide_2TextAfterBattle:
	text "I found a weird"
	line "house up NORTH,"
	
	para "but I feel like"
	line "I've been walking"

	para "around these woods"
	line "for hours."
	done
	
TrainerEventide_3TextSeen:
	text "Are you keeping an"
	line "eye out for items?"
	done
	
TrainerEventide_3TextBeaten:
	text "Nice battle."
	done
	
TrainerEventide_3TextAfterBattle:
	text "People often drop"
	line "things in the dark"
	cont "around here."
	
	para "That just means"
	line "free stuff for"
	cont "people like me!"
	done
	
TrainerEventide_4TextSeen:
	text "They really need"
	line "to install some"
	cont "lamps or some-"
	cont "thing."
	
	para "This place is too"
	line "dangerous for kids"
	cont "to be exploring!"
	done
	
TrainerEventide_4TextBeaten:
	text "You seem like you"
	line "can hold your own."
	done
	
TrainerEventide_4TextAfterBattle:
	text "I've heard that a"
	line "little girl has"
	
	para "already gotten"
	line "lost somewhere in"
	cont "this forest."
	done
	
TrainerEventide_5TextSeen:
	text "They say these"
	line "woods are haunted"
	
	para "by the ghost of a"
	line "small girl."
	
	para "She sneaks up on"
	line "unsuspecting young"
	cont "TRAINERs, and…"
	
	para "…"
	
	para "BOO!"
	done
	
TrainerEventide_5TextBeaten:
	text "She gets you!"
	done
	
TrainerEventide_5TextAfterBattle:
	text "Did I spook you?"
	
	para "Haha!"
	
	para "It's just a story!"
	done
	
Movement_ForestGhostGirl:
	slide_step UP
	slide_step UP
	step_end