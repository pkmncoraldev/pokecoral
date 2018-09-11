const_value set 2
	const SUNBEAMDOCKHOUSE1NPC
	const SUNBEAMDOCKHOUSE1GREEM1
	const SUNBEAMDOCKHOUSE1GREEM2

VioletGym_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	end
	
.Trigger1:
	opentext
	writetext SunbeamDockHouse1GreemText
	waitbutton
	closetext
	playsound SFX_PAY_DAY
	spriteface SUNBEAMDOCKHOUSE1GREEM1, RIGHT
	showemote EMOTE_SHOCK, SUNBEAMDOCKHOUSE1GREEM1,  15
	playmusic MUSIC_ROCKET_ENCOUNTER
	spriteface PLAYER, LEFT
	opentext
	writetext SunbeamDockHouse1Greem1_1
	waitbutton
	closetext
	pause 5
	playsound SFX_PAY_DAY
	spriteface SUNBEAMDOCKHOUSE1GREEM2, LEFT
	showemote EMOTE_SHOCK, SUNBEAMDOCKHOUSE1GREEM2,  15
	pause 5
	applymovement SUNBEAMDOCKHOUSE1GREEM2, Movement_SunbeamDockHouse1GreemLeft
	spriteface PLAYER, RIGHT
	opentext
	writetext SunbeamDockHouse1Greem2_1
	waitbutton
	closetext
	pause 5
	spriteface PLAYER, LEFT
	opentext
	writetext SunbeamDockHouse1Greem1_2
	waitbutton
	
	winlosstext SunbeamDockHouse1Greem1WinText, 0
	setlasttalked SUNBEAMDOCKHOUSE1GREEM1
	loadtrainer GRUNTF, 4
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	
	opentext
	writetext SunbeamDockHouse1Greem1_3
	applymovement SUNBEAMDOCKHOUSE1GREEM1, Movement_SunbeamDockHouse1Greem1_1
	waitbutton
	closetext
	pause 5
	spriteface PLAYER, RIGHT
	opentext
	writetext SunbeamDockHouse1Greem2_2
	waitbutton
	
	winlosstext SunbeamDockHouse1Greem2WinText, 0
	setlasttalked SUNBEAMDOCKHOUSE1GREEM2
	loadtrainer GRUNTM, 3
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	
	opentext
	writetext SunbeamDockHouse1Greem2_3
	applymovement SUNBEAMDOCKHOUSE1GREEM2, Movement_SunbeamDockHouse1Greem2_1
	waitbutton
	closetext
	pause 5
	opentext
	writetext SunbeamDockHouse1GreemRunAway
	waitbutton
	closetext
	
	applymovement SUNBEAMDOCKHOUSE1GREEM2, Movement_SunbeamDockHouse1Greem2_2
	spriteface SUNBEAMDOCKHOUSE1GREEM2, DOWN
	pause 5
	playsound SFX_EXIT_BUILDING
	disappear SUNBEAMDOCKHOUSE1GREEM2
	applymovement SUNBEAMDOCKHOUSE1GREEM1, Movement_SunbeamDockHouse1Greem1_2
	playsound SFX_EXIT_BUILDING
	disappear SUNBEAMDOCKHOUSE1GREEM1
	setevent EVENT_ISLAND_SAVED_LADY_CHAN
	pause 10
	special Special_FadeOutMusic
	pause 20
	special PlayMapMusic
	dotrigger $0
	end

VioletGym_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 2, ROUTE_29
	warp_def 7, 3, 2, ROUTE_29

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 3
	person_event SPRITE_GRANNY, 4, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, SunbeamDockHouse1NPC, -1
	person_event SPRITE_ROCKET_GIRL, 7, 1, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunbeamDockHouse1Greem, EVENT_ISLAND_SAVED_LADY_CHAN
	person_event SPRITE_ROCKET, 7, 4, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunbeamDockHouse1Greem, EVENT_ISLAND_SAVED_LADY_CHAN

