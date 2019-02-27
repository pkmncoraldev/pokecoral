const_value set 2
	const TRAINTUNNELNPC1
	const TRAINTUNNELNPC2
	const TRAINTUNNELNPC3
	const TRAINTUNNELNPC4

Route6UndergroundEntrance_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0
	
.Trigger0:
	end
	
.Trigger1:
	end

Route6UndergroundEntrance_MapEventHeader:: db 0, 0

.Warps: db 8
	warp_def 3, 0, 1, VERMILION_CITY
	warp_def 4, 0, 2, VERMILION_CITY
	warp_def 5, 0, 3, VERMILION_CITY
	warp_def 6, 0, 4, VERMILION_CITY
	warp_def 3, 29, 1, GOLDENROD_CITY
	warp_def 4, 29, 2, GOLDENROD_CITY
	warp_def 5, 29, 3, GOLDENROD_CITY
	warp_def 6, 29, 4, GOLDENROD_CITY

.CoordEvents: db 3
	xy_trigger 0, 4, 19, 0, TrainTunnelStopsYou1, 0, 0
	xy_trigger 0, 5, 19, 0, TrainTunnelStopsYou2, 0, 0
	xy_trigger 0, 6, 19, 0, TrainTunnelStopsYou3, 0, 0

.BGEvents: db 0

.ObjectEvents: db 4
	person_event SPRITE_DELINQUENT_M, 3, 15, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, TrainTunnelNPC1, EVENT_DELINQUENTS_IN_TUNNEL
	person_event SPRITE_DELINQUENT_F, 3, 17, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, TrainTunnelNPC2, EVENT_DELINQUENTS_IN_TUNNEL
	person_event SPRITE_DELINQUENT_M, 6, 16, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, TrainTunnelNPC3, EVENT_DELINQUENTS_IN_TUNNEL
	person_event SPRITE_DELINQUENT_M, 3, 18, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, TrainTunnelNPC4, EVENT_DELINQUENTS_IN_TUNNEL

TrainTunnelNPC1:
	faceplayer
	opentext
	checkevent EVENT_DELINQUENTS_IN_TUNNEL
	iftrue .fought
	writetext TrainTunnelNPC1Text1
	waitbutton
	closetext
	end
.fought
	writetext TrainTunnelNPC1Text2
	waitbutton
	closetext
	end
	
TrainTunnelNPC2:
	faceplayer
	opentext
	checkevent EVENT_DELINQUENTS_IN_TUNNEL
	iftrue .fought
	writetext TrainTunnelNPC2Text1
	waitbutton
	closetext
	end
.fought
	writetext TrainTunnelNPC2Text2
	waitbutton
	closetext
	end
	
TrainTunnelNPC3:
	faceplayer
	opentext
	checkevent EVENT_DELINQUENTS_IN_TUNNEL
	iftrue .fought
	writetext TrainTunnelNPC3Text1
	waitbutton
	closetext
	end
.fought
	writetext TrainTunnelNPC3Text2
	waitbutton
	closetext
	end
	
TrainTunnelNPC4:
	faceplayer
	opentext
	checkevent EVENT_DELINQUENTS_IN_TUNNEL
	iftrue .fought
	writetext TrainTunnelNPC4Text1
	waitbutton
	closetext
	end
.fought
	writetext TrainTunnelNPC4Text2
	waitbutton
	closetext
	end
	
TrainTunnelStopsYou1:
	playsound SFX_PAY_DAY
	showemote EMOTE_SHOCK, TRAINTUNNELNPC4, 15
	pause 7
	applymovement TRAINTUNNELNPC4, Movement_TrainTunnelStopsYou1
	spriteface TRAINTUNNELNPC4, DOWN
	opentext
	writetext TrainTunnelStopsYouText1
	waitbutton
	closetext
	spriteface PLAYER, UP
	jump TrainTunnelStopsYoucont
	
TrainTunnelStopsYou2:
	playsound SFX_PAY_DAY
	showemote EMOTE_SHOCK, TRAINTUNNELNPC4, 15
	pause 7
	applymovement TRAINTUNNELNPC4, Movement_TrainTunnelStopsYou1
	spriteface TRAINTUNNELNPC4, DOWN
	opentext
	writetext TrainTunnelStopsYouText1
	waitbutton
	closetext
	applymovement PLAYER, Movement_TrainTunnelStopsYou2
	jump TrainTunnelStopsYoucont
	
