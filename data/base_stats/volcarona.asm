	db VOLCARONA ; 124

	db  85,  60,  65, 100, 135, 105
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIRE
	db 15 ; catch rate
	db 248 ; base exp
	db SILVERPOWDER ; item 1
	db SILVERPOWDER ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 25 ; step cycles to hatch
	db 5 ; unknown
	dn 6, 6 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db SLOW ; growth rate
	dn INSECT, INSECT ; egg groups

	; tmhm
	tmhm HEADBUTT, CURSE, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, HYPER_BEAM, PROTECT, ENDURE, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, FIRE_BLAST, SWIFT, DETECT, REST, ATTRACT, STEEL_WING, FIRE_PUNCH, FURY_CUTTER, CUT, FLY, STRENGTH, FLASH, FLAMETHROWER
	; end
