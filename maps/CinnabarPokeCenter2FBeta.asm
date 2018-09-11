const_value set 2
	const LAKEOWNAPOKECENTER1F_NURSE

CinnabarPokeCenter2FBeta_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

CinnabarPokeCenter2FBeta_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 4, 6, ROUTE_30
	warp_def 7, 5, 6, ROUTE_30

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 3
	person_event SPRITE_NURSE, 1, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, LakeOwnaNurse, -1
	person_event SPRITE_COOLTRAINER_F, 3, 9, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, LakeOwnaCenterNPC1, -1
	person_event SPRITE_YOUNGSTER, 5, 1, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, LakeOwnaCenterNPC2, -1

LakeOwnaNurse:
	blackoutmod ROUTE_30
	jumpstd pokecenternurse
	
LakeOwnaCenterNPC1:
	jumptextfaceplayer LakeOwnaCenterNPC1Text
	
LakeOwnaCenterNPC2:
	jumptextfaceplayer LakeOwnaCenterNPC2Text
	
LakeOwnaCenterNPC1Text:
	text "This #MON"
	line "CENTER is still"
	cont "fairly new."
	
	para "There were so many"
	line "TRAINERs whose"
	
	para "#MON were get-"
	line "ting injured in"
	
	para "MT. ONWA, that"
	line "they had to build"
	cont "one."
	done
	
LakeOwnaCenterNPC2Text:
	text "I got partway up"
	line "the mountain, but"
	
	para "my #MON was too"
	line "tired to continue."
	
	para "I had to come back"
	line "down here and"
	cont "rest."
	done