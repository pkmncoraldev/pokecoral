const_value set 2
	const GLINT_RIVAL
	const GLINT_CONTACT_GUY_1
	const GLINT_CONTACT_GUY_2

Route35_MapScriptHeader:
.MapTriggers:
	db 4

	maptrigger .Trigger0
	maptrigger .Trigger1
	maptrigger .Trigger2
	maptrigger .Trigger3

.MapCallbacks:
	db 0

.Trigger0:
	end
	
.Trigger1:
	end
	
.Trigger2:
	end
	
.Trigger3:
	end
	
Route35_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 4, 9, 1, ROUTE_32
	warp_def 4, 8, 2, ROUTE_32

.CoordEvents: db 8
	xy_trigger 0, 12, 8, 0, GlintContactsScriptL, 0, 0
	xy_trigger 0, 12, 9, 0, GlintContactsScriptR, 0, 0
	xy_trigger 1, 5, 8, 0, GlintRival_L, 0, 0
	xy_trigger 1, 5, 9, 0, GlintRival_R, 0, 0
	xy_trigger 3, 17, 9, 0, GlintContactsScriptSquish, 0, 0
	xy_trigger 3, 17, 8, 0, GlintContactsScriptSquish, 0, 0
	xy_trigger 3, 12, 8, 0, GlintContactsScriptL, 0, 0
	xy_trigger 3, 12, 9, 0, GlintContactsScriptR, 0, 0

.BGEvents: db 1
	signpost 10, 10, SIGNPOST_READ, GlintGroveSign

.ObjectEvents: db 3
	person_event SPRITE_SILVER, 0, 0, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, -1, EVENT_GLINT_RIVAL_WILL_BUMP
	person_event SPRITE_SUPER_NERD, 11, 7, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, -1, EVENT_GLINT_CONTACT_GUY_1
	person_event SPRITE_SUPER_NERD, 11, 7, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, GlintGroveEntranceContactsGuy, EVENT_GLINT_CONTACT_GUY_2

GlintContactsScriptSquish:
	callasm .StopRunning
	playsound SFX_EGG_CRACK
	pause 10
	opentext
	writetext GlintGroveEntranceContactsSquishText
	waitbutton
	closetext
	dotrigger $0
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
GlintContactsScriptL:
	callasm .StopRunning
	spriteface GLINT_CONTACT_GUY_1, RIGHT
	playsound SFX_PAY_DAY
	showemote EMOTE_SHOCK, GLINT_CONTACT_GUY_1, 15
	pause 7
	applymovement GLINT_CONTACT_GUY_1, Movement_GlintContactsScriptL1
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_GLINT_CONTACT_GUY
	iftrue .skiptalk
	writetext GlintGroveEntranceContactsGuy1Text1
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintContactsDown
	applymovement GLINT_CONTACT_GUY_1, Movement_GlintContactsScriptL2
	setevent EVENT_TALKED_TO_GLINT_CONTACT_GUY
	dotrigger $3
	end
.skiptalk
	writetext GlintGroveEntranceContactsGuy1Text2
	waitbutton
	closetext
	applymovement GLINT_CONTACT_GUY_1, Movement_GlintContactsScriptL2
	applymovement PLAYER, Movement_GlintContactsDown
	end
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
GlintContactsScriptR:
	callasm .StopRunning
	spriteface GLINT_CONTACT_GUY_1, RIGHT
	playsound SFX_PAY_DAY
	showemote EMOTE_SHOCK, GLINT_CONTACT_GUY_1, 15
	pause 7
	applymovement GLINT_CONTACT_GUY_1, Movement_GlintContactsScriptR1
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_GLINT_CONTACT_GUY
	iftrue .skiptalk
	writetext GlintGroveEntranceContactsGuy1Text1
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintContactsDown
	applymovement GLINT_CONTACT_GUY_1, Movement_GlintContactsScriptR2
	setevent EVENT_TALKED_TO_GLINT_CONTACT_GUY
	dotrigger $3
	end
.skiptalk
	writetext GlintGroveEntranceContactsGuy1Text2
	waitbutton
	closetext
	applymovement GLINT_CONTACT_GUY_1, Movement_GlintContactsScriptR2
	applymovement PLAYER, Movement_GlintContactsDown
	end
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
GlintGroveEntranceContactsGuy:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_GLINT_CONTACT_GUY
	iffalse .didntseecontactguyscene
	writetext GlintGroveEntranceContactsGuyText
	waitbutton
	closetext
	end
