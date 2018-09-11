const_value set 2
	const SUNBEAM_DONPHAN
	const SUNBEAM_SLOWPOKE
	const SUNBEAM_CROWD1
	const SUNBEAM_CROWD2
	const SUNBEAM_CROWD3
	const SUNBEAM_CROWD4
	const SUNBEAM_CROWD5
	const SUNBEAM_LEILANI
	const SUNBEAM_NPC1
	const SUNBEAM_NPC2
	const SUNBEAM_NPC3
	const SUNBEAM_NPC4
	const SUNBEAM_NPC5
	const SUNBEAM_NPC6
	const SUNBEAM_SNARE
	

CherrygroveCity_MapScriptHeader:
.MapTriggers:
	db 3
	
	maptrigger .Trigger0
	maptrigger .Trigger1
	maptrigger .Trigger2

.MapCallbacks:
	db 1

	; callbacks
	dbw MAPCALLBACK_NEWMAP, .Flypoint
	
.Trigger0:
	end
	
.Trigger1:
	end
	
.Trigger2:
	end
	
.Flypoint:
	setflag ENGINE_FLYPOINT_SUNBEAM
	return
	
CherrygroveCity_MapEventHeader:: db 0, 0

.Warps: db 12
	warp_def 9, 31, 2, CHERRYGROVE_MART
	warp_def 9, 25, 1, CHERRYGROVE_POKECENTER_1F
	warp_def 18, 38, 1, CHERRYGROVE_GYM_SPEECH_HOUSE
	warp_def 32, 15, 1, GUIDE_GENTS_HOUSE
	warp_def 28, 25, 1, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE
	warp_def 15, 14, 1, ELMS_LAB
	warp_def 24, 9, 1, ELMS_HOUSE
	warp_def 24, 15, 1, KRISS_NEIGHBORS_HOUSE
	warp_def 39, 15, 1, MR_POKEMONS_HOUSE
	warp_def 11, 14, 3, ELMS_LAB
	warp_def 11, 15, 3, ELMS_LAB
	warp_def 18, 39, 2, CHERRYGROVE_GYM_SPEECH_HOUSE

.CoordEvents: db 3
	xy_trigger 0, 36, 21, 0, SunbeamStartFirstContestR, 0, 0
	xy_trigger 0, 36, 20, 0, SunbeamStartFirstContestL, 0, 0
	xy_trigger 2, 0, 20, 0, SunbeamDontLeave, 0, 0

.BGEvents: db 8
	signpost 7, 22, SIGNPOST_READ, SunBeamSign
	signpost 16, 16, SIGNPOST_READ, SunBeamLabSign
	signpost 19, 27, SIGNPOST_READ, SunBeamGymSign
	signpost 40, 14, SIGNPOST_READ, SunBeamSurfSign
	signpost 39, 16, SIGNPOST_READ, SunBeamSurfboards
	signpost 39, 17, SIGNPOST_READ, SunBeamSurfboards
	signpost 9, 26, SIGNPOST_READ, SunBeamPokeSign
	signpost 9, 32, SIGNPOST_READ, SunBeamMartSign

