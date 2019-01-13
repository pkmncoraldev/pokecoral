const_value set 2
	const STARGLOWLITTLEGIRL
	const STARGLOWROCKET1
	const STARGLOWROCKET2
	const STARGLOWROCKET3
	const STARGLOWROCKET4
	const STARGLOWGRAMPS
	const STARGLOWYOUNGSTER
	const STARGLOWLASS
	const STARGLOWFISHER1
	const STARGLOWFISHER2
	const STARGLOWFISHER3
	const STARGLOWYOUNGSTER2
	const STARGLOWPOLIWHIRL
	const STARGLOWLASS2
	

LakeofRage_MapScriptHeader:
.MapTriggers:
	db 4
	
	maptrigger .Trigger0
	maptrigger .Trigger1
	maptrigger .Trigger2
	maptrigger .Trigger3

.MapCallbacks:
	db 1

	; callbacks
	dbw MAPCALLBACK_NEWMAP, .Flypoint

.Trigger0:
	end
	
.Trigger1:
	disappear STARGLOWHOUSE1_LITTLEGIRL
	disappear STARGLOWHOUSE1_LITTLEGIRL2
	disappear STARGLOWHOUSE1_MOMMY
	disappear STARGLOWHOUSE1_MOMMY2
	appear STARGLOWROCKET1
	appear STARGLOWROCKET4
	appear STARGLOWGRAMPS
	dotrigger $2
	end
	
.Trigger2:
	end
	
.Trigger3:
	end
	
.Flypoint:
	setflag ENGINE_FLYPOINT_STARGLOW
	return
	
LakeofRage_MapEventHeader:: db 0, 0

.Warps: db 7
	warp_def 5, 5, 1, OLIVINE_LIGHTHOUSE_1F
	warp_def 5, 23, 1, OLIVINE_LIGHTHOUSE_2F
	warp_def 9, 31, 1, OLIVINE_LIGHTHOUSE_3F
	warp_def 29, 35, 1, OLIVINE_LIGHTHOUSE_4F
	warp_def 17, 17, 1, OLIVINE_LIGHTHOUSE_5F
	warp_def 17, 31, 2, OLIVINE_LIGHTHOUSE_6F
	warp_def 21, 6, 1, SEAFOAM_GYM

.CoordEvents: db 5
	xy_trigger 0, 2, 12, 0, StarglowGirlStopsYou1, 0, 0
	xy_trigger 0, 2, 13, 0, StarglowGirlStopsYou2, 0, 0
	xy_trigger 0, 6, 6, 0, StarglowGirlDontGo1, 0, 0
	xy_trigger 0, 7, 5, 0, StarglowGirlDontGo2, 0, 0
	xy_trigger 2, 18, 36, 0, StarglowRocketStopsYou, 0, 0

.BGEvents: db 9
	signpost 4, 14, SIGNPOST_READ, StarglowValleySign
	signpost 22, 5, SIGNPOST_READ, StarglowGymSign
	signpost 29, 33, SIGNPOST_READ, StarglowGuruSign
	signpost 17, 18, SIGNPOST_READ, StarglowCenterSign
	signpost 17, 32, SIGNPOST_READ, StarglowMartSign
	signpost 16, 6, SIGNPOST_ITEM, StarglowHiddenRareCandy
	signpost 13, 35, SIGNPOST_ITEM, StarglowHiddenGreatBall
	signpost 27, 26, SIGNPOST_READ, FruitTreeScript_Starglow
	signpost 8, 14, SIGNPOST_READ, StarglowClue

