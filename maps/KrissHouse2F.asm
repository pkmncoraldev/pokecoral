const_value set 2
	const KRISSHOUSE2F_CONSOLE


KrissHouse2F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 2

	; callbacks

	dbw MAPCALLBACK_NEWMAP, .InitializeRoom

	dbw MAPCALLBACK_TILES, .SetSpawn

.Null:
	end

.InitializeRoom:
	special ToggleDecorationsVisibility
	setevent EVENT_IN_YOUR_ROOM
	checkevent EVENT_INITIALIZED_EVENTS
	iftrue .SkipInizialization
	jumpstd initializeevents
	return

.SkipInizialization:
	return

.SetSpawn:
	special ToggleMaptileDecorations
	return


	db 0, 0, 0 ; filler


GameConsole:
	playsound SFX_READ_TEXT
	pause 4
	playmusic MUSIC_SNES_KIRBY
	opentext
	writetext GameConsoleText_Kirby
	waitbutton
	closetext
	special RestartMapMusic
	end
	
KrissHouseRadio:
	jumpstd radio1

KrissHouseBookshelf:
	jumpstd picturebookshelf

KrissHouseCloset:
	opentext
	writetext ChangeColorQuestionText
	yesorno
	iffalse .end
	writetext ChangeColorText
	waitbutton
	refreshscreen $0
	loadmenudata .KrissHouseChangeColorMenuData
	verticalmenu
	closewindow
	pause 10
	applymovement PLAYER, ChangeColorMovement1
	playsound SFX_TWINKLE
	callasm SetPlayerPalKrisHouse
	writetext ChangeColorText2
	waitbutton
	closetext
	end
	
.end
	closetext
	end

.KrissHouseChangeColorMenuData: ; 0x48dfc
	db $40 ; flags
	db 00, 05 ; start coords
	db 16, 15 ; end coords
	dw .MenuData2PalKrisHouse
	db 1 ; default option
; 0x48e04

.MenuData2PalKrisHouse: ; 0x48e04
	db $a1 ; flags
	db 7 ; items
	db "Red@"
	db "Blue@"
	db "Green@"
	db "Brown@"
	db "Purple@"
	db "Pink@"
	db "Yellow@"
	
KrissHousePC:
	opentext
	special Special_KrissHousePC
	iftrue .Warp
	closetext
	end
.Warp:
	warp NONE, $0, $0
	end

ChangeColorMovement1:
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	step_sleep 1
	turn_head DOWN
	step_sleep 1
	turn_head LEFT
	step_sleep 1
	turn_head UP
	step_sleep 1
	turn_head RIGHT
	step_sleep 2
	turn_head DOWN
	step_sleep 2
	turn_head LEFT
	step_sleep 2
	turn_head UP
	step_sleep 3
	turn_head RIGHT
	step_sleep 6
	turn_head DOWN
	step_sleep 12
	step_end
	
GameConsoleText_SMW:
	text "It's an SNES."
	
	para "A man wearing"
	line "overalls is riding"
	cont "a green dinosaur."
	done
	
GameConsoleText_Kirby:
	text "It's an SNES."
	
	para "A Pink Puff is"
	line "eating everything"
	cont "in its path."
	done
	
ChangeColorText:
	text "Select your"
	line "favorite color."
	done
	
ChangeColorText2:
	text "Lookin' good!"
	done
	
ChangeColorQuestionText:
	text "Change your"
	line "clothes?"
	done
	
KrisRadioText1:
	text "PROF.OAK'S #MON"
	line "TALK! Please tune"
	cont "in next time!"
	done

KrisRadioText2:
	text "#MON CHANNEL!"
	done

KrisRadioText3:
	text "This is DJ MARY,"
	line "your co-host!"
	done

KrisRadioText4:
	text "#MON!"
	line "#MON CHANNEL…"
	done

SetPlayerPalKrisHouse:
	ld a, [wMenuCursorY] ; 1 - 8
	sub $1
;	add $7 ; 8 - 15
	ld [PlayerPalette], a
	add $1
	ld c, 6
	cp c
	jr z, .pink
	ld c, 7
	cp c
	jr z, .yellow
	ld [wPlayerPalette], a
	ret
	
.pink
;	add $1
	ld [PlayerPalette], a
;	add $1
	ld [wPlayerPalette], a
	ret

.yellow
;	add $1
	ld [PlayerPalette], a
;	add $1
	ld [wPlayerPalette], a
	ret
	
KrissHouse2F_MapEventHeader:: db 0, 0

.Warps: db 1
	warp_def 0, 7, 3, KRISS_HOUSE_1F

.CoordEvents: db 0

.BGEvents: db 4
	signpost 1, 2, SIGNPOST_UP, KrissHousePC
	signpost 1, 3, SIGNPOST_READ, KrissHouseRadio
	signpost 1, 5, SIGNPOST_READ, KrissHouseBookshelf
	signpost 1, 1, SIGNPOST_READ, KrissHouseCloset

.ObjectEvents: db 1
	person_event SPRITE_SNES, 2, 4, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GameConsole, -1
;	person_event SPRITE_CHRIS_BIKE, 5, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GimmeThatBoy, -1

GimmeThatBoy:
	opentext
	verbosegiveitem ISLAND_PASS
	closetext
	clearevent EVENT_CAN_GET_PASS_FROM_MOM
	clearevent EVENT_ISLAND_GREEM_MAN
	setevent EVENT_KRISS_HOUSE_MOM_2
	setevent EVENT_RIVAL_ROUTE_6
	clearevent EVENT_KRISS_HOUSE_MOM_1
	variablesprite SPRITE_LEILANI_PSYDUCK, SPRITE_ROCKET
	end