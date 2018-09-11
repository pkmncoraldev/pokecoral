INCLUDE "includes.asm"

SECTION "Credits", ROMX[$5847], BANK[CREDITS]

	const_def
	const CORALDEV
	const QUIDOMEE
	const RANGI
	const CHAMBER
	const FROGGESTSPIRIT
	const BLUE_EMERALD
	const COMBOY
	const JOZZER26
	const SOLO
	const POKEMON_GRAPE
	const JACEDEANE
	const SIRWHIBBLES
	const YABOYDINGO
	const PIA_CARROT
	const SAXOPHONEOFTIME
	const BONE_CULTURE
	const PRET
	const HEG1
	const HEG2
	const STAFF
	const MADE_BY
	const ART_BY
	const ADDITIONAL_PROG
	const ADDITIONAL_GRAPHICS
	const MUSIC_BY
	const SPECIAL_THANKS
	const GRAPHICS_DESIGN
	const ORIG
	const THANKS
	const COPYRIGHT

const_value SET -7
	const CREDITS_THEEND
	const CREDITS_WAIT2
	const CREDITS_MUSIC
	const CREDITS_CLEAR
	const CREDITS_SCENE
	const CREDITS_WAIT
	const CREDITS_END


Credits:: ; 109847
	bit 6, b ; Hall Of Fame
	ld a, $0
	jr z, .okay
	ld a, $40
.okay
	ld [wJumptableIndex], a

	ld a, [rSVBK]
	push af
	ld a, $5
	ld [rSVBK], a

	call ClearBGPalettes
	call ClearTileMap
	call ClearSprites

	ld hl, wCreditsFaux2bpp
	ld c, $80
	ld de, $ff00

.load_loop
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	dec c
	jr nz, .load_loop

	ld de, CreditsBorderGFX
	ld hl, VTiles2 tile $20
	lb bc, BANK(CreditsBorderGFX), $09
	call Request2bpp

	ld de, CopyrightGFX
	ld hl, VTiles2 tile $60
	lb bc, BANK(CopyrightGFX), $1d
	call Request2bpp

	ld de, TheEndGFX
	ld hl, VTiles2 tile $40
	lb bc, BANK(TheEndGFX), $10
	call Request2bpp

	ld a, $ff
	ld [wCreditsBorderFrame], a
	xor a
	ld [wCreditsBorderMon], a

	call Credits_LoadBorderGFX
	ld e, l
	ld d, h
	ld hl, VTiles2
	lb bc, BANK(CreditsMonsGFX), 16
	call Request2bpp

	call ConstructCreditsTilemap
	xor a
	ld [wCreditsLYOverride], a

	ld hl, LYOverrides
	ld bc, $100
	xor a
	call ByteFill

	ld a, rSCX - $ff00
	ld [hLCDCPointer], a

	call GetCreditsPalette
	call SetPalettes
	ld a, [hVBlank]
	push af
	ld a, $5
	ld [hVBlank], a
	ld a, $1
	ld [hInMenu], a
	xor a
	ld [hBGMapMode], a
	ld [CreditsPos], a
	ld [wcd21], a
	ld [CreditsTimer], a

.execution_loop
	call Credits_HandleBButton
	call Credits_HandleAButton
	jr nz, .exit_credits

	call Credits_Jumptable
	call DelayFrame
	jr .execution_loop

.exit_credits
	call ClearBGPalettes
	xor a
	ld [hLCDCPointer], a
	ld [hBGMapAddress], a
	pop af
	ld [hVBlank], a
	pop af
	ld [rSVBK], a
	ret
; 1098fd

Credits_HandleAButton: ; 1098fd
	ld a, [hJoypadDown]
	and A_BUTTON
	ret z
	ld a, [wJumptableIndex]
	bit 7, a
	ret
; 109908

Credits_HandleBButton: ; 109908
	ld a, [hJoypadDown]
	and B_BUTTON
	ret z
	ld a, [wJumptableIndex]
	bit 6, a
	ret z
	ld hl, CreditsPos
	ld a, [hli]
	cp $d
	jr nc, .okay
	ld a, [hli]
	and a
	ret z
.okay
	ld hl, CreditsTimer
	ld a, [hl]
	and a
	ret z
	dec [hl]
	ret
; 109926

Credits_Jumptable: ; 109926
	ld a, [wJumptableIndex]
	and $f
	ld e, a
	ld d, 0
	ld hl, .Jumptable
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp [hl]
; 109937


