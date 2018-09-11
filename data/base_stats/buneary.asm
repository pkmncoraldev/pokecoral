	db BUNEARY ; 106

	db  55, 66,  44,  85,  44, 56
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL
	db 190 ; catch rate
	db 70 ; base exp
	db PSNCUREBERRY ; item 1
	db PSNCUREBERRY ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 25 ; step cycles to hatch
	db 5 ; unknown
	dn 6, 6 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn FIELD, HUMANSHAPE ; egg groups

	; tmhm
	tmhm FAKE_OUT, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, DIG, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, THUNDERPUNCH, DETECT, REST, ATTRACT, FIRE_PUNCH, CUT, THUNDERBOLT, ICE_BEAM
	; end
