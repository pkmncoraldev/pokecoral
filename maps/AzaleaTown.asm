const_value set 2
	const GLINT_NPC1
	const GLINT_NPC2
	const GLINT_NPC3
	const GLINT_NPC4
	const GLINT_NPC5
	const GLINT_NPC6
	const GLINT_NPC7
	const GLINT_GROWLITHE
	const GLINT_BIRB1
	const GLINT_BIRB2
	const GLINT_BIRB3

AzaleaTown_MapScriptHeader:
.MapTriggers:
	db 2

	maptrigger .Trigger0
	maptrigger .Trigger1
	
	; triggers

.MapCallbacks:
	db 1

	; callbacks
	dbw MAPCALLBACK_NEWMAP, .Flypoint

.Trigger0:
	end
	
.Trigger1:
	end
	
.Flypoint:
	setflag ENGINE_FLYPOINT_GLINT
	return
	
AzaleaTown_MapEventHeader:: db 0, 0

.Warps: db 7
	warp_def 15, 27, 2, AZALEA_POKECENTER_1F
	warp_def 9, 27, 2, AZALEA_MART
	warp_def 9, 7, 2, BATTLE_TOWER_1F
	warp_def 3, 5, 2, BATTLE_TOWER_BATTLE_ROOM
	warp_def 5, 15, 2, CHARCOAL_KILN
	warp_def 5, 21, 2, KURTS_HOUSE
	warp_def 15, 6, 2, AZALEA_GYM

.CoordEvents: db 0

.BGEvents: db 9
	signpost 18, 20, SIGNPOST_READ, GlintCitySign
	signpost 16, 5, SIGNPOST_READ, GlintGymSign
	signpost 5, 19, SIGNPOST_READ, GlintApartmentsSign
	signpost 14, 15, SIGNPOST_READ, GlintCityParkSign
	signpost 3, 8, SIGNPOST_READ, GlintCityRivalHouseSign
	signpost 15, 28, SIGNPOST_READ, GlintCityPokeCenterSign
	signpost 9, 28, SIGNPOST_READ, GlintCityMartSign
	signpost 21, 18, SIGNPOST_ITEM, GlintCityHiddenRevive
	signpost 9, 38, SIGNPOST_READ, GlintCityRoute3sign

.ObjectEvents: db 11
	person_event SPRITE_LASS, 8, 20, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, GlintNPC1, -1
	person_event SPRITE_FISHER, 16, 13, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, GlintNPC2, -1
	person_event SPRITE_TWIN, 12, 15, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, GlintNPC3, -1
	person_event SPRITE_TWIN, 11, 15, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, GlintNPC4, -1
	person_event SPRITE_GAMEBOY_KID, 8, 16, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, GlintNPC5, -1
	person_event SPRITE_YOUNGSTER, 10, 25, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GlintNPC6, -1
	person_event SPRITE_GRANNY, 8, 32, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, GlintNPC7, -1
	person_event SPRITE_GROWLITHE, 8, 21, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GlintDoggo, -1
	person_event SPRITE_PIKIPEK, 9, 32, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GlintBirb, EVENT_GLINT_BIRDS
	person_event SPRITE_PIKIPEK, 11, 32, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GlintBirb, EVENT_GLINT_BIRDS
	person_event SPRITE_PIKIPEK, 10, 33, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GlintBirb, EVENT_GLINT_BIRDS

GlintCitySign:
	jumptext GlintCitySignText

GlintGymSign:
	jumptext GlintGymSignText
	
GlintApartmentsSign:
	jumptext GlintApartmentsSignText
	
GlintCityParkSign:
	jumptext GlintCityParkSignText
	
GlintCityRivalHouseSign:
	jumptext GlintCityRivalHouseSignText
	
GlintCityPokeCenterSign:
	jumpstd pokecentersign
	
GlintCityMartSign:
	jumpstd martsign
	
GlintCityHiddenRevive:
	dwb EVENT_GLINT_CITY_HIDDEN_REVIVE, REVIVE
	
GlintCityRoute3sign:
	jumptext GlintCityRoute3signText
	
GlintCitySignText:
	text "GLINT CITY"
	
	para "A city of"
	line "blossoming hope."
	done
	
GlintGymSignText:
	text "GLINT CITY"
	line "#MON GYM"
	cont "LEADER: STANLEY"

	para "The studious"
	line "valedictorian."
	done
	
GlintApartmentsSignText:
	text "GLINT APARTMENTS"
	done
	
GlintCityParkSignText:
	text "GLINT PARK"
	
	para "The jewel of"
	line "GLINT CITY."
	done
	