.Jumptable: ; 109937 (42:5937)

	dw ParseCredits
	dw Credits_Next
	dw Credits_Next
	dw Credits_PrepBGMapUpdate
	dw Credits_UpdateGFXRequestPath
	dw Credits_RequestGFX
	dw Credits_LYOverride
	dw Credits_Next
	dw Credits_Next
	dw Credits_Next
	dw Credits_UpdateGFXRequestPath
	dw Credits_RequestGFX
	dw Credits_LoopBack


Credits_Next: ; 109951 (42:5951)
	ld hl, wJumptableIndex
	inc [hl]
	ret

Credits_LoopBack: ; 109956 (42:5956)
	ld hl, wJumptableIndex
	ld a, [hl]
	and $f0
	ld [hl], a
	ret

Credits_PrepBGMapUpdate: ; 10995e (42:595e)
	xor a
	ld [hBGMapMode], a
	jp Credits_Next

Credits_UpdateGFXRequestPath: ; 109964 (42:5964)
	call Credits_LoadBorderGFX
	ld a, l
	ld [Requested2bppSource], a
	ld a, h
	ld [Requested2bppSource + 1], a
	ld a, VTiles2 % $100
	ld [Requested2bppDest], a
	ld a, VTiles2 / $100
	ld [Requested2bppDest + 1], a
	jr Credits_RequestGFX

Credits_RequestGFX: ; 10997b (42:597b)
	xor a
	ld [hBGMapMode], a
	ld a, $8
	ld [Requested2bpp], a
	jp Credits_Next

Credits_LYOverride: ; 109986 (42:5986)
	ld a, [rLY]
	cp $30
	jr c, Credits_LYOverride
	ld a, [wCreditsLYOverride]
	dec a
	dec a
	ld [wCreditsLYOverride], a
	ld hl, LYOverrides + $1f
	call .Fill
	ld hl, LYOverrides + $87
	call .Fill
	jp Credits_Next

.Fill: ; 1099a3 (42:59a3)
	ld c, $8
.loop
	ld [hli], a
	dec c
	jr nz, .loop
	ret
; 1099aa


ParseCredits: ; 1099aa
	ld hl, wJumptableIndex
	bit 7, [hl]
	jp nz, .done

; Wait until the timer has run out to parse the next command.
	ld hl, CreditsTimer
	ld a, [hl]
	and a
	jr z, .parse

; One tick has passed.
	dec [hl]
	jp .done

.parse
; First, let's clear the current text display,
; starting from line 5.
	xor a
	ld [hBGMapMode], a
	hlcoord 0, 5
	ld bc, 20 * 12
	ld a, " "
	call ByteFill

; Then read the script.

.loop
	call .get

; Commands:
	cp CREDITS_END
	jp z, .end
	cp CREDITS_WAIT
	jr z, .wait
	cp CREDITS_SCENE
	jr z, .scene
	cp CREDITS_CLEAR
	jr z, .clear
	cp CREDITS_MUSIC
	jr z, .music
	cp CREDITS_WAIT2
	jr z, .wait2
	cp CREDITS_THEEND
	jr z, .theend

; If it's not a command, it's a string identifier.

	push af
	ld e, a
	ld d, 0
	ld hl, CreditsStrings
	add hl, de
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop af

; Strings spanning multiple lines have special cases.

	cp COPYRIGHT
	jr z, .copyright

	cp STAFF
	jr c, .staff

; The rest start from line 6.

	hlcoord 0, 6
	jr .print

.copyright
	hlcoord 2, 6
	jr .print

.staff
	hlcoord 0, 6

.print
; Print strings spaced every two lines.
	call .get
	ld bc, 20 * 2
	call AddNTimes
	call PlaceString
	jr .loop

.theend
; Display "The End" graphic.
	call Credits_TheEnd
	jr .loop

.scene
; Update the scene number and corresponding palette.
	call .get
	ld [wCreditsBorderMon], a ; scene
	xor a
	ld [wCreditsBorderFrame], a ; frame
	call GetCreditsPalette
	call SetPalettes ; update hw pal registers
	jr .loop

.clear
; Clear the banner.
	ld a, $ff
	ld [wCreditsBorderFrame], a ; frame
	jr .loop

.music
; Play the credits music.
	ld de, MUSIC_CREDITS
	push de
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	pop de
	call PlayMusic
	jp .loop

.wait2
; Wait for some amount of ticks.
	call .get
	ld [CreditsTimer], a
	jr .done

