Music_Spooky: ; f6e23
	musicheader 3, 1, Music_Spooky_Ch1
	musicheader 1, 2, Music_Spooky_Ch2
	musicheader 1, 3, Music_Spooky_Ch3
; f6e2f

Music_Spooky_Ch1: ; f6e2f
	tempo 135
	volume $77
	stereopanning $f0
	dutycycle $3
	tone $0001
	notetype $c, $84
	octave 4
	intensity $84
	note D#, 2
	note __, 4
Music_Spooky_loop1:
	intensity $54
	note D#, 2
	note __, 4
	intensity $34
	note D#, 2
	note __, 4
	intensity $14
	note D#, 2
	note __, 4
	note __, 8
	
	intensity $84
	note D#, 2
	note __, 4
	intensity $54
	note D#, 2
	note __, 4
	intensity $34
	note D_, 2
	note __, 4
	intensity $14
	note D_, 2
	note __, 4
	note __, 8
	
	intensity $84
	note D#, 2
	note __, 4
	intensity $54
	note D#, 2
	note __, 4
	intensity $34
	note D#, 2
	note __, 4
	intensity $14
	note D#, 2
	note __, 4
	note __, 8
	
	octave 3
	intensity $84
	note B_, 2
	note __, 4
	intensity $54
	note B_, 2
	note __, 4
	octave 4
	intensity $34
	note D_, 2
	note __, 4
	intensity $14
	note D_, 2
	note __, 4
	note __, 8
	
	intensity $87
	octave 3
	note D#, 16
	note G_, 8
	note D#, 8
	note F_, 16
	note D_, 8
	note F_, 8
	note D#, 16
	note G_, 8
	note D#, 8
	note D_, 16
	note F_, 8
	note G#, 8
	note D#, 12
	note C_, 4
	note G_, 8
	note D#, 8
	note F_, 16
	note D_, 16
	octave 2
	note G#, 16
	octave 3
	note C_, 16
	note D_, 16
	note F_, 16
	octave 4
	
	note D#, 2
	note __, 4
	loopchannel 0, Music_Spooky_loop1
; f6eae

Music_Spooky_Ch2: ; f6e2f
	dutycycle $3
	tone $0001
	notetype $c, $a4
	octave 4
	intensity $a4
	note C_, 2
	note __, 4
Music_Spooky_loop2:
	intensity $74
	note C_, 2
	note __, 4
	intensity $44
	note C_, 2
	note __, 4
	intensity $14
	note C_, 2
	note __, 4
	note __, 8
	
	intensity $a4
	note C_, 2
	note __, 4
	intensity $74
	note C_, 2
	note __, 4
	octave 3
	intensity $44
	note B_, 2
	note __, 4
	intensity $14
	note B_, 2
	note __, 4
	note __, 8
	
	octave 4
	intensity $a4
	note C_, 2
	note __, 4
	intensity $74
	note C_, 2
	note __, 4
	intensity $44
	note C_, 2
	note __, 4
	intensity $14
	note C_, 2
	note __, 4
	note __, 8
	
	octave 3
	intensity $a4
	note G_, 2
	note __, 4
	intensity $74
	note G_, 2
	note __, 4
	intensity $44
	note B_, 2
	note __, 4
	intensity $14
	note B_, 2
	note __, 4
	note __, 8
	
	intensity $a7
	note G_, 12
	octave 4
	note C_, 2
	note D_, 2
	note D#, 4
	note D_, 4
	note C_, 4
	octave 3
	note G_, 4
	note B_, 16
	note G#, 16
	note G_, 12
	octave 4
	note C_, 2
	note D_, 2
	note D#, 4
	note D_, 4
	note C_, 4
	octave 3
	note G_, 4
	note B_, 16
	note B_, 16
	
	note G_, 12
	octave 4
	note C_, 2
	note D_, 2
	note D#, 4
	note D_, 4
	note C_, 4
	octave 3
	note G_, 4
	note B_, 16
	note G_, 16
	note D#, 12
	octave 4
	note C_, 2
	note D_, 2
	note D#, 4
	note D_, 4
	note C_, 4
	octave 3
	note G_, 4
	note B_, 16
	octave 4
	note D_, 16
	
	note C_, 2
	note __, 4
	loopchannel 0, Music_Spooky_loop2

Music_Spooky_Ch3: ; f6f4d
	stereopanning $f
	notetype $c, $14
	octave 3
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	notetype $c, $24
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	notetype $c, $34
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 15
Music_Spooky_loop3:
		
	notetype $c, $14
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	notetype $c, $24
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	notetype $c, $34
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 15
	
	notetype $c, $14
	octave 3
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	notetype $c, $24
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	notetype $c, $34
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 15
	
	notetype $c, $14
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	notetype $c, $24
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	notetype $c, $34
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 15
	
	
	notetype $c, $14
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	
	note C_, 2
	note D#, 2
	note G_, 2
	note D#, 2
	
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note G_, 2
	note D_, 2
	
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	
	note C_, 2
	note D#, 2
	note G_, 2
	note D#, 2
	
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	
	note G_, 2
	note F_, 2
	note D#, 2
	note D_, 2
	
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 1
	note __, 1
	
	note C_, 2
	note D#, 2
	note G_, 2
	note D#, 2
	
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	
	note G_, 2
	note F_, 2
	note D#, 2
	note G_, 2
	
	octave 2
	note G#, 1
	note __, 1
	octave 3
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 2
	note G#, 1
	note __, 1
	octave 3
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 2
	note G#, 1
	note __, 1
	octave 3
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 2
	note G#, 1
	note __, 1
	octave 3
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	
	octave 2
	note G#, 2
	octave 3
	note C_, 2
	note D#, 2
	note C_, 2
	
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1	
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	octave 2
	note B_, 4
	octave 3
	note D_, 4
	note G_, 2
	note F_, 2
	note D#, 2
	note D_, 2
	note C_, 6
	note __, 12
	note __, 14
	loopchannel 0, Music_Spooky_loop3
; f6fe8