GlintCityRivalHouseSignText:
	text "<RIVAL>'s HOUSE"
	done
	
GlintCityRoute3signText:
	text "ROUTE 3"
	
	para "EAST:"
	line "STARGLOW CAVERN"
	
	para "WEST:"
	line "GLINT CITY"
	done
	

	
GlintNPC1:
	faceplayer
	opentext
	writetext GlintNPC1Text
	waitbutton
	spriteface GLINT_NPC1, RIGHT
	closetext
	end

GlintNPC2:
	jumptextfaceplayer GlintNPC2Text
	
GlintNPC3:
	faceplayer
	opentext
	writetext GlintNPC3Text
	waitbutton
	spriteface GLINT_NPC3, UP
	closetext
	end
	
GlintNPC4:
	faceplayer
	opentext
	writetext GlintNPC4Text
	waitbutton
	spriteface GLINT_NPC4, DOWN
	closetext
	end
	
GlintNPC5:
	faceplayer
	opentext
	writetext GlintNPC5Text
	waitbutton
	spriteface GLINT_NPC5, DOWN
	closetext
	end

GlintNPC6:
	checkevent EVENT_GLINT_GUY_GAVE_POTION
	iftrue .GlintNPC6_2
	faceplayer
	opentext
	writetext GlintNPC6Text
	buttonsound
	verbosegiveitem POTION
	writetext GlintNPC6Text2
	waitbutton
	setevent EVENT_GLINT_GUY_GAVE_POTION
	closetext
	end
	
.GlintNPC6_2:
	jumptextfaceplayer GlintNPC6Text2
	
GlintNPC7:
	checkevent EVENT_GLINT_BIRDS
	iffalse .GlintNPC7_2
	faceplayer
	opentext
	writetext GlintNPC7Text
	waitbutton
	spriteface GLINT_NPC7, DOWN
	closetext
	end
	
.GlintNPC7_2:
	opentext
	writetext GlintNPC7Text2
	waitbutton
	closetext
	end
	
GlintDoggo:
	opentext
	writetext GlintDoggoText
	cry GROWLITHE
	waitbutton
	closetext
	end
	
GlintBirb:
	opentext
	writetext GlintBirbText
	cry PIKIPEK
	waitbutton
	closetext
	end
	
GlintNPC1Text:
	text "My GROWLITHE loves"
	line "coming to the"
	cont "park."
	
	para "I bring her here"
	line "everyday."
	done
	
GlintNPC2Text:
	text "The GYM LEADER"
	line "here is named"
	cont "STANLEY."
	
	para "He graduated top"
	line "of his class at"
	
	para "the TRAINER SCHOOL"
	line "in DAYBREAK"
	cont "VILLAGE."
	
	para "Still, he's just a"
	line "kid."
	
	para "Is he ready to be"
	line "a GYM LEADER?"
	done
	
GlintNPC3Text:
	text "I love FAIRY #-"
	line "MON!"
	
	para "They're super"
	line "cute!"
	done
	
GlintNPC4Text:
	text "We got our FAIRY"
	line "#MON at GLINT"
	cont "GROVE."
	
	para "You should get one"
	line "too."
	done
	
GlintNPC5Text:
	text "My parents forced"
	line "me to stop playing"
	
	para "video games and go"
	line "outside."
	
	para "Good thing I can "
	line "play video games"
	cont "outside too!"
	done
	
GlintNPC6Text:
	text "The #MART has"
	line "everything a"
	cont "TRAINER needs."
	
	para "Make sure to stock"
	line "up before you"
	
	para "challange the GYM"
	line "LEADER."
	
	para "Here."
	
	para "Try a sample."
	done
	
GlintNPC6Text2:
	text "It's always a good"
	line "idea to have a"
	
	para "POTION or two with"
	line "you."
	
	para "If you need more,"
	line "you should stop by"
	cont "the #MART."
	done
	
GlintNPC7Text:
	text "Back when I was"
	line "young, the boys"
	
	para "would flock to me"
	line "for my looks."
	
	para "Nowadays the only"
	line "ones flocking to"
	
	para "me are the bird"
	line "#MON."
	
	para "Sigh…"
	done
	
GlintNPC7Text2:
	text "She's happily"
	line "feeding the"
	cont "PIKIPEK."
	done
	
GlintDoggoText:
	text "GROWLITHE: BARK!"
	line "BARK!"
	done
	
GlintBirbText:
	text "PIKIPEK: PIKI!"
	line "PIKI!"
	done
