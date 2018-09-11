const_value set 2

MrPokemonsHouse_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	end
	
.Trigger1:
	opentext 
	writetext SunbeamIslandSurfShopNPC1Text5
	waitbutton
	checkevent EVENT_BEAT_SUNBEAM_CONTEST_BIKINIP
	iftrue .lilacwon
	checkevent EVENT_BEAT_SUNBEAM_CONTEST_BIKINIR
	iftrue .rosewon
	checkevent EVENT_BEAT_SUNBEAM_CONTEST_BIKINIY
	iftrue .hazelwon
.lilacwon
	verbosegiveitem RARE_CANDY
	writetext SunbeamIslandSurfShopNPC1Text6
	waitbutton
	closetext
	dotrigger $0
	end
.rosewon
	verbosegiveitem PP_UP
	writetext SunbeamIslandSurfShopNPC1Text6
	waitbutton
	closetext
	dotrigger $0
	end
.hazelwon
	verbosegiveitem NUGGET
	writetext SunbeamIslandSurfShopNPC1Text6
	waitbutton
	closetext
	dotrigger $0
	end
	
MrPokemonsHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 3, 9, CHERRYGROVE_CITY
	warp_def 7, 4, 9, CHERRYGROVE_CITY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_FISHING_GURU, 5, 7, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandSurfShopNPC1, -1
	person_event SPRITE_ROCKER, 3, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIslandSurfShopNPC2, -1

SunbeamIslandSurfShopNPC1:
	faceplayer
	checkflag ENGINE_BIKINI_CONTEST
	iftrue .donebikinicontest
	checkflag ENGINE_PUNKS_IN_STARGLOW
	iftrue .punksonbeach
	opentext 
	writetext SunbeamIslandSurfShopNPC1Text1
	yesorno
	iffalse .saidnotocontest
	writetext SunbeamIslandSurfShopNPC1Text2
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	waitsfx
	warpfacing UP, NATIONAL_PARK_BUG_CONTEST, $5, $5
	end
.saidnotocontest:
	writetext SunbeamIslandSurfShopNPC1Text3
	waitbutton
	closetext
	end
.donebikinicontest:
	opentext 
	writetext SunbeamIslandSurfShopNPC1Text4
	waitbutton
	closetext
	end
.punksonbeach:
	opentext 
	writetext SunbeamIslandSurfShopNPC1Text7
	waitbutton
	closetext
	end
	
SunbeamIslandSurfShopNPC2:
	jumptextfaceplayer SunbeamIslandSurfShopNPC2Text
	
SunbeamIslandSurfShopNPC1Text1:
	text "Hey dude!"
	
	para "We're looking for"
	line "judges for the"
	
	para "BEACH BATTLE"
	line "BEAUTY CONTEST!"
	
	para "You'll fight some"
	line "tough TRAINERS,"
	
	para "and get a prize"
	line "for participating!"
	
	para "So, what do you"
	line "say?"
	
	para "Wanna be a judge?"
	done
	
SunbeamIslandSurfShopNPC1Text2:
	text "Great!"
	
	para "The contest is"
	line "about to start!"
	done
	
SunbeamIslandSurfShopNPC1Text3:
	text "Bummer…"
	done
	
SunbeamIslandSurfShopNPC1Text4:
	text "Hey dude!"
	
	para "Today's contest is"
	line "is already over."
	
	para "If you want to be"
	line "a judge, come back"
	cont "tomorrow."
	done
	
SunbeamIslandSurfShopNPC1Text5:
	text "Nice!"
	
	para "That was great!"
	
	para "Here's your reward"
	line "as promised."
	done
	
SunbeamIslandSurfShopNPC1Text6:
	text "Make sure to come"
	line "back tomorrow to"
	
	para "judge the next"
	line "contest!"	
	done
	
SunbeamIslandSurfShopNPC1Text7:
	text "Hey dude!"
	
	para "I heard there was"
	line "somthing going on"
	cont "on the beach."
	done
	
SunbeamIslandSurfShopNPC2Text:
	text "Leave me alone,"
	line "kid."
	
	para "Come talk to me"
	line "in the next"
	cont "release."
	done