.ObjectEvents: db 14
	person_event SPRITE_RODNEY_FISHER, 5, 10, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, StarglowLittleGirl, EVENT_STARGLOW_HELPED_LITTLEGIRL
	person_event SPRITE_LEILANI_PSYDUCK, 6, 23, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, StarglowRocket1, EVENT_BEAT_STARGLOW_ROCKET_1
	person_event SPRITE_RODNEY_FISHER, 10, 31, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, StarglowRocket2, EVENT_BEAT_STARGLOW_ROCKET_2
	person_event SPRITE_LEILANI_PSYDUCK, 22, 6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, StarglowRocket3, EVENT_PUNKS_LEAVE_STARGLOW
	person_event SPRITE_LEILANI_PSYDUCK, 19, 36, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, StarglowRocket4, EVENT_PUNKS_LEAVE_STARGLOW
	person_event SPRITE_GRANNY, 10, 6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, StarglowGramps, -1
	person_event SPRITE_YOUNGSTER, 14, 26, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, StarglowYoungster, -1
	person_event SPRITE_LASS, 19, 29, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, StarglowLass, EVENT_PUNKS_LEAVE_STARGLOW
	person_event SPRITE_RODNEY_FISHER, 16, 7, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, StarglowFisher1, EVENT_PUNKS_HAVENT_LEFT_STARGLOW
	person_event SPRITE_RODNEY_FISHER, 9, 19, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, StarglowFisher2, EVENT_PUNKS_HAVENT_LEFT_STARGLOW
	person_event SPRITE_RODNEY_FISHER, 26, 30, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, StarglowFisher3, EVENT_PUNKS_HAVENT_LEFT_STARGLOW
	person_event SPRITE_YOUNGSTER, 20, 31, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, StarglowYoungster2, EVENT_PUNKS_HAVENT_LEFT_STARGLOW
	person_event SPRITE_POLIWHIRL, 20, 32, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, StarglowPoliwhirl, EVENT_PUNKS_HAVENT_LEFT_STARGLOW
	person_event SPRITE_COOLTRAINER_F, 18, 13, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, StarglowLass2, EVENT_PUNKS_HAVENT_LEFT_STARGLOW

StarglowClue:
	checkitem CLUE_3
	iffalse .end
	checkitem CLUE_4
	iftrue .end
	opentext
	writetext StarglowClueText
	waitbutton
	verbosegiveitem CLUE_4
	closetext
	end
.end
	killsfx
	end
	
StarglowClueText:
	text "You find something"
	line "in the knot of the"
	cont "tree…"
	
	para "It's another clue!"
	done
	
FruitTreeScript_Starglow:
	fruittree FRUITTREE_STARGLOW
	
StarglowFisher1
	faceplayer
	opentext
	checkevent EVENT_GOT_HM01_CUT
	iftrue .gotcut
	writetext StarglowFisher1Text1
	buttonsound
	verbosegiveitem HM_CUT
	setevent EVENT_GOT_HM01_CUT
	setflag ENGINE_GOT_CUT
.gotcut
	writetext StarglowFisher1Text2
	waitbutton
	spriteface STARGLOWFISHER1, UP
	closetext
	end
	
StarglowFisher2:
	faceplayer
	opentext
	writetext StarglowFisher2Text
	waitbutton
	spriteface STARGLOWFISHER2, DOWN
	closetext
	end
	
StarglowFisher3:
	faceplayer
	opentext
	writetext StarglowFisher3Text
	waitbutton
	spriteface STARGLOWFISHER3, UP
	closetext
	end
	
StarglowGramps:
	checkevent EVENT_PUNKS_LEAVE_STARGLOW
	iffalse .punksinstarglow
	faceplayer
	opentext
	writetext StarglowGrampsText2
	waitbutton
	spriteface STARGLOWGRAMPS, DOWN
	closetext
	end
.punksinstarglow
	faceplayer
	opentext
	writetext StarglowGrampsText1
	waitbutton
	spriteface STARGLOWGRAMPS, DOWN
	closetext
	end
	
StarglowYoungster:
	checkevent EVENT_PUNKS_LEAVE_STARGLOW
	iffalse .punksinstarglow
	jumptextfaceplayer StarglowYoungsterText2
.punksinstarglow
	jumptextfaceplayer StarglowYoungsterText1
	
StarglowLass:
	jumptextfaceplayer StarglowLassText
	
StarglowYoungster2:
	faceplayer
	opentext
	writetext StarglowYoungster2Text
	waitbutton
	spriteface STARGLOWYOUNGSTER2, DOWN
	closetext
	end
	
