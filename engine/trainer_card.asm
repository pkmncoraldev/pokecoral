TrainerCard: ; 25105
	ld a, [VramState]
	push af
	xor a
	ld [VramState], a
	ld hl, Options
	ld a, [hl]
	push af
	set 4, [hl]
	call .InitRAM
.loop
	call UpdateTime
	call JoyTextDelay
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .quit
	ld a, [hJoyLast]
	and B_BUTTON
	jr nz, .quit
	call .RunJumptable
	call DelayFrame
	jr .loop

.quit
	pop af
	ld [Options], a
	pop af
	ld [VramState], a
	ret

.InitRAM: ; 2513b (9:513b)
	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap
	call DisableLCD

	callba GetCardPic

	ld hl, CardRightCornerGFX
	ld de, VTiles2 tile $1c
	ld bc, 1 tiles
	ld a, BANK(CardRightCornerGFX)
	call FarCopyBytes

	ld hl, CardStatusGFX
	ld de, VTiles2 tile $2f
	ld bc, 68 tiles
	ld a, BANK(CardStatusGFX)
	call FarCopyBytes

	call TrainerCard_PrintTopHalfOfCard

	hlcoord 0, 8
	ld d, 6
	call TrainerCard_InitBorder

	call EnableLCD
	call WaitBGMap
	ld b, SCGB_TRAINER_CARD
	call GetSGBLayout
	call SetPalettes
	call WaitBGMap
	ld hl, wJumptableIndex
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

.RunJumptable: ; 2518e (9:518e)
	jumptable .Jumptable, wJumptableIndex

.Jumptable: ; 2519d (9:519d)
	dw TrainerCard_Page1_LoadGFX
	dw TrainerCard_Page1_Joypad
	dw TrainerCard_Page2_LoadGFX
	dw TrainerCard_Page2_Joypad
	dw TrainerCard_Page3_LoadGFX
	dw TrainerCard_Page3_Joypad
	dw TrainerCard_Quit


TrainerCard_IncrementJumptable: ; 251ab (9:51ab)
	ld hl, wJumptableIndex
	inc [hl]
	ret

TrainerCard_Quit: ; 251b0 (9:51b0)
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

TrainerCard_Page1_LoadGFX: ; 251b6 (9:51b6)
	call ClearSprites
	hlcoord 0, 8
	ld d, 6
	call TrainerCard_InitBorder
	call WaitBGMap
	ld de, CardStatusGFX
	ld hl, VTiles2 tile $2f
	lb bc, BANK(CardStatusGFX), 68
	call Request2bpp
	call TrainerCard_Page1_PrintDexCaught_GameTime
	call TrainerCard_IncrementJumptable
	ret

TrainerCard_Page1_Joypad: ; 251d7 (9:51d7)
	call TrainerCard_Page1_PrintGameTime
	ld hl, hJoyLast
	ld a, [hl]
	and D_RIGHT | A_BUTTON
	jr nz, .pressed_right_a
	ret

.pressed_right_a
	ld a, $2
	ld [wJumptableIndex], a
	ret
; 251f4

TrainerCard_Page2_LoadGFX: ; 251f4 (9:51f4)
	call ClearSprites
	hlcoord 0, 8
	ld d, 6
	call TrainerCard_InitBorder
	call WaitBGMap
	ld hl, CardStatusGFX
	ld de, VTiles2 tile $2f
	lb bc, BANK(CardStatusGFX), 68
	call Request2bpp	
	ld de, BadgeGFX
	ld hl, VTiles0 tile $00
	lb bc, BANK(BadgeGFX), $2c
	call Request2bpp
	call TrainerCard_Page2_3_InitObjectsAndStrings
	call TrainerCard_IncrementJumptable
	ret

TrainerCard_Page2_Joypad: ; 25221 (9:5221)
	ld hl, TrainerCard_OnwaBadgesOAM
	call TrainerCard_Page2_3_AnimateBadges
	ld hl, hJoyLast
	ld a, [hl]
	and A_BUTTON
	jr nz, .Quit
	ld a, [hl]
	and D_LEFT
	jr nz, .d_left
	ret

.d_left
	ld a, $0
	ld [wJumptableIndex], a
	ret

.Quit:
	ld a, $6
	ld [wJumptableIndex], a
	ret