.wait
; Wait for some amount of ticks, and do something else.
	call .get
	ld [CreditsTimer], a

	xor a
	ld [hBGMapThird], a
	ld a, 1
	ld [hBGMapMode], a

.done
	jp Credits_Next

.end
; Stop execution.
	ld hl, wJumptableIndex
	set 7, [hl]
	ld a, 32
	ld [MusicFade], a
	ld a, MUSIC_POST_CREDITS % $100
	ld [MusicFadeID], a
	ld a, MUSIC_POST_CREDITS / $100
	ld [MusicFadeIDHi], a
	ret

.get
; Get byte CreditsPos from CreditsScript
	push hl
	push de
	ld a, [CreditsPos]
	ld e, a
	ld a, [CreditsPos+1]
	ld d, a
	ld hl, CreditsScript
	add hl, de

	inc de
	ld a, e
	ld [CreditsPos], a
	ld a, d
	ld [CreditsPos+1], a
	ld a, [hl]
	pop de
	pop hl
	ret
; 109a95


ConstructCreditsTilemap: ; 109a95 (42:5a95)
	xor a
	ld [hBGMapMode], a
	ld a, $c
	ld [hBGMapAddress], a

	ld a, $28
	hlcoord 0, 0
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	call ByteFill

	ld a, $7f
	hlcoord 0, 4
	ld bc, (SCREEN_HEIGHT - 4) * SCREEN_WIDTH
	call ByteFill

	hlcoord 0, 4
	ld a, $24
	call DrawCreditsBorder

	hlcoord 0, 17
	ld a, $20
	call DrawCreditsBorder

	hlcoord 0, 0, AttrMap
	ld bc, 4 * SCREEN_WIDTH
	xor a
	call ByteFill

	hlcoord 0, 4, AttrMap
	ld bc, SCREEN_WIDTH
	ld a, $1
	call ByteFill

	hlcoord 0, 5, AttrMap
	ld bc, 12 * SCREEN_WIDTH
	ld a, $2
	call ByteFill

	hlcoord 0, 17, AttrMap
	ld bc, SCREEN_WIDTH
	ld a, $1
	call ByteFill

	call WaitBGMap2
	xor a
	ld [hBGMapMode], a
	ld [hBGMapAddress], a
	hlcoord 0, 0
	call .InitTopPortion
	call WaitBGMap2
	ret

.InitTopPortion: ; 109aff (42:5aff)
	ld b, 5
.outer_loop
	push hl
	ld de, SCREEN_WIDTH - 3
	ld c, 4
	xor a
.inner_loop
rept 3
	ld [hli], a
	inc a
endr
	ld [hl], a
	inc a
	add hl, de
	dec c
	jr nz, .inner_loop
	pop hl
rept 4
	inc hl
endr
	dec b
	jr nz, .outer_loop
	ret

DrawCreditsBorder: ; 109b1d (42:5b1d)
	ld c, SCREEN_WIDTH / 4
.loop
	push af
rept 3
	ld [hli], a
	inc a
endr
	ld [hli], a
	pop af
	dec c
	jr nz, .loop
	ret

GetCreditsPalette: ; 109b2c
	call .GetPalAddress

	push hl
	ld a, 0
	call .UpdatePals
	pop hl
	ret

.GetPalAddress:
; Each set of palette data is 24 bytes long.
	ld a, [wCreditsBorderMon] ; scene
	and 3
	add a
	add a ; * 8
	add a
	ld e, a
	ld d, 0
	ld hl, CreditsPalettes
	add hl, de
	add hl, de ; * 3
	add hl, de
	ret

.UpdatePals:
; Update the first three colors in both palette buffers.

	push af
	push hl
	add UnknBGPals % $100
	ld e, a
	ld a, 0
	adc UnknBGPals / $100
	ld d, a
	ld bc, 24
	call CopyBytes

	pop hl
	pop af
	add BGPals % $100
	ld e, a
	ld a, 0
	adc BGPals / $100
	ld d, a
	ld bc, 24
	call CopyBytes
	ret


CreditsPalettes:

; Pichu
	RGB 31, 00, 31
	RGB 31, 25, 00
	RGB 11, 14, 31
	RGB 07, 07, 07

	RGB 31, 05, 05
	RGB 11, 14, 31
	RGB 11, 14, 31
	RGB 31, 31, 31

	RGB 31, 05, 05
	RGB 00, 00, 00
	RGB 31, 31, 31
	RGB 31, 31, 31

