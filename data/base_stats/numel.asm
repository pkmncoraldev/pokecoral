	db NUMEL ; 113

	db 60,  60,  40,  35,  65, 45
	;   hp  atk  def  spd  sat  sdf

	db FIRE, GROUND
	db 255 ; catch rate
	db 88 ; base exp
	db ICE_BERRY ; item 1
	db ICE_BERRY ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 40 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn FIELD, FIELD ; egg groups

	; tmhm
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, DETECT, REST, ATTRACT, FIRE_PUNCH, STRENGTH, FLAMETHROWER
	; end
