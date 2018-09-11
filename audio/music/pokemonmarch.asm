Music_Spooky: ; f6e23
	musicheader 3, 1, Music_Spooky_Ch1
	musicheader 1, 2, Music_Spooky_Ch2
	musicheader 1, 3, Music_Spooky_Ch3
; f6e2f

Music_Spooky_Ch1: ; f6e2f
	tempo 144
	volume $77
	stereopanning $f0
	dutycycle $3
	tone $0001
	notetype $c, $42
	octave 3

	loopchannel 0, Music_Spooky_loop1
; f6eae

Music_Spooky_Ch2: ; f6e2f
	dutycycle $3
	tone $0001
	notetype $c, $42
	octave 3

	loopchannel 0, Music_Spooky_loop2

Music_Spooky_Ch3: ; f6f4d
	stereopanning $f
	notetype $c, $16

	loopchannel 0, Music_Spooky_loop3
; f6fe8

Music_PokemonMarch_branch_f6fe8: ; f6fe8
	octave 3
	note G#, 2
	note __, 2
	octave 4
	note D#, 2
	octave 3
	note D#, 2
	note __, 2
	octave 4
	note D#, 2
	octave 3
	note F_, 2
	note __, 2
	octave 4
	note D#, 2
	octave 3
	note G_, 2
	endchannel
; f6ffa