const_value set 2
	const SUNBEAM_DONPHAN
	const SUNBEAM_SLOWPOKE
	const SUNBEAM_CROWD1
	const SUNBEAM_CROWD2
	const SUNBEAM_CROWD3
	const SUNBEAM_CROWD4
	const SUNBEAM_CROWD5
	const SUNBEAM_CROWD6
	const SUNBEAM_LEILANI
	const SUNBEAM_NPC1
	const SUNBEAM_NPC2
	const SUNBEAM_NPC3
	const SUNBEAM_NPC4
	const SUNBEAM_NPC5
	const SUNBEAM_NPC6
	

CherrygroveCity_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 1

	; callbacks
	dbw MAPCALLBACK_NEWMAP, .Flypoint
	
.Trigger0:
	end
	
.Trigger1:
	end
	
.Flypoint:
	setflag ENGINE_FLYPOINT_SUNBEAM
	return
	
CherrygroveCity_MapEventHeader:: db 0, 0

.Warps: db 12
	warp_def 9, 27, 2, CHERRYGROVE_MART
	warp_def 9, 21, 1, CHERRYGROVE_POKECENTER_1F
	warp_def 18, 34, 1, SAFFRON_CITY
	warp_def 33, 11, 1, GUIDE_GENTS_HOUSE
	warp_def 29, 21, 1, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE
	warp_def 15, 10, 1, ELMS_LAB
	warp_def 25, 5, 1, ELMS_HOUSE
	warp_def 25, 11, 1, KRISS_NEIGHBORS_HOUSE
	warp_def 39, 11, 1, MR_POKEMONS_HOUSE
	warp_def 11, 10, 3, ELMS_LAB
	warp_def 11, 11, 3, ELMS_LAB
	warp_def 18, 35, 2, CHERRYGROVE_GYM_SPEECH_HOUSE

.CoordEvents: db 2
	xy_trigger 0, 38, 17, 0, SunbeamStartFirstContestR, 0, 0
	xy_trigger 0, 38, 16, 0, SunbeamStartFirstContestL, 0, 0

.BGEvents: db 7
	signpost 16, 12, SIGNPOST_READ, SunBeamLabSign
	signpost 19, 23, SIGNPOST_READ, SunBeamGymSign
	signpost 40, 10, SIGNPOST_READ, SunBeamSurfSign
	signpost 39, 12, SIGNPOST_READ, SunBeamSurfboards
	signpost 39, 13, SIGNPOST_READ, SunBeamSurfboards
	signpost 9, 22, SIGNPOST_READ, SunBeamPokeSign
	signpost 9, 28, SIGNPOST_READ, SunBeamMartSign

.ObjectEvents: db 15
	person_event SPRITE_LEILANI_DONPHAN, 6, 13, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, -1
	person_event SPRITE_SLOWPOKE, 13, -1, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIslandSlowpoke, -1
	person_event SPRITE_FISHER, 41, 21, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, EVENT_SAW_FIRST_BIKINI_CONTEST
	person_event SPRITE_POKEFAN_M, 41, 20, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, EVENT_SAW_FIRST_BIKINI_CONTEST
	person_event SPRITE_COOLTRAINER_F, 42, 21, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, EVENT_SAW_FIRST_BIKINI_CONTEST
	person_event SPRITE_YOUNGSTER, 42, 19, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, EVENT_SAW_FIRST_BIKINI_CONTEST
	person_event SPRITE_YOUNGSTER, 41, 18, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, EVENT_SAW_FIRST_BIKINI_CONTEST
	person_event SPRITE_LASS, 41, 23, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, EVENT_SAW_FIRST_BIKINI_CONTEST
	person_event SPRITE_LEILANI_DONPHAN, 0, 0, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, EVENT_SAW_FIRST_BIKINI_CONTEST
	person_event SPRITE_FISHER, 20, 18, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIslandNPC1, -1
	person_event SPRITE_POKEFAN_M, 10, 24, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandNPC2, -1
	person_event SPRITE_LASS, 16, 0, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SunbeamIslandNPC3, -1
	person_event SPRITE_GRANNY, 26, 9, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandNPC4, -1
	person_event SPRITE_LASS, 42, 8, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandNPC5, -1
	person_event SPRITE_YOUNGSTER, 45, 3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIslandNPC6, -1