TrainerCard_Page3_LoadGFX: ; 2524c (9:524c)
	call ClearSprites
	hlcoord 0, 8
	ld d, 6
	call TrainerCard_InitBorder
	call WaitBGMap
	ld de, LeaderGFX2
	ld hl, VTiles2 tile $35
	lb bc, BANK(LeaderGFX2), $56
	call Request2bpp
	ld de, BadgeGFX2
	ld hl, VTiles0 tile $00
	lb bc, BANK(BadgeGFX2), $2c
	call Request2bpp
	call TrainerCard_Page2_3_InitObjectsAndStrings
	call TrainerCard_IncrementJumptable
	ret

TrainerCard_Page3_Joypad: ; 25279 (9:5279)
	ld hl, TrainerCard_OnwaBadgesOAM
	call TrainerCard_Page2_3_AnimateBadges
	ld hl, hJoyLast
	ld a, [hl]
	and D_LEFT
	jr nz, .left
	ld a, [hl]
	and D_RIGHT
	jr nz, .right
	ret

.left
	ld a, $2
	ld [wJumptableIndex], a
	ret

.right
	ld a, $0
	ld [wJumptableIndex], a
	ret

TrainerCard_PrintTopHalfOfCard: ; 25299 (9:5299)
	hlcoord 0, 0
	ld d, 5
	call TrainerCard_InitBorder
	hlcoord 2, 2
	ld de, .Name_Money
	call PlaceString
	hlcoord 2, 4
	ld de, .ID_No
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 7, 2
	ld de, PlayerName
	call PlaceString
	hlcoord 5, 4
	ld de, PlayerID
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	hlcoord 7, 6
	ld de, Money
	lb bc, PRINTNUM_MONEY | 3, 6
	call PrintNum
	hlcoord 1, 3
	ld de, .HorizontalDivider
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 14, 1
	lb bc, 5, 7
	xor a
	ld [hGraphicStartTile], a
	predef PlaceGraphic
	
	hlcoord $e, 1
	ld de, .TrainerCardBlankTilemap
	call TrainerCardSetup_PlaceTilemapString
	
	hlcoord $e, 2
	ld de, .TrainerCardBlankTilemap
	call TrainerCardSetup_PlaceTilemapString
	
	hlcoord $e, 3
	ld de, .TrainerCardBlankTilemap
	call TrainerCardSetup_PlaceTilemapString
	
	hlcoord $e, 5
	ld de, .TrainerCardBlankTilemap
	call TrainerCardSetup_PlaceTilemapString
	
	hlcoord $e, 6
	ld de, .TrainerCardBlankTilemap
	call TrainerCardSetup_PlaceTilemapString
	
	hlcoord $e, 7
	ld de, .TrainerCardBlankTilemap
	call TrainerCardSetup_PlaceTilemapString
	
	ld a, [StatusFlags] ; hall of fame
	bit 6, a
	ret z
	
	hlcoord 1, 2
	ld de, .TrainerCardStarTilemap
	call TrainerCardSetup_PlaceTilemapString
	
	ret

.TrainerCardBlankTilemap:
	db $7f, $ff
	
.TrainerCardStarTilemap:
	db $75, $ff
	
; 252ec (9:52ec)

.Name_Money: ; 252ec
	db   "NAME/"
	next ""
	next "MONEY@"

.ID_No: ; 252f9
	db $27, $28, $ff ; ID NO

.HorizontalDivider: ; 252fc
	db $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $26, $ff ; ____________>
; 2530a

TrainerCard_Page1_PrintDexCaught_GameTime: ; 2530a (9:530a)
	hlcoord 2, 10
	ld de, .Dex_PlayTime
	call PlaceString
	hlcoord 10, 15
	ld de, .Badges
	call PlaceString
	ld hl, PokedexCaught
	ld b, EndPokedexCaught - PokedexCaught
	call CountSetBits
	ld de, wd265
	hlcoord 15, 10
	lb bc, 1, 3
	call PrintNum
	call TrainerCard_Page1_PrintGameTime
	hlcoord 2, 8
	ld de, .StatusTilemap
	call TrainerCardSetup_PlaceTilemapString
	ld a, [StatusFlags] ; pokedex
	bit 0, a
	ret nz
	hlcoord 1, 9
	lb bc, 2, 17
	call ClearBox
	ret