StarglowLass2:
	jumptextfaceplayer StarglowLass2Text
	
StarglowPoliwhirl:
	opentext
	writetext StarglowPoliwhirlText1
	cry POLIWHIRL
	waitsfx
	buttonsound
	writetext StarglowPoliwhirlText2
	waitbutton
	closetext
	end
	
StarglowValleySign:
	jumptext StarglowValleySignText
	
StarglowGymSign:
	jumptext StarglowGymSignText
	
StarglowGuruSign:
	jumptext StarglowGuruSignText
	
StarglowCenterSign:
	jumpstd pokecentersign

StarglowMartSign:
	jumpstd martsign
	
StarglowHiddenRareCandy:
	dwb EVENT_STARGLOW_HIDDEN_RARE_CANDY, RARE_CANDY
	
StarglowHiddenGreatBall:
	dwb EVENT_STARGLOW_HIDDEN_GREAT_BALL, GREAT_BALL
	
StarglowRocket1:
	faceplayer
	opentext
	writetext StarglowRocket1Text1
	yesorno
	iffalse .end
	playmusic MUSIC_ROCKET_ENCOUNTER
	writetext StarglowRocket1Text4
	waitbutton
	winlosstext StarglowRocket1WinText, 0
	setlasttalked STARGLOWROCKET1
	loadtrainer GRUNTM, 2
	startbattle
	reloadmapafterbattle
	opentext
	writetext StarglowRocket1Text2
	waitbutton
	closetext
	checkcode VAR_FACING
	if_equal RIGHT, .YouAreFacingRight
	applymovement STARGLOWROCKET1, Movement_StarglowRocket1_1
	jump .StarglowRocket1Disappear
.YouAreFacingRight
	applymovement STARGLOWROCKET1, Movement_StarglowRocket1_2
.StarglowRocket1Disappear
	disappear STARGLOWROCKET1
	setevent EVENT_BEAT_STARGLOW_ROCKET_1
	end
.end
	writetext StarglowRocket1Text3
	waitbutton
	spriteface STARGLOWROCKET1, DOWN
	closetext
	end
	
StarglowRocket2:
	faceplayer
	opentext
	writetext StarglowRocket2Text1
	yesorno
	iffalse .end
	playmusic MUSIC_ROCKET_ENCOUNTER
	writetext StarglowRocket2Text4
	waitbutton
	winlosstext StarglowRocket2WinText, 0
	setlasttalked STARGLOWROCKET2
	loadtrainer GRUNTF, 1
	startbattle
	reloadmapafterbattle
	opentext
	writetext StarglowRocket2Text2
	waitbutton
	closetext
	checkcode VAR_FACING
	if_equal RIGHT, .YouAreFacingRight
	applymovement STARGLOWROCKET2, Movement_StarglowRocket2_1
	jump .StarglowRocket1Disappear
.YouAreFacingRight
	applymovement STARGLOWROCKET2, Movement_StarglowRocket2_2
.StarglowRocket1Disappear
	disappear STARGLOWROCKET2
	setevent EVENT_BEAT_STARGLOW_ROCKET_2
	end
.end
	writetext StarglowRocket2Text3
	waitbutton
	spriteface STARGLOWROCKET2, DOWN
	closetext
	end
	
StarglowRocket3:
	checkevent EVENT_BEAT_STARGLOW_ROCKET_1
	iffalse .end
	checkevent EVENT_BEAT_STARGLOW_ROCKET_2
	iffalse .end
	checkevent EVENT_BEAT_STARGLOW_ROCKET_3
	iffalse .end
	checkcode VAR_FACING
	if_equal LEFT, .cont
	applymovement PLAYER, Movement_StarglowPlayerRocket3
	spriteface PLAYER, LEFT
