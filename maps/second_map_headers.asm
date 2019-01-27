	map_header_2 NewBarkTown, NEW_BARK_TOWN, $5, WEST | EAST
	connection west, ROUTE_29, Route29, 0, 0, 9, NEW_BARK_TOWN
	connection east, ROUTE_27, Route27, 0, 0, 9, NEW_BARK_TOWN

	map_header_2 CherrygroveCity, CHERRYGROVE_CITY, 53, NORTH | EAST | WEST
	connection north, ROUTE_45, Route45, -2, 14, 16, CHERRYGROVE_CITY
	connection west, ROUTE_29, Route29, 0, 0, 29, CHERRYGROVE_CITY
	connection east, ROUTE_27, Route27, 5, 0, 17, CHERRYGROVE_CITY

	map_header_2 VioletCity, VIOLET_CITY, 113, NORTH | SOUTH
	connection north, ROUTE_36, Route36, -1, 5, 13, VIOLET_CITY
	connection south, ROUTE_37, Route37, 0, 5, 13, VIOLET_CITY

	map_header_2 AzaleaTown, AZALEA_TOWN, 5, NORTH | SOUTH | EAST
	connection north, ROUTE_35, Route35, 1, 0, 10, AZALEA_TOWN
	connection south, ROUTE_36, Route36, 3, 1, 12, AZALEA_TOWN
	connection east, ROUTE_43, Route43, 0, 0, 10, AZALEA_TOWN

	map_header_2 CianwoodCity, CIANWOOD_CITY, $35, EAST
	connection east, ROUTE_41, Route41, 0, 0, 27, CIANWOOD_CITY

	map_header_2 GoldenrodCity, GOLDENROD_CITY, 113, EAST
	connection east, RADIO_TOWER_1F, RadioTower1F, 0, 0, 36, GOLDENROD_CITY
	
	map_header_2 RadioTower1F, RADIO_TOWER_1F, 113, WEST
	connection west, GOLDENROD_CITY, GoldenrodCity, 0, 0, 36, RADIO_TOWER_1F

	map_header_2 SunsetBay, SUNSET_BAY, 113, SOUTH | EAST
	connection south, OCEAN_2, Ocean2, 1, 0, 17, SUNSET_BAY
	connection east, SUNSET_CAPE, SunsetCape, 4, 2, 14, SUNSET_BAY

	map_header_2 EcruteakCity, ECRUTEAK_CITY, $5, SOUTH | WEST | EAST
	connection south, ROUTE_37, Route37, 5, 0, 10, ECRUTEAK_CITY
	connection west, OCEAN_2, Ocean2, 5, 0, 9, ECRUTEAK_CITY
	connection east, ROUTE_42, Route42, 9, 0, 9, ECRUTEAK_CITY

	map_header_2 MahoganyTown, MAHOGANY_TOWN, $71, NORTH | WEST | EAST
	connection north, ROUTE_43, Route43, 0, 0, 10, MAHOGANY_TOWN
	connection west, ROUTE_42, Route42, 0, 0, 9, MAHOGANY_TOWN
	connection east, ROUTE_44, Route44, 0, 0, 9, MAHOGANY_TOWN

	map_header_2 LakeofRage, LAKE_OF_RAGE, 5, NORTH | WEST | EAST
	connection north, ROUTE_33, Route33, 3, 0, 5, LAKE_OF_RAGE
	connection west, ROUTE_12, Route12, 4, 0, 4, LAKE_OF_RAGE
	connection east, ROUTE_34, Route34, 6, 0, 11, LAKE_OF_RAGE

	map_header_2 BlackthornCity, BLACKTHORN_CITY, $71, SOUTH | WEST
	connection south, ROUTE_45, Route45, 0, 0, 10, BLACKTHORN_CITY
	connection west, ROUTE_44, Route44, 9, 0, 9, BLACKTHORN_CITY

	map_header_2 SilverCaveOutside, SILVER_CAVE_OUTSIDE, $2c, EAST
	connection east, ROUTE_28, Route28, 9, 0, 9, SILVER_CAVE_OUTSIDE

	map_header_2 Route26, ROUTE_26, $5, WEST
	connection west, ROUTE_27, Route27, 45, 0, 9, ROUTE_26

	map_header_2 Route27, ROUTE_27, 53, WEST
	connection west, CHERRYGROVE_CITY, CherrygroveCity, -5, 0, 23, ROUTE_27

	map_header_2 Route28, ROUTE_28, $2c, WEST
	connection west, SILVER_CAVE_OUTSIDE, SilverCaveOutside, -3, 6, 12, ROUTE_28

	map_header_2 Route29, ROUTE_29, 53, NORTH | EAST
	connection north, DRAGON_SHRINE, DragonShrine, 2, 6, 12, ROUTE_29
	connection east, CHERRYGROVE_CITY, CherrygroveCity, 0, 0, 29, ROUTE_29

	map_header_2 Route30, ROUTE_30, 97, NORTH | EAST
	connection north, ROUTE_12, Route12, 0, 0, 31, ROUTE_30
	connection east, ROUTE_41, Route41, 11, 0, 9, ROUTE_30

	map_header_2 Route31, ROUTE_31, 9, 0

	map_header_2 Route32, ROUTE_32, 32, 0

	map_header_2 Route33, ROUTE_33, 5, SOUTH
	connection south, LAKE_OF_RAGE, LakeofRage, -3, 0, 10, ROUTE_33

	map_header_2 Route34, ROUTE_34, 5, NORTH | SOUTH | WEST
	connection north, TOHJO_FALLS, TohjoFalls, 3, 1, 7, ROUTE_34
	connection south, ROUTE_42, Route42, 7, 10, 7, ROUTE_34
	connection west, LAKE_OF_RAGE, LakeofRage, -2, 4, 13, ROUTE_34
	
	map_header_2 TohjoFalls, TOHJO_FALLS, 5, SOUTH
	connection south, ROUTE_34, Route34, 1, 3, 7, TOHJO_FALLS

	map_header_2 Route35, ROUTE_35, 5, SOUTH
	connection south, AZALEA_TOWN, AzaleaTown, 1, 2, 7, ROUTE_35

	map_header_2 Route36, ROUTE_36, 5, NORTH | SOUTH
	connection north, AZALEA_TOWN, AzaleaTown, -2, 0, 18, ROUTE_36
	connection south, VIOLET_CITY, VioletCity, 2, -4, 14, ROUTE_36

	map_header_2 Route37, ROUTE_37, 113, NORTH
	connection north, VIOLET_CITY, VioletCity, 1, -4, 14, ROUTE_37

	map_header_2 Ocean2, OCEAN_2, 53, NORTH | EAST
	connection north, SUNSET_BAY, SunsetBay, -1, 0, 18, OCEAN_2
	connection east, OCEAN_1, Ocean1, 4, 0, 7, OCEAN_2

	map_header_2 SunsetCape, SUNSET_CAPE, 53, SOUTH | WEST
	connection south, OCEAN_1, Ocean1, 0, 0, 13, SUNSET_CAPE
	connection west, SUNSET_BAY, SunsetBay, -2, 0, 19, SUNSET_CAPE
	
	
	map_header_2 Route39Farmhouse, ROUTE_39_FARMHOUSE, 53, NORTH | EAST
	connection north, OCEAN_2, Ocean2, 0, 0, 21, ROUTE_39_FARMHOUSE
	connection east, OCEAN_1, Ocean1, 0, 0, 9, ROUTE_39_FARMHOUSE
	
	map_header_2 Ocean1, OCEAN_1, 53, NORTH | WEST
	connection north, SUNSET_CAPE, SunsetCape, 0, 0, 13, OCEAN_1
	connection west, OCEAN_2, Ocean2, -3, 1, 10, OCEAN_1

	map_header_2 Route40, ROUTE_40, 7, 0

	map_header_2 Route41, ROUTE_41, 97, SOUTH | WEST
	connection south, ROUTE_45, Route45, 3, 5, 11, ROUTE_41
	connection west, ROUTE_30, Route30, -3, 8, 10, ROUTE_41
	
	map_header_2 Route42, ROUTE_42, 7, NORTH
	connection north, ROUTE_34, Route34, 11, 8, 5, LAKE_OF_RAGE
	
	map_header_2 IlexForest, ILEX_FOREST, 7, NORTH
	connection north, SPOOKY_FOREST_1, SpookyForest1, 5, 0, 8, ILEX_FOREST
	
	map_header_2 WarehouseEntrance, WAREHOUSE_ENTRANCE, 92, SOUTH
	connection south, SPOOKY_FOREST_8, SpookyForest8, 4, 0, 8, WAREHOUSE_ENTRANCE
	
	map_header_2 SpookyForest1, SPOOKY_FOREST_1, 92, NORTH | SOUTH | WEST | EAST
	connection north, SPOOKY_FOREST_2, SpookyForest2, 0, 0, 8, SPOOKY_FOREST_1
	connection south, ILEX_FOREST, IlexForest, -1, 4, 8, SPOOKY_FOREST_1
	connection west, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_1
	connection east, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_1
	
	map_header_2 SpookyForest2, SPOOKY_FOREST_2, 92, NORTH | SOUTH | WEST | EAST
	connection north, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_2
	connection south, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_2
	connection west, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_2
	connection east, SPOOKY_FOREST_3, SpookyForest3, 0, 0, 8, SPOOKY_FOREST_2
	
	map_header_2 SpookyForest3, SPOOKY_FOREST_3, 92, NORTH | SOUTH | WEST | EAST
	connection north, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_3
	connection south, SPOOKY_FOREST_4, SpookyForest4, 0, 0, 8, SPOOKY_FOREST_3
	connection west, SPOOKY_FOREST_2, SpookyForest2, 0, 0, 8, SPOOKY_FOREST_3
	connection east, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_3
	
	map_header_2 SpookyForest4, SPOOKY_FOREST_4, 92, NORTH | SOUTH | WEST | EAST
	connection north, SPOOKY_FOREST_3, SpookyForest3, 0, 0, 8, SPOOKY_FOREST_4
	connection south, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_4
	connection west, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_4
	connection east, SPOOKY_FOREST_5, SpookyForest5, 0, 0, 8, SPOOKY_FOREST_4
	
	map_header_2 SpookyForest5, SPOOKY_FOREST_5, 92, NORTH | SOUTH | WEST | EAST
	connection north, SPOOKY_FOREST_6, SpookyForest6, 0, 0, 8, SPOOKY_FOREST_5
	connection south, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_5
	connection west, SPOOKY_FOREST_4, SpookyForest4, 0, 0, 8, SPOOKY_FOREST_5
	connection east, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_5
	
	map_header_2 SpookyForest6, SPOOKY_FOREST_6, 92, NORTH | SOUTH | WEST | EAST
	connection north, SPOOKY_FOREST_7, SpookyForest7, 0, 0, 8, SPOOKY_FOREST_6
	connection south, SPOOKY_FOREST_5, SpookyForest5, 0, 0, 8, SPOOKY_FOREST_6
	connection west, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_6
	connection east, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_6
	
	map_header_2 SpookyForest7, SPOOKY_FOREST_7, 92, NORTH | SOUTH | WEST | EAST
	connection north, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_7
	connection south, SPOOKY_FOREST_6, SpookyForest6, 0, 0, 8, SPOOKY_FOREST_7
	connection west, SPOOKY_FOREST_8, SpookyForest8, 0, 0, 8, SPOOKY_FOREST_7
	connection east, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_7
	
	map_header_2 SpookyForest8, SPOOKY_FOREST_8, 92, NORTH | SOUTH | WEST | EAST
	connection north, WAREHOUSE_ENTRANCE, WarehouseEntrance, 0, 4, 8, SPOOKY_FOREST_8
	connection south, SPOOKY_FOREST_1, SpookyForest1, 0, 0, 8, SPOOKY_FOREST_8
	connection west, SPOOKY_FOREST_9, SpookyForest9, 0, 0, 8, SPOOKY_FOREST_8
	connection east, SPOOKY_FOREST_7, SpookyForest7, 0, 0, 8, SPOOKY_FOREST_8
	
	map_header_2 SpookyForest9, SPOOKY_FOREST_9, 92, EAST
	connection east, SPOOKY_FOREST_8, SpookyForest8, 0, 0, 8, SPOOKY_FOREST_7
	
	map_header_2 Route43, ROUTE_43, 5, SOUTH | WEST
	connection south, ROUTE_12, Route12, 1, 0, 25, ROUTE_43
	connection west, AZALEA_TOWN, AzaleaTown, 0, 0, 36, ROUTE_43
	
	map_header_2 Route12, ROUTE_12, 5, NORTH | SOUTH | EAST
	connection north, ROUTE_43, Route43, 0, 1, 36, ROUTE_12
	connection south, ROUTE_30, Route30, 0, 0, 36, ROUTE_12
	connection east, LAKE_OF_RAGE, LakeofRage, -3, 1, 10, ROUTE_12

	map_header_2 Route44, ROUTE_44, 9, 0
