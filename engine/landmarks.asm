GetLandmarkCoords: ; 0x1ca896
; Return coordinates (d, e) of landmark e.
	push hl
	ld l, e
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, Landmarks
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl
	ret
; 0x1ca8a5


GetLandmarkName:: ; 0x1ca8a5
; Copy the name of landmark e to StringBuffer1.
	push hl
	push de
	push bc

	ld l, e
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, Landmarks + 2
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a

	ld de, StringBuffer1
	ld c, 18
.copy
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .copy

	pop bc
	pop de
	pop hl
	ret
; 0x1ca8c3


Landmarks: ; 0x1ca8c3

landmark: MACRO
	db \1, \2
	dw \3
ENDM

	landmark   0,   0, SpecialMapName
	landmark  28, 100, SunsetBayName
	landmark  36, 100, SunsetCapeName
	landmark  36, 108, LighthouseName
	landmark  36,  92, Route37Name
	landmark  36,  84, VioletCityName
	landmark  36,  72, Route36Name
	landmark  44,  76, DaybreakGrottoName
	landmark  36,  60, AzaleaTownName
	landmark  36,  52, GlintGroveName
	landmark  52,  60, Route43Name
	landmark  60,  52, UnionCaveName
	landmark  68,  68, LakeOfRageName
	landmark  84,  68, Route34Name
	landmark  76,  60, TohjoFallsName
	landmark  84,  84, Route42Name
	landmark  76, 100, Route45Name
	landmark  68,  84, Route41Name
	landmark  52,  84, Route30Name
	landmark  52,  76, SproutTowerName
	landmark  76, 116, CherrygroveCityName
	landmark  84,  60, IlexForestName
	landmark  84,  44, RuinsOfAlphName
	landmark  92,  56, Route11Name
	landmark 100,  60, SlowpokeWellName
	landmark 100,  44, VermilionCityName
	
	landmark 0,  0, NewBarkTownName
	landmark  24, 116, OceanName
	landmark 136, 116, Route29Name
	landmark 104,  76, Route31Name
	landmark  92, 108, Route32Name
	landmark  90, 140, Route33Name
	landmark  60, 108, GoldenrodCityName
	landmark  58, 108, RadioTowerName
	landmark  60,  92, Route35Name
	landmark  60,  76, NationalParkName
	landmark  76,  60, EcruteakCityName
	landmark  78,  58, TinTowerName
	landmark  74,  58, BurnedTowerName
	landmark  36,  72, BattleTowerName
	landmark  36,  80, Route40Name
	landmark  36, 108, WhirlIslandsName
	landmark  28, 116, CianwoodCityName
	landmark  92,  60, MtMortarName
	landmark 116,  60, MahoganyTownName
	landmark 128,  60, Route44Name
	landmark 138,  54, IcePathName
	landmark 140,  60, BlackthornCityName
	landmark 140,  52, DragonsDenName
	landmark 120,  88, DarkCaveName
	landmark 132, 104, Route46Name
	landmark 156,  84, SilverCaveName
	landmark  60, 124, PalletTownName
	landmark  60, 108, Route1Name
	landmark  60,  92, ViridianCityName
	landmark  60,  80, Route2Name
	landmark  60,  68, PewterCityName
	landmark  72,  68, Route3Name
	landmark  84,  68, MtMoonName
	landmark  96,  68, Route4Name
	landmark 108,  68, CeruleanCityName
	landmark 108,  60, Route24Name
	landmark 116,  52, Route25Name
	landmark 108,  76, Route5Name
	landmark 116,  92, UndergroundName
	landmark 108,  92, Route6Name
	landmark  96,  76, DiglettsCaveName
	landmark  96,  84, Route7Name
	landmark 124,  84, Route8Name
	landmark 124,  68, Route9Name
	landmark 140,  68, RockTunnelName
	landmark 140,  72, Route10Name
	landmark 140,  76, PowerPlantName
	landmark 140,  84, LavenderTownName
	landmark 148,  84, LavRadioTowerName
	landmark  84,  84, CeladonCityName
	landmark 108,  84, SaffronCityName
	landmark 140,  96, Route12Name
	landmark 132, 116, Route13Name
	landmark 124, 128, Route14Name
	landmark 112, 132, Route15Name
	landmark  76,  84, Route16Name
	landmark  76, 108, Route17Name
	landmark  88, 132, Route18Name
	landmark 100, 132, FuchsiaCityName
	landmark 100, 144, Route19Name
	landmark  84, 148, Route20Name
	landmark  76, 148, SeafoamIslandsName
	landmark  60, 148, CinnabarIslandName
	landmark  60, 136, Route21Name
	landmark  44,  84, Route22Name
	landmark  36,  68, VictoryRoadName
	landmark  36,  60, Route23Name
	landmark  36,  52, IndigoPlateauName
	landmark  36, 108, Route26Name
	landmark  28, 116, Route27Name
	landmark  28,  84, Route28Name
	landmark 148, 132, FastShipName


