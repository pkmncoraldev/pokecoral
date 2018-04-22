const_value set 2
	const SUNBEAMISLANDGARDEN_SPRUCE
	const SUNBEAMISLANDGARDEN_NPC
	const SUNBEAMISLANDGARDEN_MON1
	const SUNBEAMISLANDGARDEN_MON2
	const SUNBEAMISLANDGARDEN_MON3
	const SUNBEAMISLANDGARDEN_MON4
	const SUNBEAMISLANDGARDEN_MON5
	const SUNBEAMISLANDGARDEN_MON6
	const SUNBEAMISLANDGARDEN_MON7
	const SUNBEAMISLANDGARDEN_MON8

NationalPark_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1
	
.MapCallbacks:
	db 0

.Trigger0:
	end
	
.Trigger1:
	domaptrigger ELMS_LAB, $2
	playsound SFX_EXIT_BUILDING
	appear SUNBEAMISLANDGARDEN_SPRUCE
	pause 5
	applymovement SUNBEAMISLANDGARDEN_SPRUCE, Movement_GardenSpruce1
	spriteface SUNBEAMISLANDGARDEN_SPRUCE, DOWN
	opentext
	writetext GardenSpruce1Text1
	waitbutton
	closetext
	follow SUNBEAMISLANDGARDEN_SPRUCE, PLAYER
	applymovement SUNBEAMISLANDGARDEN_SPRUCE, Movement_GardenSpruce2
	stopfollow
	spriteface SUNBEAMISLANDGARDEN_SPRUCE, RIGHT
	spriteface PLAYER, RIGHT
	opentext
	writetext GardenSpruce1Text2
	waitbutton
	closetext
	applymovement SUNBEAMISLANDGARDEN_SPRUCE, Movement_GardenSpruce3
	spriteface SUNBEAMISLANDGARDEN_SPRUCE, DOWN
	opentext
	writetext GardenSpruce1Text3
	waitbutton
	writetext SunbeamIslandGardenDonphanText
	cry DONPHAN
	waitbutton
	closetext
	applymovement SUNBEAMISLANDGARDEN_SPRUCE, Movement_GardenSpruce4
	follow SUNBEAMISLANDGARDEN_SPRUCE, PLAYER
	applymovement SUNBEAMISLANDGARDEN_SPRUCE, Movement_GardenSpruce5
	stopfollow
	spriteface SUNBEAMISLANDGARDEN_SPRUCE, UP
	spriteface PLAYER, UP
	opentext
	writetext GardenSpruce1Text4
	waitbutton
	closetext
	applymovement SUNBEAMISLANDGARDEN_SPRUCE, Movement_GardenSpruce6
	opentext
	writetext GardenSpruce1Text5
	waitbutton
	writetext SunbeamIslandGardenNidoqueenText
	cry NIDOQUEEN
	waitbutton
	closetext
	applymovement SUNBEAMISLANDGARDEN_SPRUCE, Movement_GardenSpruce7
	follow SUNBEAMISLANDGARDEN_SPRUCE, PLAYER
	applymovement SUNBEAMISLANDGARDEN_SPRUCE, Movement_GardenSpruce8
	stopfollow
	spriteface SUNBEAMISLANDGARDEN_SPRUCE, LEFT
	opentext
	writetext GardenSpruce1Text6
	waitbutton
	closetext
	follow SUNBEAMISLANDGARDEN_SPRUCE, PLAYER
	applymovement SUNBEAMISLANDGARDEN_SPRUCE, Movement_GardenSpruce9
	stopfollow
	spriteface SUNBEAMISLANDGARDEN_SPRUCE, LEFT
	opentext
	writetext GardenSpruce1Text7
	waitbutton
	closetext
;	applymovement PLAYER, Movement_GardenSpruce7
	spriteface PLAYER, DOWN
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	waitsfx
	warpfacing DOWN, ELMS_LAB, $5, $0
	end

