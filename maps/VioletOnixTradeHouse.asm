const_value set 2
	const VIOLETONIXTRADEHOUSE_POKEFAN_F

VioletOnixTradeHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

MarcusMom:
	jumptextfaceplayer MarcusMomText
	
MarcusHouseBreloom:
	opentext
	writetext MarcusHouseBreloomText
	cry BRELOOM
	waitbutton
	closetext
	end

MarcusMomText:
	text "Hi <PLAYER>!"
	
	para "MARCUS already"
	line "left for the first"
	cont "GYM to the north."
	
	para "I know the GYM's"
	line "type is NORMAL."
	
	para "If only I could"
	line "remember what"
	
	para "NORMAL was weak"
	line "to…"
	done

MarcusHouseBreloomText:
	text "BRELOOM: Loo lum?"
	done
	
VioletOnixTradeHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 3, 4, VIOLET_CITY
	warp_def 7, 4, 4, VIOLET_CITY

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_REDS_MOM, 3, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, MarcusMom, -1
	person_event SPRITE_BRELOOM, 5, 6, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, MarcusHouseBreloom, -1

