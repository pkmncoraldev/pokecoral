const_value set 2
	const SUNSET_NPC1
	const SUNSET_NPC2
	const SUNSET_NPC3
	
SunsetBay_MapScriptHeader:

.MapTriggers:
	db 3
	
	maptrigger .Trigger0
	maptrigger .Trigger1
	maptrigger .Trigger2

	; triggers

.MapCallbacks:
	db 1

	; callbacks
	dbw MAPCALLBACK_NEWMAP, .Flypoint

.Trigger0:
	end
	
.Trigger1:
	end
	
.Trigger2:
	setevent EVENT_MOM_SPEECH_LOOP
	dotrigger $1
	end
	
.Flypoint:
	setflag ENGINE_FLYPOINT_SUNSET
	return
	
SunsetBay_MapEventHeader:: db 0, 0

.Warps: db 7
	warp_def 11, 5, 2, KRISS_HOUSE_1F
	warp_def 7, 17, 2, SUNSET_POKECENTER_1F
	warp_def 15, 21, 2, SUNSET_CAFE
	warp_def 27, 15, 1, SUNSET_CAPTAINS_HOUSE
	warp_def 7, 11, 2, SUNSET_GRASS_WATER_HOUSE
	warp_def 7, 23, 2, SUNSET_LEGENDS_HOUSE
	warp_def 15, 15, 2, SUNSET_OLD_COUPLE_HOUSE

.CoordEvents: db 4
	xy_trigger 0, 12, 29, 0, SunsetGrampsStopsYou1, 0, 0
	xy_trigger 0, 15, 29, 0, SunsetGrampsStopsYou2, 0, 0
	xy_trigger 0, 16, 29, 0, SunsetGrampsStopsYou3, 0, 0
	xy_trigger 0, 17, 29, 0, SunsetGrampsStopsYou4, 0, 0

.BGEvents: db 17
	signpost 11, 3, SIGNPOST_READ, PlayersHouseSign
	signpost 15, 19, SIGNPOST_READ, SunsetCafeSign
	signpost 7, 18, SIGNPOST_READ, SunsetBayPokeCenterSign
	signpost 13, 28, SIGNPOST_READ, SunsetBaySign
	signpost 10, 8, SIGNPOST_READ, SunsetMomsFlowers
	signpost 11, 8, SIGNPOST_READ, SunsetMomsFlowers
	signpost 17, 26, SIGNPOST_READ, SunsetOtherFlowers
	signpost 6, 20, SIGNPOST_READ, SunsetOtherFlowers
	signpost 7, 20, SIGNPOST_READ, SunsetOtherFlowers
	signpost 12, 26, SIGNPOST_READ, SunsetOtherFlowers
	signpost 13, 26, SIGNPOST_READ, SunsetOtherFlowers
	signpost 14, 26, SIGNPOST_READ, SunsetOtherFlowers
	signpost 15, 26, SIGNPOST_READ, SunsetOtherFlowers
	signpost 16, 26, SIGNPOST_READ, SunsetOtherFlowers
	signpost 12, 24, SIGNPOST_READ, SunsetGuyOnDate
	signpost 21, 27, SIGNPOST_ITEM, SunsetBayHiddenPokeBall
	signpost 18, 4, SIGNPOST_ITEM, SunsetBayHiddenPotion

.ObjectEvents: db 8
	person_event SPRITE_LASS, 15, 24, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunsetNPC1, -1
	person_event SPRITE_SUPER_NERD, 13, 24, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunsetNPCmellow, -1
	person_event SPRITE_GRAMPS, 14, 29, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunsetNPC3, -1
	person_event SPRITE_LASS, 11, 11, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, SunsetNPC4, -1
	person_event SPRITE_FISHER, 18, 7, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunsetNPC5, -1
	person_event SPRITE_SUPER_NERD, 18, 25, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunsetNPC6, -1
	person_event SPRITE_BOAT_R, 29, 16, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunsetBroat, -1
	person_event SPRITE_BOAT_L, 29, 15, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunsetBroat, -1

PlayersHouseSign:
	jumptext PlayersHouseSignText

SunsetCafeSign:
	jumptext SunsetCafeSignText
	
SunsetBayPokeCenterSign:
	jumpstd pokecentersign
	
SunsetBaySign:
	jumptext SunsetBaySignText
	
SunsetMomsFlowers:
	jumptext SunsetMomsFlowersText

SunsetOtherFlowers:
	jumptext SunsetOtherFlowersText
	
SunsetBroat:
	jumptext SunsetBroatText
	
SunsetNPC1:
	faceplayer
	opentext
	writetext SunsetNPC1Text
	waitbutton
	spriteface SUNSET_NPC1, UP
	closetext
	end

SunsetNPCmellow:
	jumptextfaceplayer SunsetNPCmellowText

SunsetGuyOnDate:
	jumptext SunsetGuyOnDateText
	
SunsetNPC3:
	checkevent EVENT_TALKED_TO_MAN_IN_SHACK
	iffalse SunsetGramps
	jumptextfaceplayer SunsetGrampsText2
	
SunsetGramps:
	jumptextfaceplayer SunsetGrampsText
	
SunsetNPC4:
	jumptextfaceplayer SunsetNPC4Text
	
SunsetNPC5:
	checkevent EVENT_SUNSET_BAY_HIDDEN_POTION
	iftrue SunsetNPC5_2
	faceplayer
	opentext
	writetext SunsetNPC5Text
	waitbutton
	closetext
	end