TrainTunnelStopsYou3:
	playsound SFX_PAY_DAY
	showemote EMOTE_SHOCK, TRAINTUNNELNPC4, 15
	pause 7
	applymovement TRAINTUNNELNPC4, Movement_TrainTunnelStopsYou1
	spriteface TRAINTUNNELNPC4, DOWN
	opentext
	writetext TrainTunnelStopsYouText1
	waitbutton
	closetext
	applymovement PLAYER, Movement_TrainTunnelStopsYou11
	
TrainTunnelStopsYoucont
	opentext
	writetext TrainTunnelStopsYouText2
	waitbutton
	closetext
	applymovement TRAINTUNNELNPC2, Movement_TrainTunnelStopsYou4
	spriteface TRAINTUNNELNPC2, UP
	spriteface PLAYER, DOWN
	applymovement TRAINTUNNELNPC3, Movement_TrainTunnelStopsYou3
	spriteface TRAINTUNNELNPC3, LEFT
	spriteface PLAYER, RIGHT
	applymovement TRAINTUNNELNPC1, Movement_TrainTunnelStopsYou5
	spriteface TRAINTUNNELNPC1, RIGHT
	spriteface PLAYER, LEFT
	pause 20
	spriteface PLAYER, UP
	opentext
	writetext TrainTunnelStopsYouText3
	waitbutton
	closetext
	
	spriteface PLAYER, RIGHT
	opentext
	writetext TrainTunnelStopsYouText4
	waitbutton
	closetext
	applymovement TRAINTUNNELNPC3, Movement_TrainTunnelStopsYou6
	playsound SFX_BUMP
	
	spriteface PLAYER, DOWN
	opentext
	writetext TrainTunnelStopsYouText5
	waitbutton
	closetext
	applymovement TRAINTUNNELNPC2, Movement_TrainTunnelStopsYou7
	playsound SFX_BUMP
	
	spriteface PLAYER, LEFT
	opentext
	writetext TrainTunnelStopsYouText6
	waitbutton
	closetext
	applymovement TRAINTUNNELNPC1, Movement_TrainTunnelStopsYou8
	playsound SFX_BUMP
	
	pause 7
	spriteface PLAYER, UP
	opentext
	writetext TrainTunnelStopsYouText7
	yesorno
	iffalse .end
	
	spriteface PLAYER, RIGHT
	opentext
	writetext TrainTunnelStopsYouText9
	waitbutton
	closetext
	winlosstext TrainTunnelStopsYouWinText1, 0
	setlasttalked TRAINTUNNELNPC3
	loadtrainer DELINQUENT_M, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext TrainTunnelStopsYouText10
	waitbutton
	closetext
	spriteface TRAINTUNNELNPC3, RIGHT
	
	spriteface PLAYER, DOWN
	opentext
	writetext TrainTunnelStopsYouText11
	waitbutton
	closetext
	winlosstext TrainTunnelStopsYouWinText2, 0
	setlasttalked TRAINTUNNELNPC2
	loadtrainer DELINQUENT_F, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext TrainTunnelStopsYouText12
	waitbutton
	closetext
	spriteface TRAINTUNNELNPC2, DOWN
	
	spriteface PLAYER, LEFT
	opentext
	writetext TrainTunnelStopsYouText13
	waitbutton
	closetext
	winlosstext TrainTunnelStopsYouWinText3, 0
	setlasttalked TRAINTUNNELNPC1
	loadtrainer DELINQUENT_M, 2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext TrainTunnelStopsYouText14
	waitbutton
	closetext
	spriteface TRAINTUNNELNPC1, LEFT
	
	opentext
	writetext TrainTunnelStopsYouText15
	waitbutton
	closetext
	applymovement TRAINTUNNELNPC3, Movement_TrainTunnelStopsYou12
	spriteface TRAINTUNNELNPC3, DOWN
	closetext
	dotrigger $1
	setevent EVENT_DELINQUENTS_IN_TUNNEL
	end
	