.ObjectEvents: db 15
	person_event SPRITE_DONPHAN, 6, 17, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, -1
	person_event SPRITE_SLOWPOKE, 13, 3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIslandSlowpoke, -1
	person_event SPRITE_GENTLEMAN_GRUNTF, 16, 14, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunbeamIslandSnare2, EVENT_ISLAND_GREEM_MAN
	person_event SPRITE_FISHER, 41, 24, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, EVENT_SAW_FIRST_BIKINI_CONTEST
	person_event SPRITE_LASS, 41, 27, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, EVENT_SAW_FIRST_BIKINI_CONTEST
	person_event SPRITE_YOUNGSTER, 41, 22, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, EVENT_SAW_FIRST_BIKINI_CONTEST
	person_event SPRITE_LASS, 42, 23, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, EVENT_SAW_FIRST_BIKINI_CONTEST
	person_event SPRITE_LEILANI_PSYDUCK, 0, 41, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, EVENT_SAW_FIRST_BIKINI_CONTEST
	person_event SPRITE_POKEFAN_F, 20, 22, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIslandNPC1, -1
	person_event SPRITE_POKEFAN_M, 10, 28, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandNPC2, -1
	person_event SPRITE_LASS, 16, 4, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SunbeamIslandNPC3, -1
	person_event SPRITE_GRANNY, 26, 13, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandNPC4, -1
	person_event SPRITE_LASS, 42, 12, SPRITEMOVEDATA_WANDER, 0, 1, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandNPC5, -1
	person_event SPRITE_YOUNGSTER, 45, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIslandNPC6, -1
	person_event SPRITE_LEILANI_PSYDUCK, 0, 21, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunbeamIslandSnare, EVENT_ISLAND_GREEM_MAN

SunBeamSign:
	jumptext SunBeamSignText
	
SunbeamDontLeave:
	playsound SFX_PAY_DAY
	spriteface SUNBEAM_SNARE, LEFT
	showemote EMOTE_SHOCK, SUNBEAM_SNARE, 15
	pause 7
	spriteface PLAYER, RIGHT
	opentext
	writetext SunbeamDontLeaveText1
	waitbutton
	closetext
	follow PLAYER, SUNBEAM_SNARE
	applymovement PLAYER, Movement_SunbeamDontLeave1
	stopfollow
	spriteface PLAYER, UP
	spriteface SUNBEAM_SNARE, DOWN
	opentext
	writetext SunbeamIslandSnareText
	waitbutton
	closetext
	applymovement SUNBEAM_SNARE, Movement_SunbeamDontLeave2
	spriteface SUNBEAM_SNARE, DOWN
	end
	
SunbeamStartFirstContestR:
	variablesprite SPRITE_GENTLEMAN_GRUNTF, SPRITE_YOUNGSTER
	moveperson SUNBEAM_CROWD1, 25, 41
	appear SUNBEAM_CROWD1
	spriteface SUNBEAM_CROWD1, UP
	callasm .StopRunning
	moveperson SUNBEAM_LEILANI, 25, 39
	playmusic MUSIC_GAME_CORNER
	opentext
	writetext SunbeamFirstContestText1
	wait 1
	special MapCallbackSprites_LoadUsedSpritesGFX
;	waitbutton
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
	variablesprite SPRITE_GENTLEMAN_GRUNTF, SPRITE_YOUNGSTER
	moveperson SUNBEAM_CROWD1, 25, 41
	appear SUNBEAM_CROWD1
	spriteface SUNBEAM_CROWD1, UP
	callasm .StopRunning
	moveperson SUNBEAM_LEILANI, 25, 39
	playmusic MUSIC_GAME_CORNER
	opentext
	writetext SunbeamFirstContestText1
	wait 1
	special MapCallbackSprites_LoadUsedSpritesGFX
;	waitbutton
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
	variablesprite SPRITE_LEILANI_PSYDUCK, SPRITE_LEILANI
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
	spriteface SUNBEAM_CROWD5, UP
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
	waitsfx
	special Special_FadeOutMusic
	pause 20
	special RestartMapMusic
	special Special_FadeInQuickly
	applymovement SUNBEAM_LEILANI, Movement_SunbeamFirstContest4
	spriteface SUNBEAM_LEILANI, DOWN
	opentext
	writetext SunbeamLeilaniText
	waitbutton
	closetext
	applymovement SUNBEAM_LEILANI, Movement_SunbeamFirstContest5
	disappear SUNBEAM_LEILANI
	variablesprite SPRITE_LEILANI_PSYDUCK, SPRITE_PSYDUCK
	variablesprite SPRITE_GENTLEMAN_GRUNTF, SPRITE_GENTLEMAN
	special MapCallbackSprites_LoadUsedSpritesGFX
	setevent EVENT_SAW_FIRST_BIKINI_CONTEST
	setflag ENGINE_BIKINI_CONTEST
	domaptrigger CHERRYGROVE_GYM_SPEECH_HOUSE, $1
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
	