; Smoochum
	RGB 31, 31, 31
	RGB 31, 27, 00
	RGB 26, 06, 31
	RGB 07, 07, 07

	RGB 03, 13, 31
	RGB 20, 00, 24
	RGB 26, 06, 31
	RGB 31, 31, 31

	RGB 03, 13, 31
	RGB 00, 00, 00
	RGB 31, 31, 31
	RGB 31, 31, 31

; Ditto
	RGB 31, 31, 31
	RGB 23, 12, 28
	RGB 31, 22, 00
	RGB 07, 07, 07

	RGB 03, 20, 00
	RGB 31, 22, 00
	RGB 31, 22, 00
	RGB 31, 31, 31

	RGB 03, 20, 00
	RGB 00, 00, 00
	RGB 31, 31, 31
	RGB 31, 31, 31

; Igglybuff
	RGB 31, 31, 31
	RGB 31, 10, 31
	RGB 31, 00, 09
	RGB 07, 07, 07

	RGB 31, 14, 00
	RGB 31, 00, 09
	RGB 31, 00, 09
	RGB 31, 31, 31

	RGB 31, 14, 00
	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 31, 31, 31
; 109bca

Credits_LoadBorderGFX: ; 109bca (42:5bca)
	ld hl, wCreditsBorderFrame
	ld a, [hl]
	cp $ff
	jr z, .init

	and 3
	ld e, a
	inc a
	and 3
	ld [hl], a
	ld a, [wCreditsBorderMon]
	and 3
	add a
	add a
	add e
	add a
	ld e, a
	ld d, 0
	ld hl, .Frames
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

.init
	ld hl, wCreditsFaux2bpp
	ret
; 109bf1 (42:5bf1)

.Frames: ; 109bf1
	dw CreditsPichuGFX
	dw CreditsPichuGFX     + 16 tiles
	dw CreditsPichuGFX     + 32 tiles
	dw CreditsPichuGFX     + 48 tiles
	dw CreditsSmoochumGFX
	dw CreditsSmoochumGFX  + 16 tiles
	dw CreditsSmoochumGFX  + 32 tiles
	dw CreditsSmoochumGFX  + 48 tiles
	dw CreditsDittoGFX
	dw CreditsDittoGFX     + 16 tiles
	dw CreditsDittoGFX     + 32 tiles
	dw CreditsDittoGFX     + 48 tiles
	dw CreditsIgglybuffGFX
	dw CreditsIgglybuffGFX + 16 tiles
	dw CreditsIgglybuffGFX + 32 tiles
	dw CreditsIgglybuffGFX + 48 tiles
; 109c11

Credits_TheEnd: ; 109c11 (42:5c11)
	ld a, $40
	hlcoord 6, 9
	call .Load
	hlcoord 6, 10
.Load: ; 109c1c (42:5c1c)
	ld c, 8
.loop
	ld [hli], a
	inc a
	dec c
	jr nz, .loop
	ret
; 109c24 (42:5c24)


CreditsBorderGFX:    INCBIN "gfx/credits/border.2bpp"

CreditsMonsGFX:
CreditsPichuGFX:     INCBIN "gfx/credits/pichu.2bpp"
CreditsSmoochumGFX:  INCBIN "gfx/credits/smoochum.2bpp"
CreditsDittoGFX:     INCBIN "gfx/credits/ditto.2bpp"
CreditsIgglybuffGFX: INCBIN "gfx/credits/igglybuff.2bpp"


CreditsScript: ; 10acb4

; Clear the banner.
	db CREDITS_CLEAR

; Pokemon Crystal Version Staff
	db                STAFF, 1

	db CREDITS_MUSIC
	
	db CREDITS_WAIT, 8

