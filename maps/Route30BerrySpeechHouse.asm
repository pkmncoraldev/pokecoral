const_value set 2
	const SUNBEAMDOCKHOUSE2NPC
	const SUNBEAMDOCKHOUSE2EXEC
	const SUNBEAMDOCKHOUSE2GREEM1
	const SUNBEAMDOCKHOUSE2GREEM2

Route30BerrySpeechHouse_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	end
	
.Trigger1:
	playmusic MUSIC_ROCKET_ENCOUNTER
	pause 10
	applymovement SUNBEAMDOCKHOUSE2EXEC, Movement_SunbeamDockHouse2Exec1
	playsound SFX_BUMP
	opentext
	writetext SunbeamDockHouse2ExecText1
	waitbutton
	closetext
	pause 10
	opentext
	writetext SunbeamDockHouseNPCEventText1
	waitbutton
	closetext
	pause 10
	opentext
	writetext SunbeamDockHouse2ExecText2
	waitbutton
	closetext
	pause 30
	playsound SFX_PAY_DAY
	spriteface SUNBEAMDOCKHOUSE2GREEM1, DOWN
	showemote EMOTE_SHOCK, SUNBEAMDOCKHOUSE2GREEM1,  15
	opentext
	writetext SunbeamDockHouse2Greem1Text1
	waitbutton
	closetext
	pause 10
	spriteface SUNBEAMDOCKHOUSE2EXEC, DOWN
	
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .girl
	opentext
	writetext SunbeamDockHouse2ExecText3
	waitbutton
	closetext
	jump .cont
.girl
	opentext
	writetext SunbeamDockHouse2ExecText3_g
	waitbutton
	closetext	
.cont
	spriteface SUNBEAMDOCKHOUSE2EXEC, UP
	opentext
	writetext SunbeamDockHouse2Greem1Text2
	waitbutton
	closetext
	applymovement SUNBEAMDOCKHOUSE2GREEM1, Movement_SunbeamDockHouse2Greem1_1
	spriteface SUNBEAMDOCKHOUSE2GREEM1, RIGHT
	spriteface PLAYER, LEFT
	opentext
	writetext SunbeamDockHouse2Greem1Text3
	waitbutton
	closetext
	
	winlosstext SunbeamDockHouse2Greem1WinText, 0
	setlasttalked SUNBEAMDOCKHOUSE2GREEM1
	loadtrainer GRUNTM, 7
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext SunbeamDockHouse2Greem1Text4
	waitbutton
	closetext
	spriteface SUNBEAMDOCKHOUSE2GREEM1, UP
	opentext
	writetext SunbeamDockHouse2Greem1Text5
	waitbutton
	closetext
	pause 10
	spriteface SUNBEAMDOCKHOUSE2GREEM2, DOWN
	opentext
	writetext SunbeamDockHouse2Greem2Text1
	waitbutton
	closetext
	applymovement SUNBEAMDOCKHOUSE2GREEM2, Movement_SunbeamDockHouse2Greem1_1
	spriteface SUNBEAMDOCKHOUSE2GREEM2, LEFT
	spriteface SUNBEAMDOCKHOUSE2GREEM1, RIGHT
	spriteface PLAYER, RIGHT
	opentext
	writetext SunbeamDockHouse2Greem2Text2
	waitbutton
	closetext
	
	winlosstext SunbeamDockHouse2Greem2WinText, 0
	setlasttalked SUNBEAMDOCKHOUSE2GREEM2
	loadtrainer GRUNTM, 8
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	
	opentext
	writetext SunbeamDockHouse2Greem2Text3
	waitbutton
	closetext
	spriteface SUNBEAMDOCKHOUSE2GREEM2, UP
	opentext
	writetext SunbeamDockHouse2Greem2Text4
	waitbutton
	closetext
	
	pause 20
	spriteface SUNBEAMDOCKHOUSE2EXEC, DOWN
	spriteface PLAYER, RIGHT
	opentext
	writetext SunbeamDockHouse2ExecText4
	waitbutton
	closetext
	applymovement SUNBEAMDOCKHOUSE2EXEC, Movement_SunbeamDockHouse2Down
	spriteface PLAYER, UP
	opentext
	writetext SunbeamDockHouse2ExecText5
	waitbutton
	closetext
	
	winlosstext SunbeamDockHouse2ExecWinText, 0
	setlasttalked SUNBEAMDOCKHOUSE2EXEC
	loadtrainer EXECUTIVEM, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	
	applymovement SUNBEAMDOCKHOUSE2EXEC, Movement_SunbeamDockHouse2Exec2
	opentext
	writetext SunbeamDockHouse2ExecText6
	waitbutton
	closetext
	applymovement SUNBEAMDOCKHOUSE2EXEC, Movement_SunbeamDockHouse2Down
	opentext
	writetext SunbeamDockHouse2ExecText7
	waitbutton
	closetext
	
	playsound SFX_ENTER_DOOR
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear SUNBEAMDOCKHOUSE2EXEC
	disappear SUNBEAMDOCKHOUSE2GREEM1
	disappear SUNBEAMDOCKHOUSE2GREEM2
	domaptrigger ROUTE_29, $1
	domaptrigger CHERRYGROVE_CITY, $1
	setevent EVENT_ISLAND_GREEM_MAN
	clearflag ENGINE_PUNKS_IN_STARGLOW
	variablesprite SPRITE_LEILANI_PSYDUCK, SPRITE_PSYDUCK
	variablesprite SPRITE_GENTLEMAN_GRUNTF, SPRITE_GENTLEMAN
	setevent EVENT_ISLAND_SAVED
	setevent EVENT_ISLAND_LADY_CHAN_LEMONADE
	waitsfx
	pause 10
	special Special_FadeInQuickly
	special Special_FadeOutMusic
	pause 20
	special PlayMapMusic
	dotrigger $0
	end
	