SunbeamDockHouse1NPC:
	checkflag ENGINE_THIRDBADGE
	iffalse .getout
	checkevent EVENT_ISLAND_LADY_CHAN_LEMONADE
	iftrue .gotlemonade
	opentext
	writetext SunbeamDockHouse1NPCText1
	yesorno
	iftrue .restlemonade
	writetext SunbeamDockHouse1NPCText2
	waitbutton
	verbosegiveitem LEMONADE
	writetext SunbeamDockHouse1NPCText3
	waitbutton
	closetext
	setevent EVENT_ISLAND_LADY_CHAN_LEMONADE
	end
		
.restlemonade
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special TrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	opentext
	writetext SunbeamDockHouse1NPCText4
	waitbutton
	verbosegiveitem LEMONADE
	writetext SunbeamDockHouse1NPCText3
	waitbutton
	closetext
	setevent EVENT_ISLAND_LADY_CHAN_LEMONADE
	end
	
.gotlemonade
	opentext
	writetext SunbeamDockHouse1NPCText5
	yesorno
	iftrue .rest
	writetext SunbeamDockHouse1NPCText6
	waitbutton
	closetext
	end
	
.rest
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special TrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	opentext
	writetext SunbeamDockHouse1NPCText7
	waitbutton
	closetext
	end
	
.getout
	jumptextfaceplayer SunbeamDockHouse1NPCText8
	
SunbeamDockHouse1Greem:
	end
	
SunbeamDockHouse1NPCText1:
	text "Thank you so much,"
	line "you brave child!"
	
	para "They just barged"
	line "in and demanded my"
	cont "#MON."
	
	para "I don't even had a"
	line "#MON, but they"
	
	para "wouldn't take no"
	line "for an answer."
	
	para "I hope your #-"
	line "MON aren't injured…"
	
	para "Would you like to"
	line "rest here for a"
	cont "little while?"
	done
	
SunbeamDockHouse1NPCText2:
	text "Oh…"
	
	para "Ok, well at least"
	line "have a drink"
	cont "before you leave."
	done
	
SunbeamDockHouse1NPCText3:
	text "Thank you again"
	line "for your help."
	done
	
SunbeamDockHouse1NPCText4:
	text "Feeling better?"
	
	para "Have a drink"
	line "before you leave."
	done
	
SunbeamDockHouse1NPCText5:
	text "Would you like to"
	line "rest here for a"
	cont "little while?"
	done
	
SunbeamDockHouse1NPCText6:
	text "Oh…"
	
	para "Ok."
	
	para "Thank you for"
	line "stopping by."
	done
	
SunbeamDockHouse1NPCText7:
	text "Thank you for"
	line "stopping by."
	done
	
SunbeamDockHouse1NPCText8:
	text "I don't have a"
	line "#MON."
	
	para "Sometimes I think"
	line "I should get one"
	cont "for protection."
	
	para "What if someone"
	line "were to break in?"
	done
	
SunbeamDockHouse1GreemText:
	text "Come on, old lady!"
	
	para "Hand your #MON"
	line "over!"
	done
	
SunbeamDockHouse1Greem1_1:
	text "Huh?"
	
	para "A kid!"
	done
	
SunbeamDockHouse1Greem1_2:
	text "Don't worry."
	
	para "I'll take care of"
	line "you real quick!"
	done
	
SunbeamDockHouse1Greem1_3:
	text "How did you-?"
	done
	
SunbeamDockHouse1Greem2_1:
	text "What do you think"
	line "you're doing here,"
	cont "twerp?"
	done
	
SunbeamDockHouse1Greem2_2:
	text "Well, you're weak"
	line "now."
	
	para "I'll finish you"
	line "off!"
	done
	
SunbeamDockHouse1Greem2_3:
	text "Both of us!?"
	done
	
SunbeamDockHouse1GreemRunAway:
	text "RUN AWAY!"
	done
	
SunbeamDockHouse1Greem1WinText:
	text "Wait, what!?"
	done
	
SunbeamDockHouse1Greem2WinText:
	text "Me too!?"
	done
	
Movement_SunbeamDockHouse1GreemLeft:
	step LEFT
	step_end
	
Movement_SunbeamDockHouse1Greem1_1:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end
	
Movement_SunbeamDockHouse1Greem1_2:
	big_step UP
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step DOWN
	step_end
	
Movement_SunbeamDockHouse1Greem2_1:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end
	
Movement_SunbeamDockHouse1Greem2_2:
	big_step LEFT
	step_end