const_value set 2
	const SPOOKHOUSE_TVROOM_NPC1
	const SPOOKHOUSE_TVROOM_NPC2
	const SPOOKHOUSE_TVROOM_NPC3
	const SPOOKHOUSE_TVROOM_NPC4
	const SPOOKHOUSE_TVROOM_NPC5

RuinsofAlphKabutoChamber_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

RuinsofAlphKabutoChamber_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 7, RUINS_OF_ALPH_AERODACTYL_CHAMBER
	warp_def 7, 3, 7, RUINS_OF_ALPH_AERODACTYL_CHAMBER

.CoordEvents: db 5
	xy_trigger 0, 6, 2, 0, SpookHouseTVRoom1, 0, 0
	xy_trigger 0, 6, 4, 0, SpookHouseTVRoom2, 0, 0
	xy_trigger 0, 6, 3, 0, SpookHouseTVRoom3, 0, 0
	xy_trigger 0, 6, 1, 0, SpookHouseTVRoom4, 0, 0
	xy_trigger 0, 6, 0, 0, SpookHouseTVRoom5, 0, 0

.BGEvents: db 1
	signpost 3, 2, SIGNPOST_READ, SpookHouseTV

.ObjectEvents: db 5
	person_event SPRITE_TWIN, 4, 2, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_SILVER, PERSONTYPE_SCRIPT, 0, SpookHouseNPC2, EVENT_SPOOKHOUSE_GHOSTBEGONE
	person_event SPRITE_TWIN, 6, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_SILVER, PERSONTYPE_SCRIPT, 0, SpookHouseNPC1, EVENT_TALKED_TO_MAN_IN_SHACK
	person_event SPRITE_TWIN, 6, 3, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_SILVER, PERSONTYPE_SCRIPT, 0, SpookHouseNPC1, EVENT_TALKED_TO_MAN_IN_SHACK
	person_event SPRITE_TWIN, 7, 2, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_SILVER, PERSONTYPE_SCRIPT, 0, SpookHouseNPC1, EVENT_TALKED_TO_MAN_IN_SHACK
	person_event SPRITE_TWIN, 5, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_SILVER, PERSONTYPE_SCRIPT, 0, SpookHouseNPC1, EVENT_TALKED_TO_MAN_IN_SHACK

SpookHouseTVRoom1:
	checkevent EVENT_SPOOKHOUSE_SHITSBOUTAGODOWN
	iffalse .end
	clearevent EVENT_SPOOKHOUSE_GHOSTBEGONE
	clearevent EVENT_SPOOKHOUSE_SHITSBOUTAGODOWN
	appear SPOOKHOUSE_TVROOM_NPC4
	opentext
	writetext SpookHouseGhostText3
	waitbutton
	closetext
	disappear SPOOKHOUSE_TVROOM_NPC4
	wait 8
	appear SPOOKHOUSE_TVROOM_NPC2
	spriteface PLAYER, LEFT
	opentext
	writetext SpookHouseGhostText4
	waitbutton
	closetext
	disappear SPOOKHOUSE_TVROOM_NPC2
	wait 8
	appear SPOOKHOUSE_TVROOM_NPC3
	spriteface PLAYER, RIGHT
	opentext
	writetext SpookHouseGhostText5
	waitbutton
	closetext
	disappear SPOOKHOUSE_TVROOM_NPC3
	wait 16
	appear SPOOKHOUSE_TVROOM_NPC4
	spriteface PLAYER, DOWN
	wait 8
	opentext
	writetext SpookHouseGhostText6
	waitbutton
	closetext
	disappear SPOOKHOUSE_TVROOM_NPC4
	wait 8
	opentext
	writetext SpookHouseGhostText7
	wait 16
	appear SPOOKHOUSE_TVROOM_NPC5
	spriteface PLAYER, UP
	cry MACHOKE
	writetext SpookHouseGhostText8
	wait 8
	closetext
	loadwildmon SMEARGLE, 1
	writecode VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	disappear SPOOKHOUSE_TVROOM_NPC5
	reloadmapafterbattle
	opentext
	writetext SpookHouseGhostText2
	playsound SFX_EMBER
	earthquake 60
	waitsfx
	closetext
	special FadeOutPalettes
	pause 15
	domaptrigger ROUTE_34_ILEX_FOREST_GATE, $1
	domaptrigger ILEX_FOREST_AZALEA_GATE, $1
	warp WAREHOUSE_ENTRANCE, 14, 10