Route30BerrySpeechHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 5, 2, 1, ROUTE_29
	warp_def 5, 3, 1, ROUTE_29

.CoordEvents: db 0

.BGEvents: db 1
	signpost 1, 5, SIGNPOST_READ, SunbeamDockHouse2Trashcan

.ObjectEvents: db 4
	person_event SPRITE_FISHER, 1, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamDockHouse2NPC, -1
	person_event SPRITE_EXEC, 3, 2, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunbeamDockHouse2Exec, EVENT_ISLAND_GREEM_MAN
	person_event SPRITE_ROCKET, 3, 1, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunbeamDockHouse2Greem1, EVENT_ISLAND_GREEM_MAN
	person_event SPRITE_ROCKET, 3, 3, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunbeamDockHouse2Greem2, EVENT_ISLAND_GREEM_MAN

SunbeamDockHouse2Trashcan:
	jumptext SunbeamDockHouse2TrashcanText
	
SunbeamDockHouse2NPC:
	checkevent EVENT_ISLAND_SAVED
	iftrue .islandsaved
	jumptextfaceplayer SunbeamDockHouse2NPCText1
	end
.islandsaved
	checkevent EVENT_ISLAND_SAVED_HEALED
	iftrue .islandsavedhealed
	opentext
	writetext SunbeamDockHouse2NPCText3
	yesorno
	iftrue .rest
	setevent EVENT_ISLAND_SAVED_HEALED
	writetext SunbeamDockHouse2NPCText2
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
	setevent EVENT_ISLAND_SAVED_HEALED
	jumptextfaceplayer SunbeamDockHouse2NPCText2
	end
	
.islandsavedhealed
	jumptextfaceplayer SunbeamDockHouse2NPCText2
	end
	
SunbeamDockHouse2Exec:
	end
	
SunbeamDockHouse2Greem1:
	end
	
SunbeamDockHouse2Greem2:
	end
	
SunbeamDockHouse2TrashcanText:
	text "It's empty."
	done
	
SunbeamDockHouse2NPCText1:
	text "Sorry, kid."
	
	para "No boats are"
	line "running for now."
	done
	