.cont
	callasm .MetRodney
	disappear STARGLOWROCKET4
	faceplayer
	opentext
	writetext StarglowRocket3Text2
	waitbutton
	playmusic MUSIC_ROCKET_ENCOUNTER
	closetext
	appear STARGLOWFISHER2
	variablesprite SPRITE_RODNEY_FISHER, SPRITE_RODNEY
	variablesprite SPRITE_GENTLEMAN_GRUNTF, SPRITE_GENTLEMAN
	special MapCallbackSprites_LoadUsedSpritesGFX
	moveperson STARGLOWROCKET1, $d, $16
	appear STARGLOWROCKET1
	moveperson STARGLOWROCKET4, $d, $16
	appear STARGLOWROCKET4
	follow STARGLOWROCKET1, STARGLOWROCKET4
	applymovement STARGLOWROCKET1, Movement_StarglowDummyRocket1
	stopfollow
	applymovement STARGLOWROCKET1, Movement_StarglowDummyRocket1cont
	spriteface STARGLOWROCKET1, UP
	spriteface PLAYER, DOWN
	pause 16
	spriteface PLAYER, RIGHT
	pause 16
	spriteface PLAYER, LEFT
	opentext
	writetext StarglowRocket3Text3
	waitbutton
	closetext
	playmusic MUSIC_NONE
	pause 32
	opentext
	writetext StarglowRodneyText1
	waitbutton
	closetext
	playsound SFX_PAY_DAY
	spriteface STARGLOWROCKET3, UP
	showemote EMOTE_SHOCK, STARGLOWROCKET3, 15
	pause 7
	opentext
	writetext StarglowRocket3Text4
	waitbutton
	closetext
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	moveperson STARGLOWFISHER2, $6, $15
	appear STARGLOWFISHER2
	playsound SFX_EXIT_BUILDING
	applymovement STARGLOWROCKET3, Movement_StarglowRocket3
	applymovement STARGLOWFISHER2, Movement_StarglowRocket3
	opentext
	writetext StarglowRodneyText2
	waitbutton
	closetext
	spriteface STARGLOWFISHER2, RIGHT
	opentext
	writetext StarglowRodneyText3
	waitbutton
	spriteface STARGLOWFISHER2, DOWN
	closetext
	opentext
	writetext StarglowRocket3Text5
	waitbutton
	closetext
	spriteface STARGLOWROCKET3, RIGHT
	pause 20
	spriteface STARGLOWROCKET3, UP
	pause 20
	spriteface STARGLOWROCKET3, RIGHT
	opentext
	writetext StarglowRocket3Text6
	waitbutton
	closetext
	follow STARGLOWROCKET4, STARGLOWROCKET1
	applymovement STARGLOWROCKET4, Movement_StarglowDummyRocket2
	disappear STARGLOWROCKET1
	disappear STARGLOWROCKET4
	spriteface STARGLOWROCKET3, UP
	opentext
	writetext StarglowRocket3Text7
	waitbutton
	closetext
	applymovement STARGLOWROCKET3, Movement_StarglowRocket3_2
	disappear STARGLOWROCKET3
	clearflag ENGINE_PUNKS_IN_STARGLOW
	setevent EVENT_PUNKS_LEAVE_STARGLOW
	clearevent EVENT_PUNKS_HAVENT_LEFT_STARGLOW
	special Special_FadeOutMusic
	pause 10
	special PlayMapMusic
	spriteface STARGLOWFISHER2, RIGHT
	opentext
	writetext StarglowRodneyText4
	waitbutton
	closetext
	applymovement STARGLOWFISHER2, Movement_StarglowRodney
	playsound SFX_ENTER_DOOR
	disappear STARGLOWFISHER2
	disappear STARGLOWROCKET4
	moveperson STARGLOWFISHER2, $13, $9
	appear STARGLOWFISHER1
	appear STARGLOWFISHER2
	appear STARGLOWFISHER3
	appear STARGLOWYOUNGSTER2
	appear STARGLOWLASS2
	appear STARGLOWPOLIWHIRL
	disappear STARGLOWLASS
	dotrigger $4
	variablesprite SPRITE_RODNEY_FISHER, SPRITE_FISHER
	special MapCallbackSprites_LoadUsedSpritesGFX
	end
	