;	connection west, MAHOGANY_TOWN, MahoganyTown, 0, 0, 9, ROUTE_44
;	connection east, BLACKTHORN_CITY, BlackthornCity, -3, 6, 12, ROUTE_44

	map_header_2 Route45, ROUTE_45, 97, NORTH | SOUTH
	connection north, ROUTE_41, Route41, 2, 0, 20, ROUTE_45
	connection south, CHERRYGROVE_CITY, CherrygroveCity, 16, 0, 18, ROUTE_45
	
	map_header_2 DragonShrine, DRAGON_SHRINE, 53, SOUTH
	connection south, ROUTE_29, Route29, 9, 5, 7, DRAGON_SHRINE

	map_header_2 Route46, ROUTE_46, 9, 0
;	connection south, ROUTE_29, Route29, -3, 7, 16, ROUTE_46
;	connection east, ROUTE_45, Route45, -3, 33, 12, ROUTE_46

	map_header_2 PewterCity, PEWTER_CITY, 5, SOUTH
	connection south, ROUTE_2, Route2, -3, 0, 20, PEWTER_CITY


	map_header_2 Route2, ROUTE_2, 5, NORTH | EAST
	connection north, PEWTER_CITY, PewterCity, 3, 0, 20, ROUTE_2
	connection east, ROUTE_3, Route3, 5, 6, 8, ROUTE_2

	map_header_2 ViridianCity, VIRIDIAN_CITY, 15, NORTH | SOUTH | WEST
