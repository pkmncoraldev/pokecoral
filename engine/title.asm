_TitleScreen: ; 10ed67

	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap

; Turn BG Map update off
	xor a
	ld [hBGMapMode], a

; Reset timing variables
	ld hl, wJumptableIndex
	ld [hli], a ; cf63 ; Scene?
	ld [hli], a ; cf64
	ld [hli], a ; cf65 ; Timer lo
	ld [hl], a  ; cf66 ; Timer hi

; Turn LCD off
	call DisableLCD


; VRAM bank 1
	ld a, 1
	ld [rVBK], a


; Decompress running Suicune gfx
	ld hl, TitleSuicuneGFX
	ld de, VTiles1
	call Decompress


; Clear screen palettes
	hlbgcoord 0, 0
	ld bc, 20 bgrows
	xor a
	call ByteFill


; Fill tile palettes:

; BG Map 1:

; line 0 (copyright)
	hlbgcoord 0, 0, VBGMap1
	ld bc, 1 bgrows
	ld a, 7 ; palette
	call ByteFill


; BG Map 0:
; POKEMON
	hlbgcoord 0, 3
	ld bc, 2 bgrows
	ld a, 3 ; palette
	call ByteFill

; Logo
	hlbgcoord 0, 5
	ld bc, 5 bgrows
	ld a, 1 ; palette
	call ByteFill
	
; CORAL VERSION
	hlbgcoord 5, 9
	ld bc, 10
	ld a, 4 ; palette
	call ByteFill
		
	ld a, [wShinyCorsola]
	and a
	jr nz, .blue
		
; Corsola 1
	hlbgcoord $0f, 5
	ld bc, 5
	ld a, 1 ; palette
	call ByteFill
	
; Corsola 2
	hlbgcoord $0f, 6
	ld bc, 5
	ld a, 1 ; palette
	call ByteFill
	
; Corsola 3
	hlbgcoord $0f, 7
	ld bc, 5
	ld a, 1 ; palette
	call ByteFill
	
; Corsola 4
	hlbgcoord $0e, 8
	ld bc, 6
	ld a, 1 ; palette
	call ByteFill
	
; Corsola 5
	hlbgcoord $0f, 9
	ld bc, 4
	ld a, 1 ; palette
	call ByteFill
	jr .continueon

.blue
; Corsola 1
	hlbgcoord $0f, 5
	ld bc, 5
	ld a, 2 ; palette
	call ByteFill
	
; Corsola 2
	hlbgcoord $0f, 6
	ld bc, 5
	ld a, 2 ; palette
	call ByteFill
	
; Corsola 3
	hlbgcoord $0f, 7
	ld bc, 5
	ld a, 2 ; palette
	call ByteFill
	
; Corsola 4
	hlbgcoord $0e, 8
	ld bc, 6
	ld a, 2 ; palette
	call ByteFill
	
; Corsola 5
	hlbgcoord $0f, 9
	ld bc, 4
	ld a, 2 ; palette
	call ByteFill
	
.continueon
; Suicune gfx
	hlbgcoord 6, 15
	ld bc, 8 ; the rest of the screen
	ld a, 8
	call ByteFill


; Back to VRAM bank 0
	ld a, $0
	ld [rVBK], a


; Decompress logo
	ld hl, TitleLogoGFX
	ld de, VTiles1
	call Decompress

; Decompress background crystal
	ld hl, TitleCrystalGFX
	ld de, VTiles0
	call Decompress

; Clear screen tiles
	hlbgcoord 0, 0
	ld bc, 64 bgrows
	ld a, " "
	call ByteFill

; Draw Background
	hlcoord 0, 0
	lb bc, 18, 20
	ld d, $80
	ld e, $0
	call DrawTitleGraphic
	
; Draw '
	hlcoord 3, 3
	lb bc, 1, 2
	ld d, $9b
	ld e, $0
	call DrawTitleGraphic
	
; Draw POKEMON
	hlcoord 1, 4
	lb bc, 1, 6
	ld d, $95
	ld e, $0
	call DrawTitleGraphic
	
; Draw Pokemon logo
	hlcoord 0, 5
	lb bc, 5, 20
	ld d, $a8
	ld e, $14
	call DrawTitleGraphic

; Draw copyright text
	hlbgcoord 0, 0, VBGMap1
	lb bc, 1, 15
	ld d, $c
	ld e, $10
	call DrawTitleGraphic
	
