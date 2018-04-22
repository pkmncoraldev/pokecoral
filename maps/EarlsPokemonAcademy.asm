const_value set 2
	const EARLSPOKEMONACADEMY_TEACHER
	const EARLSPOKEMONACADEMY_YOUNGSTER
	const EARLSPOKEMONACADEMY_GAMEBOY_KID
	const EARLSPOKEMONACADEMY_LASS
	const EARLSPOKEMONACADEMY_POKEDEX

EarlsPokemonAcademy_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

DaybreakTeacher:
	checkevent EVENT_BEAT_TEACHER
	iftrue .normaltext
	faceplayer
	opentext
	writetext DaybreakTeacherText1
	yesorno
	iftrue .Battle
	writetext DaybreakTeacherText2
	waitbutton
	spriteface EARLSPOKEMONACADEMY_TEACHER, DOWN
	closetext
	end
	
.Battle:
	writetext DaybreakTeacherText3
	waitbutton
	winlosstext DaybreakTeacherWinText, 0
	setlasttalked EARLSPOKEMONACADEMY_TEACHER
	loadtrainer TEACHERFAST, COLETTE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TEACHER
	opentext
	writetext DaybreakTeacherText4
	waitbutton
	verbosegiveitem QUICK_CLAW
	writetext DaybreakTeacherText5
	waitbutton
	spriteface EARLSPOKEMONACADEMY_TEACHER, DOWN
	closetext
	end
.normaltext:
	faceplayer
	opentext
	writetext DaybreakTeacherText6
	waitbutton
	spriteface EARLSPOKEMONACADEMY_TEACHER, DOWN
	closetext
	end
	
DaybreakSchoolNPC1:
	faceplayer
	opentext
	checkevent EVENT_SCHOOL_KID_GAVE_BALLS
	iftrue .normaltext
	writetext DaybreakSchoolNPC1Text1
	waitbutton
	writetext DaybreakSchoolGetPokeballsText
	playsound SFX_ITEM
	waitsfx
	buttonsound
	writetext DaybreakSchoolPutAwayPokeballsText
	waitbutton
	giveitem POKE_BALL, 5
	setevent EVENT_SCHOOL_KID_GAVE_BALLS

.normaltext:
	writetext DaybreakSchoolNPC1Text2
	waitbutton
	spriteface EARLSPOKEMONACADEMY_YOUNGSTER, UP
	closetext
	end

DaybreakSchoolNPC2:
	faceplayer
	opentext
	writetext DaybreakSchoolNPC2Text
	waitbutton
	spriteface EARLSPOKEMONACADEMY_GAMEBOY_KID, DOWN
	closetext
	end
	
DaybreakSchoolNPC3:
	faceplayer
	opentext
	writetext DaybreakSchoolNPC3Text
	waitbutton
	spriteface EARLSPOKEMONACADEMY_LASS, UP
	closetext
	end
	
AcademyBlackboard:
	opentext
	writetext AcademyBlackboardText
.Loop:
	loadmenudata .MenuHeader
	_2dmenu
	closewindow
	if_equal $1, .Poison
	if_equal $2, .Paralysis
	if_equal $3, .Sleep
	if_equal $4, .Burn
	if_equal $5, .Freeze
	closetext
	end

.Poison:
	writetext AcademyPoisonText
	waitbutton
	jump .Loop

.Paralysis:
	writetext AcademyParalysisText
	waitbutton
	jump .Loop

.Sleep:
	writetext AcademySleepText
	waitbutton
	jump .Loop

.Burn:
	writetext AcademyBurnText
	waitbutton
	jump .Loop

.Freeze:
	writetext AcademyFreezeText
	waitbutton
	jump .Loop

.MenuHeader:
	db $40 ; flags
	db 00, 00 ; start coords
	db 08, 11 ; end coords
	dw .Data
	db 1 ; default option

.Data:
	db $80 ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(AcademyBlackboard), 0

.Text:
	db "PSN@"
	db "PAR@"
	db "SLP@"
	db "BRN@"
	db "FRZ@"
	db "QUIT@"

AcademyNotebook:
	opentext
	writetext AcademyNotebookText
	yesorno
	iffalse .Done
	writetext AcademyNotebookText1
	yesorno
	iffalse .Done
	writetext AcademyNotebookText2
	yesorno
	iffalse .Done
	writetext AcademyNotebookText3
	waitbutton
.Done:
	closetext
	end

AcademyStickerMachine:
; unused
	jumptext AcademyStickerMachineText

AcademyBookshelf:
	jumpstd difficultbookshelf

MovementData_0x68b2d:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

DaybreakSchoolGetPokeballsText:
	text "<PLAYER> received"
	line "5 # BALLS!"
	done
	
DaybreakSchoolPutAwayPokeballsText:
	text "<PLAYER> put the"
	line "# BALLS in"
	cont "the BALL POCKET."
	done
	
DaybreakTeacherText1:
	text "Oh! <PLAYER>!"

	para "It's so good to"
	line "see you!"
	
	para "I see you have"
	line "your own #MON."
	
	para "How about we have"
	line "a battle?"
	
	para "That way the other"
	line "kids can see how a"
	
	para "real battle plays"
	line "out."
	done
	
DaybreakTeacherText2:
	text "Oh."
	
	para "Well, I'll be here"
	line "when you're ready"
	cont "to battle."
	done

DaybreakTeacherText3:
	text "I hope you've been"
	line "studying!"
	done

DaybreakTeacherText4:
	text "Good work,"
	line "<PLAYER>!"
	
	para "To commemorate"
	line "your victory you"
	cont "should have this."
	done
	