.Dex_PlayTime:
	db   "#DEX"
	next "PLAY TIME@@"

.Badges:
	db "  BADGES▶@"

.StatusTilemap: ; 25366
	db $2f, $30, $31, $32, $33, $ff
; 2536c

TrainerCard_Page2_3_InitObjectsAndStrings: ; 2536c (9:536c)
	hlcoord 7, 8
	ld de, .BadgesTilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 2, 10
	ld a, $2f
;	ld c, 4
;.loop
	call TrainerCard_Page2_3_PlaceLeadersFaces
;rept 4
;	inc hl
;endr
;	dec c
;	jr nz, .loop
	hlcoord 2, 13
	ld a, $51
;	ld c, 4
;.loop2
	call TrainerCard_Page2_3_PlaceLeadersFaces
;rept 4
;	inc hl
;endr
;	dec c
;	jr nz, .loop2
	xor a
	ld [wcf64], a
	ld hl, TrainerCard_OnwaBadgesOAM
	call TrainerCard_Page2_3_OAMUpdate
	ret

; 253a2 (9:53a2)

.BadgesTilemap: ; 253a2
	db $6d, $6e, $6f, $70, $71, $ff ; "BADGES"
; 253a8

TrainerCardSetup_PlaceTilemapString: ; 253a8 (9:53a8)
.loop
	ld a, [de]
	cp $ff
	ret z
	ld [hli], a
	inc de
	jr .loop

TrainerCard_InitBorder: ; 253b0 (9:53b0)
	ld a, $74
	ld [hli], a
	
	ld e, 17
.loop1
	ld a, $2a
	ld [hli], a
	dec e
	jr nz, .loop1

	ld a, $23
	ld [hli], a
	ld a, $76
	ld [hli], a
	
	ld a, $29
	ld [hli], a
	ld e, 17
	ld a, " "
.loop2
	ld [hli], a
	dec e
	jr nz, .loop2

	ld a, $1c
	ld [hli], a
	ld a, $23
	ld [hli], a
.loop3
	ld a, $29
	ld [hli], a

	ld e, 18
	ld a, " "
.loop4
	ld [hli], a
	dec e
	jr nz, .loop4

	ld a, $2b
	ld [hli], a
	dec d
	jr nz, .loop3

	ld a, $23
	ld [hli], a
	ld a, $24
	ld [hli], a

	ld e, 17
	ld a, " "
.loop5
	ld [hli], a
	dec e
	jr nz, .loop5
	ld a, $2b
	ld [hli], a
	
	ld a, $77
	ld [hli], a
	ld a, $23
	ld [hli], a
	
	ld e, 17
.loop6
	ld a, $2c
	ld [hli], a
	dec e
	jr nz, .loop6
	
	ld a, $73
	ld [hli], a
	
	hlcoord 0, 8
	ld de, .BorderPartTilemap
	call TrainerCardSetup_PlaceTilemapString
	ret

.BorderPartTilemap: ; 25366
	db $23, $2a, $00, $01, $01, $01, $02, $00, $01, $01, $01, $02, $2d, $2d, $2d, $2d, $2d, $2d, $2c, $73, $ff
	
TrainerCard_Page2_3_PlaceLeadersFaces: ; 253f4 (9:53f4)
	hlcoord 2, 10
	ld de, .Numbers1Tilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 2, 13
	ld de, .Numbers2Tilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 2, 11
	ld de, .Faces1Tilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 2, 12
	ld de, .Faces2Tilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 2, 14
	ld de, .Faces3Tilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 2, 15
	ld de, .Faces4Tilemap
	call TrainerCardSetup_PlaceTilemapString
	
	ld a, [MetGymLeaderFlags]
	bit 7, a
	jp nz, .leader8
	bit 6, a
	jp nz, .leader7
	bit 5, a
	jp nz, .leader6
	bit 4, a
	jp nz, .leader5
	bit 3, a
	jp nz, .leader4
	bit 2, a
	jp nz, .leilani
	bit 1, a
	jp nz, .rodney
	bit 0, a
	jp nz, .stanley
	ret
	
.leader8
	hlcoord $f, $e
	ld de, .Leader81Tilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord $f, $f
	ld de, .Leader82Tilemap
	call TrainerCardSetup_PlaceTilemapString
	