.end
	opentext
	writetext StarglowRocket3Text8
	waitbutton
	closetext
	playsound SFX_PAY_DAY
	showemote EMOTE_SHOCK, STARGLOWROCKET3, 15
	pause 7
	faceplayer
	opentext
	writetext StarglowRocket3Text1
	waitbutton
	spriteface STARGLOWROCKET3, UP
	closetext
	end
	
.MetRodney
	ld hl, MetGymLeaderFlags
	set 1, [hl] ; metrodney
	ret
	
StarglowRocket4:
	faceplayer
	opentext
	writetext StarglowRocket4Text1
	waitbutton
	closetext
	end
	
StarglowRocketStopsYou:
	checkevent EVENT_PUNKS_LEAVE_STARGLOW
	iftrue .end
	callasm .StopRunning
	playsound SFX_PAY_DAY
	spriteface STARGLOWROCKET4, UP
	showemote EMOTE_SHOCK, STARGLOWROCKET4, 15
	pause 7
	spriteface PLAYER, DOWN
	opentext
	writetext StarglowRocket4Text2
	waitbutton
	closetext
	follow PLAYER, STARGLOWROCKET4
	applymovement PLAYER, Movement_StarglowRocketStopsYouPlayer
	stopfollow
	spriteface PLAYER, RIGHT
	spriteface STARGLOWROCKET4, LEFT
	opentext
	writetext StarglowRocket4Text1
	waitbutton
	closetext
	applymovement STARGLOWROCKET4, Movement_StarglowRocketStopsYou2
.end
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
StarglowGirlStopsYou1:
	checkevent EVENT_STARGLOW_HELPED_LITTLEGIRL
	iftrue .end
	checkevent EVENT_STARGLOW_HAVENT_HELPED_GIRL
	iffalse .cont
	setevent EVENT_STARGLOW_HOUSE
.cont
	setevent EVENT_STARGLOW_HAVENT_HELPED_GIRL
	setevent EVENT_STARGLOW_HAVENT_HELPED_GIRL_TOGEPI
	applymovement PLAYER, Movement_StarglowPlayerWalkDown
	callasm .StopRunning
	pause 2
	playsound SFX_PAY_DAY
	spriteface STARGLOWLITTLEGIRL, RIGHT
	showemote EMOTE_SHOCK, STARGLOWLITTLEGIRL, 15
	pause 7
	applymovement STARGLOWLITTLEGIRL, Movement_StarglowLittleGirlWalksUp1
	spriteface PLAYER, LEFT
	callasm .LandmarkSignTimer
	opentext
	writetext StarglowLittleGirlText1
	waitbutton
	closetext
	follow STARGLOWLITTLEGIRL, PLAYER
	applymovement STARGLOWLITTLEGIRL, Movement_StarglowLittleGirlWalkToHouse1
	stopfollow
	opentext
	writetext StarglowLittleGirlText2
	waitbutton
	
;	writetext StarglowGetSuperPotionsText
;	playsound SFX_ITEM
;	waitsfx
;	buttonsound
;	writetext StarglowPutAwaySuperPotionsText
;	buttonsound
;	giveitem SUPER_POTION, 2
	verbosegiveitem SUPER_POTION
	writetext StarglowLittleGirlText3
	waitbutton
	closetext
	domaptrigger OLIVINE_LIGHTHOUSE_1F, $1
.end	
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
.LandmarkSignTimer:
	xor a
	ld [wLandmarkSignTimer], a
	ret
	
