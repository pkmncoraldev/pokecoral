	db DWEBBLE ; 046

	db  50,  65,  85,  55,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db BUG, ROCK
	db 190 ; catch rate
	db 65 ; base exp
	db NO_ITEM ; item 1
	db HARD_STONE ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn INSECT, INANIMATE ; egg groups

	; tmhm
	tmhm CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SWEET_SCENT, SNORE, PROTECT, ENDURE, FRUSTRATION, SOLARBEAM, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, FURY_CUTTER, CUT, STRENGTH
	; end
