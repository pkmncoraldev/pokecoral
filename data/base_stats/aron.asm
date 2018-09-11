	db ARON ; 187

	db  50,  70,  100,  30,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db STEEL, ROCK
	db 180 ; catch rate
	db 96 ; base exp
	db NO_ITEM ; item 1
	db HARD_STONE ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db SLOW ; growth rate
	dn MONSTER, MONSTER ; egg groups

	; tmhm
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, FRUSTRATION, IRON_TAIL,EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM,SWAGGER, SLEEP_TALK, SANDSTORM, SWIFT, REST, ATTRACT, CUT, STRENGTH
	; end
