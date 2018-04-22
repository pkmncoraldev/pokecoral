const_value set 2
	const LAVACAVEBF3_LARVESTA


Route31_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

Route31_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 25, 17, 3, ROUTE_44
	warp_def 23, 17, 3, ROUTE_31
	warp_def 25, 7, 2, ROUTE_31
	warp_def 11, 15, 4, ROUTE_44

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 3
	person_event SPRITE_BULBASAUR, 3, 4, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, LavaCaveBF3Larvesta, EVENT_LAVA_CAVE_LARVESTA_GONE
	person_event SPRITE_FISHER, 20, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, LavaCaveBF3Trainer1, -1
	person_event SPRITE_POKE_BALL, 8, 13, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, LavaCaveBF3PokeBall, EVENT_LAVA_CAVE_BF3_POKE_BALL

LavaCaveBF3Larvesta:
	opentext
	writetext LavaCaveBF3LarvestaText
	cry BULBASAUR
	waitbutton
	closetext
	loadwildmon BULBASAUR, 1
	writecode VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	if_equal $1, LavaCaveBF3Larvesta2
	disappear LAVACAVEBF3_LARVESTA
	setevent EVENT_LAVA_CAVE_LARVESTA_GONE
LavaCaveBF3Larvesta2:
	reloadmapafterbattle
	end

LavaCaveBF3LarvestaText:
	text "Vraahhbrbrbr!"
	done
	
LavaCaveBF3Trainer1:
	end
	
LavaCaveBF3PokeBall:
	itemball CHARCOAL