SunbeamStartFirstContestR:
	callasm .StopRunning
	moveperson SUNBEAM_LEILANI, 21, 39
	playmusic MUSIC_GAME_CORNER
	opentext
	writetext SunbeamFirstContestText1
	waitbutton
	closetext
	applymovement PLAYER, Movement_SunbeamFirstContest1R
	jump SunbeamStartFirstContestCont
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
SunbeamStartFirstContestL:
	callasm .StopRunning
	moveperson SUNBEAM_LEILANI, 21, 39
	playmusic MUSIC_GAME_CORNER
	opentext
	writetext SunbeamFirstContestText1
	waitbutton
	closetext
	applymovement PLAYER, Movement_SunbeamFirstContest1L
	jump SunbeamStartFirstContestCont
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret	
	
SunbeamStartFirstContestCont
	callasm .MetLeilani
	variablesprite SPRITE_LEILANI_DONPHAN, SPRITE_LEILANI
	special MapCallbackSprites_LoadUsedSpritesGFX
;	pause 7
	opentext
	writetext SunbeamFirstContestText2
	waitbutton
	playmusic MUSIC_NONE
	
	spriteface SUNBEAM_CROWD1, LEFT
	pause 10
	spriteface SUNBEAM_CROWD3, LEFT
	pause 10
	spriteface SUNBEAM_CROWD5, RIGHT
	pause 10
	spriteface SUNBEAM_CROWD3, UP
	pause 10
	spriteface SUNBEAM_CROWD1, UP
	pause 10
	spriteface SUNBEAM_CROWD6, LEFT
	pause 10
	spriteface SUNBEAM_CROWD5, UP
	pause 10
	spriteface SUNBEAM_CROWD6, UP
	pause 10
	
	waitbutton
	writetext SunbeamFirstContestText3
	playmusic MUSIC_GAME_CORNER
	playsound SFX_DEX_FANFARE_230_PLUS
	waitsfx
	playmusic MUSIC_GAME_CORNER
	waitbutton
	closetext
	pause 7
	appear SUNBEAM_LEILANI
	playsound SFX_EXIT_BUILDING
	pause 5
	applymovement SUNBEAM_LEILANI, Movement_SunbeamFirstContest2
	spriteface SUNBEAM_LEILANI, DOWN
	opentext
	writetext SunbeamFirstContestText4
	waitbutton
	closetext
	applymovement SUNBEAM_LEILANI, Movement_SunbeamFirstContest3
	pause 14
	opentext
	writetext SunbeamFirstContestText5
	waitbutton
	closetext
	pause 7
	
	playsound SFX_ENTER_DOOR
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear SUNBEAM_CROWD1
	disappear SUNBEAM_CROWD2
	disappear SUNBEAM_CROWD3
	disappear SUNBEAM_CROWD4
	disappear SUNBEAM_CROWD5
	disappear SUNBEAM_CROWD6
	waitsfx
	pause 10
	special Special_FadeInQuickly
	special RestartMapMusic
	applymovement SUNBEAM_LEILANI, Movement_SunbeamFirstContest4
	spriteface SUNBEAM_LEILANI, DOWN
	opentext
	writetext SunbeamLeilaniText
	waitbutton
	closetext
	applymovement SUNBEAM_LEILANI, Movement_SunbeamFirstContest5
	disappear SUNBEAM_LEILANI
	variablesprite SPRITE_LEILANI_DONPHAN, SPRITE_DONPHAN
	special MapCallbackSprites_LoadUsedSpritesGFX
	setevent EVENT_SAW_FIRST_BIKINI_CONTEST
	setflag ENGINE_BIKINI_CONTEST
	dotrigger $1
	end
	
.MetLeilani
	ld hl, MetGymLeaderFlags
	set 2, [hl] ; metleilani
	ret
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
SunbeamIslandDonphan
	jumptext SunbeamIslandDonphanText
	
SunbeamIslandSlowpoke:
	jumptext SunbeamIslandSlowpokeText
	
SunbeamIslandNPC1:
	jumptextfaceplayer SunbeamIslandNPC1Text
	
SunbeamIslandNPC2:
	jumptextfaceplayer SunbeamIslandNPC2Text
	
SunbeamIslandNPC3:
	faceplayer
	opentext
	writetext SunbeamIslandNPC3Text
	waitbutton
	spriteface SUNBEAM_NPC3, UP
	closetext
	end
	
SunbeamIslandNPC4:
	jumptextfaceplayer SunbeamIslandNPC4Text
	
SunbeamIslandNPC5:
	jumptextfaceplayer SunbeamIslandNPC5Text
	