.didntseecontactguyscene
	writetext GlintGroveEntranceContactsGuyText2
	waitbutton
	closetext
	end
	
GlintGroveSign:
	jumptext GlintGroveSignText
	
GlintRival_L:
	callasm .StopRunning
	playsound SFX_EXIT_BUILDING
	moveperson GLINT_RIVAL, 8, 4
	appear GLINT_RIVAL
	clearevent EVENT_GLINT_RIVAL_WILL_BUMP
	playsound SFX_BUMP
	applymovement PLAYER, Movement_GlintRivalBump
	playmusic MUSIC_RIVAL_AFTER
	applymovement GLINT_RIVAL, Movement_GlintRivalBump2
	opentext
	writetext GlintRivalText1
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .totodile
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	iftrue .cyndaquil
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .chikorita
	checkevent EVENT_GOT_SQUIRTLE_FROM_ELM
	iftrue .squirtle
	checkevent EVENT_GOT_CHARMANDER_FROM_ELM
	iftrue .charmander
	checkevent EVENT_GOT_BULBASAUR_FROM_ELM
	iftrue .bulbasaur
	
.totodile
	winlosstext GlintRivalWinText, GlintRivalLoseText
	setlasttalked GLINT_RIVAL
	loadtrainer RIVAL1, 12
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .afterbattle
	
.cyndaquil
	winlosstext GlintRivalWinText, GlintRivalLoseText
	setlasttalked GLINT_RIVAL
	loadtrainer RIVAL1, 11
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .afterbattle
	
.chikorita
	winlosstext GlintRivalWinText, GlintRivalLoseText
	setlasttalked GLINT_RIVAL
	loadtrainer RIVAL1, 10
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .afterbattle
	
.squirtle
	winlosstext GlintRivalWinText, GlintRivalLoseText
	setlasttalked GLINT_RIVAL
	loadtrainer RIVAL1, 9
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .afterbattle
	
.charmander
	winlosstext GlintRivalWinText, GlintRivalLoseText
	setlasttalked GLINT_RIVAL
	loadtrainer RIVAL1, 8
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .afterbattle

.bulbasaur
	winlosstext GlintRivalWinText, GlintRivalLoseText
	setlasttalked GLINT_RIVAL
	loadtrainer RIVAL1, 7
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	
.afterbattle
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext GlintRivalText2
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintRivalOuttaTheWay2
	spriteface PLAYER, LEFT
	applymovement GLINT_RIVAL, Movement_GlintRivalWalkAway
	disappear GLINT_RIVAL
	special Special_FadeOutMusic
	pause 15
	playmapmusic
	setevent EVENT_GLINT_RIVAL_WILL_BUMP
	dotrigger $2
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
GlintRival_R:
	callasm .StopRunning
	playsound SFX_EXIT_BUILDING
	moveperson GLINT_RIVAL, 9, 4
	appear GLINT_RIVAL
	clearevent EVENT_GLINT_RIVAL_WILL_BUMP
	playsound SFX_BUMP
	applymovement PLAYER, Movement_GlintRivalBump
	playmusic MUSIC_RIVAL_AFTER
	applymovement GLINT_RIVAL, Movement_GlintRivalBump2
	opentext
	writetext GlintRivalText1
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .totodile
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	iftrue .cyndaquil
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .chikorita
	checkevent EVENT_GOT_SQUIRTLE_FROM_ELM
	iftrue .squirtle
	checkevent EVENT_GOT_CHARMANDER_FROM_ELM
	iftrue .charmander
	checkevent EVENT_GOT_BULBASAUR_FROM_ELM
	iftrue .bulbasaur
	
.totodile
	winlosstext GlintRivalWinText, GlintRivalLoseText
	setlasttalked GLINT_RIVAL
	loadtrainer RIVAL1, 12
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .afterbattle
	
.cyndaquil
	winlosstext GlintRivalWinText, GlintRivalLoseText
	setlasttalked GLINT_RIVAL
	loadtrainer RIVAL1, 11
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .afterbattle
	
.chikorita
	winlosstext GlintRivalWinText, GlintRivalLoseText
	setlasttalked GLINT_RIVAL
	loadtrainer RIVAL1, 10
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .afterbattle
	
