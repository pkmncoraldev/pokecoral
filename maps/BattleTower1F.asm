const_value set 2
	const GLINT_EVOHOUSE_NPC1
	const GLINT_EVOHOUSE_NPC2
	const GLINT_EVOHOUSE_CUBONE

BattleTower1F_MapScriptHeader:
.MapTriggers:
	db 0


.MapCallbacks:
	db 0



BattleTower1F_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 3, AZALEA_TOWN
	warp_def 7, 3, 3, AZALEA_TOWN

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 3
	person_event SPRITE_FISHING_GURU, 4, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, GlintEvoHouseNPC1, -1
	person_event SPRITE_REDS_MOM, 4, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GlintEvoHouseNPC2, -1
	person_event SPRITE_CUBONE, 6, 6, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, GlintEvoHouseCubone, -1

GlintEvoHouseNPC1:
	jumptextfaceplayer GlintEvoHouseNPC1Text
	
GlintEvoHouseNPC2:
	jumptextfaceplayer GlintEvoHouseNPC2Text
	
GlintEvoHouseCubone:
	opentext
	writetext GlintEvoHouseCuboneText
	cry CUBONE
	waitbutton
	closetext
	end
	
GlintEvoHouseNPC1Text:
	text "If you battle with"
	line "your #MON, they"
	cont "grow stronger!"
	
	para "They might even"
	line "evolve!"
	done
	
GlintEvoHouseNPC2Text:
	text "Some #MON"
	line "evolve into"
	
	para "different #MON"
	line "depending on the"
	
	para "time of day they're"
	line "trained."
	done
	
GlintEvoHouseCuboneText:
	text "CUBONE: Bone"
	line "kew bone?"
	done