.end
	writetext TrainTunnelStopsYouText8
	waitbutton
	closetext
	applymovement TRAINTUNNELNPC1, Movement_TrainTunnelStopsYou2
	spriteface TRAINTUNNELNPC1, DOWN
	pause 7
	spriteface PLAYER, RIGHT
	applymovement TRAINTUNNELNPC3, Movement_TrainTunnelStopsYou6
	playsound SFX_BUMP
	applymovement PLAYER, Movement_TrainTunnelStopsYou9
	applymovement TRAINTUNNELNPC3, Movement_TrainTunnelStopsYou10
	playsound SFX_BUMP
	spriteface PLAYER, LEFT
	applymovement PLAYER, Movement_TrainTunnelStopsYou9
	warpfacing LEFT, VERMILION_CITY, 35, 20
	end
	
	
Movement_TrainTunnelStopsYou1:
	step RIGHT
	step_end
	
Movement_TrainTunnelStopsYou2:
	step UP
	step_end
	
Movement_TrainTunnelStopsYou3:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end
	
Movement_TrainTunnelStopsYou4:
	step RIGHT
	step DOWN
	step DOWN
	step RIGHT
	step_end
	
Movement_TrainTunnelStopsYou5:
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step_end
	
Movement_TrainTunnelStopsYou6:
	fix_facing
	step RIGHT
	remove_fixed_facing
	big_step LEFT
	step_end
	
Movement_TrainTunnelStopsYou7:
	fix_facing
	step DOWN
	remove_fixed_facing
	big_step UP
	step_end
	
Movement_TrainTunnelStopsYou8:
	fix_facing
	step LEFT
	remove_fixed_facing
	big_step RIGHT
	step_end
	
Movement_TrainTunnelStopsYou9:
	fix_facing
	jump_step LEFT
	remove_fixed_facing
	step_end
	
Movement_TrainTunnelStopsYou10:
	big_step LEFT
	big_step LEFT
	step_end
	
Movement_TrainTunnelStopsYou11:
	step UP
	step UP
	step_end
	
Movement_TrainTunnelStopsYou12:
	step DOWN
	step_end
	
TrainTunnelStopsYouText1:
	text "Hey kid!"
	done
	
TrainTunnelStopsYouText2:
	text "Where d'ya think"
	line "you're going?"
	done
	
TrainTunnelStopsYouText3:
	text "TEXT 3"
	done
	
TrainTunnelStopsYouText4:
	text "TEXT 4"
	done
	
TrainTunnelStopsYouText5:
	text "TEXT 5"
	done
	
TrainTunnelStopsYouText6:
	text "TEXT 6"
	done
	
TrainTunnelStopsYouText7:
	text "TEXT 7"
	done
	
TrainTunnelStopsYouText8:
	text "TEXT 8"
	done
	
TrainTunnelStopsYouText9:
	text "TEXT 9"
	done
	
TrainTunnelStopsYouText10:
	text "TEXT 10"
	done
	
TrainTunnelStopsYouText11:
	text "TEXT 11"
	done
	
TrainTunnelStopsYouText12:
	text "TEXT 12"
	done
	
TrainTunnelStopsYouText13:
	text "TEXT 13"
	done
	
TrainTunnelStopsYouText14:
	text "TEXT 14"
	done
	
TrainTunnelStopsYouText15:
	text "TEXT 15"
	done
	
TrainTunnelStopsYouWinText1:
	text "WIN TEXT"
	done
	
TrainTunnelStopsYouWinText2:
	text "WIN TEXT"
	done

TrainTunnelStopsYouWinText3:
	text "WIN TEXT"
	done
	
TrainTunnelNPC1Text1:
	text "What are you look-"
	line "ing at?"
	done
	
TrainTunnelNPC1Text2:
	text "You're pretty tough"
	line "kid."
	done
	
TrainTunnelNPC2Text1:
	text "What do you want,"
	line "runt?"
	done
	
TrainTunnelNPC2Text2:
	text "Hehe…"
	
	para "You're kinda cute."
	done
	
TrainTunnelNPC3Text1:
	text "Move along."
	done
	
TrainTunnelNPC3Text2:
	text "Hmm.."
	
	para "Not bad."
	done
		
TrainTunnelNPC4Text1:
	text "This is our turf."
	done
	
TrainTunnelNPC4Text2:
	text "You're good, kid."
	
	para "Now get outta here"
	line "before I change my"
	cont "mind."
	done