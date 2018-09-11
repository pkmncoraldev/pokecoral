GetMysteryGift_MobileAdapterLayout: ; 4930f (mobile)
	ld a, b
	cp SCGB_RAM
	jr nz, .not_ram
	ld a, [SGBPredef]
.not_ram
	push af
	callba ResetBGPals
	pop af
	ld l, a
	ld h, 0
	add hl, hl
	ld de, .dw
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, .done
	push de
	jp [hl]
.done
	ret
; 49330 (12:5330)

.dw ; 49330

	dw MG_Mobile_Layout00
	dw MG_Mobile_Layout01
	dw MG_Mobile_Layout02
; 49336

MG_Mobile_Layout_FillBox: ; 49336
.row
	push bc
	push hl
.col
	ld [hli], a
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .row
	ret
; 49346

MG_Mobile_Layout_WipeAttrMap: ; 49346 (12:5346)
	hlcoord 0, 0, AttrMap
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	xor a
	call ByteFill
	ret

MG_Mobile_Layout_LoadPals: ; 49351 (12:5351)
	ld de, UnknBGPals
	ld hl, Palette_493e1
	ld bc, 5 palettes
	ld a, $5 ; BANK(UnknBGPals)
	call FarCopyWRAM
	ld de, UnknBGPals + 7 palettes
	ld hl, Palette_TextBG7
	ld bc, 1 palettes
	ld a, $5 ; BANK(UnknBGPals)
	call FarCopyWRAM
	ret

MG_Mobile_Layout00: ; 4936e (12:536e)
	call MG_Mobile_Layout_LoadPals
	call MG_Mobile_Layout_WipeAttrMap
	call MG_Mobile_Layout_CreatePalBoxes
	callba ApplyAttrMap
	callba ApplyPals
	ret

MG_Mobile_Layout_CreatePalBoxes: ; 49384 (12:5384)
	hlcoord 0, 0, AttrMap
	lb bc, 4, 1
	ld a, $1
	call MG_Mobile_Layout_FillBox
	lb bc, 2, 1
	ld a, $2
	call MG_Mobile_Layout_FillBox
	lb bc, 6, 1
	ld a, $3
	call MG_Mobile_Layout_FillBox
	hlcoord 1, 0, AttrMap
	ld a, $1
	lb bc, 3, 18
	call MG_Mobile_Layout_FillBox
	lb bc, 2, 18
	ld a, $2
	call MG_Mobile_Layout_FillBox
	lb bc, 12, 18
	ld a, $3
	call MG_Mobile_Layout_FillBox
	hlcoord 19, 0, AttrMap
	lb bc, 4, 1
	ld a, $1
	call MG_Mobile_Layout_FillBox
	lb bc, 2, 1
	ld a, $2
	call MG_Mobile_Layout_FillBox
	lb bc, 6, 1
	ld a, $3
	call MG_Mobile_Layout_FillBox
	hlcoord 0, 12, AttrMap
	ld bc, 6 * SCREEN_WIDTH
	ld a, $7
	call ByteFill
	ret
; 493e1 (12:53e1)

Palette_493e1: ; 493e1
	RGB 03, 07, 09
	RGB 26, 31, 00
	RGB 20, 16, 03
	RGB 31, 31, 31

	RGB 13, 24, 29
	RGB 11, 16, 30
	RGB 07, 11, 22
	RGB 05, 06, 18

	RGB 31, 31, 31
	RGB 20, 26, 31
	RGB 13, 24, 29
	RGB 11, 16, 30

	RGB 31, 31, 31
	RGB 20, 26, 31
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 20, 16, 08
	RGB 31, 00, 00
	RGB 00, 00, 00
; 49409

LoadOW_BGPal7:: ; 49409
	ld hl, Palette_TextBG7
	ld de, UnknBGPals + 8 * 7
	ld bc, 8
	ld a, $5
	call FarCopyWRAM
	ret
; 49418