StarglowGirlStopsYou2:
	checkevent EVENT_STARGLOW_HELPED_LITTLEGIRL
	iftrue .end
	setevent EVENT_STARGLOW_HAVENT_HELPED_GIRL
	setevent EVENT_STARGLOW_HAVENT_HELPED_GIRL_TOGEPI
	callasm .StopRunning
	applymovement PLAYER, Movement_StarglowPlayerWalkDown
	playsound SFX_PAY_DAY
	spriteface STARGLOWLITTLEGIRL, RIGHT
	showemote EMOTE_SHOCK, STARGLOWLITTLEGIRL, 15
	pause 7
	applymovement STARGLOWLITTLEGIRL, Movement_StarglowLittleGirlWalksUp2
	spriteface PLAYER, LEFT
	opentext
	writetext StarglowLittleGirlText1
	waitbutton
	closetext
	follow STARGLOWLITTLEGIRL, PLAYER
	applymovement STARGLOWLITTLEGIRL, Movement_StarglowLittleGirlWalkToHouse2
	stopfollow
	opentext
	writetext StarglowLittleGirlText2
	waitbutton
	
;	writetext StarglowGetSuperPotionsText
;	playsound SFX_ITEM
;	waitsfx
;	buttonsound
;	writetext StarglowPutAwaySuperPotionsText
;	buttonsound
;	giveitem SUPER_POTION, 2
	verbosegiveitem SUPER_POTION
	writetext StarglowLittleGirlText3
	waitbutton
	closetext
	domaptrigger OLIVINE_LIGHTHOUSE_1F, $1
.end	
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
StarglowGirlDontGo1:
	checkevent EVENT_STARGLOW_HELPED_LITTLEGIRL
	iftrue .end
	callasm .StopRunning
	opentext
	writetext StarglowLittleGirlText4
	waitbutton
	closetext
	applymovement PLAYER, Movement_StarglowPlayerDontGo1
	opentext
	writetext StarglowLittleGirlText3
	waitbutton
	closetext
.end
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
StarglowGirlDontGo2:
	checkevent EVENT_STARGLOW_HELPED_LITTLEGIRL
	iftrue .end
	callasm .StopRunning
	opentext
	writetext StarglowLittleGirlText4
	waitbutton
	closetext
	applymovement PLAYER, Movement_StarglowPlayerDontGo2
	spriteface PLAYER, LEFT
	opentext
	writetext StarglowLittleGirlText3
	waitbutton
	closetext
.end
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
StarglowRocket:
	end
	
StarglowLittleGirl:
	jumptextfaceplayer StarglowLittleGirlText3
	end
	
StarglowFisher1Text1:
	text "Sometimes, when"
	line "fishing, my line"
	
	para "will get caught"
	line "on something in"
	cont "the water."
	
	para "When that happens,"
	line "I have my #MON"
	cont "use CUT on the it."
	
	para "Here."
	done
	
StarglowFisher1Text2:
	text "That HM contains"
	line "the move CUT."

	para "You probably won't"
	line "need to use it"
	cont "while fishing,"
	
	para "but you could use"
	line "it to cut down"
	
	para "small trees that"
	line "are in your way."
	
	para "You need the BADGE"
	line "from this town's"
	
	para "GYM LEADER to use"
	line "it outside of"
	cont "battle, though."
	done
	
StarglowFisher2Text:
	text "I've fished in"
	line "hundreds of lakes"
	
	para "and rivers in my"
	line "day, and none of"
	
	para "them are as good"
	line "as STARGLOW"
	cont "VALLEY."
	done
	
StarglowFisher3Text:
	text "Sometimes when"
	line "fishing, you won't"
	cont "get a bite."
	
	para "In times like"
	line "that, persistance"
	cont "is the key."
	
	para "Don't give up!"
	done
	
StarglowGrampsText1:
	text "This town is so"
	line "quiet and quaint."
	
	para "Quiet is nice, but"
	line "sometimes it can"
	cont "get boring."
	
	para "I wish something"
	line "interesting would"
	cont "happen…"
	done
	
StarglowGrampsText2:
	text "Weird guys around"
	line "town?"
	
	para "I have no idea"
	line "what you're talking"
	cont "about, kiddo."
	
	para "Nothing interest-"
	line "ing ever happens"
	cont "around here."
	done
	
StarglowYoungsterText1:
	text "See those shady"
	line "guys over there?"

	para "I've heard that"
	line "they're trying to"
	
	para "steal people's"
	line "#MON."
	
	para "I'd steer clear of"
	line "them if I were"
	cont "you."
	done
	