SunsetNPC5_2:
	jumptextfaceplayer SunsetNPC5Text2

	
SunsetGrampsStopsYou1:
	callasm .StopRunning
	playsound SFX_PAY_DAY
	spriteface SUNSET_NPC3, UP
	showemote EMOTE_SHOCK, SUNSET_NPC3, 15
	spriteface PLAYER, DOWN
	pause 7
	applymovement SUNSET_NPC3, Movement_GrampsStart1
	opentext
	writetext SunsetGrampsText
	waitbutton
	closetext
	applymovement PLAYER, Movement_BackToSunset
	stopfollow
	applymovement SUNSET_NPC3, Movement_GrampsReset1
	end
	
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
SunsetGrampsStopsYou2:
	callasm .StopRunning
	playsound SFX_PAY_DAY
	spriteface SUNSET_NPC3, DOWN
	showemote EMOTE_SHOCK, SUNSET_NPC3, 15
	spriteface PLAYER, UP
	pause 7
	opentext
	writetext SunsetGrampsText
	waitbutton
	closetext
	applymovement PLAYER, Movement_BackToSunset
	stopfollow
	end
	
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
SunsetGrampsStopsYou3:
	callasm .StopRunning
	playsound SFX_PAY_DAY
	spriteface SUNSET_NPC3, DOWN
	showemote EMOTE_SHOCK, SUNSET_NPC3, 15
	spriteface PLAYER, UP
	pause 7
	applymovement SUNSET_NPC3, Movement_GrampsStart2
	opentext
	writetext SunsetGrampsText
	waitbutton
	closetext
	applymovement PLAYER, Movement_BackToSunset
	stopfollow
	applymovement SUNSET_NPC3, Movement_GrampsReset2
	end
	
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
SunsetGrampsStopsYou4:
	callasm .StopRunning
	playsound SFX_PAY_DAY
	spriteface SUNSET_NPC3, DOWN
	showemote EMOTE_SHOCK, SUNSET_NPC3, 15
	spriteface PLAYER, UP
	pause 7
	applymovement SUNSET_NPC3, Movement_GrampsStart3
	opentext
	writetext SunsetGrampsText
	waitbutton
	closetext
	applymovement PLAYER, Movement_BackToSunset
	stopfollow
	applymovement SUNSET_NPC3, Movement_GrampsReset3
	end

	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
SunsetNPC6:
	jumptextfaceplayer SunsetNPC6Text
	
Movement_BackToSunset:
	step LEFT
	step_end
	
Movement_GrampsStart1:
	step UP
	step_end	

Movement_GrampsReset1:
	step DOWN
	step_end
	
Movement_GrampsStart2:
	step DOWN
	step_end	

Movement_GrampsReset2:
	step UP
	step_end
	
Movement_GrampsStart3:
	step DOWN
	step DOWN
	step_end	

Movement_GrampsReset3:
	step UP
	step UP
	step_end
	
SunsetNPC1Text:
	text "Do you mind?"
	line "I'm on a date."
	done
	
SunsetNPCmellowText:
	text "It's me."
	
	para "THE BEAN DADDY."
	done
	
PlayersHouseSignText:
	text "<PLAYER>'S HOUSE"
	done

SunsetCafeSignText:
	text "SUNSET CAFE"
	done
	
SunsetBaySignText:
	text "SUNSET BAY"
	
	para "The sleepy town"
	line "by the sea."
	done
	
SunsetMomsFlowersText:
	text "Flowers grown by"
	line "MOM."
	
	para "They smell"
	line "wonderful!"
	done

SunsetOtherFlowersText:
	text "Some flowers."
	
	para "They smell pretty"
	line "good."
	
	para "Not as good as"
	line "MOM's, though."
	done
	
SunsetBroatText:
	text "CAP'N STRAND's"
	line "rowboat."
	
	para "It has seen a"
	line "lot of use."
	done
	
SunsetGuyOnDateText:
	text "…"
	
	para "…"
	
	para "He's ignoring you."
	done
	
SunsetGrampsText:
	text "<PLAYER>!"
	
	para "CAP'N STRAND"
	line "wanted to see you."
	
	para "He lives down by"
	line "the pier."
	done

SunsetGrampsText2:
	text "The lighthouse is"
	line "up ahead."
	
	para "They built it when"
	line "I was just a lad."
	
	para "Where did the time"
	line "go?"
	done
	
SunsetNPC4Text:
	text "Nice running"
	line "shoes!"
	
	para "You can run if"
	line "you hold the"
	cont "B button, right?"
	done
	
SunsetNPC5Text:
	text "They say you can"
	line "sometimes find"
	
	para "things that people"
	line "drop on the beach."
	
	para "I don't know,"
	line "though."
	
	para "I don't see"
	line "anything like that"
	cont "around here."
	done
	
SunsetNPC5Text2:
	text "Hey!"
	
	para "They were right!"
	
	para "…"
	
	para "Who's they?"
	
	para "You know, I"
	line "never thought"
	cont "about it."
	done
	
SunsetNPC6Text:
	text "SUNSET BAY doesn't"
	line "have a #MART"
	
	para "like most towns,"
	line "but you can buy"
	
	para "most of what you"
	line "need at the CAFE."
	done
	
SunsetBayHiddenPokeBall:
	dwb EVENT_SUNSET_BAY_HIDDEN_POKE_BALL, POKE_BALL
	
SunsetBayHiddenPotion:
	dwb EVENT_SUNSET_BAY_HIDDEN_POTION, POTION