Palette_TextBG7: ; 49418
	RGB 31, 31, 31
	RGB 08, 19, 28
	RGB 05, 05, 16
	RGB 00, 00, 00
; 49420

Function49420:: ; 49420 (12:5420)
	ld hl, MansionPalette4
	ld de, UnknBGPals + $30
	ld bc, $8
	ld a, $5 ; BANK(UnknBGPals)
	call FarCopyWRAM
	ret
; 4942f (12:542f)

MG_Mobile_Layout01: ; 4942f
	call MG_Mobile_Layout_LoadPals
	ld de, UnknBGPals + $38
	ld hl, Palette_49478
	ld bc, $8
	ld a, $5 ; BANK(UnknBGPals)
	call FarCopyWRAM
	call MG_Mobile_Layout_WipeAttrMap
	hlcoord 0, 0, AttrMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	xor a
	call ByteFill
	hlcoord 0, 14, AttrMap
	ld bc, 4 * SCREEN_WIDTH
	ld a, $7
	call ByteFill
	ld a, [wd002]
	bit 6, a
	jr z, .asm_49464
	call Function49480
	jr .asm_49467

.asm_49464
	call Function49496

.asm_49467
	callba ApplyAttrMap
	callba ApplyPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ret
; 49478

Palette_49478: ; 49478
	RGB 31, 31, 31
	RGB 26, 31, 00
	RGB 20, 16, 03
	RGB 00, 00, 00
; 49480

Function49480: ; 49480
	hlcoord 0, 0, AttrMap
	lb bc, 4, SCREEN_WIDTH
	ld a, $7
	call MG_Mobile_Layout_FillBox
	hlcoord 0, 2, AttrMap
	ld a, $4
	ld [hl], a
	hlcoord 19, 2, AttrMap
	ld [hl], a
	ret
; 49496

Function49496: ; 49496
	hlcoord 0, 0, AttrMap
	lb bc, 2, SCREEN_WIDTH
	ld a, $7
	call MG_Mobile_Layout_FillBox
	hlcoord 0, 1, AttrMap
	ld a, $4
	ld [hl], a
	hlcoord 19, 1, AttrMap
	ld [hl], a
	ret
; 494ac

LoadSpecialMapPalette: ; 494ac
	ld a, [wTileset]
	cp TILESET_HOUSE_1
	jr z, .house
	cp TILESET_HAUNTED
	jr z, .spookhouse
	cp TILESET_HAUNTED_TV
	jr z, .spookhouse2
	cp TILESET_CAVE
	jr z, .cave
	cp TILESET_STARGLOW_CAVERN
	jr z, .starglow_cavern
	cp TILESET_SPOOKY
	jr z, .spookyforest
	cp TILESET_LAVA_CAVE
	jr z, .lavacave
	cp TILESET_GLINT
	jr z, .outside
	cp TILESET_MOUNTAIN
	jp z, .mountain
	cp TILESET_JUNGLE
	jp z, .jungle
	cp TILESET_RANCH
	jp z, .checkranch
	ld a, [wPermission]
	cp TOWN
	jr z, .outside
	cp ROUTE
	jr z, .outside
	and a
	ret

.cave
	call LoadCavePalette
	scf
	ret
	
.pokecom_2f
	call LoadPokeComPalette
	scf
	ret

.battle_tower
	call LoadBattleTowerPalette
	scf
	ret

.ice_path
	ld a, [wPermission] ; permission
	and 7
	cp 3 ; Hall of Fame
	jp z, .do_nothing
	call LoadIcePathPalette
	scf
	ret

.house
	call LoadHousePalette
	scf
	ret

.radio_tower
	call LoadRadioTowerPalette
	scf
	ret

.mansion_mobile
	call LoadMansionPalette
	scf
	ret

.spookhouse
	call LoadSpookHousePalette
	scf
	ret
	
.spookhouse2
	call LoadSpookHouse2Palette
	scf
	ret
	
