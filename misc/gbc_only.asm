GBCOnlyScreen: ; 4ea82

	ld a, [hCGB]
	and a
	ret nz

	call SetPalettes
	
	ld de, MUSIC_MOBILE_ADAPTER_MENU
	call PlayMusic

	call ClearTileMap

	ld hl, GBCOnlyGFX
	ld de, $d000
	ld a, [rSVBK]
	push af
	ld a, 0
	ld [rSVBK], a
	call Decompress
	pop af
	ld [rSVBK], a

	ld de, $d000
	ld hl, VTiles2
	lb bc, BANK(GBCOnlyGFX), $7f
	call Get2bpp

	ld de, Font
	ld hl, VTiles1
	lb bc, BANK(Font), $80
	call Get1bpp

	call DrawGBCOnlyScreen

	call WaitBGMap

; better luck next time
.loop
	call DelayFrame
	jr .loop
; 4eac5


DrawGBCOnlyScreen: ; 4eac5

	; Pokemon
	hlcoord 3, 1
	ld b, 6
	ld c, 1
	ld a, $1
	call DrawGBCOnlyGraphic
	
	hlcoord 3, 2
	ld b, 75
	ld c, 1
	ld a, $9
	call DrawGBCOnlyGraphic
	
	hlcoord 17, 2
	ld b, 1
	ld c, 1
	ld a, $6b
	call DrawGBCOnlyGraphic
	
	hlcoord 17, 3
	ld b, 2
	ld c, 1
	ld a, $6b
	call DrawGBCOnlyGraphic
	
	hlcoord 17, 4
	ld b, 2
	ld c, 1
	ld a, $6b
	call DrawGBCOnlyGraphic
	
	hlcoord 16, 5
	ld b, 3
	ld c, 1
	ld a, $6b
	call DrawGBCOnlyGraphic
	
	hlcoord 1, 5
	ld b, 1
	ld c, 1
	ld a, $6b
	call DrawGBCOnlyGraphic

	call DrawGBCOnlyBorder
	
	hlcoord 5, 0
	ld b, 2
	ld c, 1
	ld a, $7
	call DrawGBCOnlyGraphic
	
	ld de, GBCOnlyString
	hlcoord 1, 7
	call PlaceString

	hlcoord 12, 13
	ld b, 4
	ld c, 4
	ld a, $70
	call DrawGBCOnlyGraphic
	
	hlcoord 15, 16
	ld b, 1
	ld c, 1
	ld a, $6f
	call DrawGBCOnlyGraphic
	
	ret
; 4eaea


DrawGBCOnlyBorder: ; 4eaea

	hlcoord 0, 0
	ld [hl], 0 ; top-left

	inc hl
	ld a, 0 ; top
	call .FillRow

	ld [hl], 0 ; top-right

	hlcoord 0, 1
	ld a, 0 ; left
	call .FillColumn

	hlcoord 19, 1
	ld a, 0 ; right
	call .FillColumn

	hlcoord 0, 17
	ld [hl], 0 ; bottom-left

	inc hl
	ld a, 0 ; bottom
	call .FillRow

	ld [hl], 0 ; bottom-right
	ret
; 4eb15

.FillRow: ; 4eb15
	ld c, SCREEN_WIDTH - 2
.next_column
	ld [hli], a
	dec c
	jr nz, .next_column
	ret
; 4eb1c

.FillColumn: ; 4eb1c
	ld de, SCREEN_WIDTH
	ld c, SCREEN_HEIGHT - 2
.next_row
	ld [hl], a
	add hl, de
	dec c
	jr nz, .next_row
	ret
; 4eb27


DrawGBCOnlyGraphic: ; 4eb27
	ld de, SCREEN_WIDTH
.y
	push bc
	push hl
.x
	ld [hli], a
	inc a
	dec b
	jr nz, .x
	pop hl
	add hl, de
	pop bc
	dec c
	jr nz, .y
	ret
; 4eb38


GBCOnlyString: ; 4eb38
	db   "#MON CORAL can"
	next "only be played on"
	next "a Game Boy Color."
	next " "
	next "Sorry…@"
; 4eb76


GBCOnlyGFX: ; 4eb76
INCBIN "gfx/misc/gbc_only.w112.2bpp.lz"
; 4f0bc
