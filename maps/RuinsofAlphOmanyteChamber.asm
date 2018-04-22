const_value set 2
	const SPOOKHOUSE_FLOATBALL
	
RuinsofAlphOmanyteChamber_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

RuinsofAlphOmanyteChamber_MapEventHeader:: db 0, 0

.Warps: db 5
	warp_def 7, 2, 3, RUINS_OF_ALPH_OMANYTE_WORD_ROOM
	warp_def 7, 3, 3, RUINS_OF_ALPH_OMANYTE_WORD_ROOM
	warp_def 7, 10, 4, RUINS_OF_ALPH_OMANYTE_WORD_ROOM
	warp_def 7, 11, 4, RUINS_OF_ALPH_OMANYTE_WORD_ROOM
	warp_def 2, 2, 1, RUINS_OF_ALPH_OMANYTE_ITEM_ROOM

.CoordEvents: db 0

.BGEvents: db 3
	signpost 1, 0, SIGNPOST_READ, SpookHouseDeadLight
	signpost 3, 8, SIGNPOST_READ, SpookHouseRottonFood
	signpost 2, 3, SIGNPOST_READ, SpookHouseRottonFood

.ObjectEvents: db 1
	person_event SPRITE_POKE_BALL, 3, 2, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, FloatBall, EVENT_SPOOKHOUSE_GOT_BALL

FloatBall:
	checkcode VAR_FACING
	if_equal DOWN, .YouAreFacingDown
	checkevent EVENT_SPOOKHOUSE_BALL_WILL_MOVE_LEFT
	iftrue .left
	applymovement SPOOKHOUSE_FLOATBALL, Movement_SpookHouseFloatBall1
	opentext
	writetext SpookHouseBallFloatText
	waitbutton
	closetext
	setevent EVENT_SPOOKHOUSE_BALL_WILL_MOVE_LEFT
	end
	
.left:
	applymovement SPOOKHOUSE_FLOATBALL, Movement_SpookHouseFloatBall2
	opentext
	writetext SpookHouseBallFloatText
	waitbutton
	closetext
	clearevent EVENT_SPOOKHOUSE_BALL_WILL_MOVE_LEFT
	end
	
.YouAreFacingDown:
	disappear SPOOKHOUSE_FLOATBALL
	opentext
	verbosegiveitem OLD_KEY
	closetext
	setevent EVENT_SPOOKHOUSE_GOT_BALL
	setevent EVENT_SPOOKHOUSE_GHOST_WILL_APPEAR
	domaptrigger RUINS_OF_ALPH_OMANYTE_WORD_ROOM, $1
	end
	
SpookHouseRottonFood:
	jumptext SpookHouseRottonFoodText
	
Movement_SpookHouseFloatBall1:
	slow_jump_step RIGHT
	step_end
	
Movement_SpookHouseFloatBall2:
	slow_jump_step LEFT
	step_end
	
SpookHouseBallFloatText:
	text "It floated out of"
	line "your grasp!"
	done
	
SpookHouseRottonFoodText:
	text "Ew!"
	
	para "A plate of rotten"
	line "food!"
	done