NationalPark_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 11, 18, 3, ELMS_LAB
	warp_def 11, 19, 3, ELMS_LAB

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 10
	person_event SPRITE_OAK, 11, 19, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandGardenSpruce, EVENT_SUNBEAM_SPRUCE_GONE
	person_event SPRITE_LASS, 16, 8, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SunbeamIslandGardenSpruce, -1
	person_event SPRITE_NIDOQUEEN, 6, 15, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandGardenNidoqueen, -1
	person_event SPRITE_NIDORANM, 7, 17, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, SunbeamIslandGardenNidoranM, -1
	person_event SPRITE_NIDORANF, 5, 16, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandGardenNidoranF, -1
	person_event SPRITE_SLOWPOKE, 13, 7, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIslandGardenSlowpoke, -1
	person_event SPRITE_HITMONLEE, 9, 10, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandGardenLopunny, -1
	person_event SPRITE_HITMONTOP, 10, 14, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandGardenAltaria, -1
	person_event SPRITE_DONPHAN, 6, 21, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandGardenDonphan, -1
	person_event SPRITE_DODRIO, 4, 19, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamIslandGardenDodrio, -1

SunbeamIslandGardenSpruce:
	jumptextfaceplayer SunbeamIslandGardenSpruceText
	end
	
SunbeamIslandGardenNidoqueen:
	opentext
	writetext SunbeamIslandGardenNidoqueenText
	cry NIDOQUEEN
	waitbutton
	closetext
	end
	
SunbeamIslandGardenNidoranM:
	opentext
	writetext SunbeamIslandGardenNidoranMText
	cry NIDORAN_M
	waitbutton
	closetext
	end
	
SunbeamIslandGardenNidoranF
	opentext
	writetext SunbeamIslandGardenNidoranFText
	cry NIDORAN_F
	waitbutton
	closetext
	end
	
SunbeamIslandGardenSlowpoke:
	opentext
	writetext SunbeamIslandGardenSlowpokeText
	cry SLOWPOKE
	waitbutton
	closetext
	end
	
SunbeamIslandGardenLopunny:
	opentext
	writetext SunbeamIslandGardenLopunnyText
	cry HITMONLEE
	waitbutton
	closetext
	end
	
SunbeamIslandGardenAltaria:
	opentext
	writetext SunbeamIslandGardenAltariaText
	cry HITMONTOP
	waitbutton
	closetext
	end
	
SunbeamIslandGardenDonphan:
	opentext
	writetext SunbeamIslandGardenDonphanText
	cry DONPHAN
	waitbutton
	closetext
	end
	
SunbeamIslandGardenDodrio:
	opentext
	writetext SunbeamIslandGardenDodrioText
	cry DODRIO
	waitbutton
	closetext
	end
	
SunbeamIslandGardenSpruceText
	text "YOU SHOULDN'T BE"
	line "HERE!!!!!!"
	
GardenSpruce1Text1:
	text "TEXT 1"
	done
	
GardenSpruce1Text2:
	text "TEXT 2"
	done
	
GardenSpruce1Text3:
	text "TEXT 3"
	done
	
GardenSpruce1Text4:
	text "TEXT 4"
	done
	
GardenSpruce1Text5:
	text "TEXT 5"
	done
	
GardenSpruce1Text6:
	text "TEXT 6"
	done
	
GardenSpruce1Text7:
	text "TEXT 7"
	done
	
SunbeamIslandGardenNidoqueenText:
	text "NIDOQUEEN: Nido!"
	done
	
SunbeamIslandGardenNidoranMText:
	text "NIDORAN♂: Ran!"
	done
	
SunbeamIslandGardenNidoranFText:
	text "NIDORAN♀: Ran…"
	line "Ran…"
	done
	
SunbeamIslandGardenSlowpokeText:
	text "SLOWPOKE: Sloooow…"
	
	para "…"
	
	para "…"
	
	para "…"
	
	para "…poke?"
	done
	
SunbeamIslandGardenLopunnyText:
	text "LOPUNNY: Lop! Lop!"
	done
	
SunbeamIslandGardenAltariaText:
	text "ALTARIA: …Taria?"
	done
	
SunbeamIslandGardenDonphanText:
	text "DONPHAN: Phan…"
	done
	
SunbeamIslandGardenDodrioText:
	text "DODRIO: Drio!"
	line "Drio! Drio!"
	done
	
Movement_GardenSpruce1:
	step UP
	step LEFT
	step_end
	
Movement_GardenSpruce2:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
Movement_GardenSpruce3:
	step RIGHT
	step_end
	
Movement_GardenSpruce4:
	step LEFT
	step_end
	
Movement_GardenSpruce5:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step LEFT
	step_end
	
Movement_GardenSpruce6:
	step UP
	step_end
	
Movement_GardenSpruce7:
	step DOWN
	step_end
	
Movement_GardenSpruce8:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step LEFT
	step LEFT
	step DOWN
	step_end
	
Movement_GardenSpruce9:
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end