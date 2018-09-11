const_value set 2
	const ROUTE1GATE_OFFICER

SunsetCapeRoute1Gate_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	end
	
.Trigger1:
	end
	
Route1OfficerScript1:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue Route1OfficerScript2
	opentext
	writetext Route1OfficerText1
	waitbutton
	closetext
	end
	
Route1OfficerScript2:
	checkevent EVENT_MOM_GOT_POKEGEAR
	iftrue Route1OfficerScript3
	opentext
	writetext Route1OfficerText2
	waitbutton
	closetext
	end
	
Route1OfficerScript3:
	opentext
	writetext Route1OfficerText3
	waitbutton
	closetext
	end
	
SunsetOfficerStopsYou1:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue SunsetOfficerStopsYou1_2
	callasm .StopRunning
	playsound SFX_PAY_DAY
	showemote EMOTE_SHOCK, ROUTE1GATE_OFFICER, 15
	pause 7
	opentext
	writetext OfficerStopsYouText1
	waitbutton
	closetext
	applymovement PLAYER, Movement_SunsetOfficerStopsYou1
	opentext
	writetext OfficerStopsYouText2
	waitbutton
	closetext
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
SunsetOfficerStopsYou1_2:
	callasm .StopRunning
	playsound SFX_PAY_DAY
	showemote EMOTE_SHOCK, ROUTE1GATE_OFFICER, 15
	pause 7
	opentext
	writetext OfficerStopsYouText1
	waitbutton
	closetext
	applymovement PLAYER, Movement_SunsetOfficerStopsYou1
	opentext
	writetext OfficerStopsYouText3
	waitbutton
	closetext
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
SunsetOfficerStopsYou2:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue SunsetOfficerStopsYou2_2
	callasm .StopRunning
	playsound SFX_PAY_DAY
	showemote EMOTE_SHOCK, ROUTE1GATE_OFFICER, 15
	pause 7
	opentext
	writetext OfficerStopsYouText1
	waitbutton
	closetext
	applymovement PLAYER, Movement_SunsetOfficerStopsYou2
	opentext
	writetext OfficerStopsYouText2
	waitbutton
	closetext
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
SunsetOfficerStopsYou2_2:
	callasm .StopRunning
	playsound SFX_PAY_DAY
	showemote EMOTE_SHOCK, ROUTE1GATE_OFFICER, 15
	pause 7
	opentext
	writetext OfficerStopsYouText1
	waitbutton
	closetext
	applymovement PLAYER, Movement_SunsetOfficerStopsYou2
	opentext
	writetext OfficerStopsYouText3
	waitbutton
	closetext
	end

.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
Movement_SunsetOfficerStopsYou1:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step_end
	
Movement_SunsetOfficerStopsYou2:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step_end
	
OfficerStopsYouText1:
	text "Hey kid!"
	done
	
OfficerStopsYouText2:
	text "You don't have"
	line "a #MON!"
	
	para "I'm sorry, but I"
	line "can't let you go"
	
	para "out there without"
	line "a #MON!"
	
	para "I could lose my"
	line "job!"
	done
	
OfficerStopsYouText3:
	text "You don't have"
	line "a #GEAR!"
	
	para "I'm sorry, but I"
	line "can't let you go"
	
	para "out there without"
	line "a #GEAR!"
	
	para "I could lose my"
	line "job!"
	done

Route1OfficerText1:
	text "You can't leave"
	line "out through those"
	
	para "doors without a"
	line "#MON."
	
	para "Come back when you"
	line "have one."
	done
	
Route1OfficerText2:
	text "You can't leave"
	line "out through those"
	
	para "doors without a"
	line "#GEAR."
	
	para "Come back when you"
	line "have one."
	done
	
Route1OfficerText3:
	text "Good luck out"
	line "there, kid."
	done
	
SunsetCapeRoute1Gate_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 7, 5, 2, SUNSET_CAPE
	warp_def 7, 4, 2, SUNSET_CAPE
	warp_def 0, 4, 2, ROUTE_37
	warp_def 0, 5, 1, ROUTE_37

.CoordEvents: db 2
	xy_trigger 0, 1, 4, 0, SunsetOfficerStopsYou1, 0, 0
	xy_trigger 0, 1, 5, 0, SunsetOfficerStopsYou2, 0, 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_OFFICER, 4, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Route1OfficerScript1, -1