SunbeamDockHouse2NPCText2:
	text "You're a lifesaver,"
	line "kid."
	
	para "I don't know what"
	line "I was going to do,"
	
	para "but I couldn't let"
	line "those guys just"
	
	para "make off with all"
	line "those CORSOLA."
	done
	
SunbeamDockHouse2NPCText3:
	text "Oh man…"
	
	para "Thanks a lot,"
	line "kid!"
	
	para "Are you #MON"
	line "hurt?"
	
	para "You should rest"
	line "for a minute."
	done
	
SunbeamDockHouse2ExecText1:
	text "???: I won't ask"
	line "again."
	
	para "Give me a boat,"
	line "now!"
	done
	
SunbeamDockHouse2ExecText2:
	text "???: You just won't"
	line "make this easy on"
	cont "me, will you?"
	done
	
SunbeamDockHouse2ExecText3:
	text "Huh?"
	
	para "It's just some kid."
	
	para "One of you take"
	line "care of him."
	
	para "I'm busy."
	done
	
SunbeamDockHouse2ExecText3_g:
	text "Huh?"
	
	para "It's just some kid."
	
	para "One of you take"
	line "care of her."
	
	para "I'm busy."
	done
	
SunbeamDockHouse2ExecText4:
	text "You two idiots"
	line "can't even handle"
	cont "a measly kid?"
	
	para "Unbelievable!"
	
	para "I'll show you"
	line "worthless morons"
	cont "how it's done."
	done
	
SunbeamDockHouse2ExecText5:
	text "This ends now!"
	done
	
SunbeamDockHouse2ExecText6:
	text "WHAT!?"
	done
	
SunbeamDockHouse2ExecText7:
	text "Not bad…"
	
	para "Not bad at all."
	
	para "I guess I have no"
	line "choice but to re-"
	cont "treat for now."
	
	para "Just know this…"
	
	para "This isn't over."	
	done
	
SunbeamDockHouseNPCEventText1:
	text "N-n-no!"
	
	para "I won't do that!"
	done
	
SunbeamDockHouse2Greem1Text1:
	text "Uh…"
	
	para "BOSS?"
	
	para "We have a witness,"
	line "here."
	done
	
SunbeamDockHouse2Greem1Text2:
	text "Sure thing, BOSS."
	done
	
SunbeamDockHouse2Greem1Text3:
	text "You heard him,"
	line "kid."
	
	para "We can't have you"
	line "blabbin' what you"
	
	para "saw here, now can"
	line "we?"
	done
	
SunbeamDockHouse2Greem1Text4:
	text "Why you little!"
	done
	
SunbeamDockHouse2Greem1Text5:
	text "I need some help"
	line "over here!"
	done
	
SunbeamDockHouse2Greem2Text1:
	text "For real?"
	
	para "Move over!"
	done
	
SunbeamDockHouse2Greem2Text2:
	text "I'll handle it."
	done
	
SunbeamDockHouse2Greem2Text3:
	text "You're tough, you"
	line "little punk!"
	done
	
SunbeamDockHouse2Greem2Text4:
	text "Umm…"
	
	para "BOSS?"
	
	para "We need some help"
	line "with this kid…"
	done
	
SunbeamDockHouse2Greem1WinText:
	text "Uh oh…"
	done
	
SunbeamDockHouse2Greem2WinText:
	text "That ain't good…"
	done
	
SunbeamDockHouse2ExecWinText:
	text "I don't believe"
	line "it!"
	
	para "Done in by a runt?"
	done
	
Movement_SunbeamDockHouse2Exec1:
	fix_facing
	step DOWN
	step_sleep 10
	big_step UP
	remove_fixed_facing
	step_end
	
Movement_SunbeamDockHouse2Exec2:
	fix_facing
	big_step UP
	remove_fixed_facing
	step_end
	
Movement_SunbeamDockHouse2Greem1_1:
	step DOWN
	step DOWN
	step_end
	
Movement_SunbeamDockHouse2Down:
	step DOWN
	step_end