.leader7
	hlcoord $b, $e
	ld de, .Leader71Tilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord $b, $f
	ld de, .Leader72Tilemap
	call TrainerCardSetup_PlaceTilemapString
	
.leader6
	hlcoord 7, $e
	ld de, .Leader61Tilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 7, $f
	ld de, .Leader62Tilemap
	call TrainerCardSetup_PlaceTilemapString
	
.leader5
	hlcoord 3, $e
	ld de, .Leader51Tilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 3, $f
	ld de, .Leader52Tilemap
	call TrainerCardSetup_PlaceTilemapString
	
.leader4
	hlcoord $f, $b
	ld de, .Leader41Tilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord $f, $c
	ld de, .Leader42Tilemap
	call TrainerCardSetup_PlaceTilemapString
	
.leilani
	hlcoord $b, $b
	ld de, .Leilani1Tilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord $b, $c
	ld de, .Leilani2Tilemap
	call TrainerCardSetup_PlaceTilemapString
	
.rodney
	hlcoord 7, $b
	ld de, .Rodney1Tilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 7, $c
	ld de, .Rodney2Tilemap
	call TrainerCardSetup_PlaceTilemapString
	
.stanley
	hlcoord 3, $b
	ld de, .Stanley1Tilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 3, $c
	ld de, .Stanley2Tilemap
	call TrainerCardSetup_PlaceTilemapString
	ret

.Numbers1Tilemap: ; 253a2
	db $35, $7f, $7f, $7f, $3c, $7f, $7f, $7f, $43, $7f, $7f, $7f, $4a, $7f, $7f, $7f, $ff
	
.Numbers2Tilemap: ; 253a2
	db $51, $7f, $7f, $7f, $58, $7f, $7f, $7f, $5f, $7f, $7f, $7f, $66, $7f, $7f, $7f, $ff
	
.Faces1Tilemap: ; 253a2
	db $7f, $78, $2e, $72, $7f, $78, $2e, $72, $7f, $78, $2e, $72, $7f, $78, $2e, $72, $ff
	
.Faces2Tilemap: ; 253a2
	db $7f, $04, $05, $06, $7f, $04, $05, $06, $7f, $04, $05, $06, $7f, $04, $05, $06, $ff
	
.Faces3Tilemap: ; 253a2
	db $7f, $78, $2e, $72, $7f, $78, $2e, $72, $7f, $78, $2e, $72, $7f, $78, $2e, $72, $ff
	
.Faces4Tilemap: ; 253a2
	db $7f, $04, $05, $06, $7f, $04, $05, $06, $7f, $04, $05, $06, $7f, $04, $05, $06, $ff
	
.Stanley1Tilemap:
	db $36, $37, $38, $ff
	
.Stanley2Tilemap:
	db $39, $3a, $3b, $ff
	
.Rodney1Tilemap:
	db $3d, $3e, $3f, $ff
	
.Rodney2Tilemap:
	db $40, $41, $42, $ff
	
.Leilani1Tilemap:
	db $44, $45, $46, $ff
	
.Leilani2Tilemap:
	db $47, $48, $49, $ff
	
.Leader41Tilemap:
	db $4b, $4c, $4d, $ff
	
.Leader42Tilemap:
	db $4e, $4f, $50, $ff
	
.Leader51Tilemap:
	db $52, $53, $54, $ff
	
.Leader52Tilemap:
	db $55, $56, $57, $ff
	
.Leader61Tilemap:
	db $59, $5a, $5b, $ff
	
.Leader62Tilemap:
	db $5c, $5d, $5e, $ff
	
.Leader71Tilemap:
	db $60, $61, $62, $ff
	
.Leader72Tilemap:
	db $63, $64, $65, $ff
	
.Leader81Tilemap:
	db $67, $68, $69, $ff
	
.Leader82Tilemap:
	db $6a, $6b, $6c, $ff
	
TrainerCard_Page1_PrintGameTime: ; 25415 (9:5415)
	hlcoord 11, 12
	ld de, GameTimeHours
	lb bc, 2, 4
	call PrintNum
	inc hl
	ld de, GameTimeMinutes
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ld a, [hVBlankCounter]
	and $1f
	ret nz
	hlcoord 15, 12
	ld a, [hl]
	xor %01001011 ; $7F <--> $34
	ld [hl], a
	ret

