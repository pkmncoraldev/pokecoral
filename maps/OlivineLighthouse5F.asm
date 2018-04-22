const_value set 2
	const STARGLOWCENTER_NURSE
	const STARGLOWCENTER_GAMEBOYKID
	const STARGLOWCENTER_GENTLEMAN
	const STARGLOWCENTER_GIRL
	const STARGLOWCENTER_ROCKET

OlivineLighthouse5F_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	disappear STARGLOWCENTER_ROCKET
	end
	
.Trigger1:
	end
	
OlivineLighthouse5F_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 4, 5, LAKE_OF_RAGE
	warp_def 7, 5, 5, LAKE_OF_RAGE

.CoordEvents: db 2
	xy_trigger 1, 7, 4, 0, StarglowCenterRocketStopsYouL, 0, 0
	xy_trigger 1, 7, 5, 0, StarglowCenterRocketStopsYouR, 0, 0

.BGEvents: db 0

.ObjectEvents: db 5
	person_event SPRITE_NURSE, 1, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, StarglowCenterNurse, -1
	person_event SPRITE_GAMEBOY_KID, 5, 8, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, StarglowCenterGameboyKid, -1
	person_event SPRITE_GENTLEMAN, 5, 1, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, StarglowCenterGramps, -1
	person_event SPRITE_TEACHER, 2, 9, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, StarglowCenterGirl, -1
	person_event SPRITE_ROCKET, -6, -6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, -1

StarglowCenterRocketStopsYouR:
	moveperson STARGLOWCENTER_ROCKET, $5, $8
	jump StarglowCenterRocketStopsYou
StarglowCenterRocketStopsYouL:
	moveperson STARGLOWCENTER_ROCKET, $4, $8
StarglowCenterRocketStopsYou:
	callasm .StopRunning
	playsound SFX_PAY_DAY
	spriteface PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_NONE
	pause 7
	appear STARGLOWCENTER_ROCKET
	playsound SFX_ENTER_DOOR
	applymovement PLAYER, Movement_StarglowCenterRocket
	applymovement STARGLOWCENTER_ROCKET, Movement_StarglowCenterRocket
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext StarglowCenterRocketText1
	waitbutton
	closetext
	winlosstext StarglowCenterRocketWinText, 0
	setlasttalked STARGLOWCENTER_ROCKET
	loadtrainer GRUNTM, 4
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext StarglowCenterRocketText2
	waitbutton
	closetext
	applymovement STARGLOWCENTER_ROCKET, Movement_StarglowCenterRocket2
	pause 8
	playsound SFX_EXIT_BUILDING
	disappear STARGLOWCENTER_ROCKET
	pause 8
	special Special_FadeOutMusic
	pause 15
	playmapmusic
	setevent EVENT_BEAT_STARGLOW_ROCKET_3
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
	
StarglowCenterNurse:
	checkevent EVENT_HEALED_AT_STARGLOW_CENTER
	iftrue .normal
	dotrigger $1
	setevent EVENT_HEALED_AT_STARGLOW_CENTER
.normal
	jumpstd pokecenternurse
	
StarglowCenterGameboyKid:
	faceplayer
	opentext
	writetext StarglowCenterGameboyKidText
	waitbutton
	spriteface STARGLOWCENTER_GAMEBOYKID, DOWN
	closetext
	end
	
StarglowCenterGramps:
	jumptextfaceplayer StarglowCenterGrampsText
	
StarglowCenterGirl:
	jumptextfaceplayer StarglowCenterGirlText
	
StarglowCenterGameboyKidText:
	text "Some #MON only"
	line "evolve if you"
	
	para "trade them with"
	line "another person."
	
	para "I've heard that"
	line "they've recently"
	
	para "developed another"
	line "way to evolve"
	cont "them, though!"
	
	para "How cool is that?"
	done
	
StarglowCenterGrampsText:
	text "STARGLOW VALLEY"
	line "was founded as a"
	cont "fishing village."
	
	para "Plenty of fisher-"
	line "men still swear by"
	
	para "the fishing around"
	line "here, but I'm not"
	cont "so sure."
	done
	
StarglowCenterGirlText:
	text "Have you heard of"
	line "PROF. SPRUCE?"
	
	para "He's an authority"
	line "on #MON around"
	cont "here."
	
	para "I think he lives"
	line "on SUNBEAM ISLAND,"
	cont "south of here."
	done
	
StarglowCenterRocketText1:
	text "Woah!"
	
	para "Where ya going,"
	line "runt?"
	
	para "No one goes in or"
	line "out of here until"
	
	para "I have all of the"
	line "#MON in this"
	cont "# CENTER!"
	
	para "Hand 'em over,"
	line "kid!"
	done
	
StarglowCenterRocketText2:
	text "Man!"
	
	para "I can't even beat"
	line "a measly kid!"
	done
	
StarglowCenterRocketWinText:
	text "No way!"
	
	para "How?"
	done
	
Movement_StarglowCenterRocket:
	fix_facing
	step UP
	remove_fixed_facing
	step_end
	
Movement_StarglowCenterRocket2:
	turn_head DOWN
	step_end