.starglow_cavern
	call LoadStarglowCavernPalette
	scf
	ret

.spookyforest
	call LoadSpookyForestPalette
	scf
	ret
	
.lavacave
	call LoadLavaCavePalette
	scf
	ret
	
.checkranch
	ld a, [wPermission]
	cp INDOOR
	jr nz, .outside
	and a
	ret
	
.checkmountain
	ld a, [wPermission]
	cp INDOOR
	jp nz, .mountain
	and a
	ret
	
.outside
	ld a, [MapGroup]
	cp GROUP_SUNSET_BAY
	jr z, .deepblueocean
	cp GROUP_CHERRYGROVE_CITY
	jr nz, .skipdeepblue
	ld a, [MapNumber]
	cp MAP_ROUTE_30
	jr z, .skipdeepblue
	jr .deepblueocean
.skipdeepblue
	cp GROUP_ROUTE_11
	jr z, .ranch
	cp GROUP_VERMILION_CITY
	jr nz, .notranch
	ld a, [MapNumber]
	cp MAP_VERMILION_CITY
	jr z, .ranch
.notranch
	ld a, [hHours]
	cp 17 ; 5:00 PM to 5:59 PM = dusk
	jp nz, .do_nothing
	ld hl, OutsideDuskPalette
	jp LoadEightBGPalettes
	
.deepblueocean
	ld a, [TimeOfDay]
	cp NITE
	jr z, .deepbluenite
	cp MORN
	jr z, .deepbluemorn
	ld a, [hHours]
	cp 17 ; 5:00 PM to 5:59 PM = dusk
	jr z, .deepbluedusk
	ld hl, OutsideDayDeepBluePalette
	jp LoadEightBGPalettes
	
.deepbluemorn
	ld hl, OutsideMornDeepBluePalette
	jp LoadEightBGPalettes
	
.deepbluenite
	ld hl, OutsideNitePalette
	jp LoadEightBGPalettes
	
.deepbluedusk
	ld hl, OutsideDuskPalette
	jp LoadEightBGPalettes
	
.ranch
	ld a, [TimeOfDay]
	cp NITE
	jr z, .ranchnite
	cp MORN
	jr z, .ranchmorn
	ld a, [hHours]
	cp 17 ; 5:00 PM to 5:59 PM = dusk
	jr z, .ranchdusk
	ld hl, OutsideDayRanchPalette
	jr LoadEightBGPalettes
	
.ranchmorn
	ld hl, OutsideMornRanchPalette
	jr LoadEightBGPalettes
	
.ranchnite
	ld hl, OutsideNiteRanchPalette
	jr LoadEightBGPalettes
	
.ranchdusk
	ld hl, OutsideDuskPalette
	jr LoadEightBGPalettes
	
.mountain
	ld a, [TimeOfDay]
	cp NITE
	jr z, .mountainnite
	cp MORN
	jr z, .mountainmorn
	ld a, [hHours]
	cp 17 ; 5:00 PM to 5:59 PM = dusk
	jr z, .mountaindusk
	ld hl, OutsideDayMountainPalette
	jr LoadEightBGPalettes
	
.mountainmorn
	ld hl, OutsideMornMountainPalette
	jr LoadEightBGPalettes
	
.mountainnite
	ld hl, OutsideNiteMountainPalette
	jr LoadEightBGPalettes
	
.mountaindusk
	ld hl, OutsideDuskMountainPalette
	jr LoadEightBGPalettes
	
.jungle
	ld a, [TimeOfDay]
	cp NITE
	jr z, .junglenite
	cp MORN
	jr z, .junglemorn
	ld a, [hHours]
	cp 17 ; 5:00 PM to 5:59 PM = dusk
	jr z, .jungledusk
	ld hl, OutsideDayJunglePalette
	jr LoadEightBGPalettes
	
.junglemorn
	ld hl, OutsideMornJunglePalette
	jr LoadEightBGPalettes
	