StarglowYoungsterText2:
	text "Huh…"
	
	para "All those shady"
	line "guys are gone."
	
	para "I wonder who"
	line "chased them off…"
	done
	
StarglowLassText:
	text "That weirdo over"
	line "there won't let me"
	cont "leave town."
	
	para "What's his problem?"
	done
	
StarglowYoungster2Text:
	text "Are you a TRAINER?"
	
	para "I am too, but I"
	line "don't really like"
	cont "to battle."
	
	para "I'd rather just"
	line "sit here on this"
	
	para "bench with my"
	line "#MON."
	done
	
StarglowLass2Text:
	text "There's a lot of"
	line "people around here"
	
	para "that are super"
	line "into fishing."
	
	para "I've heard that"
	line "there's one person"
	
	para "in town who even"
	line "takes it more"
	
	para "seriously than the"
	line "GYM LEADER!"
	done
	
StarglowPoliwhirlText1:
	text "POLIWHIRL: Poli…"
	done
	
StarglowPoliwhirlText2:
	text "POLIWHIRL looks"
	line "very bored."
	done
	
StarglowGetSuperPotionsText:
	text "<PLAYER> received"
	line "2 SUPER POTIONS!"
	done
	
StarglowPutAwaySuperPotionsText:
	text "<PLAYER> put the"
	line "SUPER POTIONS in"
	cont "the ITEM POCKET."
	done
	
StarglowValleySignText:
	text "STARGLOW VALLEY"
	
	para "A town as peaceful"
	line "as the river run-"
	cont "ning through it."
	done
	
StarglowGymSignText:
	text "STARGLOW VALLEY"
	line "#MON GYM"
	cont "LEADER: RODNEY"

	para "The master"
	line "fisherman."
	done
	
StarglowGuruSignText:
	text "Home of the"
	line "fabulous FISHING"
	cont "GURU"
	done
	
StarglowRocket1Text1:
	text "What's that?"
	
	para "Stop trying to"
	line "take people's"
	cont "#MON?"
	
	para "Or what?"
	
	para "Are you gonna"
	line "make me?"
	done
	
StarglowRocket1Text2:
	text "Run away!"
	done
	
StarglowRocket1Text3:
	text "Right."
	
	para "Run along, now."
	done
	
StarglowRocket1Text4:
	text "I'll beat you AND"
	line "take your #MON!"
	done
	
StarglowRocket1WinText:
	text "I lost?"
	done
	
StarglowRocket2Text1:
	text "What are you"
	line "lookin' at?"
	
	para "You want a fight"
	line "or something?"
	done
	
StarglowRocket2Text2:
	text "I gotta watch who"
	line "I pick fights"
	cont "with!"
	done
	
StarglowRocket2Text3:
	text "Yeah, that's"
	line "what I thought."
	done
	
StarglowRocket2Text4:
	text "Heh…"
	
	para "This is gonna be"
	line "easy."
	done
	
StarglowRocket2WinText:
	text "Woah! Hey!"
	
	para "Chill!"
	done
	
StarglowRocket3Text1:
	text "Buzz off, kid."
	
	line "I'm busy."
	done
	
StarglowRocket3Text2:
	text "You're the one that"
	line "took out everyone"
	cont "else?"
	
	para "Well, you don't"
	line "look like much,"
	
	para "but if you beat"
	line "all those other"
	
	para "guys, then I can't"
	line "take any chances."
	
	para "BOYS!"
	done
	
StarglowRocket3Text3:
	text "This ends now,"
	line "runt!"
	done
	
StarglowRocket3Text4
	text "Who…?"
	done
	
StarglowRocket3Text5:
	text "PUNK: A GYM"
	line "LEADER?"
	done

StarglowRocket3Text6:
	text "We can't take on"
	line "this kid AND"
	cont "a GYM LEADER!"
	
	para "Arrrgh…"
	
	para "RETREAT!"
	done
	
StarglowRocket3Text7:
	text "This isn't over."
	
	para "You haven't heard"
	line "the last of TEAM"
	cont "SNARE!"
	done
	