.squirtle
	winlosstext GlintRivalWinText, GlintRivalLoseText
	setlasttalked GLINT_RIVAL
	loadtrainer RIVAL1, 9
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .afterbattle
	
.charmander
	winlosstext GlintRivalWinText, GlintRivalLoseText
	setlasttalked GLINT_RIVAL
	loadtrainer RIVAL1, 8
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .afterbattle

.bulbasaur
	winlosstext GlintRivalWinText, GlintRivalLoseText
	setlasttalked GLINT_RIVAL
	loadtrainer RIVAL1, 7
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	
.afterbattle
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext GlintRivalText2
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintRivalOuttaTheWay1
	spriteface PLAYER, RIGHT
	applymovement GLINT_RIVAL, Movement_GlintRivalWalkAway
	disappear GLINT_RIVAL
	special Special_FadeOutMusic
	pause 15
	playmapmusic
	setevent EVENT_GLINT_RIVAL_WILL_BUMP
	dotrigger $2
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
GlintGroveSignText:
	text "GLINT GROVE"
	done
	
GlintRivalText1:
	text "Hey!"
	line "Watch it!"
	
	para "You?"
	
	para "What are you doing"
	line "here?"
	
	para "I left my #DEX"
	line "at the LIGHTHOUSE?"
	
	para "And what makes you"
	line "think you could"
	cont "just take it?"
	
	para "I don't need help"
	line "from a weakling"
	cont "like you."
	
	para "I bet you aren't"
	line "even any stronger"
	
	para "than you were when"
	line "you first got your"
	cont "#MON!"
	
	para "I was heading"
	line "home, but I could"
	
	para "take you down real"
	line "quick."
	done

GlintRivalText2:
	text "Tch!"
	
	para "Whatever…"
	
	para "I don't need to"
	line "deal with this."
	
	para "You can't keep"
	line "getting lucky"
	cont "forever."
	
	para "Outta my way!"
	done
	
GlintRivalWinText:
	text "What?"
	
	para "Again?"
	done
	
GlintRivalLoseText:
	text "Hmph!"
	
	para "Too easy."
	done
	
GlintGroveEntranceContactsGuy1Text1:
	text "Wait!"
	
	para "I dropped my cont-"
	line "act lens on the"
	cont "ground!"
	
	para "I can't see a"
	line "thing!"
	
	para "…"
	
	para "What?"
	
	para "Why are you look-"
	line "ing at me like"
	cont "that?"
	
	para "You don't believe"
	line "me?"
	
	para "…"
	
	para "Look, can you just"
	line "come back after"
	cont "I've found my"
	cont "contact lens?"
	done
	
GlintGroveEntranceContactsGuy1Text2:
	text "Hey!"
	
	para "Can you just come"
	line "back after I've"
	cont "found my contact"
	cont "lens?"
	done
	
GlintGroveEntranceContactsGuyText:
	text "I found my contact"
	line "lens, but it's all"
	cont "squished!"
	
	para "I still can't see"
	line "anything!"
	done
	
GlintGroveEntranceContactsGuyText2:
	text "I dropped my con-"
	line "tact lens on the"
	cont "ground earlier."
	
	para "I'm lucky someone"
	line "didn't walk by"
	
	para "while I was look-"
	line "ing for it."
	
	para "It could have been"
	line "squished!"
	done
	
GlintGroveEntranceContactsSquishText:
	text "Squitch!"
	
	para "You stepped on a…"
	
	para "CONTACT LENS!"
	
	para "Better just keep"
	line "moving…"
	done
	
Movement_GlintContactsDown:
	step DOWN
	step_end
	
Movement_GlintContactsScriptL1:
	step RIGHT
	step_end
	
Movement_GlintContactsScriptL2:
	step LEFT
	step_end
	
Movement_GlintContactsScriptR1:
	step RIGHT
	step RIGHT
	step_end
	
Movement_GlintContactsScriptR2:
	step LEFT
	step LEFT
	step_end
	
Movement_GlintRivalBump:
	fix_facing
	jump_step DOWN
	remove_fixed_facing
	step_end
	
Movement_GlintRivalBump2:
	big_step DOWN
	big_step DOWN
	step_end
	
Movement_GlintRivalWalkAway:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
Movement_GlintRivalOuttaTheWay1:
	step LEFT
	step_end
	
Movement_GlintRivalOuttaTheWay2:
	step RIGHT
	step_end