;	connection north, ROUTE_2, Route2, 5, 0, 10, VIRIDIAN_CITY
;	connection south, ROUTE_1, Route1, 10, 0, 10, VIRIDIAN_CITY
;	connection west, ROUTE_22, Route22, 4, 0, 9, VIRIDIAN_CITY

	map_header_2 Route22, ROUTE_22, $2c, EAST
;	connection east, VIRIDIAN_CITY, ViridianCity, -3, 1, 15, ROUTE_22

	map_header_2 Route1, ROUTE_1, $f, NORTH | SOUTH
;	connection north, VIRIDIAN_CITY, ViridianCity, -3, 7, 13, ROUTE_1
;	connection south, PALLET_TOWN, PalletTown, 0, 0, 10, ROUTE_1

	map_header_2 PalletTown, PALLET_TOWN, 15, NORTH | SOUTH
;	connection north, ROUTE_1, Route1, 0, 0, 10, PALLET_TOWN
;	connection south, ROUTE_21, Route21, 0, 0, 10, PALLET_TOWN

	map_header_2 CinnabarIsland, CINNABAR_ISLAND, $43, NORTH | EAST
;	connection north, ROUTE_21, Route21, 0, 0, 10, CINNABAR_ISLAND
;	connection east, ROUTE_20, Route20, 0, 0, 9, CINNABAR_ISLAND

	map_header_2 FuchsiaCity, FUCHSIA_CITY, $f, SOUTH | WEST | EAST
;	connection south, ROUTE_19, Route19, 0, 0, 10, FUCHSIA_CITY
;	connection west, ROUTE_18, Route18, 7, 0, 9, FUCHSIA_CITY
;	connection east, ROUTE_15, Route15, 9, 0, 9, FUCHSIA_CITY

	map_header_2 Route18, ROUTE_18, $43, WEST | EAST
;	connection west, ROUTE_17, Route17, -3, 35, 10, ROUTE_18
;	connection east, FUCHSIA_CITY, FuchsiaCity, -3, 4, 14, ROUTE_18

	map_header_2 Route17, ROUTE_17, $43, NORTH | EAST
;	connection north, ROUTE_16, Route16, 0, 0, 10, ROUTE_17
;	connection east, ROUTE_18, Route18, 38, 0, 9, ROUTE_17

	map_header_2 Route16, ROUTE_16, $f, SOUTH | EAST
;	connection south, ROUTE_17, Route17, 0, 0, 10, ROUTE_16
;	connection east, CELADON_CITY, CeladonCity, -3, 6, 12, ROUTE_16

	map_header_2 CeladonCity, CELADON_CITY, $f, WEST | EAST
;	connection west, ROUTE_16, Route16, 9, 0, 9, CELADON_CITY
;	connection east, ROUTE_7, Route7, 5, 0, 9, CELADON_CITY

	map_header_2 Route7, ROUTE_7, $f, WEST | EAST
	connection west, CELADON_CITY, CeladonCity, -3, 2, 15, ROUTE_7
	connection east, SAFFRON_CITY, SaffronCity, -3, 6, 12, ROUTE_7

	map_header_2 Route15, ROUTE_15, $f, WEST | EAST
	connection west, FUCHSIA_CITY, FuchsiaCity, -3, 6, 12, ROUTE_15
	connection east, ROUTE_14, Route14, -3, 6, 12, ROUTE_15

	map_header_2 Route14, ROUTE_14, $43, NORTH | WEST
	connection north, ROUTE_13, Route13, 0, 0, 13, ROUTE_14
	connection west, ROUTE_15, Route15, 9, 0, 9, ROUTE_14

	map_header_2 Route13, ROUTE_13, $43, NORTH | SOUTH
	connection north, ROUTE_12, Route12, 20, 0, 10, ROUTE_13
	connection south, ROUTE_14, Route14, 0, 0, 10, ROUTE_13

	map_header_2 Route11, ROUTE_11, 5, NORTH
	connection north, VERMILION_CITY, VermilionCity, 6, 4, 12, ROUTE_11
