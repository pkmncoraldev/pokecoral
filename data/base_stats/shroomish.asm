	db SHROOMISH ; 086

	db  60,  40,  60,  35,  40,  60
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS
	db 255 ; catch rate
	db 59 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn FAIRY, PLANT ; egg groups

	; tmhm
	tmhm HEADBUTT
	; end
