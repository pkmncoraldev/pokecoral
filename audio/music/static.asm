Music_Static: ; ee119
	musicheader 4, 1, Music_Static_Ch1
	musicheader 1, 2, Music_Static_Ch2
	musicheader 1, 3, Music_Static_Ch3
	musicheader 1, 4, Music_Static_Ch4
; ee125

Music_Static_Ch1: ; ee125
	tempo 140
	volume $77
	dutycycle $3
	tone $0001
	stereopanning $f
	vibrato $8, $15
	notetype $c, $b4
	note __, 2
	endchannel
; ee1de

Music_Static_Ch2: ; ee1de
	note __, 2
	endchannel
; ee26d

Music_Static_Ch3: ; ee26d
	note __, 2
	endchannel
; ee345

Music_Static_Ch4: ; ee345
	togglenoise $3
	notetype $1
Music_Static_Ch4_Loop:
	note F_, 1
	loopchannel 0, Music_Static_Ch4_Loop
; ee35e
