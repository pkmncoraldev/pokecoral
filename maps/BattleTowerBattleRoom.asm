const_value set 2
	const GLINT_RIVALHOUSE_MOM

BattleTowerBattleRoom_MapScriptHeader:
.MapTriggers:
	db 0

	; triggers

.MapCallbacks:
	db 0


BattleTowerBattleRoom_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 3, 4, AZALEA_TOWN
	warp_def 7, 2, 4, AZALEA_TOWN

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_TEACHER, 4, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, GlintRivalHouseMom, -1
	
GlintRivalHouseMom:
	faceplayer
	opentext
	checkitem RIVAL_POKEDEX
	iffalse .GlintRivalHouseMomLoop
	domaptrigger ROUTE_35, $1
	takeitem RIVAL_POKEDEX
	writetext GlintRivalMomText1
	buttonsound
	stringtotext .mapcardname, $1
	scall .JumpstdReceiveItem
	setflag ENGINE_MAP_CARD
	writetext GotMapCardText
	buttonsound
	writetext GlintRivalMomText2
	buttonsound
	setevent EVENT_GLINT_CONTACT_GUY_1
	clearevent EVENT_GLINT_CONTACT_GUY_2
	domaptrigger ROUTE_35, $1

.GlintRivalHouseMomLoop:
	writetext GlintRivalMomText3
	waitbutton
	closetext
	end

.JumpstdReceiveItem:
	jumpstd receiveitem
	end

.mapcardname
	db "MAP CARD@"
	
GlintRivalHouseRivalHmphText:
	text "Hmph…"
	done
	
GotMapCardText:
	text "<PLAYER>'s #GEAR"
	line "now has a MAP!"
	done
	
GlintRivalMomText1:
	text "<RIVAL>'s MOM: You"
	line "must be <PLAYER>!"
	
	para "<RIVAL> has told"
	line "me all about you."
	
	para "I know he can be"
	line "a bit much to deal"
	
	para "with, but don't"
	line "let it get to you."
	
	para "I'm hoping that"
	line "going on a journey"
	
	para "with his #MON"
	line "will help him"
	cont "mature a bit."
	
	para "Oh?"
	
	para "A #DEX?"
	
	para "<RIVAL> ran off"
	line "before they were"
	cont "handed out?"
	
	para "Sigh…"
	
	para "Well, thanks for"
	line "bringing it by."
	
	para "<RIVAL> went off"
	line "to GLINT GROVE to"
	cont "do some training."
	
	para "I'll be sure to"
	line "give this to him"
	cont "when he gets back."
	
	para "Say, you have a"
	line "#GEAR, right?"
	
	para "Why don't you take"
	line "this as thanks?"
	done
	
GlintRivalMomText2:
	text "That MAP CARD lets"
	line "you view a map of"
	
	para "the ONWA region"
	line "from your #-"
	cont "GEAR."
	
	para "It's really handy!"
	done
	
GlintRivalMomText3:
	text "Thanks again for"
	line "bringing by"
	cont "<RIVAL>'s #DEX."
	done
	
	