;	connection east, ROUTE_12, Route12, -3, 6, 15, ROUTE_11

	map_header_2 LavenderTown, LAVENDER_TOWN, $2c, NORTH | SOUTH | WEST
	connection north, ROUTE_10_SOUTH, Route10South, 0, 0, 10, LAVENDER_TOWN
	connection south, ROUTE_12, Route12, 0, 0, 10, LAVENDER_TOWN
	connection west, ROUTE_8, Route8, 0, 0, 9, LAVENDER_TOWN

	map_header_2 VermilionCity, VERMILION_CITY, 113, SOUTH | WEST
	connection south, ROUTE_11, Route11, 1, 5, 10, VERMILION_CITY
	connection west, VERMILION_PORT, VermilionPort, 3, 0, 11, VERMILION_CITY
	
	map_header_2 VermilionPort, VERMILION_PORT, 113, EAST
	connection east, VERMILION_CITY, VermilionCity, 0, 3, 11, VERMILION_PORT

	map_header_2 Route6, ROUTE_6, 51, 0

	map_header_2 SaffronCity, SAFFRON_CITY, 15, NORTH | SOUTH | WEST | EAST
	connection north, ROUTE_5, Route5, 5, 0, 10, SAFFRON_CITY
	connection south, ROUTE_6, Route6, 5, 0, 10, SAFFRON_CITY
	connection west, ROUTE_7, Route7, 9, 0, 9, SAFFRON_CITY
	connection east, ROUTE_8, Route8, 9, 0, 9, SAFFRON_CITY

	map_header_2 Route5, ROUTE_5, $f, NORTH | SOUTH
	connection north, CERULEAN_CITY, CeruleanCity, -3, 2, 16, ROUTE_5
	connection south, SAFFRON_CITY, SaffronCity, -3, 2, 16, ROUTE_5

	map_header_2 CeruleanCity, CERULEAN_CITY, $f, NORTH | SOUTH | WEST | EAST
	connection north, ROUTE_24, Route24, 6, 0, 10, CERULEAN_CITY
	connection south, ROUTE_5, Route5, 5, 0, 10, CERULEAN_CITY
	connection west, ROUTE_4, Route4, 5, 0, 9, CERULEAN_CITY
	connection east, ROUTE_9, Route9, 9, 0, 9, CERULEAN_CITY

	map_header_2 Route9, ROUTE_9, $2c, SOUTH | WEST
	connection south, ROUTE_10_NORTH, Route10North, 20, 0, 10, ROUTE_9
	connection west, CERULEAN_CITY, CeruleanCity, -3, 6, 12, ROUTE_9

	map_header_2 Route24, ROUTE_24, $2c, NORTH | SOUTH
	connection north, ROUTE_25, Route25, 0, 0, 13, ROUTE_24
	connection south, CERULEAN_CITY, CeruleanCity, -3, 3, 16, ROUTE_24

	map_header_2 Route25, ROUTE_25, $2c, SOUTH
	connection south, ROUTE_24, Route24, 0, 0, 10, ROUTE_25

	map_header_2 Route3, ROUTE_3, 5, WEST
	connection west, ROUTE_2, Route2, 2, 1, 15, ROUTE_3

	map_header_2 Route4, ROUTE_4, $2c, WEST | EAST
	connection west, ROUTE_3, Route3, 0, 0, 9, ROUTE_4
	connection east, CERULEAN_CITY, CeruleanCity, -3, 2, 15, ROUTE_4

	map_header_2 Route8, ROUTE_8, $2c, WEST | EAST
	connection west, SAFFRON_CITY, SaffronCity, -3, 6, 12, ROUTE_8
	connection east, LAVENDER_TOWN, LavenderTown, 0, 0, 9, ROUTE_8

	map_header_2 Route10North, ROUTE_10_NORTH, $2c, NORTH | SOUTH
	connection north, ROUTE_9, Route9, -3, 17, 13, ROUTE_10_NORTH
	connection south, ROUTE_10_SOUTH, Route10South, 0, 0, 10, ROUTE_10_NORTH

	map_header_2 Route10South, ROUTE_10_SOUTH, $2c, NORTH | SOUTH
	connection north, ROUTE_10_NORTH, Route10North, 0, 0, 10, ROUTE_10_SOUTH
	connection south, LAVENDER_TOWN, LavenderTown, 0, 0, 10, ROUTE_10_SOUTH

	map_header_2 NationalPark, NATIONAL_PARK, 53, NORTH
	connection north, ROUTE_45, Route45, 8, 22, 6, NATIONAL_PARK
	
	map_header_2 UndergroundPathSwitchRoomEntrances, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, $5c, 0
	map_header_2 Route23, ROUTE_23, $f, 0
	map_header_2 SproutTower1F, SPROUT_TOWER_1F, $0, 0
	map_header_2 SproutTower2F, SPROUT_TOWER_2F, $0, 0
	map_header_2 SproutTower3F, SPROUT_TOWER_3F, $0, 0
	map_header_2 TinTower1F, TIN_TOWER_1F, $0, 0
	map_header_2 TinTower2F, TIN_TOWER_2F, $0, 0
	map_header_2 TinTower3F, TIN_TOWER_3F, $0, 0
	map_header_2 TinTower4F, TIN_TOWER_4F, $0, 0
	map_header_2 TinTower5F, TIN_TOWER_5F, $0, 0
	map_header_2 TinTower6F, TIN_TOWER_6F, $0, 0
	map_header_2 TinTower7F, TIN_TOWER_7F, $0, 0
	map_header_2 TinTower8F, TIN_TOWER_8F, $0, 0
	map_header_2 TinTower9F, TIN_TOWER_9F, $0, 0
	map_header_2 BurnedTower1F, BURNED_TOWER_1F, $0, 0
	map_header_2 BurnedTowerB1F, BURNED_TOWER_B1F, $9, 0
	map_header_2 NationalParkBugContest, NATIONAL_PARK_BUG_CONTEST, 0, 0
	map_header_2 RadioTower2F, RADIO_TOWER_2F, $0, 0
	map_header_2 RadioTower3F, RADIO_TOWER_3F, $0, 0
	map_header_2 RadioTower4F, RADIO_TOWER_4F, $0, 0
	map_header_2 RadioTower5F, RADIO_TOWER_5F, $0, 0
	map_header_2 RuinsofAlphOutside, RUINS_OF_ALPH_OUTSIDE, $5, 0
	map_header_2 SunsetCapeRoute1Gate, SUNSET_CAPE_ROUTE_1_GATE, 0, 0
	map_header_2 RuinsofAlphKabutoChamber, RUINS_OF_ALPH_KABUTO_CHAMBER, 0, 0
	map_header_2 RuinsofAlphOmanyteChamber, RUINS_OF_ALPH_OMANYTE_CHAMBER, 0, 0
	map_header_2 RuinsofAlphAerodactylChamber, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 0, 0
	map_header_2 RuinsofAlphInnerChamber, RUINS_OF_ALPH_INNER_CHAMBER, $0, 0
	map_header_2 RuinsofAlphResearchCenter, RUINS_OF_ALPH_RESEARCH_CENTER, $0, 0
	map_header_2 RuinsofAlphHoOhItemRoom, RUINS_OF_ALPH_HO_OH_ITEM_ROOM, 5, 0
	map_header_2 RuinsofAlphKabutoItemRoom, RUINS_OF_ALPH_KABUTO_ITEM_ROOM, $0, 0
	map_header_2 RuinsofAlphOmanyteItemRoom, RUINS_OF_ALPH_OMANYTE_ITEM_ROOM, 0, 0
	map_header_2 RuinsofAlphAerodactylItemRoom, RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM, 0, 0
	map_header_2 RuinsofAlphHoOhWordRoom, RUINS_OF_ALPH_HO_OH_WORD_ROOM, $0, 0
	map_header_2 RuinsofAlphKabutoWordRoom, RUINS_OF_ALPH_KABUTO_WORD_ROOM, $0, 0
	map_header_2 RuinsofAlphOmanyteWordRoom, RUINS_OF_ALPH_OMANYTE_WORD_ROOM, 0, 0
	map_header_2 RuinsofAlphAerodactylWordRoom, RUINS_OF_ALPH_AERODACTYL_WORD_ROOM, 0, 0
	map_header_2 UnionCave1F, UNION_CAVE_1F, 9, 0
	map_header_2 UnionCaveB1F, UNION_CAVE_B1F, 9, 0
	map_header_2 UnionCaveB2F, UNION_CAVE_B2F, $9, 0
	map_header_2 SlowpokeWellB1F, SLOWPOKE_WELL_B1F, $9, 0
	map_header_2 SlowpokeWellB2F, SLOWPOKE_WELL_B2F, $9, 0
	map_header_2 OlivineLighthouse1F, OLIVINE_LIGHTHOUSE_1F, 0, 0
	map_header_2 OlivineLighthouse2F, OLIVINE_LIGHTHOUSE_2F, 0, 0
	map_header_2 OlivineLighthouse3F, OLIVINE_LIGHTHOUSE_3F, 0, 0
	map_header_2 OlivineLighthouse4F, OLIVINE_LIGHTHOUSE_4F, 0, 0
	map_header_2 OlivineLighthouse5F, OLIVINE_LIGHTHOUSE_5F, 0, 0
	map_header_2 OlivineLighthouse6F, OLIVINE_LIGHTHOUSE_6F, 0, 0
	map_header_2 MahoganyMart1F, MAHOGANY_MART_1F, $0, 0
	map_header_2 TeamRocketBaseB1F, TEAM_ROCKET_BASE_B1F, $0, 0
	map_header_2 TeamRocketBaseB2F, TEAM_ROCKET_BASE_B2F, $0, 0
	map_header_2 TeamRocketBaseB3F, TEAM_ROCKET_BASE_B3F, $0, 0
	map_header_2 GoldenrodDeptStoreB1F, GOLDENROD_DEPT_STORE_B1F, $0, 0
	map_header_2 UndergroundWarehouse, UNDERGROUND_WAREHOUSE, $0, 0
	map_header_2 MountMortar1FOutside, MOUNT_MORTAR_1F_OUTSIDE, $9, 0
	map_header_2 MountMortar1FInside, MOUNT_MORTAR_1F_INSIDE, $9, 0
	map_header_2 MountMortar2FInside, MOUNT_MORTAR_2F_INSIDE, $9, 0
	map_header_2 MountMortarB1F, MOUNT_MORTAR_B1F, $9, 0
	map_header_2 IcePath1F, ICE_PATH_1F, $9, 0
	map_header_2 IcePathB1F, ICE_PATH_B1F, $19, 0
	map_header_2 IcePathB2FMahoganySide, ICE_PATH_B2F_MAHOGANY_SIDE, $19, 0
	map_header_2 IcePathB2FBlackthornSide, ICE_PATH_B2F_BLACKTHORN_SIDE, $19, 0
	map_header_2 IcePathB3F, ICE_PATH_B3F, $19, 0
	map_header_2 WhirlIslandNW, WHIRL_ISLAND_NW, $9, 0
	map_header_2 WhirlIslandNE, WHIRL_ISLAND_NE, $9, 0
	map_header_2 WhirlIslandSW, WHIRL_ISLAND_SW, $9, 0
	map_header_2 WhirlIslandCave, WHIRL_ISLAND_CAVE, $9, 0
	map_header_2 WhirlIslandSE, WHIRL_ISLAND_SE, $f, 0
	map_header_2 WhirlIslandB1F, WHIRL_ISLAND_B1F, $9, 0
	map_header_2 WhirlIslandB2F, WHIRL_ISLAND_B2F, $2e, 0
	map_header_2 WhirlIslandLugiaChamber, WHIRL_ISLAND_LUGIA_CHAMBER, $f, 0
	map_header_2 SilverCaveRoom1, SILVER_CAVE_ROOM_1, $9, 0
	map_header_2 SilverCaveRoom2, SILVER_CAVE_ROOM_2, $9, 0
	map_header_2 SilverCaveRoom3, SILVER_CAVE_ROOM_3, $9, 0
	map_header_2 SilverCaveItemRooms, SILVER_CAVE_ITEM_ROOMS, $9, 0
	map_header_2 DarkCaveVioletEntrance, DARK_CAVE_VIOLET_ENTRANCE, $9, 0
	map_header_2 DarkCaveBlackthornEntrance, DARK_CAVE_BLACKTHORN_ENTRANCE, $9, 0
	map_header_2 DragonsDen1F, DRAGONS_DEN_1F, $9, 0
	map_header_2 DragonsDenB1F, DRAGONS_DEN_B1F, $71, 0
	map_header_2 SunsetPokeCenter1F, SUNSET_POKECENTER_1F, 0, 0
	map_header_2 OlivineGym, OLIVINE_GYM, $0, 0
	map_header_2 SunsetGrassWaterHouse, SUNSET_GRASS_WATER_HOUSE, 0, 0
	map_header_2 SunsetCaptainsHouse, SUNSET_CAPTAINS_HOUSE, 0, 0
	map_header_2 SunsetOldCoupleHouse, SUNSET_OLD_COUPLE_HOUSE, 0, 0
	map_header_2 SunsetLegendsHouse, SUNSET_LEGENDS_HOUSE, 0, 0
	map_header_2 SunsetCafe, SUNSET_CAFE, 0, 0
	map_header_2 OlivineMart, OLIVINE_MART, 0, 0
	map_header_2 Route38EcruteakGate, ROUTE_38_ECRUTEAK_GATE, 0, 0
	map_header_2 MahoganyRedGyaradosSpeechHouse, MAHOGANY_RED_GYARADOS_SPEECH_HOUSE, $0, 0
	map_header_2 MahoganyGym, MAHOGANY_GYM, $0, 0
	map_header_2 MahoganyPokeCenter1F, MAHOGANY_POKECENTER_1F, $0, 0
	map_header_2 Route42EcruteakGate, ROUTE_42_ECRUTEAK_GATE, $0, 0
	map_header_2 DiglettsCave, DIGLETTS_CAVE, $9, 0
	map_header_2 MountMoon, MOUNT_MOON, $9, 0
	map_header_2 SunsetLighthouse, SUNSET_LIGHTHOUSE, 0, 0
	map_header_2 RockTunnel1F, ROCK_TUNNEL_1F, $9, 0
	map_header_2 RockTunnelB1F, ROCK_TUNNEL_B1F, $9, 0
	map_header_2 SafariZoneFuchsiaGateBeta, SAFARI_ZONE_FUCHSIA_GATE_BETA, $0, 0
	map_header_2 SafariZoneBeta, SAFARI_ZONE_BETA, $13, 0
	map_header_2 VictoryRoad, VICTORY_ROAD, $1d, 0
	map_header_2 EcruteakHouse, ECRUTEAK_HOUSE, $0, 0
	map_header_2 WiseTriosRoom, WISE_TRIOS_ROOM, $0, 0
	map_header_2 EcruteakPokeCenter1F, ECRUTEAK_POKECENTER_1F, $0, 0
	map_header_2 EcruteakLugiaSpeechHouse, ECRUTEAK_LUGIA_SPEECH_HOUSE, $0, 0
	map_header_2 DanceTheatre, DANCE_THEATRE, 113, 0
	map_header_2 EcruteakMart, ECRUTEAK_MART, $0, 0
	map_header_2 EcruteakGym, ECRUTEAK_GYM, $0, 0
	map_header_2 EcruteakItemfinderHouse, ECRUTEAK_ITEMFINDER_HOUSE, $0, 0
	map_header_2 BlackthornGym1F, BLACKTHORN_GYM_1F, $0, 0
	map_header_2 BlackthornGym2F, BLACKTHORN_GYM_2F, $0, 0
	map_header_2 BlackthornDragonSpeechHouse, BLACKTHORN_DRAGON_SPEECH_HOUSE, $0, 0
	map_header_2 BlackthornEmysHouse, BLACKTHORN_EMYS_HOUSE, $0, 0
	map_header_2 BlackthornMart, BLACKTHORN_MART, $0, 0
	map_header_2 BlackthornPokeCenter1F, BLACKTHORN_POKECENTER_1F, $0, 0
	map_header_2 MoveDeletersHouse, MOVE_DELETERS_HOUSE, $0, 0
	map_header_2 CinnabarPokeCenter1F, CINNABAR_POKECENTER_1F, $0, 0
	map_header_2 CinnabarPokeCenter2FBeta, CINNABAR_POKECENTER_2F_BETA, 0, 0
	map_header_2 Route19FuchsiaGate, ROUTE_19___FUCHSIA_GATE, 9, 0
	map_header_2 Route19, ROUTE_19, 113, 0
	map_header_2 Route20, ROUTE_20, 9, 0
	map_header_2 Route21, ROUTE_21, 9, 0
	map_header_2 SeafoamGym, SEAFOAM_GYM, 0, 0
	map_header_2 CeruleanGymBadgeSpeechHouse, CERULEAN_GYM_BADGE_SPEECH_HOUSE, $0, 0
	map_header_2 CeruleanPoliceStation, CERULEAN_POLICE_STATION, $0, 0
	map_header_2 CeruleanTradeSpeechHouse, CERULEAN_TRADE_SPEECH_HOUSE, $0, 0
	map_header_2 CeruleanPokeCenter1F, CERULEAN_POKECENTER_1F, $0, 0
	map_header_2 CeruleanPokeCenter2FBeta, CERULEAN_POKECENTER_2F_BETA, $0, 0
	map_header_2 CeruleanGym, CERULEAN_GYM, $0, 0
	map_header_2 CeruleanMart, CERULEAN_MART, $0, 0
	map_header_2 Route10PokeCenter1F, ROUTE_10_POKECENTER_1F, $0, 0
	map_header_2 Route10PokeCenter2FBeta, ROUTE_10_POKECENTER_2F_BETA, $0, 0
	map_header_2 PowerPlant, POWER_PLANT, $0, 0
	map_header_2 BillsHouse, BILLS_HOUSE, 0, 0
	map_header_2 AzaleaPokeCenter1F, AZALEA_POKECENTER_1F, 0, 0
	map_header_2 CharcoalKiln, CHARCOAL_KILN, 0, 0
	map_header_2 AzaleaMart, AZALEA_MART, 0, 0
	map_header_2 KurtsHouse, KURTS_HOUSE, 0, 0
	map_header_2 AzaleaGym, AZALEA_GYM, 0, 0
	map_header_2 LakeofRageHiddenPowerHouse, LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, 0, 0
	map_header_2 LakeofRageMagikarpHouse, LAKE_OF_RAGE_MAGIKARP_HOUSE, $0, 0
	map_header_2 Route43MahoganyGate, ROUTE_43_MAHOGANY_GATE, 0, 0
	map_header_2 Route43Gate, ROUTE_43_GATE, 9, 0
	map_header_2 VioletMart, VIOLET_MART, 9, 0
	map_header_2 VioletGym, VIOLET_GYM, 0, 0
	map_header_2 EarlsPokemonAcademy, EARLS_POKEMON_ACADEMY, 0, 0
	map_header_2 VioletNicknameSpeechHouse, VIOLET_NICKNAME_SPEECH_HOUSE, 0, 0
	map_header_2 VioletPokeCenter1F, VIOLET_POKECENTER_1F, 0, 0
	map_header_2 VioletOnixTradeHouse, VIOLET_ONIX_TRADE_HOUSE, 0, 0
	map_header_2 Route32RuinsofAlphGate, ROUTE_32_RUINS_OF_ALPH_GATE, 32, 0
	map_header_2 Route32PokeCenter1F, ROUTE_32_POKECENTER_1F, $0, 0
	map_header_2 Route35Goldenrodgate, ROUTE_35_GOLDENROD_GATE, 0, 0
	map_header_2 Route35NationalParkgate, ROUTE_35_NATIONAL_PARK_GATE, 0, 0
	map_header_2 Route36RuinsofAlphgate, ROUTE_36_RUINS_OF_ALPH_GATE, 0, 0
	map_header_2 Route36NationalParkgate, ROUTE_36_NATIONAL_PARK_GATE, 0, 0
	map_header_2 GoldenrodGym, GOLDENROD_GYM, $0, 0
	map_header_2 GoldenrodBikeShop, GOLDENROD_BIKE_SHOP, $0, 0
	map_header_2 GoldenrodHappinessRater, GOLDENROD_HAPPINESS_RATER, $0, 0
	map_header_2 GoldenrodBillsHouse, GOLDENROD_BILLS_HOUSE, $0, 0
	map_header_2 GoldenrodMagnetTrainStation, GOLDENROD_MAGNET_TRAIN_STATION, $0, 0
	map_header_2 GoldenrodFlowerShop, GOLDENROD_FLOWER_SHOP, $0, 0
	map_header_2 GoldenrodPPSpeechHouse, GOLDENROD_PP_SPEECH_HOUSE, $0, 0
	map_header_2 GoldenrodNameRater, GOLDENROD_NAME_RATER, $0, 0
	map_header_2 GoldenrodDeptStore1F, GOLDENROD_DEPT_STORE_1F, $0, 0
	map_header_2 GoldenrodDeptStore2F, GOLDENROD_DEPT_STORE_2F, $0, 0
	map_header_2 GoldenrodDeptStore3F, GOLDENROD_DEPT_STORE_3F, $0, 0
	map_header_2 GoldenrodDeptStore4F, GOLDENROD_DEPT_STORE_4F, $0, 0
	map_header_2 GoldenrodDeptStore5F, GOLDENROD_DEPT_STORE_5F, $0, 0
	map_header_2 GoldenrodDeptStore6F, GOLDENROD_DEPT_STORE_6F, $0, 0
	map_header_2 GoldenrodDeptStoreElevator, GOLDENROD_DEPT_STORE_ELEVATOR, $0, 0
	map_header_2 GoldenrodDeptStoreRoof, GOLDENROD_DEPT_STORE_ROOF, $24, 0
	map_header_2 GoldenrodGameCorner, GOLDENROD_GAME_CORNER, $0, 0
	map_header_2 GoldenrodPokeCenter1F, GOLDENROD_POKECENTER_1F, $0, 0
	map_header_2 GoldenrodPokeComCenter2FMobile, GOLDENROD_POKECOM_CENTER_2F_MOBILE, $0, 0
	map_header_2 IlexForestAzaleaGate, ILEX_FOREST_AZALEA_GATE, 0, 0
	map_header_2 Route34IlexForestGate, ROUTE_34_ILEX_FOREST_GATE, 0, 0
	map_header_2 DayCare, DAYCARE, $0, 0
	map_header_2 VermilionHouseFishingSpeechHouse, VERMILION_HOUSE_FISHING_SPEECH_HOUSE, 0, 0
	map_header_2 VermilionPokeCenter1F, VERMILION_POKECENTER_1F, 0, 0
	map_header_2 VermilionPokeCenter2FBeta, VERMILION_POKECENTER_2F_BETA, $0, 0
	map_header_2 PokemonFanClub, POKEMON_FAN_CLUB, 0, 0
	map_header_2 VermilionMagnetTrainSpeechHouse, VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, $0, 0
	map_header_2 VermilionMart, VERMILION_MART, 0, 0
	map_header_2 VermilionHouseDiglettsCaveSpeechHouse, VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE, 0, 0
	map_header_2 VermilionGym, VERMILION_GYM, $0, 0
	map_header_2 Route6SaffronGate, ROUTE_6_SAFFRON_GATE, 0, 0
	map_header_2 Route6UndergroundEntrance, ROUTE_6_UNDERGROUND_ENTRANCE, 175, 0
	map_header_2 RedsHouse1F, REDS_HOUSE_1F, $0, 0
	map_header_2 RedsHouse2F, REDS_HOUSE_2F, $0, 0
	map_header_2 BluesHouse, BLUES_HOUSE, $0, 0
	map_header_2 OaksLab, OAKS_LAB, $0, 0
	map_header_2 PewterNidoranSpeechHouse, PEWTER_NIDORAN_SPEECH_HOUSE, $0, 0
	map_header_2 PewterGym, PEWTER_GYM, $0, 0
	map_header_2 PewterMart, PEWTER_MART, $0, 0
	map_header_2 PewterPokeCenter1F, PEWTER_POKECENTER_1F, $0, 0
	map_header_2 PewterPokeCEnter2FBeta, PEWTER_POKECENTER_2F_BETA, $0, 0
	map_header_2 PewterSnoozeSpeechHouse, PEWTER_SNOOZE_SPEECH_HOUSE, $0, 0
	map_header_2 OlivinePort, OLIVINE_PORT, $a, 0
	map_header_2 FastShip1F, FAST_SHIP_1F, $0, 0
	map_header_2 FastShipCabins_NNW_NNE_NE, FAST_SHIP_CABINS_NNW_NNE_NE, $0, 0
	map_header_2 FastShipCabins_SW_SSW_NW, FAST_SHIP_CABINS_SW_SSW_NW, $0, 0
	map_header_2 FastShipCabins_SE_SSE_CaptainsCabin, FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN, $0, 0
	map_header_2 FastShipB1F, FAST_SHIP_B1F, $0, 0
	map_header_2 OlivinePortPassage, OLIVINE_PORT_PASSAGE, $0, 0
	map_header_2 VermilionPortPassage, VERMILION_PORT_PASSAGE, $0, 0
	map_header_2 MountMoonSquare, MOUNT_MOON_SQUARE, $2d, 0
	map_header_2 MountMoonGiftShop, MOUNT_MOON_GIFT_SHOP, $0, 0
	map_header_2 TinTowerRoof, TIN_TOWER_ROOF, $0, 0
	map_header_2 IndigoPlateauPokeCenter1F, INDIGO_PLATEAU_POKECENTER_1F, $0, 0
	map_header_2 WillsRoom, WILLS_ROOM, $0, 0
	map_header_2 KogasRoom, KOGAS_ROOM, $0, 0
	map_header_2 BrunosRoom, BRUNOS_ROOM, $0, 0
	map_header_2 KarensRoom, KARENS_ROOM, $0, 0
	map_header_2 LancesRoom, LANCES_ROOM, $0, 0
	map_header_2 HallOfFame, HALL_OF_FAME, $0, 0
	map_header_2 FuchsiaMart, FUCHSIA_MART, $0, 0
	map_header_2 SafariZoneMainOffice, SAFARI_ZONE_MAIN_OFFICE, $0, 0
	map_header_2 FuchsiaGym, FUCHSIA_GYM, $0, 0
	map_header_2 FuchsiaBillSpeechHouse, FUCHSIA_BILL_SPEECH_HOUSE, $0, 0
	map_header_2 FuchsiaPokeCenter1F, FUCHSIA_POKECENTER_1F, $0, 0
	map_header_2 FuchsiaPokeCenter2FBeta, FUCHSIA_POKECENTER_2F_BETA, $0, 0
	map_header_2 SafariZoneWardensHome, SAFARI_ZONE_WARDENS_HOME, $0, 0
	map_header_2 Route15FuchsiaGate, ROUTE_15_FUCHSIA_GATE, $0, 0
	map_header_2 LavenderPokeCenter1F, LAVENDER_POKECENTER_1F, $0, 0
	map_header_2 LavenderPokeCenter2FBeta, LAVENDER_POKECENTER_2F_BETA, $0, 0
	map_header_2 MrFujisHouse, MR_FUJIS_HOUSE, $0, 0
	map_header_2 LavenderTownSpeechHouse, LAVENDER_TOWN_SPEECH_HOUSE, $0, 0
	map_header_2 LavenderNameRater, LAVENDER_NAME_RATER, $0, 0
	map_header_2 LavenderMart, LAVENDER_MART, $0, 0
	map_header_2 SoulHouse, SOUL_HOUSE, $0, 0
	map_header_2 LavRadioTower1F, LAV_RADIO_TOWER_1F, $0, 0
	map_header_2 Route8SaffronGate, ROUTE_8_SAFFRON_GATE, $0, 0
	map_header_2 Route12SuperRodHouse, ROUTE_12_SUPER_ROD_HOUSE, $0, 0
	map_header_2 SilverCavePokeCenter1F, SILVER_CAVE_POKECENTER_1F, $0, 0
	map_header_2 Route28FamousSpeechHouse, ROUTE_28_FAMOUS_SPEECH_HOUSE, $0, 0
	map_header_2 PokeCenter2F, POKECENTER_2F, $0, 0
	map_header_2 TradeCenter, TRADE_CENTER, $0, 0
	map_header_2 Colosseum, COLOSSEUM, $0, 0
	map_header_2 TimeCapsule, TIME_CAPSULE, $0, 0
	map_header_2 MobileTradeRoomMobile, MOBILE_TRADE_ROOM_MOBILE, $0, 0
	map_header_2 MobileBattleRoom, MOBILE_BATTLE_ROOM, $0, 0
	map_header_2 CeladonDeptStore1F, CELADON_DEPT_STORE_1F, $0, 0
	map_header_2 CeladonDeptStore2F, CELADON_DEPT_STORE_2F, $0, 0
	map_header_2 CeladonDeptStore3F, CELADON_DEPT_STORE_3F, $0, 0
	map_header_2 CeladonDeptStore4F, CELADON_DEPT_STORE_4F, $0, 0
	map_header_2 CeladonDeptStore5F, CELADON_DEPT_STORE_5F, $0, 0
	map_header_2 CeladonDeptStore6F, CELADON_DEPT_STORE_6F, $0, 0
	map_header_2 CeladonDeptStoreElevator, CELADON_DEPT_STORE_ELEVATOR, $0, 0
	map_header_2 CeladonMansion1F, CELADON_MANSION_1F, $0, 0
	map_header_2 CeladonMansion2F, CELADON_MANSION_2F, $0, 0
	map_header_2 CeladonMansion3F, CELADON_MANSION_3F, $0, 0
	map_header_2 CeladonMansionRoof, CELADON_MANSION_ROOF, $1, 0
	map_header_2 CeladonMansionRoofHouse, CELADON_MANSION_ROOF_HOUSE, $0, 0
	map_header_2 CeladonPokeCenter1F, CELADON_POKECENTER_1F, $0, 0
	map_header_2 CeladonPokeCenter2FBeta, CELADON_POKECENTER_2F_BETA, $0, 0
	map_header_2 CeladonGameCorner, CELADON_GAME_CORNER, $0, 0
	map_header_2 CeladonGameCornerPrizeRoom, CELADON_GAME_CORNER_PRIZE_ROOM, $0, 0
	map_header_2 CeladonGym, CELADON_GYM, $0, 0
	map_header_2 CeladonCafe, CELADON_CAFE, 0, 0
	map_header_2 Route16FuchsiaSpeechHouse, ROUTE_16_FUCHSIA_SPEECH_HOUSE, $0, 0
	map_header_2 Route16Gate, ROUTE_16_GATE, $0, 0
	map_header_2 Route7SaffronGate, ROUTE_7_SAFFRON_GATE, $0, 0
	map_header_2 Route1718Gate, ROUTE_17_18_GATE, $0, 0
	map_header_2 ManiasHouse, MANIAS_HOUSE, $0, 0
	map_header_2 CianwoodGym, CIANWOOD_GYM, $0, 0
	map_header_2 CianwoodPokeCenter1F, CIANWOOD_POKECENTER_1F, $0, 0
	map_header_2 CianwoodPharmacy, CIANWOOD_PHARMACY, $0, 0
	map_header_2 CianwoodCityPhotoStudio, CIANWOOD_CITY_PHOTO_STUDIO, $0, 0
	map_header_2 CianwoodLugiaSpeechHouse, CIANWOOD_LUGIA_SPEECH_HOUSE, $0, 0
	map_header_2 PokeSeersHouse, POKE_SEERS_HOUSE, $0, 0
	map_header_2 BattleTower1F, BATTLE_TOWER_1F, 0, 0
	map_header_2 BattleTowerBattleRoom, BATTLE_TOWER_BATTLE_ROOM, 0, 0
	map_header_2 BattleTowerElevator, BATTLE_TOWER_ELEVATOR, $0, 0
	map_header_2 BattleTowerHallway, BATTLE_TOWER_HALLWAY, $0, 0
	map_header_2 Route40BattleTowerGate, ROUTE_40_BATTLE_TOWER_GATE, $0, 0
	map_header_2 BattleTowerOutside, BATTLE_TOWER_OUTSIDE, $5, 0
	map_header_2 ViridianGym, VIRIDIAN_GYM, $0, 0
	map_header_2 ViridianNicknameSpeechHouse, VIRIDIAN_NICKNAME_SPEECH_HOUSE, $0, 0
	map_header_2 TrainerHouse1F, TRAINER_HOUSE_1F, $0, 0
	map_header_2 TrainerHouseB1F, TRAINER_HOUSE_B1F, $0, 0
	map_header_2 ViridianMart, VIRIDIAN_MART, $0, 0
	map_header_2 ViridianPokeCenter1F, VIRIDIAN_POKECENTER_1F, $0, 0
	map_header_2 ViridianPokeCenter2FBeta, VIRIDIAN_POKECENTER_2F_BETA, $0, 0
	map_header_2 Route2NuggetSpeechHouse, ROUTE_2_NUGGET_SPEECH_HOUSE, $0, 0
	map_header_2 Route2Gate, ROUTE_2_GATE, $0, 0
	map_header_2 VictoryRoadGate, VICTORY_ROAD_GATE, $0, 0
	map_header_2 ElmsLab, ELMS_LAB, 0, 0
	map_header_2 KrissHouse1F, KRISS_HOUSE_1F, 0, 0
	map_header_2 KrissHouse2F, KRISS_HOUSE_2F, 0, 0
	map_header_2 KrissNeighborsHouse, KRISS_NEIGHBORS_HOUSE, 0, 0
	map_header_2 ElmsHouse, ELMS_HOUSE, 0, 0
	map_header_2 Route26HealSpeechHouse, ROUTE_26_HEAL_SPEECH_HOUSE, $0, 0
	map_header_2 Route26DayofWeekSiblingsHouse, ROUTE_26_DAY_OF_WEEK_SIBLINGS_HOUSE, $0, 0
	map_header_2 Route27SandstormHouse, ROUTE_27_SANDSTORM_HOUSE, $0, 0
	map_header_2 Route2946Gate, ROUTE_29_46_GATE, $0, 0
	map_header_2 FightingDojo, FIGHTING_DOJO, $0, 0
	map_header_2 SaffronGym, SAFFRON_GYM, $0, 0
	map_header_2 SaffronMart, SAFFRON_MART, $0, 0
	map_header_2 SaffronPokeCenter1F, SAFFRON_POKECENTER_1F, $0, 0
	map_header_2 SaffronPokeCenter2FBeta, SAFFRON_POKECENTER_2F_BETA, $0, 0
	map_header_2 MrPsychicsHouse, MR_PSYCHICS_HOUSE, $0, 0
	map_header_2 SaffronTrainStation, SAFFRON_TRAIN_STATION, 0, 0
	map_header_2 SilphCo1F, SILPH_CO_1F, 0, 0
	map_header_2 CopycatsHouse1F, COPYCATS_HOUSE_1F, $0, 0
	map_header_2 CopycatsHouse2F, COPYCATS_HOUSE_2F, $0, 0
	map_header_2 Route5UndergroundEntrance, ROUTE_5_UNDERGROUND_ENTRANCE, $0, 0
	map_header_2 Route5SaffronCityGate, ROUTE_5_SAFFRON_CITY_GATE, $0, 0
	map_header_2 Route5CleanseTagSpeechHouse, ROUTE_5_CLEANSE_TAG_SPEECH_HOUSE, $0, 0
	map_header_2 CherrygroveMart, CHERRYGROVE_MART, 0, 0
	map_header_2 CherrygrovePokeCenter1F, CHERRYGROVE_POKECENTER_1F, 0, 0
	map_header_2 CherrygroveGymSpeechHouse, CHERRYGROVE_GYM_SPEECH_HOUSE, 7, 0
	map_header_2 GuideGentsHouse, GUIDE_GENTS_HOUSE, 0, 0
	map_header_2 CherrygroveEvolutionSpeechHouse, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, 0, 0
	map_header_2 Route30BerrySpeechHouse, ROUTE_30_BERRY_SPEECH_HOUSE, 0, 0
	map_header_2 MrPokemonsHouse, MR_POKEMONS_HOUSE, 0, 0
	map_header_2 Route31VioletGate, ROUTE_31_VIOLET_GATE, $0, 0
