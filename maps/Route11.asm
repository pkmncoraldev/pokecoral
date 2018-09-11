const_value set 2
	const RANCH_SCARECROW
	const RANCH_DODRIO1
	const RANCH_DODRIO2
	const RANCH_DODUO1
	const RANCH_DODUO2
	const RANCH_DODUO3
	const RANCH_DODUO4
	const RANCH_POKEBALL1
	const RANCH_POKEBALL2
	const RANCH_TRAINER1
	const RANCH_TRAINER2
	const RANCH_TRAINER3

Route11_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

Route11_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 24, 6, 3, ILEX_FOREST_AZALEA_GATE
	warp_def 25, 6, 4, ILEX_FOREST_AZALEA_GATE
	warp_def 23, 17, 1, POKEMON_FAN_CLUB
	warp_def 9, 27, 1, SILPH_CO_1F

.CoordEvents: db 0

.BGEvents: db 11
	signpost 22, 24, SIGNPOST_READ, RanchLogs
	signpost 22, 21, SIGNPOST_READ, RanchLogs
	signpost 21, 20, SIGNPOST_READ, RanchLogs
	signpost 16, 25, SIGNPOST_READ, RanchLogs
	signpost 15, 26, SIGNPOST_READ, RanchLogs
	signpost 15, 27, SIGNPOST_READ, RanchLogs
	signpost 14, 26, SIGNPOST_READ, RanchLogs
	signpost 10, 25, SIGNPOST_READ, RanchLogs
	signpost 24, 16, SIGNPOST_READ, RanchSign
	signpost 9, 8, SIGNPOST_READ, FruitTreeScript_Ranch
	signpost 23, 8, SIGNPOST_READ, Route8Sign

.ObjectEvents: db 12
	person_event SPRITE_SCARECROW, 13, 17, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchScarecrow, -1
	person_event SPRITE_DODRIO, 18, 15, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchDodrio1, -1
	person_event SPRITE_DODRIO, 10, 22, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchDodrio2, -1
	person_event SPRITE_DODUO, 15, 16, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchDoduo, -1
	person_event SPRITE_DODUO, 12, 19, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchDoduo, -1
	person_event SPRITE_DODUO, 16, 23, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchDoduo, -1
	person_event SPRITE_DODUO, 20, 23, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchDoduo, -1
	person_event SPRITE_POKE_BALL, 2, 28, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, RanchPokeBall1, EVENT_RANCH_POKE_BALL_1
	person_event SPRITE_POKE_BALL, 16, 26, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, RanchPokeBall2, EVENT_RANCH_POKE_BALL_2
	person_event SPRITE_YOUNGSTER, 16, 13, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 5, TrainerRanch_1, -1
	person_event SPRITE_YOUNGSTER, 11, 9, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 2, TrainerRanch_2, -1
	person_event SPRITE_YOUNGSTER, 7, 17, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 2, TrainerRanch_3, -1

Route8Sign:
	jumptext Route8SignText
	
FruitTreeScript_Ranch:
	fruittree FRUITTREE_RANCH

TrainerRanch_1:
	trainer EVENT_BEAT_RANCH_TRAINER_1, BIRD_KEEPER, 2, TrainerRanch_1TextSeen, TrainerRanch_1TextBeaten, 0, .AfterScript

.AfterScript:
	end_if_just_battled
	opentext
	writetext TrainerRanch_1TextAfterBattle
	waitbutton
	closetext
	end
	
TrainerRanch_2:
	trainer EVENT_BEAT_RANCH_TRAINER_2, BIRD_KEEPER, 1, TrainerRanch_2TextSeen, TrainerRanch_2TextBeaten, 0, .AfterScript

.AfterScript:
	end_if_just_battled
	opentext
	writetext TrainerRanch_2TextAfterBattle
	waitbutton
	closetext
	end
	
TrainerRanch_3:
	trainer EVENT_BEAT_RANCH_TRAINER_3, BIRD_KEEPER, 3, TrainerRanch_3TextSeen, TrainerRanch_3TextBeaten, 0, .AfterScript

.AfterScript:
	end_if_just_battled
	opentext
	writetext TrainerRanch_3TextAfterBattle
	waitbutton
	closetext
	end
	
RanchScarecrow:	
	jumptext RanchScarecrowText
	
RanchLogs:
	jumptext RanchLogsText
	
RanchSign:
	jumptext RanchSignText
	
RanchDodrio1:
	opentext
	writetext RanchDodrioText1
	cry DODRIO
	buttonsound
	writetext RanchDodrioText2
	waitbutton
	closetext
	end
	
RanchDodrio2:
	opentext
	writetext RanchDodrioText1
	cry DODRIO
	waitbutton
	closetext
	end
	
RanchDoduo:
	opentext
	writetext RanchDoduoText
	cry DODUO
	waitbutton
	closetext
	end
	
RanchPokeBall1:
	itemball CARBOS
	
RanchPokeBall2:
	itemball FULL_RESTORE
	
Route8SignText:
	text "ROUTE 8"
	
	para "NORTH: FLICKER"
	line "STATION"
	
	para "WEST: EVENTIDE"
	line "FOREST"
	done
		
RanchDodrioRideText:
	text "Ride DODRIO?"
	done
	
RanchDodrioText1:
	text "DODRIO: DRRREEEO!"
	done
	
RanchDodrioText2:
	text "DODRIO stomps it's"
	line "foot impatiently."
	done
	
RanchDoduoText:
	text "DODUO: DEWO! DEWO!"
	done
	
RanchScarecrowText:
	text "It's a SCARE-"
	line "MURKROW!"
	
	para "It's so life-like!"
	done
	
RanchLogsText:
	text "Some logs are"
	line "stacked neatly."
	done
	
RanchSignText:
	text "World-famous"
	line "DODRIO RANCH!"
	done
	
TrainerRanch_1TextSeen:
	text "This ranch is"
	line "known for it's"
	cont "DODUO."
	
	para "I just got one"
	line "myself."
	
	para "Let's test this"
	line "little guy out!"
	done
	
TrainerRanch_1TextBeaten:
	text "Cripes!"
	done
	
TrainerRanch_1TextAfterBattle:
	text "Did I get ripped"
	line "off?"
	done
	
TrainerRanch_2TextSeen:
	text "A TRAINER!"
	
	para "Think you can"
	line "withstand the"
	cont "wind?"
	done
	
TrainerRanch_2TextBeaten:
	text "What a blow out!"
	done
	
TrainerRanch_2TextAfterBattle:
	text "I got blown over…"
	done
	
TrainerRanch_3TextSeen:
	text "I'm a bird #MON"
	line "TRAINER."
	
	para "My father was a"
	line "bird TRAINER."
	
	para "His father was a"
	line "bird TRAINER."
	done
	
TrainerRanch_3TextBeaten:
	text "FATHER!"
	done
	
TrainerRanch_3TextAfterBattle:
	text "I'm a disgrace to"
	line "my whole lineage…"
	done