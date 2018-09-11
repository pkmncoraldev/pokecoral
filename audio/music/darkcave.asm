Music_Lava: ; ea2be
	musicheader 4, 1, Music_Lava_Ch1
	musicheader 1, 2, Music_Lava_Ch2
	musicheader 1, 3, Music_Lava_Ch3
	musicheader 1, 4, Music_Lava_Ch4
; ea2ca

Music_Lava_Ch1: ; ea2ca
	tempo 128
	volume $77
	dutycycle $3
	tone $0001
	vibrato $11, $15
	stereopanning $f0
	notetype $c, $a7
Music_Lava_loop1: ; ea2dc
	note __, 16
	loopchannel 0, Music_Lava_loop1
	

Music_DarkCave_Ch2: ; ea36a
	dutycycle $1
	vibrato $12, $36
	stereopanning $f
	notetype $c, $a7
Music_Music_Lava_loop2: ; ea374
	note __, 16
	loopchannel 0, Music_Music_Lava_loop2


Music_DarkCave_Ch3: ; ea46e
	notetype $c, $27
	callchannel Music_Music_Lava_Ch3
	callchannel Music_Music_Lava_Ch3
	callchannel Music_Music_Lava_Ch3
	callchannel Music_Music_Lava_Ch3
Music_Music_Lava_loop3: ; ea478
	callchannel Music_Music_Lava_Ch3
	loopchannel 0, Music_Music_Lava_loop3
	
callchannel Music_Music_Lava_Ch3:
	note A#, 4
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	note A#, 4
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note __, 2
	note A#, 1
	note __, 3
	note A#, 6
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	endchannel

Music_DarkCave_Ch4: ; ea4ea
	togglenoise $3
	notetype $c
Music_Music_Lava_loop4: ; ea4ee
	stereopanning $ff
	note __, 16
	loopchannel 0, Music_Music_Lava_loop4
; ea50d