DaybreakTeacherText5:
	text "Did you see how"
	line "fast my MEOWTH is?"
	
	para "Some items can"
	line "affect how your"
	cont "#MON battles."
	
	para "That QUICK CLAW"
	line "won't magically"
	
	para "make your #MON"
	line "as fast as my"
	
	para "MEOWTH, but it"
	line "will sometimes"
	
	para "allow your #MON"
	line "to attack first."
	
	para "If you want a"
	line "refresher on the"
	
	para "basics of battle"
	line "just look at the"
	cont "chalkboard."
	done
	
DaybreakTeacherText6:
	text "If you want a"
	line "refresher on the"
	
	para "basics of battle"
	line "just look at the"
	cont "chalkboard."
	done
	
DaybreakTeacherWinText:
	text "Great work!"
	
	para "That's an A+ in"
	line "my book!"
	done
	
DaybreakSchoolNPC1Text1:
	text "Hey, <PLAYER>."
	
	para "You have a"
	line "#MON?"
	
	para "That's so cool…"
	
	para "I have to take"
	line "this course again."
	
	para "My parents got me"
	line "these, but since"
	
	para "I can't use them"
	line "why don't you take"
	cont "them?"
	done

DaybreakSchoolNPC1Text2:
	text "# BALLS let you"
	line "catch #MON."
	
	para "You need to throw"
	line "one at the #MON"
	cont "you want to catch."
	
	para "You should"
	line "probably weaken"
	
	para "them first,"
	line "otherwise you'll"
	
	para "have a hard time"
	line "keeping them from"
	cont "breaking out."
	done
	
DaybreakSchoolNPC2Text:
	text "Shhhhhh…"
	
	para "Don't tell the"
	line "teacher."
	
	para "I'm almost on"
	line "the last level."
	done
	
DaybreakSchoolNPC3Text:
	text "This is my first"
	line "time taking this"
	cont "class."
	
	para "I'm really looking"
	line "forward to it!"
	done
		
AcademyBlackboardText:
	text "The blackboard"
	line "describes #MON"

	para "status changes in"
	line "battle."
	done

AcademyBlackboardText2:
; unused
	text "Read which topic?"
	done

AcademyPoisonText:
	text "If poisoned, a"
	line "#MON steadily"
	cont "loses HP."

	para "Poison lingers"
	line "after the battle,"

	para "and HP is lost as"
	line "you walk."

	para "To cure it, use an"
	line "ANTIDOTE."
	done

AcademyParalysisText:
	text "Paralysis reduces"
	line "speed and may"
	cont "prevent movement."

	para "It remains after"
	line "battle, so use"
	cont "a PARLYZ HEAL."
	done

AcademySleepText:
	text "If asleep, your"
	line "#MON can't make"
	cont "a move."

	para "A sleeping #MON"
	line "doesn't wake up"
	cont "after battle."

	para "Wake it up with"
	line "an AWAKENING."
	done

AcademyBurnText:
	text "A burn steadily"
	line "consumes HP."

	para "It also reduces"
	line "attack power."

	para "A burn lingers"
	line "after battle."

	para "Use a BURN HEAL as"
	line "the cure."
	done

AcademyFreezeText:
	text "If your #MON is"
	line "frozen, it can't"
	cont "do a thing."

	para "It remains frozen"
	line "after battle."

	para "Thaw it out with"
	line "an ICE HEAL."
	done

AcademyNotebookText:
	text "It's this kid's"
	line "notebook…"

	para "Catch #MON"
	line "using # BALLS."

	para "Up to six can be"
	line "in your party."

	para "Keep reading?"
	done

AcademyNotebookText1:
	text "Before throwing a"
	line "# BALL, weaken"
	cont "the target first."

	para "A poisoned or"
	line "burned #MON is"
	cont "easier to catch."

	para "Keep reading?"
	done

AcademyNotebookText2:
	text "Some moves may"
	line "cause confusion."

	para "Confusion may make"
	line "a #MON attack"
	cont "itself."

	para "Leaving battle"
	line "clears up any"
	cont "confusion."

	para "Keep reading?"
	done

AcademyNotebookText3:
	text "People who catch"
	line "and use #MON"

	para "in battle are"
	line "#MON trainers."

	para "They are expected"
	line "to visit #MON"

	para "GYMS and defeat"
	line "other trainers."

	para "The next page"
	line "is… Blank!"

	para "Boy: E-he-he…"

	para "I haven't written"
	line "anymore…"
	done

AcademyStickerMachineText:
	text "This super machine"
	line "prints data out as"

	para "stickers!"
	done

EarlsPokemonAcademy_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 15, 4, 1, VIOLET_CITY
	warp_def 15, 3, 1, VIOLET_CITY

.CoordEvents: db 0

.BGEvents: db 4
	signpost 1, 0, SIGNPOST_READ, AcademyBookshelf
	signpost 1, 1, SIGNPOST_READ, AcademyBookshelf
	signpost 0, 3, SIGNPOST_READ, AcademyBlackboard
	signpost 0, 4, SIGNPOST_READ, AcademyBlackboard

.ObjectEvents: db 5
	person_event SPRITE_TEACHER, 2, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, DaybreakTeacher, -1
	person_event SPRITE_YOUNGSTER, 5, 4, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, DaybreakSchoolNPC1, -1
	person_event SPRITE_GAMEBOY_KID, 11, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, DaybreakSchoolNPC2, -1
	person_event SPRITE_LASS, 7, 2, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, DaybreakSchoolNPC3, -1
	person_event SPRITE_POKEDEX, 4, 4, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, AcademyNotebook, -1

