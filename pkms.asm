; ===========================================================================
; PKMS equates and macros
;
; ===========================================================================

; equs
MUSIC			EQU 0
SFXpkms			EQU 4
CH1			EQU 0
CH2			EQU 1
CH3			EQU 2
CH4			EQU 3

; notes
ntC			EQU $10
ntC#			EQU $20
ntD			EQU $30
ntD#			EQU $40
ntE			EQU $50
ntF			EQU $60
ntF#			EQU $70
ntG			EQU $80
ntG#			EQU $90
ntA			EQU $A0
ntA#			EQU $B0
ntB			EQU $C0
ntRst			EQU $00

; special drum EQUs
dNote			EQU $B0
dRst			EQU $C0
dNormSpd		EQU $DC
d4d3Spd		EQU $D8
d5d3Spd		EQU $D4
d2Spd			EQU $D0

; octaves
oct0			EQU $D7
oct1			EQU $D6
oct2			EQU $D5
oct3			EQU $D4
oct4			EQU $D3
oct5			EQU $D2
oct6			EQU $D1
oct7			EQU $D0

			
; header stuff
pkmsHeader:	MACRO
			db	((\1 - 1) * $40) | (\2 + \3)
		ENDM
				
pkmsChannel:	MACRO
				dw	\1
					
				IF \2 != 0
					db	\2
				ENDC
			ENDM

; coordination flags

; set velocity/note fade (\1 is velocity, \2 is note length, both 0-15)
; format:	pkmsSetVel		vel, length
pkmsSetVel:		MACRO
				db	$DC
				db	((\1 << 4) | \2)
			ENDM
; set velocity/note rate (\1 is velocity, \2 is note length, both 0-15)
; format:	pkmsSetNtr		speed, vel, length
pkmsSetNtr:		MACRO
				db	$D8
				db	\1
				db	((\2 << 4) | \3)
			ENDM
; set drum speed(\1 is velocity)
; format:	pkmsSetDSpeed		speed
pkmsSetDSpeed:		MACRO
				db	$D8
				db	\1
			ENDM
; stop sound
; format:	pkmsEndSound
pkmsEndSound:	MACRO
				db 	$FF
			ENDM
			
; set modulation (\1 is delay, \2 is depth, \3 is rate)
; format:	pkmsSetMod		delay, depth, rate
pkmsSetMod:		MACRO
				db	$E1
				db	\1
				db	((\2 << 4) | \3)
			ENDM

; set duty cycle (\1: 0 = 12.5%, 1 = 25%, 2 = 50%, 3 = 75%)
; format:	pkmsSetDuty		duty
pkmsSetDuty:	MACRO
				db	$DB
				db	\1
			ENDM
			
; set Drumset 
; format:	pkmsSetDrums		drums
pkmsSetDrums:	MACRO
				db	$E3
				db	\1
			ENDM
			
pkmsSetArp:		MACRO
				db	$DE
				db	\1
;((\1 << 6) | (\2 << 4) | (\3 << 2) | \4)
			ENDM			
; set music tempo (\1 is divider, \2 is modifier)
; format:	pkmsSetTempo	divider, modifier
pkmsSetTempo:	MACRO
				db	$DA
				db	\1
				db	\2
			ENDM
			
; set volume (\1 is volume)
; format: pkmsSetVolume		volume
; (may actually be panning?)
pkmsSetVolume:	MACRO
				db	$E5
				db	\1
			ENDM

; call offset \1
; format:	pkmsCall	offset
pkmsCall:		MACRO
				db	$FE
				dw	((\1 % $4000) + ((\1 >= $4000) * $4000))
			ENDM
						
; jump to offset \1
; format:	pkmsJump	offset
pkmsJump:		MACRO
				db	$FD
				db	$00
				dw	((\1 % $4000) + ((\1 >= $4000) * $4000))
			ENDM
			
			