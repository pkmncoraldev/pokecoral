const_value set 2
	const GLINT_APT12F_NPC1
	const GLINT_APT12F_NPC2

LakeofRageHiddenPowerHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

GlintApt12FNpc1:
	faceplayer
	opentext
	writetext GlintApt12FNpc1Text
	waitbutton
	spriteface GLINT_APT12F_NPC1, UP
	closetext
	end
	
GlintApt12FNpc2:
	faceplayer
	opentext
	checkitem RIVAL_POKEDEX
	iffalse .havemapcard
	writetext GlintApt12FNpc2Text1
	waitbutton
	closetext
	end
	
.havemapcard:
	writetext GlintApt12FNpc2Text2
	waitbutton
	closetext
	end
	
GlintApt12FTV:
	callasm .StopRunning
	checkcode VAR_FACING
	if_equal RIGHT, .YouAreFacingRight
	opentext
	writetext GlintApt12FTVText1
	waitbutton
	spriteface PLAYER, DOWN
	writetext GlintApt12FTVText2
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintApt12FTV1
	end
.YouAreFacingRight
	opentext
	writetext GlintApt12FTVText1
	waitbutton
	spriteface PLAYER, DOWN
	writetext GlintApt12FTVText2
	waitbutton
	closetext
	applymovement PLAYER, Movement_GlintApt12FTV2
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
GlintApt12FNpc1Text:
	text "Talking to people"
	line "is useful."
	
	para "They'll tell you"
	line "vital information"
	cont "that they know."
	
	para "It's probably a"
	line "good idea to talk"
	
	para "to every person"
	line "you see."
	
	para "Except for me that"
	line "is."
	
	para "I'm trying to watch"
	line "TV."
	done
	
GlintApt12FNpc2Text1:
	text "Do you see that"
	line "map on the wall"
	cont "by the TV?"
	
	para "That's a map of"
	line "the ONWA REGION."
	
	para "If you have a"
	line "MAP CARD for your"
	cont "#GEAR,"
	
	para "you can view it"
	line "from anywhere."
	
	para "You should see if"
	line "you can find one."
	done
	
GlintApt12FNpc2Text2:
	text "Do you see that"
	line "map on the wall"
	cont "by the TV?"
	
	para "That's a map of"
	line "the ONWA REGION."
	
	para "If you have a"
	line "MAP CARD for your"
	cont "#GEAR,"
	
	para "you can view it"
	line "from anywhere."
	
	para "Oh!"
	
	para "You already have"
	line "one."
	
	para "How convenient."
	done
	
GlintApt12FTVText1:
	text "Hey!"
	done
	
GlintApt12FTVText2:
	text "Do you mind?"
	
	para "I'm watching that!"
	done
	
Movement_GlintApt12FTV1:
	step RIGHT
	step_end

Movement_GlintApt12FTV2:
	step LEFT
	step_end
	
LakeofRageHiddenPowerHouse_MapEventHeader:: db 0, 0

.Warps: db 1
	warp_def 1, 1, 3, CHARCOAL_KILN

.CoordEvents: db 1
	xy_trigger 0, 4, 2, 0, GlintApt12FTV, 0, 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_ROCKER, 5, 2, SPRITEMOVEDATA_STANDING_UP, 0, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, GlintApt12FNpc1, -1
	person_event SPRITE_TEACHER, 6, 5, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GlintApt12FNpc2, -1