TrainerCard_Page2_3_AnimateBadges: ; 25438 (9:5438)
	ld a, [hVBlankCounter]
	and $7
	ret nz
	ld a, [wcf64]
	inc a
	and $7
	ld [wcf64], a
	jr TrainerCard_Page2_3_OAMUpdate

TrainerCard_Page2_3_OAMUpdate: ; 25448 (9:5448)
; copy flag array pointer
	ld a, [hli]
	ld e, a
	ld a, [hli]
; get flag array
	ld d, a
	ld a, [de]
	ld c, a
	ld de, Sprites
	ld b, 8
.loop
	srl c
	push bc
	jr nc, .skip_badge
	push hl
	ld a, [hli] ; y
	ld b, a
	ld a, [hli] ; x
	ld c, a
	ld a, [hli] ; pal
	ld [wcf66], a
	ld a, [wcf64]
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, [hl]
	ld [wcf65], a
	call .PrepOAM
	pop hl
.skip_badge
	ld bc, $b ; 3 + 2 * 4
	add hl, bc
	pop bc
	dec b
	jr nz, .loop
	ret

.PrepOAM: ; 2547b (9:547b)
	ld a, [wcf65]
	and $80
	jr nz, .xflip
	ld hl, .facing1
	jr .loop2

.xflip
	ld hl, .facing2
.loop2
	ld a, [hli]
	cp $ff
	ret z
	add b
	ld [de], a
	inc de

	ld a, [hli]
	add c
	ld [de], a
	inc de

	ld a, [wcf65]
	and $7f
	add [hl]
	ld [de], a
	inc hl
	inc de

	ld a, [wcf66]
	add [hl]
	ld [de], a
	inc hl
	inc de
	jr .loop2

; 254a7 (9:54a7)

.facing1 ; 254a7
	; y, x, tile, OAM attributes
	db 0, 0, 0, 0
	db 0, 8, 1, 0
	db 8, 0, 2, 0
	db 8, 8, 3, 0
	db -1

.facing2 ; 254b8
	db 0, 0, 1, X_FLIP
	db 0, 8, 0, X_FLIP
	db 8, 0, 3, X_FLIP
	db 8, 8, 2, X_FLIP
	db -1

TrainerCard_OnwaBadgesOAM: ; 254c9
; Template OAM data for each badge on the trainer card.
; Format:
	; y, x, palette
	; cycle 1: face tile, in1 tile, in2 tile, in3 tile
	; cycle 2: face tile, in1 tile, in2 tile, in3 tile

	dw OnwaBadges

	; Zephyrbadge
	db $68, $18, 0
	db $00, $20, $24, $20 | $80
	db $00, $20, $24, $20 | $80

	; Hivebadge
	db $68, $38, 1
	db $04, $20, $24, $20 | $80
	db $04, $20, $24, $20 | $80

	; Plainbadge
	db $68, $58, 2
	db $08, $20, $24, $20 | $80
	db $08, $20, $24, $20 | $80

	; Fogbadge
	db $68, $78, 3
	db $0c, $20, $24, $20 | $80
	db $0c, $20, $24, $20 | $80

	; Mineralbadge
	db $80, $38, 4
	db $10, $20, $24, $20 | $80
	db $10, $20, $24, $20 | $80

	; Stormbadge
	db $80, $18, 5
	db $14, $20, $24, $20 | $80
	db $14, $20, $24, $20 | $80

	; Glacierbadge
	db $80, $58, 6
	db $18, $20, $24, $20 | $80
	db $18, $20, $24, $20 | $80

	; Risingbadge
	; X-flips on alternate cycles.
	db $80, $78, 7
	db $1c, $20, $24, $20 | $80
	db $1c, $20, $24, $20 | $80
; 25523

CardStatusGFX: INCBIN "gfx/misc/card_status.2bpp"

LeaderGFX:  INCBIN "gfx/misc/leaders.w24.2bpp"
LeaderGFX2: INCBIN "gfx/misc/leaders.w24.2bpp"
BadgeGFX:   INCBIN "gfx/misc/badges.2bpp"
BadgeGFX2:  INCBIN "gfx/misc/badges.2bpp"

CardRightCornerGFX: INCBIN "gfx/misc/card_right_corner.2bpp"