.junglenite
	ld hl, OutsideNiteJunglePalette
	jr LoadEightBGPalettes
	
.jungledusk
	ld hl, OutsideDuskJunglePalette
	jr LoadEightBGPalettes

.do_nothing
	and a
	ret
; 494f2
; 494f2


LoadEightTimeOfDayBGPalettes:
	ld a, [hHours]
	cp 17 ; 5:00 PM to 5:59 PM = dusk
	ld a, $3
	jr z, .dusk
	ld a, [TimeOfDayPal]
	and $3
.dusk
	ld bc, 8 palettes
	call AddNTimes
LoadEightBGPalettes: ; 494f2
	ld a, $5
	ld de, UnknBGPals
	ld bc, 8 palettes
	call FarCopyWRAM
	scf
	ret

LoadCavePalette:
	ld a, $5
	ld de, UnknBGPals
	ld hl, CavePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

CavePalette:
	INCLUDE "tilesets/cave.pal"
	
LoadStarglowCavernPalette: ; 49590
	ld a, $5
	ld de, UnknBGPals
	ld hl, StarglowCavernPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
; 4959f

StarglowCavernPalette: ; 4959f
INCLUDE "tilesets/starglow_cavern.pal"

LoadSpookyForestPalette:
	ld a, $5
	ld de, UnknBGPals
	ld hl, SpookyForestPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
; 49501

SpookyForestPalette: ; 49501
INCLUDE "tilesets/spookyforest.pal"
; 49541

LoadSpookHousePalette: ; 494f2
	ld a, $5
	ld de, UnknBGPals
	ld hl, SpookHousePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
; 49501

SpookHousePalette: ; 49501
INCLUDE "tilesets/spookhouse.pal"
; 49541

LoadSpookHouse2Palette: ; 494f2
	ld a, $5
	ld de, UnknBGPals
	ld hl, SpookHouse2Palette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
; 49501

SpookHouse2Palette: ; 49501
INCLUDE "tilesets/spookhouse2.pal"
; 49541

LoadLavaCavePalette:
	ld a, $5
	ld de, UnknBGPals
	ld hl, LavaCavePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
; 49501

LavaCavePalette: ; 49501
INCLUDE "tilesets/lavacave.pal"

LoadPokeComPalette: ; 494f2
	ld a, $5
	ld de, UnknBGPals
	ld hl, PokeComPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
; 49501

PokeComPalette: ; 49501
INCLUDE "tilesets/pokecom.pal"
; 49541

LoadBattleTowerPalette: ; 49541
	ld a, $5
	ld de, UnknBGPals
	ld hl, BattleTowerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
; 49550

BattleTowerPalette: ; 49550
INCLUDE "tilesets/battle_tower.pal"
; 49590

LoadIcePathPalette: ; 49590
	ld a, $5
	ld de, UnknBGPals
	ld hl, IcePathPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
; 4959f

IcePathPalette: ; 4959f
INCLUDE "tilesets/ice_path.pal"
; 495df

LoadHousePalette: ; 495df
	ld a, $5
	ld de, UnknBGPals
	ld hl, HousePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
; 495ee

HousePalette: ; 495ee
INCLUDE "tilesets/house.pal"
; 4962e

LoadRadioTowerPalette: ; 4962e
	ld a, $5
	ld de, UnknBGPals
	ld hl, RadioTowerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
; 4963d

RadioTowerPalette: ; 4963d
INCLUDE "tilesets/radio_tower.pal"
; 4967d

OutsideMornDeepBluePalette:
INCLUDE "tilesets/outsidepals//deepblue/morndeepblue.pal"

OutsideDayDeepBluePalette:
INCLUDE "tilesets/outsidepals//deepblue/daydeepblue.pal"

OutsideDuskPalette:
INCLUDE "tilesets/outsidepals/dusk.pal"

OutsideNitePalette:
INCLUDE "tilesets/outsidepals/nite.pal"

