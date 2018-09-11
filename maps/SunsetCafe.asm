const_value set 2
	const SunsetCafe_CLERK

SunsetCafe_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

SunsetCafeClerk:
	faceplayer
	opentext
	writetext ClerkText
	buttonsound
	pokemart MARTTYPE_BITTER, MART_SUNSET
	refreshscreen $0
	closetext
	spriteface SunsetCafe_CLERK, LEFT
	end

SunsetCafeNPC1:
	jumptext SunsetCafeNPC1Text

SunsetCafeNPC2:
	jumptextfaceplayer SunsetCafeNPC2Text

	
SunsetCafeNPC1Text:
	text "Oooof…"
	
	para "Why do I always"
	line "over eat?"
	done

SunsetCafeNPC2Text:
	text "My favorite is"
	line "BERRY JUICE."
	
	para "Though, I hear"
	line "FRESH WATER is"
	cont "better for you."
	done
	
ClerkText:
	text "Hey, <PLAYER>."
	
	para "What can I get"
	line "you today?"
	done
	
SunsetCafe_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 3, SUNSET_BAY
	warp_def 7, 3, 3, SUNSET_BAY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 3
	person_event SPRITE_CLERK, 3, 7, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SunsetCafeClerk, -1
	person_event SPRITE_FISHER, 4, 3, SPRITEMOVEDATA_STANDING_UP, 1, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, SunsetCafeNPC1, -1
	person_event SPRITE_COOLTRAINER_F, 6, 6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunsetCafeNPC2, -1