; Play the credits music.

	db CREDITS_WAIT2, 10

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_CLEAR ; Pichu

	db              MADE_BY, 1
	db             CORALDEV, 2

	db CREDITS_WAIT, 12

	db               ART_BY, 1
	db             QUIDOMEE, 2

	db CREDITS_WAIT, 12

	db      ADDITIONAL_PROG, 0
	db                RANGI, 1
	db              CHAMBER, 2
	db       FROGGESTSPIRIT, 3

	db CREDITS_WAIT, 12

	db  ADDITIONAL_GRAPHICS, 0
	db         BLUE_EMERALD, 1
	db               COMBOY, 2
	db             JOZZER26, 3
	db              CHAMBER, 4
	db                 SOLO, 5

	db CREDITS_WAIT, 12

	db  ADDITIONAL_GRAPHICS, 0
	db        POKEMON_GRAPE, 1
	db            JACEDEANE, 2
	db          SIRWHIBBLES, 3
	db			 PIA_CARROT, 4

	db CREDITS_WAIT, 12
	
	db             MUSIC_BY, 1
	db             CORALDEV, 2
	db		SAXOPHONEOFTIME, 3
	
	db CREDITS_WAIT, 12
	
	db       SPECIAL_THANKS, 0
	db             QUIDOMEE, 1
	db           YABOYDINGO, 2
	db		   BONE_CULTURE, 3
	db                RANGI, 4
	
	db CREDITS_WAIT, 12

	db       SPECIAL_THANKS, 0
	db                 PRET, 1
	db                 HEG1, 2
	db                 HEG2, 3
	
	db CREDITS_WAIT, 12
	
	db                 ORIG, 0
	db            COPYRIGHT, 1

	db CREDITS_WAIT, 12

	db               THANKS, 2

	db CREDITS_WAIT, 20

	db CREDITS_END
; 10ae13


CreditsStrings:
	dw .coraldev
	dw .Quidomee
	dw .Rangi
	dw .Chamber
	dw .FroggestSpirit
	dw .BlueEmerald
	dw .Comboy
	dw .Jozzer26
	dw .Solo
	dw .PokemonGrape
	dw .JaceDeane
	dw .SirWhibbles
	dw .YaBoyDingo
	dw .PiaCarrot
	dw .SaxofTime
	dw .BoneCulture
	dw .Pret
	dw .Heg1
	dw .Heg2
	dw .Staff
	dw .MadeBy
	dw .ArtBy
	dw .AdditionalProg
	dw .AdditionalGraphics
	dw .MusicBy
	dw .SpecialThanks
	dw .GraphicsDesign
	dw .Orig
	dw .Thanks
	dw .Copyright

.coraldev:            db "      CORALDEV@"
.Quidomee:            db "      QUIDOMEE@"
.Rangi:               db "       RANGI@"
.Chamber:             db "      CHAMBER@"
.FroggestSpirit:      db "   FROGGESTSPIRIT@"
.BlueEmerald:         db "    BLUE EMERALD@"
.Comboy:              db "       COMBOY@"
.Jozzer26:            db "      JOZZER26@"
.Solo:                db "        SOLO@"
.PokemonGrape:        db "    #MON GRAPE@"
.JaceDeane:           db "      JACEDEANE@"
.SirWhibbles:         db "    SIR WHIBBLES@"
.YaBoyDingo:          db "       DINGO@"
.PiaCarrot:			  db "     PIA CARROT@"
.SaxofTime:			  db "   SAXOPHONEOFTIME@"
.BoneCulture:		  db "    BONE CULTURE@"
.Pret:				  db "        PRET@"
.Heg1:                db "       /RHEG/@"
.Heg2:                db "All the /YEHAW/ boys@"
.Staff:               db "       #MON"
                    next "    CORAL VERSION"
                    next "       DEMO 2@"
.MadeBy:              db "      HACK BY@"
.ArtBy:               db "       ART BY@"
.AdditionalProg:      db "  ADD. PROGRAMING@"
.AdditionalGraphics:  db "   ADDITIONAL GFX@"
.MusicBy:             db "      MUSIC BY@"
.SpecialThanks:       db "   SPECIAL THANKS@"
.GraphicsDesign:      db "  GRAPHICS DESIGN@"
.Orig:                db "  ORIGINAL GAME BY@"
.Thanks:              db " THANKS FOR PLAYING!@"

.Copyright:
	;    (C) 1  9  9  5 - 2  0  0  1     N  i  n  t  e  n  d  o
	db   $60,$61,$62,$63,$64,$65,$66, $67, $68, $69, $6a, $6b, $6c
	;    (C) 1  9  9  5 - 2  0  0  1    C  r  e  a  t  u  r  e  s      i  n  c .
	next $60,$61,$62,$63,$64,$65,$66, $6d, $6e, $6f, $70, $71, $72,  $7a, $7b, $7c
	;    (C) 1  9  9  5 - 2  0  0  1  G   A   M   E   F   R   E   A   K     i  n  c .
	next $60,$61,$62,$63,$64,$65,$66, $73, $74, $75, $76, $77, $78, $79,  $7a, $7b, $7c
	db "@"