OutsideMornRanchPalette:
INCLUDE "tilesets/outsidepals/ranch/mornranch.pal"

OutsideDayRanchPalette:
INCLUDE "tilesets/outsidepals/ranch/dayranch.pal"

OutsideNiteRanchPalette:
INCLUDE "tilesets/outsidepals/ranch/niteranch.pal"

OutsideMornMountainPalette:
INCLUDE "tilesets/outsidepals/mountain/mornmountain.pal"

OutsideDayMountainPalette:
INCLUDE "tilesets/outsidepals/mountain/daymountain.pal"

OutsideDuskMountainPalette:
INCLUDE "tilesets/outsidepals/mountain/duskmountain.pal"

OutsideNiteMountainPalette:
INCLUDE "tilesets/outsidepals/mountain/nitemountain.pal"

OutsideMornJunglePalette:
INCLUDE "tilesets/outsidepals/jungle/mornjungle.pal"

OutsideDayJunglePalette:
INCLUDE "tilesets/outsidepals/jungle/dayjungle.pal"

OutsideDuskJunglePalette:
INCLUDE "tilesets/outsidepals/jungle/duskjungle.pal"

OutsideNiteJunglePalette:
INCLUDE "tilesets/outsidepals/jungle/nitejungle.pal"

MansionPalette1: ; 4967d
	RGB 30, 28, 26
	RGB 19, 19, 19
	RGB 13, 13, 13
	RGB 07, 07, 07

	RGB 30, 28, 26
	RGB 31, 19, 24
	RGB 30, 10, 06
	RGB 07, 07, 07

	RGB 18, 24, 09
	RGB 15, 20, 01
	RGB 09, 13, 00
	RGB 07, 07, 07

	RGB 30, 28, 26
	RGB 15, 16, 31
	RGB 09, 09, 31
	RGB 07, 07, 07

	RGB 30, 28, 26
	RGB 31, 31, 07
	RGB 31, 16, 01
	RGB 07, 07, 07

	RGB 26, 24, 17
	RGB 21, 17, 07
	RGB 16, 13, 03
	RGB 07, 07, 07

MansionPalette3: ; 496ad
	RGB 30, 28, 26
	RGB 17, 19, 31
	RGB 14, 16, 31
	RGB 07, 07, 07

	RGB 31, 31, 16
	RGB 31, 31, 16
	RGB 14, 09, 00
	RGB 00, 00, 00
; 496bd

MansionPalette4: ; 496bd
	RGB 05, 05, 16
	RGB 08, 19, 28
	RGB 00, 00, 00
	RGB 31, 31, 31
; 496c5

LoadMansionPalette: ; 496c5
	ld a, $5
	ld de, UnknBGPals
	ld hl, MansionPalette1
	ld bc, 8 palettes
	call FarCopyWRAM
	ld a, $5
	ld de, UnknBGPals + 4 palettes
	ld hl, MansionPalette2
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, $5
	ld de, UnknBGPals + 3 palettes
	ld hl, MansionPalette3
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, $5
	ld de, UnknBGPals + 6 palettes
	ld hl, MansionPalette4
	ld bc, 1 palettes
	call FarCopyWRAM
	ret
; 496fe

MansionPalette2: ; 496fe
	RGB 25, 24, 23
	RGB 20, 19, 19
	RGB 14, 16, 31
	RGB 07, 07, 07
; 49706

MG_Mobile_Layout02: ; 49706
	ld hl, Palette_49732
	ld de, UnknBGPals
	ld bc, 1 palettes
	ld a, $5
	call FarCopyWRAM
	callba ApplyPals
	call MG_Mobile_Layout_WipeAttrMap
	callba ApplyAttrMap
	ld hl, Palette_4973a
	ld de, UnknOBPals
	ld bc, 1 palettes
	ld a, $5
	call FarCopyWRAM
	ret
; 49732

