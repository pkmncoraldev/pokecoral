Music_Lava: ; ea2be
	musicheader 4, 1, Music_Lava_Ch1
	musicheader 1, 2, Music_Lava_Ch2
	musicheader 1, 3, Music_Lava_Ch3
	musicheader 1, 4, Music_Lava_Ch4
; ea2ca

Music_Lava_Ch1: ; ea2ca
	tempo 90
	volume $77
	dutycycle $1
	tone $0001
	vibrato $11, $15
	stereopanning $f0
	notetype $c, $67
	octave 2
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
Music_Lava_loop1: ; ea2dc
	
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	callchannel Music_Lava_Ch1_bass
	loopchannel 0, Music_Lava_loop1
	
Music_Lava_Ch1_bass:
	note F_, 4
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	note F_, 4
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note __, 2
	note F_, 1
	note __, 3
	note F_, 6
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	endchannel

Music_Lava_Ch2: ; ea36a
	notetype $c, $a7
	octave 1
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
Music_Lava_loop2: ; ea478
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	loopchannel 0, Music_Lava_loop2




	
Music_Lava_Ch3: ; ea46e
	dutycycle $3
	notetype $c, $25
	octave 1
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note A#, 4
	note __, 4
	note A#, 4
	note __, 4
	note __, 16
	note A#, 4
	note __, 4
	note A#, 4
	note __, 4
	note __, 12
	note G#, 4
Music_Lava_loop3: ; ea374
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass2
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass2
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass2
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass2
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	callchannel Music_Lava_Ch3_bass
	loopchannel 0, Music_Lava_loop3
	
Music_Lava_Ch3_bass:
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
	
Music_Lava_Ch3_bass2:
	octave 2
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 1
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 2
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 1
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 2
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 1
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 2
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 1
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	
	octave 2
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 2
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 2
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 2
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	endchannel

Music_Lava_Ch4: ; ea4ea
	togglenoise $3
	notetype $c
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 2
	note D_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
Music_Lava_loop4: ; ea4ee
	stereopanning $ff
	callchannel Music_Lava_Ch4_drums
	callchannel Music_Lava_Ch4_drums
	callchannel Music_Lava_Ch4_drums
	callchannel Music_Lava_Ch4_drums
	callchannel Music_Lava_Ch4_drums
	callchannel Music_Lava_Ch4_drums
	callchannel Music_Lava_Ch4_drums
	callchannel Music_Lava_Ch4_drums
	callchannel Music_Lava_Ch4_drums
	callchannel Music_Lava_Ch4_drums
	
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums
	
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums
	
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums
	
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums2
	callchannel Music_Lava_Ch4_drums
	
	note __, 16
	note __, 16
	note __, 16
	note __, 2
	note D_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	loopchannel 0, Music_Lava_loop4
; ea50d

Music_Lava_Ch4_drums:
	note D#, 1
	note __, 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D_, 1
	note __, 3
	note D#, 1
	note __, 1
	note D_, 1
	note __, 3
	note D_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D_, 1
	note __, 3
	note D#, 1
	note __, 3
	
	note D#, 1
	note __, 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D_, 1
	note __, 3
	note D#, 1
	note __, 1
	note D_, 1
	note __, 3
	note D_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	endchannel

Music_Lava_Ch4_drums2:
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	endchannel