.end
	end
	
SpookHouseTVRoom2:
	checkevent EVENT_SPOOKHOUSE_SHITSBOUTAGODOWN
	iffalse .end
	applymovement PLAYER, Movement_SpookHouseWalkLeft1Tile
	applymovement PLAYER, Movement_SpookHouseWalkLeft1Tile
	callasm .StopRunning
	spriteface PLAYER, DOWN
	jump SpookHouseTVRoom1
.end
	end
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
SpookHouseTVRoom3:
	checkevent EVENT_SPOOKHOUSE_SHITSBOUTAGODOWN
	iffalse .end
	applymovement PLAYER, Movement_SpookHouseWalkLeft1Tile
	callasm .StopRunning
	spriteface PLAYER, DOWN
	jump SpookHouseTVRoom1
.end
	end
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret	
	
SpookHouseTVRoom4:
	checkevent EVENT_SPOOKHOUSE_SHITSBOUTAGODOWN
	iffalse .end
	applymovement PLAYER, Movement_SpookHouseWalkRight1Tile
	callasm .StopRunning
	spriteface PLAYER, DOWN
	jump SpookHouseTVRoom1
.end
	end
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret	
	
SpookHouseTVRoom5:
	checkevent EVENT_SPOOKHOUSE_SHITSBOUTAGODOWN
	iffalse .end
	applymovement PLAYER, Movement_SpookHouseWalkRight1Tile
	applymovement PLAYER, Movement_SpookHouseWalkRight1Tile
	callasm .StopRunning
	spriteface PLAYER, DOWN
	jump SpookHouseTVRoom1
.end
	end
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
SpookHouseNPC2:
	playmusic MUSIC_NONE
	opentext
	writetext SpookHouseGhostText1
	waitbutton
	closetext
	wait 16
	opentext
	faceplayer
	writetext SpookHouseGhostText2
	wait 4
	disappear SPOOKHOUSE_TVROOM_NPC1
	closetext
	changeblock $2, $2, $73
	reloadmappart
	setevent EVENT_SPOOKHOUSE_GHOSTBEGONE
	setevent EVENT_SPOOKHOUSE_SHITSBOUTAGODOWN
	end
	
SpookHouseTV:
	checkevent EVENT_SPOOKHOUSE_GHOSTBEGONE
	iftrue .tvoff
	jumptext SpookHouseTVTextOn
	
.tvoff
	jumptext SpookHouseTVTextOff
	
SpookHouseGhostText1:
	text "You shouldn't be"
	line "here…"
	done
	
SpookHouseGhostText2:
	text "GET OUT!"
	done
	
SpookHouseGhostText3:
	text "Teehee…"
	
	para "Actually, you"
	line "should stick"
	
	para "around and play"
	line "with me…"
	done
	
SpookHouseGhostText4:
	text "We can play for-"
	line "ever and ever!"
	done
	
SpookHouseGhostText5:
	text "…and I'll never"
	line "be alone again…"
	done
	
SpookHouseGhostText6:
	text "You should have"
	line "left while you"
	cont "could…"
	done
	
SpookHouseGhostText7:
	text "But now…"
	done
	
SpookHouseGhostText8
	text "YOU'RE MINE!"
	done
	
SpookHouseTVTextOn:
	text "Its just static."
	done
	
SpookHouseTVTextOff:
	text "It turned off."
	done
	
Movement_SpookHouseWalkRight1Tile:
	step RIGHT
	step_end