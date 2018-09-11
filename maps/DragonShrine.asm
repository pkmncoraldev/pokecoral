const_value set 2
	const ROUTE6_2GENTLEMAN
	const ROUTE6_2LASS
	const ROUTE6_2YOUNGSTER
	const ROUTE6_2LASS2
	const ROUTE6_2PSYDUCK
	const ROUTE6_2YOUNGSTER2
	const ROUTE6_2LASS3
	const ROUTE6_2LASS4
	const ROUTE6_2GENTLEMAN2
	const ROUTE6_2COUPLEGIRL
	const ROUTE6_2COUPLEBOY
	const ROUTE6_2SWIMMER1
	const ROUTE6_2SWIMMER2
	const ROUTE6_2SWIMMER3
	const ROUTE6_2SWIMMER4

DragonShrine_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	end

.Trigger1:
	end

DragonShrine_MapEventHeader:: db 0, 0

.Warps: db 0

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 15
	person_event SPRITE_GENTLEMAN_GRUNTF, 23, 50, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, Route6_2Dummy, -1
	person_event SPRITE_LASS, 19, 50, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, Route6_2Dummy, -1
	person_event SPRITE_YOUNGSTER, 17, 50, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Route6_2Dummy, -1
	person_event SPRITE_LASS, 30, 51, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, Route6_2Dummy, -1
	person_event SPRITE_LEILANI_PSYDUCK, 30, 50, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, Route6_2Dummy, -1
	person_event SPRITE_YOUNGSTER, 8, 42, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 2, Route6_2Dummy, -1
	person_event SPRITE_LASS, 8, 43, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 2, Route6_2Dummy, -1
	person_event SPRITE_LASS, 4, 9, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 2, Route6_2Dummy, -1
	person_event SPRITE_GENTLEMAN_GRUNTF, 6, 16, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 2, Route6_2Dummy, -1
	person_event SPRITE_LASS, 21, 16, SPRITEMOVEDATA_STANDING_RIGHT, 1, 1, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Route6_2CoupleGirl, -1
	person_event SPRITE_YOUNGSTER, 21, 17, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Route6_2CoupleBoy, -1
	person_event SPRITE_SWIMMER_GIRL, 27, 44, SPRITEMOVEDATA_SPINRANDOM_FAST, 1, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, Route6_2Dummy, -1
	person_event SPRITE_SWIMMER_GIRL, 13, 10, SPRITEMOVEDATA_SPINRANDOM_FAST, 1, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, Route6_2Dummy, -1
	person_event SPRITE_SWIMMER_GIRL, 15, 24, SPRITEMOVEDATA_SPINRANDOM_FAST, 1, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, Route6_2Dummy, -1
	person_event SPRITE_SWIMMER_GIRL, 24, 26, SPRITEMOVEDATA_SPINRANDOM_FAST, 1, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, Route6_2Dummy, -1

Route6_2Dummy:
	end
	
Route6_2CoupleGirl:
	checkevent EVENT_BEAT_ROUTE6_2_COUPLE
	iftrue .beatthecouple
	faceplayer
	playmusic MUSIC_LASS_ENCOUNTER
	opentext
	writetext TrainerRoute6_2CoupleGirlText1
	waitbutton
	closetext
	
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE6_2COUPLEBOY,  30
	spriteface ROUTE6_2COUPLEBOY, UP
	opentext
	writetext TrainerRoute6_2CoupleBoyText1
	waitbutton
	closetext
	
	winlosstext TrainerRoute6_2CoupleBeatenText1, 0
	setlasttalked ROUTE6_2COUPLEGIRL
	loadtrainer COUPLE, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROUTE6_2_COUPLE
	opentext
	writetext TrainerRoute6_2CoupleGirlText2
	waitbutton
	verbosegiveitem POTION
	writetext TrainerRoute6_2CoupleGirlText3
	waitbutton
	closetext
	spriteface ROUTE6_2COUPLEGIRL, RIGHT
	spriteface ROUTE6_2COUPLEBOY, LEFT
	end
.beatthecouple
	faceplayer
	opentext
	writetext TrainerRoute6_2CoupleGirlText4
	waitbutton
	closetext
	spriteface ROUTE6_2COUPLEGIRL, RIGHT
	end

Route6_2CoupleBoy:
	checkevent EVENT_BEAT_ROUTE6_2_COUPLE
	iftrue .beatthecouple
	faceplayer
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	opentext
	writetext TrainerRoute6_2CoupleBoyText1
	waitbutton
	closetext
	
	playmusic MUSIC_LASS_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE6_2COUPLEGIRL,  30
	spriteface ROUTE6_2COUPLEGIRL, UP
	opentext
	writetext TrainerRoute6_2CoupleGirlText1
	waitbutton
	closetext
	
	winlosstext TrainerRoute6_2CoupleBeatenText2, 0
	setlasttalked ROUTE6_2COUPLEGIRL
	loadtrainer COUPLE, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROUTE6_2_COUPLE
	opentext
	writetext TrainerRoute6_2CoupleBoyText2
	waitbutton
	verbosegiveitem POTION
	writetext TrainerRoute6_2CoupleBoyText3
	waitbutton
	closetext
	spriteface ROUTE6_2COUPLEGIRL, RIGHT
	spriteface ROUTE6_2COUPLEBOY, LEFT
	end
.beatthecouple
	faceplayer
	opentext
	writetext TrainerRoute6_2CoupleBoyText4
	waitbutton
	closetext
	spriteface ROUTE6_2COUPLEBOY, LEFT
	end

TrainerRoute6_2CoupleGirlText1:
	text "GIRL TEXT 1"
	done
	
TrainerRoute6_2CoupleGirlText2:
	text "GIRL TEXT 2"
	done
	
TrainerRoute6_2CoupleGirlText3:
	text "GIRL TEXT 3"
	done
	
TrainerRoute6_2CoupleGirlText4:
	text "GIRL TEXT 4"
	done
	
TrainerRoute6_2CoupleBoyText1:
	text "BOY TEXT 1"
	done
	
TrainerRoute6_2CoupleBoyText2:
	text "BOY TEXT 2"
	done
	
TrainerRoute6_2CoupleBoyText3:
	text "BOY TEXT 3"
	done
	
TrainerRoute6_2CoupleBoyText4:
	text "BOY TEXT 4"
	done
	
TrainerRoute6_2CoupleBeatenText1:
	text "BEATEN TEXT 1"
	done
	
TrainerRoute6_2CoupleBeatenText2:
	text "BEATEN TEXT 2"
	done