SunsetBayName:     	 db "SUNSET¯BAY@"
SunsetCapeName:      db "SUNSET¯CAPE@"
LighthouseName:      db "LIGHTHOUSE@"
Route37Name:         db "ROUTE 1@"
VioletCityName:      db "DAYBREAK¯VILLAGE@"
Route36Name:         db "ROUTE 2@"
DaybreakGrottoName:  db "DAYBREAK¯GROTTO@"
AzaleaTownName:      db "GLINT¯CITY@"
GlintGroveName:		 db "GLINT¯GROVE@"
Route43Name:         db "ROUTE 3@"
UnionCaveName:       db "STARGLOW¯CAVERN@"
LakeOfRageName:      db "STARGLOW¯VALLEY@"
Route34Name:         db "ROUTE 4@"
TohjoFallsName:      db "HUNTER'S¯THICKET@"
Route42Name:         db "ROUTE 5@"
Route45Name:         db "ROUTE 6@"
Route41Name:         db "ROUTE 7@"
Route30Name:         db "LAKE OWNA@"
SproutTowerName:     db "MT.ONWA@"
CherrygroveCityName: db "SUNBEAM¯ISLAND@"
IlexForestName:      db "EVENTIDE¯FOREST@"
RuinsOfAlphName:     db "OLD MANOR@"
Route11Name:         db "ROUTE 8@"
SlowpokeWellName:    db "DODRIO¯RANCH@"
VermilionCityName:   db "FLICKER¯STATION@"

NewBarkTownName:     db "LUMINE¯TOWN@"
OceanName:         	 db "OCEAN@"
GoldenrodCityName:   db "GOLDENROD¯CITY@"
EcruteakCityName:    db "ECRUTEAK¯CITY@"
CianwoodCityName:    db "CIANWOOD¯CITY@"
MahoganyTownName:    db "MAHOGANY¯TOWN@"
BlackthornCityName:  db "BLACKTHORN¯CITY@"
SilverCaveName:      db "SILVER CAVE@"
RadioTowerName:      db "RADIO TOWER@"
PowerPlantName:      db "POWER PLANT@"
NationalParkName:    db "NATIONAL¯PARK@"
TinTowerName:        db "TIN TOWER@"
WhirlIslandsName:    db "WHIRL¯ISLANDS@"
MtMortarName:        db "MT.MORTAR@"
DragonsDenName:      db "DRAGON'S¯DEN@"
IcePathName:         db "ICE PATH@"
NotApplicableName:   db "N/A@"
PalletTownName:      db "PALLET TOWN@"
ViridianCityName:    db "VIRIDIAN¯CITY@"
PewterCityName:      db "PEWTER CITY@"
CeruleanCityName:    db "CERULEAN¯CITY@"
LavenderTownName:    db "LAVENDER¯TOWN@"
CeladonCityName:     db "CELADON¯CITY@"
SaffronCityName:     db "SAFFRON¯CITY@"
FuchsiaCityName:     db "FUCHSIA¯CITY@"
CinnabarIslandName:  db "CINNABAR¯ISLAND@"
IndigoPlateauName:   db "INDIGO¯PLATEAU@"
VictoryRoadName:     db "VICTORY¯ROAD@"
MtMoonName:          db "MT.MOON@"
RockTunnelName:      db "ROCK TUNNEL@"
LavRadioTowerName:   db "LAV¯RADIO TOWER@"
SilphCoName:         db "SILPH CO.@"
SafariZoneName:      db "SAFARI ZONE@"
SeafoamIslandsName:  db "SEAFOAM¯ISLANDS@"
PokemonMansionName:  db "#MON¯MANSION@"
CeruleanCaveNane:    db "CERULEAN¯CAVE@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"
Route26Name:         db "ROUTE 26@"
Route27Name:         db "ROUTE 27@"
Route28Name:         db "ROUTE 28@"
Route29Name:         db "ROUTE 29@"
Route31Name:         db "ROUTE 31@"
Route32Name:         db "ROUTE 32@"
Route33Name:         db "ROUTE 33@"
Route35Name:         db "ROUTE 35@"
Route40Name:         db "ROUTE 40@"
Route44Name:         db "ROUTE 44@"
Route46Name:         db "ROUTE 46@"
DarkCaveName:        db "DARK CAVE@"
BurnedTowerName:     db "BURNED¯TOWER@"
FastShipName:        db "FAST SHIP@"
ViridianForestName:  db "VIRIDIAN¯FOREST@"
DiglettsCaveName:    db "DIGLETT'S¯CAVE@"
UndergroundName:     db "UNDERGROUND@"
BattleTowerName:     db "BATTLE¯TOWER@"
SpecialMapName:      db "SPECIAL@"

RegionCheck: ; 0x1caea1
; Checks if the player is in Kanto or Johto.
; If in Johto, returns 0 in e.
; If in Kanto, returns 1 in e.
	ld a, [MapGroup]
	ld b, a
	ld a, [MapNumber]
	ld c, a
	call GetWorldMapLocation
	cp FAST_SHIP ; S.S. Aqua
	jr z, .johto
	cp SPECIAL_MAP
	jr nz, .checkagain

; In a special map, get the backup map group / map id
	ld a, [BackupMapGroup]
	ld b, a
	ld a, [BackupMapNumber]
	ld c, a
	call GetWorldMapLocation

.checkagain
	cp KANTO_LANDMARK
	jr c, .johto

; Victory Road area is considered to be Johto.
	cp VICTORY_ROAD
	jr c, .kanto

.johto
	ld e, 0
	ret
.kanto
	ld e, 1
	ret