StarglowRocket3Text8:
	text "Yes, sir!"
	
	para "We have arrived"
	line "in the town."
	
	para "I have sent the"
	line "others to start"
	
	para "taking the people's"
	line "#MON now."
	done
	
StarglowRodneyText1:
	text "???: Now hold on"
	line "just one second."
	done
	
StarglowRodneyText2:
	text "???: Three on one"
	line "is hardly fair,"
	cont "wouldn't you say?"
	done
	
StarglowRodneyText3:
	text "Are these guys"
	line "causing trouble"
	cont "out here?"
	
	para "Surely they're not"
	line "right?"
	done

StarglowRodneyText4:
	text "???: Now that"
	line "THAT business is"
	
	para "done, I should"
	line "introduce myself."
	
	para "I'm RODNEY."
	
	para "I'm the GYM LEADER"
	line "here in STARGLOW"
	cont "VALLEY."
	
	para "You took out all"
	line "of the other goons"
	
	para "around town all"
	line "by yourself?"
	
	para "You must be quite"
	line "the TRAINER!"
	
	para "I'd love to take"
	line "you on in battle!"
	
	para "I'll be here in"
	line "the GYM, waiting."
	
	para "Come see me when"
	line "you're ready for"
	cont "a battle."
	done
	
StarglowRocket4Text1:
	text "Why don't you take"
	line "some time to look"
	cont "around town?"
	
	para "Hehehe…"
	done
	
StarglowRocket4Text2:
	text "Where ya going,"
	line "kid?"
	done
	
StarglowLittleGirlText1:
	text "TRAINER!"
	
	para "Please help!"
	
	para "Some bad people"
	line "are trying to take"
	cont "my #MON!"
	
	para "I ran for help,"
	line "but my MOMMY is"
	
	para "still in the"
	line "house!"
	
	para "Follow me!"
	done
	
StarglowLittleGirlText2:
	text "They're in here!"
	
	para "If your #MON"
	line "are hurt, use"
	cont "this."
	done
	
StarglowLittleGirlText3:
	text "Please help my"
	line "MOMMY!"
	done
	
StarglowLittleGirlText4:
	text "Wait!"
	done
	
Movement_StarglowPlayerRocket3:
	step RIGHT
	step UP
	step_end
	
Movement_StarglowRodney:
	step UP
	step_end
	
Movement_StarglowRocket3:
	fix_facing
	step DOWN
	remove_fixed_facing
	step_end
	
Movement_StarglowRocket3_2:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end
	
Movement_StarglowDummyRocket1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end
	
Movement_StarglowDummyRocket1cont:
	step LEFT
	step_end
	
Movement_StarglowDummyRocket2:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end
	
Movement_StarglowRocket1_1:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	step_end
	
Movement_StarglowRocket1_2:
	big_step DOWN
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	step_end
	
Movement_StarglowRocket2_1:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step LEFT
	step_end
	
Movement_StarglowRocket2_2:
	big_step DOWN
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	big_step LEFT
	step_end
	
Movement_StarglowRocketStopsYou1:
	step UP
	step_end

Movement_StarglowRocketStopsYou2:
	step DOWN
	step_end
	
Movement_StarglowRocketStopsYouPlayer:
	step LEFT
	step_end
	
Movement_StarglowPlayerWalkDown:
	step DOWN
	step DOWN
	step DOWN
	step_end
	
Movement_StarglowLittleGirlWalksUp1:
	big_step RIGHT
	step_end
	
Movement_StarglowLittleGirlWalksUp2:
	big_step RIGHT
	big_step RIGHT
	step_end
	
Movement_StarglowLittleGirlWalkToHouse1:
	big_step DOWN
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	turn_head RIGHT
	step_end
	
Movement_StarglowLittleGirlWalkToHouse2:
	big_step DOWN
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	turn_head RIGHT
	step_end
	
Movement_StarglowPlayerDontGo1:
	step LEFT
	step_end
	
Movement_StarglowPlayerDontGo2:
	step UP
	step_end