; Draw copyright black
	hlbgcoord $0f, 0, VBGMap1
	lb bc, 1, 5
	ld d, $15
	ld e, $10
	call DrawTitleGraphic

; Initialize running Suicune?
	ld d, $0
	call LoadSuicuneFrame

; Save WRAM bank
	ld a, [rSVBK]
	push af
; WRAM bank 5
	ld a, 5
	ld [rSVBK], a

; Update palette colors
	ld hl, TitleScreenPalettes
	ld de, UnknBGPals
	ld bc, 4 * 32
	call CopyBytes

	ld hl, TitleScreenPalettes
	ld de, BGPals
	ld bc, 4 * 32
	call CopyBytes

; Restore WRAM bank
	pop af
	ld [rSVBK], a

; Reset audio
	call ChannelsOff
	call EnableLCD
	
	ld a, $1
	ld [hCGBPalUpdate], a

; Update BG Map 0 (bank 0)
	ld [hBGMapMode], a

	xor a
	ld [UnknBGPals + 4], a
	ret

TitleScreenPaletteAnimation:
	call RotateFourPalettesRight
	ret
; 10eea7

SuicuneFrameIterator: ; 10eea7
	ld hl, UnknBGPals + 4
	ld a, [hl]
	ld c, a
	inc [hl]

; Only do this once every eight frames
	and %111
	ret nz

	ld a, c
	and %1100000
	sla a
	swap a
	ld e, a
	ld d, $0
	ld hl, .Frames
	add hl, de
	ld d, [hl]
	xor a
	ld [hBGMapMode], a
	call LoadSuicuneFrame
	ld a, $1
	ld [hBGMapMode], a
	ld a, $3
	ld [hBGMapThird], a
	ret
; 10eece

.Frames: ; 10eece
	db $80 ; VTiles4 tile $00
	db $80 ; VTiles4 tile $00
	db $80 ; VTiles5 tile $00
	db $80 ; VTiles5 tile $00
	db $80 ; VTiles4 tile $00
	db $80 ; VTiles4 tile $00
	db $80 ; VTiles5 tile $00
	db $80 ; VTiles5 tile $00
	db $90 ; VTiles4 tile $00
	db $90 ; VTiles4 tile $00
	db $90 ; VTiles5 tile $00
	db $90 ; VTiles5 tile $00
	db $90 ; VTiles4 tile $00
	db $90 ; VTiles4 tile $00
	db $90 ; VTiles5 tile $00
	db $90 ; VTiles5 tile $00
; 10eed2


LoadSuicuneFrame: ; 10eed2
	hlcoord 6, 15
	ld b, 1
.bgrows
	ld c, 8
.col
	ld a, d
	ld [hli], a
	inc d
	dec c
	jr nz, .col
	ld a, SCREEN_WIDTH - 8
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, 8
	add d
	ld d, a
	dec b
	jr nz, .bgrows
	ret
; 10eeef

DrawTitleGraphic: ; 10eeef
; input:
;   hl: draw location
;   b: height
;   c: width
;   d: tile to start drawing from
;   e: number of tiles to advance for each bgrows
.bgrows
	push de
	push bc
	push hl
.col
	ld a, d
	ld [hli], a
	inc d
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	pop de
	ld a, e
	add d
	ld d, a
	dec b
	jr nz, .bgrows
	ret
; 10ef06

TitleSuicuneGFX: ; 10ef46
INCBIN "gfx/title/suicune.w128.2bpp.lz"
; 10f326

TitleLogoGFX: ; 10f326
INCBIN "gfx/title/logo.w160.t4.2bpp.lz"
; 10fcee

TitleCrystalGFX: ; 10fcee
INCBIN "gfx/title/crystal.w48.interleave.2bpp.lz"
; 10fede

TitleScreenPalettes:
; BG
	RGB 31, 31, 31
	RGB 31, 20, 19
	RGB 11, 11, 19
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 31, 20, 19
	RGB 11, 11, 19
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 19, 20, 31
	RGB 11, 11, 19
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 11, 11, 19
	RGB 11, 11, 19
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 11, 11, 19
	RGB 11, 11, 19
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 11, 11, 19
	RGB 11, 11, 19
	RGB 00, 00, 00

	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 11, 11, 19
	RGB 11, 11, 19
	RGB 00, 00, 00

; OBJ
	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00