SunbeamIslandSnare:
	jumptextfaceplayer SunbeamIslandSnareText
	
SunbeamIslandSnare2:
	faceplayer
	opentext
	writetext SunbeamIslandSnare2Text
	waitbutton
	closetext
	spriteface SUNBEAM_CROWD1, DOWN
	end
	
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
	checkevent EVENT_TALKED_TO_SLOWPOKE_GIRL
	iftrue .talked
	writetext SunbeamIslandNPC3Text1
	waitbutton
	spriteface SUNBEAM_NPC3, UP
	closetext
	setevent EVENT_TALKED_TO_SLOWPOKE_GIRL
	end
.talked
	writetext SunbeamIslandNPC3Text2
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
	
SunBeamSignText:
	text "SUNBEAM ISLAND"
	
	para "A shining spot in"
	line "an endless sea."
	done
	
SunBeamLabSignText:
	text "SPRUCE #MON LAB"
	done

SunBeamGymSignText:
	text "SUNBEAM ISLAND"
	line "#MON GYM"
	cont "LEADER: LEILANI"

	para "The brutal beauty."
	done

SunbeamDontLeaveText1:
	text "Woah!"
	
	para "Hold up!"
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
	text "And now, the mom-"
	line "ent you've all been"
	cont "waiting for…"
	done
	
SunbeamFirstContestText2:
	text "And the winner of"
	line "the BEACH BATTLE"
	cont "BEAUTY CONTEST is…"	
	done
	
SunbeamFirstContestText3:
	text "LEILANI!"
	done
	
SunbeamFirstContestText4:
	text "Thank you so much,"
	line "everyone!"
	done
	
SunbeamFirstContestText5:
	text "Well folks, that's"
	line "all for today!"
	
	para "Join us next time"
	line "for another fierce"
	cont "competition!"
	done
	
SunbeamLeilaniText:
	text "Thanks for coming"
	line "out to the show!"
	
	para "I'm LEILANI!"
	
	para "I'm the GYM LEADER"
	line "of SUNBEAM ISLAND,"
	
	para "and I guess I'm"
	line "the latest BEACH"
	cont "BATTLE BEAUTY!"
	
	para "And you are?"
	
	para "<PLAYER>!"
	
	para "Well, you should"
	line "come by sometime"
	cont "and have a battle."
	
	para "The GYM on the"
	line "island is in the"
	
	para "jungle, so you"
	line "can't miss it!"
	
	para "I'll see you"
	line "around."
	done
	
SunbeamIslandSnareText:
	text "No one is allowed"
	line "off the island"
	cont "for now!"
	
	para "Why?"
	
	para "Uhhh…"
	
	para "No reason…"
	done
	
SunbeamIslandSnare2Text:
	text "I've been told to"
	line "stand guard here"
	
	para "and not let any"
	line "punk kids inside."
	
	para "You look like a"
	line "punk kid to me."
	
	para "Buzz off."
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
	
SunbeamIslandNPC3Text1:
	text "That goofy looking"
	line "#MON keeps"
	cont "going 'Slowwwww…'"
	
	para "Hehe!"
	
	para "That's actually"
	line "kinda fun!"
	
	para "Slowwwww…"
	done
	
SunbeamIslandNPC3Text2:
	text "Slowwwww…"
	done
	
SunbeamIslandNPC4Text:
	text "I've lived on this"
	line "island for as long"
	cont "as I can remember."
	
	para "I know it might be"
	line "hard to believe,"
	
	para "but this island"
	line "used to be very"
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
	
Movement_SunbeamDontLeave1:
	step DOWN
	step_end
	
Movement_SunbeamDontLeave2:
	step RIGHT
	step_end
	
Movement_SunbeamFirstContest1L:
	step DOWN
	step DOWN
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