SunbeamIslandNPC6:
	faceplayer
	opentext
	writetext SunbeamIslandNPC6Text
	waitbutton
	spriteface SUNBEAM_NPC6, DOWN
	closetext
	end
	
SunBeamLabSign:
	jumptext SunBeamLabSignText
	
SunBeamGymSign:
	jumptext SunBeamGymSignText
	
SunBeamSurfSign:
	checkflag ENGINE_BIKINI_CONTEST
	iftrue .donebikinicontest
	jumptext SunBeamSurfSignText2
.donebikinicontest
	jumptext SunBeamSurfSignText1
	
SunBeamSurfboards:
	jumptext SunBeamSurfboardsText
	
SunBeamPokeSign:
	jumpstd pokecentersign
	
SunBeamMartSign:
	jumpstd martsign
	
SunBeamLabSignText:
	text "SPRUCE #MON LAB"
	done

SunBeamGymSignText:
	text "GYM"
	done

SunBeamSurfSignText1:
	text "SUNBEAM SURF SHOP"
	
	para "Surf's up!"
	done
	
SunBeamSurfSignText2:
	text "SUNBEAM SURF SHOP"
	
	para "Surf's up!"
	
	para "Judges wanted for"
	line "BEACH BATTLE"
	cont "BEAUTY CONTEST."
	
	para "Inquire inside for"
	line "details."	
	done

SunBeamSurfboardsText:
	text "Some surfboards"
	line "are leaning on the"
	cont "wall of the shop."
	done
	
SunbeamIslandDonphanText:
	text "How did you get"
	line "here?"
	done
	
SunbeamIslandSlowpokeText:
	text "I could really use"
	line "a smoke…"
	
	para "I mean!"
	
	para "Slowwwww…"
	
	para "Phew…"
	done
	
SunbeamFirstContestText1:
	text "TEXT 1"
	done
	
SunbeamFirstContestText2:
	text "TEXT 2"
	done
	
SunbeamFirstContestText3:
	text "TEXT 3"
	done
	
SunbeamFirstContestText4:
	text "TEXT 4"
	done
	
SunbeamFirstContestText5:
	text "TEXT 5"
	done
	
SunbeamLeilaniText:
	text "TEXT 1"
	done
	
SunbeamIslandNPC1Text:
	text "SUNBEAM ISLAND'S"
	line "GYM isn't in a"
	
	para "building like most"
	line "GYMS."
	
	para "Instead, TRAINERS"
	line "have to journey"
	
	para "through the jungle"
	line "to reach the GYM"
	cont "LEADER."
	done
	
SunbeamIslandNPC2Text:
	text "SUNBEAM ISLAND"
	line "is known for it's"
	
	para "bright sunshine,"
	line "and deep blue"
	cont "waters."

	para "There's really no"
	line "place like it in"
	cont "all of ONWA!"
	done
	
SunbeamIslandNPC3Text:
	text "That goofy looking"
	line "#MON keeps"
	cont "going 'Slowwwww…'"
	
	para "Hehe!"
	
	para "That's actually"
	line "kinda fun!"
	
	para "Slowwwww…"
	done
	
SunbeamIslandNPC4Text:
	text "I've lived on this"
	line "island for as long"
	cont "as I can remember."
	
	para "I know it might be"
	line "hard to believe,"
	
	para "but this island"
	line "used to be quite"
	cont "quiet."
	done
	
SunbeamIslandNPC5Text:
	text "I always walk"
	line "barefoot on the"
	cont "beach."
	
	para "I love the feeling"
	line "of sand between my"
	cont "toes."
	done
	
SunbeamIslandNPC6Text:
	text "Someday I'm going"
	line "to sail the seas"
	
	para "with my #MON,"
	line "and find out what's"
	cont "out there…"
	done
	
Movement_SunbeamFirstContest1L:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end
	
Movement_SunbeamFirstContest1R:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end
	
Movement_SunbeamFirstContest2:
	step LEFT
	step_end
	
Movement_SunbeamFirstContest3:
	turn_head LEFT
	step_sleep 12
	turn_head UP
	step_sleep 12
	turn_head RIGHT
	step_sleep 12
	turn_head DOWN
	step_sleep 12
	step_end
	
Movement_SunbeamFirstContest4:
	step RIGHT
	step DOWN
	step DOWN
	step LEFT
	step_end
	
Movement_SunbeamFirstContest5:
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step_end