Palette_49732: ; 49732
	RGB 31, 31, 31
	RGB 23, 16, 07
	RGB 23, 07, 07
	RGB 03, 07, 20
; 4973a

Palette_4973a: ; 4973a
	RGB 00, 00, 00
	RGB 07, 05, 31
	RGB 14, 18, 31
	RGB 31, 31, 31
; 49742

Function49742: ; 49742
	ld hl, Palette_49757
	ld de, UnknBGPals
	ld bc, $40
	ld a, $5
	call FarCopyWRAM
	callba ApplyPals
	ret
; 49757

Palette_49757: ; 49757
	RGB 31, 31, 63
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 63
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 04, 02, 15
	RGB 21, 00, 21
	RGB 31, 00, 00
	RGB 31, 31, 31

	RGB 04, 02, 15
	RGB 21, 00, 21
	RGB 30, 16, 26
	RGB 31, 31, 31

	RGB 04, 02, 15
	RGB 21, 00, 21
	RGB 16, 16, 16
	RGB 31, 31, 31

	RGB 04, 02, 15
	RGB 21, 00, 21
	RGB 31, 12, 12
	RGB 31, 31, 31

	RGB 04, 02, 15
	RGB 21, 00, 21
	RGB 07, 08, 31
	RGB 31, 31, 31

	RGB 04, 02, 15
	RGB 21, 00, 21
	RGB 29, 28, 09
	RGB 31, 31, 31
; 49797

_InitMG_Mobile_LinkTradePalMap: ; 49797
	hlcoord 0, 0, AttrMap
	lb bc, 16, 2
	ld a, $4
	call MG_Mobile_Layout_FillBox
	ld a, $3
	ldcoord_a 0, 1, AttrMap
	ldcoord_a 0, 14, AttrMap
	hlcoord 2, 0, AttrMap
	lb bc, 8, 18
	ld a, $5
	call MG_Mobile_Layout_FillBox
	hlcoord 2, 8, AttrMap
	lb bc, 8, 18
	ld a, $6
	call MG_Mobile_Layout_FillBox
	hlcoord 0, 16, AttrMap
	lb bc, 2, SCREEN_WIDTH
	ld a, $4
	call MG_Mobile_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 6, 1, AttrMap
	call MG_Mobile_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 17, 1, AttrMap
	call MG_Mobile_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 6, 9, AttrMap
	call MG_Mobile_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 17, 9, AttrMap
	call MG_Mobile_Layout_FillBox
	ld a, $2
	hlcoord 2, 16, AttrMap
	ld [hli], a
	ld a, $7
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld a, $2
	ld [hl], a
	hlcoord 2, 17, AttrMap
	ld a, $3
	ld bc, 6
	call ByteFill
	ret
; 49811

LoadTradeRoomBGPals: ; 49811
	ld hl, Palette_49826
	ld de, UnknBGPals + $10
	ld bc, $30
	ld a, $5
	call FarCopyWRAM
	callba ApplyPals
	ret
; 49826

Palette_49826: ; 49826
	RGB 04, 02, 15
	RGB 07, 09, 31
	RGB 31, 00, 00
	RGB 31, 31, 31

	RGB 04, 02, 15
	RGB 07, 09, 31
	RGB 15, 23, 30
	RGB 31, 31, 31

	RGB 04, 02, 15
	RGB 07, 09, 31
	RGB 16, 16, 16
	RGB 31, 31, 31

	RGB 04, 02, 15
	RGB 07, 09, 31
	RGB 25, 07, 04
	RGB 31, 31, 31

	RGB 04, 02, 15
	RGB 07, 09, 31
	RGB 03, 22, 08
	RGB 31, 31, 31

	RGB 04, 02, 15
	RGB 07, 09, 31
	RGB 29, 28, 09
	RGB 31, 31, 31
; 49856

InitMG_Mobile_LinkTradePalMap: ; 49856
	call _InitMG_Mobile_LinkTradePalMap
	ret
; 4985a
