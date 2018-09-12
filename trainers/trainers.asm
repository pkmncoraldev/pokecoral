Trainers:

; All trainers follow a basic structure:
	; Name
		; String in format "TEXT@"
	; Type
		; 0: Level, species
		; 1: Level, species, moves
		; 2: Level, species, item
		; 3: Level, species, item, moves
	; Party
		; Up to six monsters following the data type
	; $ff


StanleyGroup:
; ================================
; ================

	; STANLEY (1)
	db "STANLEY@"
	db 3 ; moves + item

	; party
	
	db 11, SMEARGLE, NO_ITEM
		db DOUBLE_EDGE
		db CONFUSION
		db THUNDER_WAVE
		db FAKE_OUT

	db  15, DITTO, NO_ITEM
		db TRANSFORM
		db 0
		db 0
		db 0
		
	db $ff ; end

; ================
; ================================


RodneyGroup:
; ================================
; ================

	; RODNEY (1)
	db "RODNEY@"
	db 3 ; moves + item

	; party
		
	db 18, WARTORTLE, NO_ITEM
		db RAIN_DANCE
		db WATER_GUN
		db BITE
		db 0
		
	db 20, POLIWHIRL, NO_ITEM
		db RAIN_DANCE
		db WATER_GUN
		db HYPNOSIS
		db MUD_SLAP
		
	db 22, AZUMARILL, MYSTIC_WATER
		db RAIN_DANCE
		db AQUA_JET
		db FAIRY_WIND
		db ICE_PUNCH
		
	db $ff ; end

; ================
; ================================


LeilaniGroup:
; ================================
; ================

	; LEILANI (1)
	db "LEILANI@"
	db 3 ; moves + item

	; party
	
	db 28, IVYSAUR, NO_ITEM
		db SUNNY_DAY
		db VINE_WHIP
		db BODY_SLAM
		db SYNTHESIS
		
	db 29, WHIMSICOTT, NO_ITEM
		db LEECH_SEED
		db LIGHT_SCREEN
		db REFLECT
		db STUN_SPORE
		
	db 31, BELLOSSOM, MIRACLE_SEED
		db SUNNY_DAY
		db SOLARBEAM
		db MEGA_DRAIN
		db SLUDGE_BOMB

	db $ff ; end

; ================
; ================================


MortyGroup:
; ================================
; ================

	; MORTY (1)
	db "MORTY@"
	db 1 ; moves

	; party

	db 21, GASTLY
		db LICK
		db SPITE
		db MEAN_LOOK
		db CURSE

	db 21, HAUNTER
		db HYPNOSIS
		db MIMIC
		db CURSE
		db NIGHT_SHADE

	db 25, GENGAR
		db HYPNOSIS
		db SHADOW_BALL
		db MEAN_LOOK
		db DREAM_EATER

	db 23, HAUNTER
		db SPITE
		db MEAN_LOOK
		db MIMIC
		db NIGHT_SHADE

	db $ff ; end

; ================
; ================================


PryceGroup:
; ================================
; ================

	; PRYCE (1)
	db "PRYCE@"
	db 1 ; moves

	; party

	db 27, SHROOMISH
		db HEADBUTT
		db ICY_WIND
		db AURORA_BEAM
		db REST

	db 29, BRELOOM
		db HEADBUTT
		db ICY_WIND
		db AURORA_BEAM
		db REST

	db 31, PILOSWINE
		db ICY_WIND
		db TACKLE
		db MIST
		db BLIZZARD

	db $ff ; end

; ================
; ================================


JasmineGroup:
; ================================
; ================

	; JASMINE (1)
	db "JASMINE@"
	db 1 ; moves

	; party

	db 30, MAGNEMITE
		db THUNDERBOLT
		db SUPERSONIC
		db SONICBOOM
		db THUNDER_WAVE

	db 30, MAGNEMITE
		db THUNDERBOLT
		db SUPERSONIC
		db SONICBOOM
		db THUNDER_WAVE

	db 35, STEELIX
		db SCREECH
		db SUNNY_DAY
		db ROCK_THROW
		db IRON_TAIL

	db $ff ; end

; ================
; ================================


ChuckGroup:
; ================================
; ================

	; CHUCK (1)
	db "CHUCK@"
	db 1 ; moves

	; party

	db 27, PRIMEAPE
		db LEER
		db RAGE
		db KARATE_CHOP
		db TACKLE

	db 30, POLIWRATH
		db HYPNOSIS
		db MIND_READER
		db SURF
		db DYNAMICPUNCH

	db $ff ; end

; ================
; ================================


ClairGroup:
; ================================
; ================

	; CLAIR (1)
	db "CLAIR@"
	db 1 ; moves

	; party

	db 37, DRAGONAIR
		db THUNDER_WAVE
		db SURF
		db SLAM
		db DRAGONBREATH

	db 37, DRAGONAIR
		db THUNDER_WAVE
		db THUNDERBOLT
		db SLAM
		db DRAGONBREATH

	db 37, DRAGONAIR
		db THUNDER_WAVE
		db ICE_BEAM
		db SLAM
		db DRAGONBREATH

	db 40, KINGDRA
		db SMOKESCREEN
		db SURF
		db HYPER_BEAM
		db DRAGONBREATH

	db $ff ; end

; ================
; ================================


Rival1Group:
; ================================
; ================

	; RIVAL1 (1_1)
	db "?@"
	db 0 ; normal

	; party
	db 5, TOTODILE

	db $ff ; end

; ================

	; RIVAL1 (1_2)
	db "?@"
	db 0 ; normal

	; party
	db 5, CYNDAQUIL

	db $ff ; end

; ================

	; RIVAL1 (1_3)
	db "?@"
	db 0 ; normal

	; party
	db 5, CHIKORITA

	db $ff ; end

; ================

	; RIVAL1 (1_4)
	db "?@"
	db 0 ; normal

	; party
	db 5, CHARMANDER

	db $ff ; end

; ================

	; RIVAL1 (1_5)
	db "?@"
	db 0 ; normal

	; party
	db 5, SQUIRTLE

	db $ff ; end

; ================

	; RIVAL1 (1_6)
	db "?@"
	db 0 ; normal

	; party
	db 5, BULBASAUR

	db $ff ; end

; ================

	; RIVAL1 (2_1)
	db "?@"
	db 0 ; moves

	; party

	db  7, SNUBBULL

	db  8, CYNDAQUIL

	db $ff ; end

; ================

	; RIVAL1 (2_2)
	db "?@"
	db 0 ; moves

	; party

	db  7, SNUBBULL

	db  8, TOTODILE

	db $ff ; end

; ================

	; RIVAL1 (2_3)
	db "?@"
	db 0 ; moves

	; party

	db  7, SNUBBULL

	db  8, CHIKORITA

	db $ff ; end

; ================

	; RIVAL1 (2_4)
	db "?@"
	db 0 ; moves

	; party

	db  7, SNUBBULL

	db  8, CHARMANDER

	db $ff ; end

; ================

	; RIVAL1 (2_5)
	db "?@"
	db 0 ; moves

	; party

	db  7, SNUBBULL

	db  8, SQUIRTLE

	db $ff ; end

; ================

	; RIVAL1 (2_6)
	db "?@"
	db 0 ; moves

	; party

	db  7, SNUBBULL

	db  8, BULBASAUR

	db $ff ; end

; ================	
; ================================


PokemonProfGroup:
; ================================
; ================
; ================================


WillGroup:
; ================================
; ================

	; WILL (1)
	db "WILL@"
	db 1 ; moves

	; party

	db 40, XATU
		db QUICK_ATTACK
		db FUTURE_SIGHT
		db CONFUSE_RAY
		db PSYCHIC_M

	db 41, VOLCARONA
		db DOUBLESLAP
		db TACKLE
		db ICE_PUNCH
		db PSYCHIC_M

	db 41, EXEGGUTOR
		db REFLECT
		db LEECH_SEED
		db EGG_BOMB
		db PSYCHIC_M

	db 41, SLOWBRO
		db CURSE
		db AMNESIA
		db BODY_SLAM
		db PSYCHIC_M

	db 42, XATU
		db QUICK_ATTACK
		db FUTURE_SIGHT
		db CONFUSE_RAY
		db PSYCHIC_M

	db $ff ; end

; ================
; ================================


PKMNTrainerGroup:
; ================================
; ================

	; CAL (1)
	db "CAL@"
	db 0 ; normal

	; party
	db 10, CHIKORITA
	db 10, CYNDAQUIL
	db 10, TOTODILE

	db $ff ; end

; ================

	; CAL (2)
	db "CAL@"
	db 0 ; normal

	; party
	db 30, BAYLEEF
	db 30, QUILAVA
	db 30, CROCONAW

	db $ff ; end

; ================

	; CAL (3)
	db "CAL@"
	db 0 ; normal

	; party
	db 50, MEGANIUM
	db 50, TYPHLOSION
	db 50, FERALIGATR

	db $ff ; end

; ================
; ================================


BrunoGroup:
; ================================
; ================

	; BRUNO (1)
	db "BRUNO@"
	db 1 ; moves

	; party

	db 42, ALTARIA
		db PURSUIT
		db QUICK_ATTACK
		db DIG
		db DETECT

	db 42, BUNEARY
		db SWAGGER
		db DOUBLE_KICK
		db HI_JUMP_KICK
		db FORESIGHT

	db 42, LOPUNNY
		db THUNDERPUNCH
		db ICE_PUNCH
		db FIRE_PUNCH
		db MACH_PUNCH

	db 43, ONIX
		db BIND
		db EARTHQUAKE
		db SANDSTORM
		db ROCK_SLIDE

	db 46, MACHAMP
		db ROCK_SLIDE
		db FORESIGHT
		db VITAL_THROW
		db CROSS_CHOP

	db $ff ; end

; ================
; ================================


KarenGroup:
; ================================
; ================

	; KAREN (1)
	db "KAREN@"
	db 1 ; moves

	; party

	db 42, UMBREON
		db SAND_ATTACK
		db CONFUSE_RAY
		db FAINT_ATTACK
		db MEAN_LOOK

	db 42, VILEPLUME
		db STUN_SPORE
		db ACID
		db MOONLIGHT
		db PETAL_DANCE

	db 45, GENGAR
		db LICK
		db SPITE
		db CURSE
		db DESTINY_BOND

	db 44, MURKROW
		db QUICK_ATTACK
		db WHIRLWIND
		db PURSUIT
		db FAINT_ATTACK

	db 47, HOUNDOOM
		db ROAR
		db PURSUIT
		db FLAMETHROWER
		db CRUNCH

	db $ff ; end

; ================
; ================================


KogaGroup:
; ================================
; ================

	; KOGA (1)
	db "KOGA@"
	db 1 ; moves

	; party

	db 40, GALVANTULA
		db DOUBLE_TEAM
		db SPIDER_WEB
		db BATON_PASS
		db GIGA_DRAIN

	db 41, VENOMOTH
		db SUPERSONIC
		db GUST
		db PSYCHIC_M
		db TOXIC

	db 43, FORRETRESS
		db PROTECT
		db SWIFT
		db EXPLOSION
		db SPIKES

	db 42, MUK
		db MINIMIZE
		db ACID_ARMOR
		db SLUDGE_BOMB
		db TOXIC

	db 44, CROBAT
		db DOUBLE_TEAM
		db QUICK_ATTACK
		db WING_ATTACK
		db TOXIC

	db $ff ; end

; ================
; ================================


ChampionGroup:
; ================================
; ================

	; CHAMPION (1)
	db "LANCE@"
	db 1 ; moves

	; party

	db 44, GYARADOS
		db FLAIL
		db RAIN_DANCE
		db SURF
		db HYPER_BEAM

	db 47, DRAGONITE
		db THUNDER_WAVE
		db TWISTER
		db THUNDER
		db HYPER_BEAM

	db 47, DRAGONITE
		db THUNDER_WAVE
		db TWISTER
		db BLIZZARD
		db HYPER_BEAM

	db 46, AERODACTYL
		db WING_ATTACK
		db ANCIENTPOWER
		db ROCK_SLIDE
		db HYPER_BEAM

	db 46, CHARIZARD
		db FLAMETHROWER
		db WING_ATTACK
		db SLASH
		db HYPER_BEAM

	db 50, DRAGONITE
		db FIRE_BLAST
		db SAFEGUARD
		db OUTRAGE
		db HYPER_BEAM

	db $ff ; end

; ================
; ================================


BrockGroup:
; ================================
; ================

	; BROCK (1)
	db "BROCK@"
	db 1 ; moves

	; party

	db 41, GRAVELER
		db DEFENSE_CURL
		db ROCK_SLIDE
		db ROLLOUT
		db EARTHQUAKE

	db 41, RHYHORN
		db TACKLE
		db SCARY_FACE
		db EARTHQUAKE
		db 0

	db 42, WHIMSICOTT
		db BITE
		db SURF
		db PROTECT
		db TACKLE

	db 44, ONIX
		db BIND
		db ROCK_SLIDE
		db TACKLE
		db SANDSTORM

	db 42, KABUTOPS
		db SLASH
		db SURF
		db ENDURE
		db GIGA_DRAIN

	db $ff ; end

; ================
; ================================


MistyGroup:
; ================================
; ================

	; MISTY (1)
	db "MISTY@"
	db 1 ; moves

	; party

	db 42, GOLDUCK
		db SURF
		db DISABLE
		db PSYCH_UP
		db PSYCHIC_M

	db 42, QUAGSIRE
		db SURF
		db AMNESIA
		db EARTHQUAKE
		db RAIN_DANCE

	db 44, LAPRAS
		db SURF
		db PERISH_SONG
		db BLIZZARD
		db RAIN_DANCE

	db 47, STARMIE
		db SURF
		db CONFUSE_RAY
		db RECOVER
		db ICE_BEAM

	db $ff ; end

; ================
; ================================


LtSurgeGroup:
; ================================
; ================

	; LT_SURGE (1)
	db "LT.SURGE@"
	db 1 ; moves

	; party

	db 44, RAICHU
		db THUNDER_WAVE
		db QUICK_ATTACK
		db THUNDERBOLT
		db THUNDER

	db 40, ELECTRODE
		db SCREECH
		db DOUBLE_TEAM
		db SWIFT
		db EXPLOSION

	db 40, MAGNETON
		db LOCK_ON
		db DOUBLE_TEAM
		db SWIFT
		db ZAP_CANNON

	db 40, ELECTRODE
		db SCREECH
		db DOUBLE_TEAM
		db SWIFT
		db EXPLOSION

	db 46, ELECTABUZZ
		db QUICK_ATTACK
		db THUNDERPUNCH
		db LIGHT_SCREEN
		db THUNDER

	db $ff ; end

; ================
; ================================


ScientistGroup:
; ================================
; ================

	; SCIENTIST (1)
	db "ROSS@"
	db 0 ; normal

	; party
	db 22, KOFFING
	db 22, KOFFING

	db $ff ; end

; ================

	; SCIENTIST (2)
	db "MITCH@"
	db 0 ; normal

	; party
	db 24, DITTO

	db $ff ; end

; ================

	; SCIENTIST (3)
	db "JED@"
	db 0 ; normal

	; party
	db 20, MAGNEMITE
	db 20, MAGNEMITE
	db 20, MAGNEMITE

	db $ff ; end

; ================

	; SCIENTIST (4)
	db "MARC@"
	db 0 ; normal

	; party
	db 27, MAGNEMITE
	db 27, MAGNEMITE
	db 27, MAGNEMITE

	db $ff ; end

; ================

	; SCIENTIST (5)
	db "RICH@"
	db 1 ; moves

	; party

	db 30, PORYGON
		db CONVERSION
		db CONVERSION2
		db RECOVER
		db TRI_ATTACK

	db $ff ; end

; ================
; ================================


ErikaGroup:
; ================================
; ================

	; ERIKA (1)
	db "ERIKA@"
	db 1 ; moves

	; party

	db 42, TANGELA
		db VINE_WHIP
		db BIND
		db GIGA_DRAIN
		db SLEEP_POWDER

	db 41, AGGRON
		db MEGA_DRAIN
		db LEECH_SEED
		db TACKLE
		db GIGA_DRAIN

	db 46, VICTREEBEL
		db SUNNY_DAY
		db SYNTHESIS
		db ACID
		db RAZOR_LEAF

	db 46, BELLOSSOM
		db SUNNY_DAY
		db SYNTHESIS
		db PETAL_DANCE
		db SOLARBEAM

	db $ff ; end

; ================
; ================================


YoungsterGroup:
; ================================
; ================

	; YOUNGSTER (1)
	db "JOEY@"
	db 0 ; normal

	; party
	db 5, RATTATA

	db $ff ; end

; ================

	; YOUNGSTER (2)
	db "BILLY@"
	db 0 ; normal

	; party
	db 4, PIDGEY
	db 4, COTTONEE

	db $ff ; end

; ================

	; YOUNGSTER (3)
	db "CHRIS@"
	db 0 ; normal

	; party
	db 10, EKANS
	db 9, PIDGEY

	db $ff ; end
	
; ================

; YOUNGSTER (4)
	db "TOMMY@"
	db 0 ; normal

	; party
	db 25, EKANS
	db 24, GASTLY
	db 26, GASTLY

	db $ff ; end
	
; ================
; ================================


SchoolboyGroup:
; ================================
; ================

	; SCHOOLBOY (1)
	db "TIMMY@"
	db 0 ; normal

	; party
	db 9, PIDGEY
	db 8, RATTATA

	db $ff ; end
	
; ================

	; SCHOOLBOY (1)
	db "DAMIAN@"
	db 0 ; normal

	; party
	db 9, PIKIPEK
	db 8, RATTATA

	db $ff ; end

; ================
; ================================


BirdKeeperGroup:
; ================================
; ================

	; BIRD_KEEPER (1)
	db "BRYANT@"
	db 0 ; normal

	; party
	db 28, PIDGEOTTO
	db 28, TRUMBEAK

	db $ff ; end

; ================

	; BIRD_KEEPER (2)
	db "TODD@"
	db 0 ; normal

	; party
	db 29, DODUO
	db 29, DODUO
	db 27, MURKROW

	db $ff ; end

; ================

	; BIRD_KEEPER (3)
	db "RANDY@"
	db 0 ; normal

	; party
	db 31, DODRIO

	db $ff ; end
; ================================


LassGroup:
; ================================
; ================

	; LASS (1)
	db "LIBBY@"
	db 0 ; moves

	; party

	db 6, SNUBBULL

	db $ff ; end

; ================

	; LASS (2)
	db "CHARLOTTE@"
	db 0 ; normal

	; party
	db 10, PIKACHU
	db 11, MAREEP

	db $ff ; end
	
; ================

; LASS (3)
	db "VERONICA@"
	db 0 ; normal

	; party
	db 7, CLEFAIRY
	db 7, CLEFAIRY

	db $ff ; end
	
; ================

; LASS (4)
	db "JUNE@"
	db 0 ; normal

	; party
	db 13, ODDISH
	db 14, JIGGLYPUFF

	db $ff ; end
	
; ================

; LASS (5)
	db "MELANIE@"
	db 0 ; normal

	; party
	db 18, VENONAT
	db 19, VENONAT
	db 17, EEVEE

	db $ff ; end
	
; ================

; LASS (6)
	db "SARAH@"
	db 0 ; normal

	; party
	db 17, SNUBBULL
	db 18, MEOWTH
	db 19, PSYDUCK
	
	db $ff ; end
	
; ================

; LASS (7)
	db "MARSHA@"
	db 0 ; normal

	; party
	db 26, GOLDEEN
	db 25, MEOWTH
	db 26, GOLDEEN
	
	db $ff ; end
	
; ================
; ================================


JanineGroup:
; ================================
; ================

	; JANINE (1)
	db "JANINE@"
	db 1 ; moves

	; party

	db 36, CROBAT
		db SCREECH
		db SUPERSONIC
		db CONFUSE_RAY
		db WING_ATTACK

	db 36, WEEZING
		db SMOG
		db SLUDGE_BOMB
		db TOXIC
		db EXPLOSION

	db 36, WEEZING
		db SMOG
		db SLUDGE_BOMB
		db TOXIC
		db EXPLOSION

	db 33, GALVANTULA
		db SCARY_FACE
		db GIGA_DRAIN
		db STRING_SHOT
		db NIGHT_SHADE

	db 39, VENOMOTH
		db FORESIGHT
		db DOUBLE_TEAM
		db GUST
		db PSYCHIC_M

	db $ff ; end

; ================
; ================================


CooltrainerMGroup:
; ================================
; ================

	; COOLTRAINERM (1)
	db "CODY@"
	db 0 ; normal

	; party
	db 23, PONYTA
	
	db $ff ; end

; ================
; ================================


CooltrainerFGroup:
; ================================
; ================

	; COOLTRAINERF (1)
	db "CASEY@"
	db 0 ; normal

	; party
	db 23, NUMEL
	
	db $ff ; end

; ================

; COOLTRAINERF (2)
	db "SALLY@"
	db 0 ; normal

	; party
	db 15, GROWLITHE
	db 15, MAREEP
	db 14, JIGGLYPUFF
	
	db $ff ; end
	
; ================
; ================================


BeautyGroup:
; ================================
; ================

	; BEAUTY (1)
	db "VICTORIA@"
	db 0 ; normal

	; party
	db 9, SENTRET
	db 13, SENTRET
	db 17, SENTRET

	db $ff ; end

; ================

	; BEAUTY (2)
	db "SAMANTHA@"
	db 1 ; moves

	; party

	db 16, MEOWTH
		db SCRATCH
		db GROWL
		db BITE
		db PAY_DAY

	db 16, MEOWTH
		db SCRATCH
		db GROWL
		db BITE
		db SLASH

	db $ff ; end

; ================

	; BEAUTY (3)
	db "JULIE@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (4)
	db "JACLYN@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (5)
	db "BRENDA@"
	db 0 ; normal

	; party
	db 16, FURRET

	db $ff ; end

; ================

	; BEAUTY (6)
	db "CASSIE@"
	db 0 ; normal

	; party
	db 28, VILEPLUME
	db 34, TOUCANNON

	db $ff ; end

; ================

	; BEAUTY (7)
	db "CAROLINE@"
	db 0 ; normal

	; party
	db 30, MARILL
	db 32, SHROOMISH
	db 30, MARILL

	db $ff ; end

; ================

	; BEAUTY (8)
	db "CARLENE@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (9)
	db "JESSICA@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (10)
	db "RACHAEL@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (11)
	db "ANGELICA@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (12)
	db "KENDRA@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (13)
	db "VERONICA@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (14)
	db "JULIA@"
	db 0 ; normal

	; party
	db 32, DWEBBLE
	db 32, EXEGGCUTE
	db 35, CRUSTLE

	db $ff ; end

; ================

	; BEAUTY (15)
	db "THERESA@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (16)
	db "VALERIE@"
	db 1 ; moves

	; party

	db 17, ARON
		db SYNTHESIS
		db TAIL_WHIP
		db TACKLE
		db POISONPOWDER

	db 17, LAIRON
		db SYNTHESIS
		db TAIL_WHIP
		db TACKLE
		db STUN_SPORE

	db $ff ; end

; ================

	; BEAUTY (17)
	db "OLIVIA@"
	db 0 ; normal

	; party
	db 19, CORSOLA

	db $ff ; end

; ================
; ================================


PokemaniacGroup:
; ================================
; ================

	; POKEMANIAC (1)
	db "LARRY@"
	db 0 ; normal

	; party
	db 10, SLOWPOKE

	db $ff ; end

; ================

	; POKEMANIAC (2)
	db "ANDREW@"
	db 0 ; normal

	; party
	db 24, MAROWAK
	db 24, MAROWAK

	db $ff ; end

; ================

	; POKEMANIAC (3)
	db "CALVIN@"
	db 0 ; normal

	; party
	db 26, KANGASKHAN

	db $ff ; end

; ================

	; POKEMANIAC (4)
	db "SHANE@"
	db 0 ; normal

	; party
	db 16, NIDORINA
	db 16, NIDORINO

	db $ff ; end

; ================

	; POKEMANIAC (5)
	db "BEN@"
	db 0 ; normal

	; party
	db 19, SLOWBRO

	db $ff ; end

; ================

	; POKEMANIAC (6)
	db "BRENT@"
	db 0 ; normal

	; party
	db 19, LICKITUNG

	db $ff ; end

; ================

	; POKEMANIAC (7)
	db "RON@"
	db 0 ; normal

	; party
	db 19, NIDOKING

	db $ff ; end

; ================

	; POKEMANIAC (8)
	db "ETHAN@"
	db 0 ; normal

	; party
	db 31, RHYHORN
	db 31, RHYDON

	db $ff ; end

; ================

	; POKEMANIAC (9)
	db "BRENT@"
	db 0 ; normal

	; party
	db 25, KANGASKHAN

	db $ff ; end

; ================

	; POKEMANIAC (10)
	db "BRENT@"
	db 1 ; moves

	; party

	db 36, PORYGON
		db RECOVER
		db PSYCHIC_M
		db CONVERSION2
		db TRI_ATTACK

	db $ff ; end

; ================

	; POKEMANIAC (11)
	db "ISSAC@"
	db 1 ; moves

	; party

	db 12, LICKITUNG
		db LICK
		db SUPERSONIC
		db CUT
		db 0

	db $ff ; end

; ================

	; POKEMANIAC (12)
	db "DONALD@"
	db 0 ; normal

	; party
	db 10, SLOWPOKE
	db 10, SLOWPOKE

	db $ff ; end

; ================

	; POKEMANIAC (13)
	db "ZACH@"
	db 0 ; normal

	; party
	db 27, RHYHORN

	db $ff ; end

; ================

	; POKEMANIAC (14)
	db "BRENT@"
	db 1 ; moves

	; party

	db 41, NUMEL
		db ROLLOUT
		db ATTRACT
		db EGG_BOMB
		db TACKLE

	db $ff ; end

; ================

	; POKEMANIAC (15)
	db "MILLER@"
	db 0 ; normal

	; party
	db 17, NIDOKING
	db 17, NIDOQUEEN

	db $ff ; end

; ================
; ================================


GruntMGroup:
; ================================
; ================

	; GRUNTM (1)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 12, ZUBAT
	db 12, GROWLITHE
	db 12, BUIZEL
	
	db $ff ; end

; ================

	; GRUNTM (2)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 13, EKANS
	db 13, PIDGEY
	
	db $ff ; end

; ================

	; GRUNTM (3)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 26, MEDITITE
	db 24, KADABRA
	
	db $ff ; end

; ================

	; GRUNTM (4)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 13, ZUBAT
	db 12, HOUNDOUR
	db 12, CLEFAIRY
	
	db $ff ; end

; ================

; GRUNTM (5)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 25, TEDDIURSA
	db 26, VENONAT
	db 27, VENONAT
	
	db $ff ; end

; ================

; GRUNTM (6)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 23, KOFFING
	db 24, PIDGEOTTO
	db 24, TRUMBEAK
	
	db $ff ; end

; ================

; GRUNTM (7)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 22, RATICATE
	db 22, GOLBAT
	
	db $ff ; end

; ================

; GRUNTM (8)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 25, SWABLU
	db 25, BUNEARY
	
	db $ff ; end

; ================

; GRUNTM (9)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 24, ZUBAT
	db 23, SWABLU
	db 25, GOLBAT
	
	db $ff ; end

; ================
; ================================


GentlemanGroup:
; ================================
; ================

	; GENTLEMAN (1)
	db "THOMAS@"
	db 0 ; normal

	; party
	db 18, GROWLITHE
	db 17, SWABLU

	db $ff ; end

; ================
; ================================


SkierGroup:
; ================================
; ================

	; SKIER (1)
	db "ROXANNE@"
	db 0 ; normal

	; party
	db 28, VOLCARONA

	db $ff ; end

; ================

	; SKIER (2)
	db "CLARISSA@"
	db 0 ; normal

	; party
	db 28, BRELOOM

	db $ff ; end

; ================
; ================================


TeacherGroup:
; ================================
; ================

	; TEACHER (1)
	db "THATEACH@"
	db 0 ; normal

	; party
	db 6, BULBASAUR

	db $ff ; end

; ================

	; TEACHER (2)
	db "HILLARY@"
	db 0 ; normal

	; party
	db 32, AIPOM
	db 36, CUBONE

	db $ff ; end

; ================

	; TEACHER (3)
	db "SHIRLEY@"
	db 0 ; normal

	; party
	db 35, JIGGLYPUFF

	db $ff ; end

; ================
; ================================


SabrinaGroup:
; ================================
; ================

	; SABRINA (1)
	db "SABRINA@"
	db 1 ; moves

	; party

	db 46, ESPEON
		db SAND_ATTACK
		db QUICK_ATTACK
		db SWIFT
		db PSYCHIC_M

	db 46, HAWLUCHA
		db BARRIER
		db REFLECT
		db BATON_PASS
		db PSYCHIC_M

	db 48, ALAKAZAM
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M
		db REFLECT

	db $ff ; end

; ================
; ================================


BugCatcherGroup:
; ================================
; ================

	; BUG_CATCHER (1)
	db "BARNEY@"
	db 0 ; normal

	; party
	db 6, WEEDLE
	db 7, WEEDLE
	db 8, KAKUNA

	db $ff ; end

; ================

	; BUG_CATCHER (2)
	db "ARNOLD@"
	db 0 ; normal

	; party
	db 19, LEDYBA
	db 18, JOLTIK

	db $ff ; end
	
; ================

	; BUG_CATCHER (3)
	db "JOSH@"
	db 0 ; normal

	; party
	db 13, SCYTHER

	db $ff ; end


; ================
; ================================


FisherGroup:
; ================================
; ================

	; FISHER (1)
	db "DAVE@"
	db 0 ; normal

	; party
	db 10, WOOPER
	db 8, POLIWAG

	db $ff ; end

; ================

; FISHER (2)
	db "HOMER@"
	db 0 ; normal

	; party
	db 14, CHINCHOU
	db 13, WOOPER
	db 14, BUIZEL

	db $ff ; end

; ================

; FISHER (3)
	db "HUE@"
	db 0 ; normal

	; party
	db 16, CHINCHOU
	db 17, HORSEA

	db $ff ; end

; ================

; FISHER (4)
	db "DARREN@"
	db 0 ; normal

	; party
	db 16, CORPHISH
	db 17, CORPHISH

	db $ff ; end

; ================

; FISHER (5)
	db "GERALD@"
	db 0 ; normal

	; party
	db 13, POLIWAG
	db 13, MARILL

	db $ff ; end

; ================

; FISHER (6)
	db "WALTER@"
	db 0 ; normal

	; party
	db 13, CHINCHOU
	db 13, SQUIRTLE

	db $ff ; end

; ================

; FISHER 7)
	db "BORRIS@"
	db 0 ; normal

	; party
	db 16, WARTORTLE

	db $ff ; end

; ================

; FISHER (8)
	db "CLINT@"
	db 0 ; normal

	; party
	db 13, BUIZEL
	db 13, WOOPER

	db $ff ; end

; ================
; ================================


SwimmerMGroup:
; ================================
; ================

	; SWIMMERM (1)
	db "TERRY@"
	db 0 ; normal

	; party
	db 12, CHINCHOU

	db $ff ; end

; ================

; SWIMMERM (2)
	db "MIKE@"
	db 0 ; normal

	; party
	db 12, TENTACOOL

	db $ff ; end

; ================
; ================================


SwimmerFGroup:
; ================================
; ================

	; SWIMMERF (1)
	db "JENNY@"
	db 0 ; normal

	; party
	db  9, CORSOLA
	db 10, CORSOLA

	db $ff ; end

; ================

	; SWIMMERF (2)
	db "SAM@"
	db 0 ; normal

	; party
	db 11, BUIZEL

	db $ff ; end

; ================

	; SWIMMERF (3)
	db "JESS@"
	db 0 ; normal

	; party
	db 12, TENTACOOL
	db 11, HORSEA

	db $ff ; end

; ================

	; SWIMMERF (4)
	db "MICHAELA@"
	db 0 ; normal

	; party
	db 14, HORSEA

	db $ff ; end

; ================
; ================================


SailorGroup:
; ================================
; ================

	; SAILOR (1)
	db "EUGENE@"
	db 0 ; normal

	; party
	db 17, POLIWHIRL
	db 17, RATICATE
	db 19, CORPHISH

	db $ff ; end

; ================

	; SAILOR (2)
	db "HUEY@"
	db 0 ; normal

	; party
	db 18, POLIWAG
	db 18, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR (3)
	db "TERRELL@"
	db 0 ; normal

	; party
	db 20, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR (4)
	db "KENT@"
	db 1 ; moves

	; party

	db 18, CORPHISH
		db BUBBLE
		db LEER
		db VICEGRIP
		db HARDEN

	db 20, CORPHISH
		db BUBBLEBEAM
		db LEER
		db VICEGRIP
		db HARDEN

	db $ff ; end

; ================

	; SAILOR (5)
	db "ERNEST@"
	db 0 ; normal

	; party
	db 18, MACHOP
	db 18, MACHOP
	db 18, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR (6)
	db "JEFF@"
	db 0 ; normal

	; party
	db 32, RATICATE
	db 32, RATICATE

	db $ff ; end

; ================

	; SAILOR (7)
	db "GARRETT@"
	db 0 ; normal

	; party
	db 34, CRAWDAUNT

	db $ff ; end

; ================

	; SAILOR (8)
	db "KENNETH@"
	db 0 ; normal

	; party
	db 28, MACHOP
	db 28, MACHOP
	db 28, POLIWRATH
	db 28, MACHOP

	db $ff ; end

; ================

	; SAILOR (9)
	db "STANLY@"
	db 0 ; normal

	; party
	db 31, MACHOP
	db 33, MACHOKE
	db 26, PSYDUCK

	db $ff ; end

; ================

	; SAILOR (10)
	db "HARRY@"
	db 0 ; normal

	; party
	db 19, WOOPER

	db $ff ; end

; ================

	; SAILOR (11)
	db "HUEY@"
	db 0 ; normal

	; party
	db 28, POLIWHIRL
	db 28, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR (12)
	db "HUEY@"
	db 0 ; normal

	; party
	db 34, POLIWHIRL
	db 34, POLIWRATH

	db $ff ; end

; ================

	; SAILOR (13)
	db "HUEY@"
	db 1 ; moves

	; party

	db 38, POLITOED
		db WHIRLPOOL
		db RAIN_DANCE
		db BODY_SLAM
		db PERISH_SONG

	db 38, POLIWRATH
		db SURF
		db STRENGTH
		db ICE_PUNCH
		db TACKLE

	db $ff ; end

; ================
; ================================


SuperNerdGroup:
; ================================
; ================

	; SUPER_NERD (1)
	db "STAN@"
	db 0 ; normal

	; party
	db 20, GRIMER

	db $ff ; end

; ================

	; SUPER_NERD (2)
	db "ERIC@"
	db 0 ; normal

	; party
	db 11, GRIMER
	db 11, GRIMER

	db $ff ; end

; ================

	; SUPER_NERD (3)
	db "GREGG@"
	db 0 ; normal

	; party
	db 20, MAGNEMITE
	db 20, MAGNEMITE
	db 20, MAGNEMITE

	db $ff ; end

; ================

	; SUPER_NERD (4)
	db "JAY@"
	db 0 ; normal

	; party
	db 22, KOFFING
	db 22, KOFFING

	db $ff ; end

; ================

	; SUPER_NERD (5)
	db "DAVE@"
	db 0 ; normal

	; party
	db 24, DITTO

	db $ff ; end

; ================

	; SUPER_NERD (6)
	db "SAM@"
	db 0 ; normal

	; party
	db 34, GRIMER
	db 34, MUK

	db $ff ; end

; ================

	; SUPER_NERD (7)
	db "TOM@"
	db 0 ; normal

	; party
	db 32, MAGNEMITE
	db 32, MAGNEMITE
	db 32, MAGNEMITE

	db $ff ; end

; ================

	; SUPER_NERD (8)
	db "PAT@"
	db 0 ; normal

	; party
	db 36, PORYGON

	db $ff ; end

; ================

	; SUPER_NERD (9)
	db "SHAWN@"
	db 0 ; normal

	; party
	db 31, MAGNEMITE
	db 33, MUK
	db 31, MAGNEMITE

	db $ff ; end

; ================

	; SUPER_NERD (10)
	db "TERU@"
	db 0 ; normal

	; party
	db 7, MAGNEMITE
	db 11, VOLTORB
	db 7, MAGNEMITE
	db 9, MAGNEMITE

	db $ff ; end

; ================

	; SUPER_NERD (11)
	db "RUSS@"
	db 0 ; normal

	; party
	db 27, MAGNEMITE
	db 27, MAGNEMITE
	db 27, MAGNEMITE

	db $ff ; end

; ================

	; SUPER_NERD (12)
	db "NORTON@"
	db 1 ; moves

	; party

	db 30, PORYGON
		db CONVERSION
		db CONVERSION2
		db RECOVER
		db TRI_ATTACK

	db $ff ; end

; ================

	; SUPER_NERD (13)
	db "HUGH@"
	db 1 ; moves

	; party

	db 39, SEADRA
		db SMOKESCREEN
		db TWISTER
		db SURF
		db WATERFALL

	db $ff ; end

; ================

	; SUPER_NERD (14)
	db "MARKUS@"
	db 1 ; moves

	; party

	db 19, SLOWPOKE
		db CURSE
		db WATER_GUN
		db GROWL
		db STRENGTH

	db $ff ; end

; ================
; ================================


Rival2Group:
; ================================
; ================

	; RIVAL2 (1)
	db "?@"
	db 1 ; moves

	; party

	db 41, SNEASEL
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 42, GOLBAT
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 41, MAGNETON
		db THUNDERSHOCK
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 43, GENGAR
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 43, ALAKAZAM
		db DISABLE
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M

	db 45, MEGANIUM
		db RAZOR_LEAF
		db POISONPOWDER
		db BODY_SLAM
		db LIGHT_SCREEN

	db $ff ; end

; ================

	; RIVAL2 (2)
	db "?@"
	db 1 ; moves

	; party

	db 41, SNEASEL
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 42, GOLBAT
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 41, MAGNETON
		db THUNDERSHOCK
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 43, GENGAR
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 43, ALAKAZAM
		db DISABLE
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M

	db 45, TYPHLOSION
		db SMOKESCREEN
		db QUICK_ATTACK
		db FLAME_WHEEL
		db SWIFT

	db $ff ; end

; ================

	; RIVAL2 (3)
	db "?@"
	db 1 ; moves

	; party

	db 41, SNEASEL
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 42, GOLBAT
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 41, MAGNETON
		db THUNDERSHOCK
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 43, GENGAR
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 43, ALAKAZAM
		db DISABLE
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M

	db 45, FERALIGATR
		db RAGE
		db WATER_GUN
		db SCARY_FACE
		db SLASH

	db $ff ; end

; ================

	; RIVAL2 (4)
	db "?@"
	db 1 ; moves

	; party

	db 45, SNEASEL
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 48, CROBAT
		db TOXIC
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 45, MAGNETON
		db THUNDER
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 46, GENGAR
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 46, ALAKAZAM
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M
		db REFLECT

	db 50, MEGANIUM
		db GIGA_DRAIN
		db BODY_SLAM
		db LIGHT_SCREEN
		db SAFEGUARD

	db $ff ; end

; ================

	; RIVAL2 (5)
	db "?@"
	db 1 ; moves

	; party

	db 45, SNEASEL
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 48, CROBAT
		db TOXIC
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 45, MAGNETON
		db THUNDER
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 46, GENGAR
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 46, ALAKAZAM
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M
		db REFLECT

	db 50, TYPHLOSION
		db SMOKESCREEN
		db QUICK_ATTACK
		db FIRE_BLAST
		db SWIFT

	db $ff ; end

; ================

	; RIVAL2 (6)
	db "?@"
	db 1 ; moves

	; party

	db 45, SNEASEL
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 48, CROBAT
		db TOXIC
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 45, MAGNETON
		db THUNDER
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 46, GENGAR
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 46, ALAKAZAM
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M
		db REFLECT

	db 50, FERALIGATR
		db SURF
		db RAIN_DANCE
		db SLASH
		db SCREECH

	db $ff ; end

; ================
; ================================


GuitaristGroup:
; ================================
; ================

	; GUITARIST (1)
	db "CLYDE@"
	db 0 ; normal

	; party
	db 34, ELECTABUZZ

	db $ff ; end

; ================

	; GUITARIST (2)
	db "VINCENT@"
	db 0 ; normal

	; party
	db 27, MAGNEMITE
	db 33, VOLTORB
	db 32, MAGNEMITE
	db 32, MAGNEMITE

	db $ff ; end

; ================
; ================================


HikerGroup:
; ================================
; ================

	; HIKER (1)
	db "DOUG@"
	db 0 ; normal

	; party
	db 12, GEODUDE
	db 13, CUBONE

	db $ff ; end

; ================

	; HIKER (2)
	db "WILL@"
	db 0 ; normal

	; party
	db 10, ONIX

	db $ff ; end
	
; ================

	; HIKER (3)
	db "ROB@"
	db 0 ; normal

	; party
	db 10, ONIX
	db 12, GEODUDE

	db $ff ; end
	
; ================

	; HIKER (4)
	db "BENJAMIN@"
	db 0 ; normal

	; party
	db 11, WOOPER
	db 12, MACHOP

	db $ff ; end
	
; ================

	; HIKER (5)
	db "LANDON@"
	db 0 ; normal

	; party
	db 11, GEODUDE
	db 12, MACHOP

	db $ff ; end
	
; ================

	; HIKER (6)
	db "SIMON@"
	db 0 ; normal

	; party
	db 18, MACHOP
	db 17, TEDDIURSA

	db $ff ; end

; ================

; HIKER (7)
	db "STEVEN@"
	db 0 ; normal

	; party
	db 18, GEODUDE
	db 19, GEODUDE
	db 19, ONIX

	db $ff ; end

; ================

; HIKER (8)
	db "GILL@"
	db 0 ; normal

	; party
	db 20, NUMEL
	db 18, CORSOLA

	db $ff ; end

; ================

; HIKER (9)
	db "HARVEY@"
	db 0 ; normal

	; party
	db 19, ARON
	db 21, NOIBAT
	db 21, ZUBAT

	db $ff ; end

; ================

; HIKER (10)
	db "TED@"
	db 0 ; normal

	; party
	db 21, KOFFING
	db 21, GEODUDE
	db 21, ZUBAT

	db $ff ; end

; ================

; HIKER (11)
	db "LEROY@"
	db 0 ; normal

	; party
	db 22, LARVITAR
	db 22, MAGBY

	db $ff ; end

; ================
; ================================


BikerGroup:
; ================================
; ================

	; BIKER (1)
	db "BENNY@"
	db 0 ; normal

	; party
	db 20, KOFFING
	db 20, KOFFING
	db 20, KOFFING

	db $ff ; end

; ================

	; BIKER (2)
	db "KAZU@"
	db 0 ; normal

	; party
	db 20, KOFFING
	db 20, KOFFING
	db 20, KOFFING

	db $ff ; end

; ================

	; BIKER (3)
	db "DWAYNE@"
	db 0 ; normal

	; party
	db 27, KOFFING
	db 28, KOFFING
	db 29, KOFFING
	db 30, KOFFING

	db $ff ; end

; ================

	; BIKER (4)
	db "HARRIS@"
	db 0 ; normal

	; party
	db 34, FLAREON

	db $ff ; end

; ================

	; BIKER (5)
	db "ZEKE@"
	db 0 ; normal

	; party
	db 32, KOFFING
	db 32, KOFFING

	db $ff ; end

; ================

	; BIKER (6)
	db "CHARLES@"
	db 0 ; normal

	; party
	db 30, KOFFING
	db 30, CHARMELEON
	db 30, WEEZING

	db $ff ; end

; ================

	; BIKER (7)
	db "RILEY@"
	db 0 ; normal

	; party
	db 34, WEEZING

	db $ff ; end

; ================

	; BIKER (8)
	db "JOEL@"
	db 0 ; normal

	; party
	db 32, MAGMAR
	db 32, MAGMAR

	db $ff ; end

; ================

	; BIKER (9)
	db "GLENN@"
	db 0 ; normal

	; party
	db 28, KOFFING
	db 30, MAGMAR
	db 32, WEEZING

	db $ff ; end

; ================
; ================================


BlaineGroup:
; ================================
; ================

	; BLAINE (1)
	db "BLAINE@"
	db 1 ; moves

	; party

	db 45, MAGCARGO
		db CURSE
		db SMOG
		db FLAMETHROWER
		db ROCK_SLIDE

	db 45, MAGMAR
		db THUNDERPUNCH
		db FIRE_PUNCH
		db SUNNY_DAY
		db CONFUSE_RAY

	db 50, RAPIDASH
		db QUICK_ATTACK
		db FIRE_SPIN
		db TACKLE
		db FIRE_BLAST

	db $ff ; end

; ================
; ================================


BurglarGroup:
; ================================
; ================

	; BURGLAR (1)
	db "DUNCAN@"
	db 0 ; normal

	; party
	db 23, KOFFING
	db 25, MAGMAR
	db 23, KOFFING

	db $ff ; end

; ================

	; BURGLAR (2)
	db "EDDIE@"
	db 1 ; moves

	; party

	db 26, GROWLITHE
		db ROAR
		db EMBER
		db LEER
		db TAKE_DOWN

	db 24, KOFFING
		db TACKLE
		db SMOG
		db SLUDGE
		db SMOKESCREEN

	db $ff ; end

; ================

	; BURGLAR (3)
	db "COREY@"
	db 0 ; normal

	; party
	db 25, KOFFING
	db 28, MAGMAR
	db 25, KOFFING
	db 30, KOFFING

	db $ff ; end

; ================
; ================================


FirebreatherGroup:
; ================================
; ================

	; FIREBREATHER (1)
	db "MORT@"
	db 0 ; normal

	; party
	db 20, SLUGMA
	db 21, MAGBY

	db $ff ; end

; ================

	; FIREBREATHER (2)
	db "FRITZ@"
	db 0 ; normal

	; party
	db 19, NUMEL
	db 19, SLUGMA
	db 19, LARVITAR

	db $ff ; end

; ================

	; FIREBREATHER (3)
	db "MEL@"
	db 0 ; normal

	; party
	db 20, SLUGMA
	db 19, KOFFING
	db 20, NUMEL

	db $ff ; end

; ================

	; FIREBREATHER (4)
	db "DOM@"
	db 0 ; normal

	; party
	db 20, PONYTA
	db 22, MAGBY

	db $ff ; end

; ================
; ================================


JugglerGroup:
; ================================
; ================

	; JUGGLER (1)
	db "ERNIE@"
	db 0 ; normal

	; party
	db 20, SWABLU
	db 22, ABRA
	db 18, KADABRA

	db $ff ; end

; ================

; JUGGLER (2)
	db "WILLY@"
	db 0 ; normal

	; party
	db 19, NATU
	db 20, MEDITITE

	db $ff ; end

; ================

; JUGGLER (3)
	db "QUINN@"
	db 0 ; normal

	; party
	db 20, KOFFING
	db 19, KADABRA

	db $ff ; end

; ================
; ================================


BlackbeltGroup:
; ================================
; ================

	; BLACKBELT_T (1)
	db "KENJI@"
	db 0 ; normal

	; party
	db 27, ONIX
	db 30, BUNEARY
	db 27, ONIX
	db 32, MACHOKE

	db $ff ; end

; ================

	; BLACKBELT_T (2)
	db "YOSHI@"
	db 1 ; moves

	; party

	db 27, BUNEARY
		db DOUBLE_KICK
		db MEDITATE
		db TACKLE
		db FOCUS_ENERGY

	db $ff ; end

; ================

	; BLACKBELT_T (3)
	db "KENJI@"
	db 1 ; moves

	; party

	db 33, ONIX
		db BIND
		db ROCK_THROW
		db TOXIC
		db DIG

	db 38, MACHAMP
		db HEADBUTT
		db SWAGGER
		db THUNDERPUNCH
		db VITAL_THROW

	db 33, STEELIX
		db EARTHQUAKE
		db ROCK_THROW
		db IRON_TAIL
		db SANDSTORM

	db 36, BUNEARY
		db DOUBLE_TEAM
		db HI_JUMP_KICK
		db MUD_SLAP
		db SWIFT

	db $ff ; end

; ================

	; BLACKBELT_T (4)
	db "LAO@"
	db 1 ; moves

	; party

	db 27, LOPUNNY
		db TACKLE
		db THUNDERPUNCH
		db ICE_PUNCH
		db FIRE_PUNCH

	db $ff ; end

; ================

	; BLACKBELT_T (5)
	db "NOB@"
	db 1 ; moves

	; party

	db 25, MACHOP
		db LEER
		db FOCUS_ENERGY
		db KARATE_CHOP
		db SEISMIC_TOSS

	db 25, MACHOKE
		db LEER
		db KARATE_CHOP
		db SEISMIC_TOSS
		db ROCK_SLIDE

	db $ff ; end

; ================

	; BLACKBELT_T (6)
	db "KIYO@"
	db 0 ; normal

	; party
	db 34, BUNEARY
	db 34, LOPUNNY

	db $ff ; end

; ================

	; BLACKBELT_T (7)
	db "LUNG@"
	db 0 ; normal

	; party
	db 23, MANKEY
	db 23, MANKEY
	db 25, PRIMEAPE

	db $ff ; end

; ================

	; BLACKBELT_T (8)
	db "KENJI@"
	db 0 ; normal

	; party
	db 28, MACHOKE

	db $ff ; end

; ================

	; BLACKBELT_T (9)
	db "WAI@"
	db 0 ; normal

	; party
	db 30, MACHOKE
	db 32, MACHOKE
	db 34, MACHOKE

	db $ff ; end

; ================
; ================================


ExecutiveMGroup:
; ================================
; ================

	; EXECUTIVEM (1)
	db "KAGE@"
	db 0 ; normal

	; party

	db 25, AZUMARILL
	db 23, ARBOK
	db 30, URSARING

	db $ff ; end

; ================
; ================================


PsychicGroup:
; ================================
; ================

	; PSYCHIC_T (1)
	db "NATHAN@"
	db 0 ; normal

	; party
	db 26, GIRAFARIG

	db $ff ; end

; ================

	; PSYCHIC_T (2)
	db "FRANKLIN@"
	db 0 ; normal

	; party
	db 37, KADABRA

	db $ff ; end

; ================

	; PSYCHIC_T (3)
	db "HERMAN@"
	db 0 ; normal

	; party
	db 30, EXEGGCUTE
	db 30, EXEGGCUTE
	db 30, EXEGGUTOR

	db $ff ; end

; ================

	; PSYCHIC_T (4)
	db "FIDEL@"
	db 0 ; normal

	; party
	db 34, XATU

	db $ff ; end

; ================

	; PSYCHIC_T (5)
	db "GREG@"
	db 1 ; moves

	; party

	db 17, MEDITITE
		db HYPNOSIS
		db DISABLE
		db DREAM_EATER
		db 0

	db $ff ; end

; ================

	; PSYCHIC_T (6)
	db "NORMAN@"
	db 1 ; moves

	; party

	db 17, SLOWPOKE
		db TACKLE
		db GROWL
		db WATER_GUN
		db 0

	db 20, SLOWPOKE
		db CURSE
		db BODY_SLAM
		db WATER_GUN
		db CONFUSION

	db $ff ; end

; ================

	; PSYCHIC_T (7)
	db "MARK@"
	db 1 ; moves

	; party

	db 13, ABRA
		db TELEPORT
		db FLASH
		db 0
		db 0

	db 13, ABRA
		db TELEPORT
		db FLASH
		db 0
		db 0

	db 15, KADABRA
		db TELEPORT
		db KINESIS
		db CONFUSION
		db 0

	db $ff ; end

; ================

	; PSYCHIC_T (8)
	db "PHIL@"
	db 1 ; moves

	; party

	db 24, NATU
		db LEER
		db NIGHT_SHADE
		db FUTURE_SIGHT
		db CONFUSE_RAY

	db 26, KADABRA
		db DISABLE
		db PSYBEAM
		db RECOVER
		db FUTURE_SIGHT

	db $ff ; end

; ================

	; PSYCHIC_T (9)
	db "RICHARD@"
	db 0 ; normal

	; party
	db 36, ESPEON

	db $ff ; end

; ================

	; PSYCHIC_T (10)
	db "GILBERT@"
	db 0 ; normal

	; party
	db 30, STARMIE
	db 30, EXEGGCUTE
	db 34, GIRAFARIG

	db $ff ; end

; ================

	; PSYCHIC_T (11)
	db "JARED@"
	db 0 ; normal

	; party
	db 32, HAWLUCHA
	db 32, EXEGGCUTE
	db 35, EXEGGCUTE

	db $ff ; end

; ================

	; PSYCHIC_T (12)
	db "RODNEY@"
	db 0 ; normal

	; party
	db 29, MEDITITE
	db 33, MEDICHAM

	db $ff ; end

; ================
; ================================


PicnickerGroup:
; ================================
; ================

	; PICNICKER (1)
	db "ERIN@"
	db 0 ; normal

	; party
	db 11, NIDORAN_F

	db $ff ; end

; ================

	; PICNICKER (2)
	db "BETH@"
	db 0 ; normal

	; party
	db 16, NIDORINA

	db $ff ; end
	
; ================

	; PICNICKER (3)
	db "MOLLY@"
	db 0 ; normal

	; party
	db 9, JIGGLYPUFF

	db $ff ; end
	
; ================

; PICNICKER (4)
	db "SHAUNA@"
	db 0 ; normal

	; party
	db 17, MEOWTH
	db 17, TRUMBEAK

	db $ff ; end
	
; ================

; PICNICKER (5)
	db "TRISTA@"
	db 0 ; normal

	; party
	db 14, MARILL
	db 15, MARILL
	db 15, POLIWAG

	db $ff ; end
	
; ================

; PICNICKER (6)
	db "TINA@"
	db 0 ; normal

	; party
	db 24, BULBASAUR
	db 24, CHIKORITA

	db $ff ; end
	
; ================
; ================================


CamperGroup:
; ================================
; ================

	; CAMPER (1)
	db "DENNY@"
	db 0 ; normal

	; party
	db 11, NIDORAN_M

	db $ff ; end
	
; ================
	
	; CAMPER (2)
	db "VINCENT@"
	db 0 ; normal

	; party
	db 16, NIDORINO

	db $ff ; end
	
; ================

	; CAMPER (3)
	db "BART@"
	db 0 ; normal

	; party
	db 9, CLEFAIRY

	db $ff ; end
	
; ================

; CAMPER (4)
	db "TREVOR@"
	db 0 ; normal

	; party
	db 17, SHROOMISH
	db 17, ODDISH

	db $ff ; end
	
; ================

	; CAMPER (5)
	db "DANTE@"
	db 0 ; normal

	; party
	db 24, BAYLEEF
	db 25, SHROOMISH

	db $ff ; end
	
; ================
; ================================


ExecutiveFGroup:
; ================================
; ================

	; EXECUTIVEF (1)
	db "EXECUTIVE@"
	db 1 ; moves

	; party

	db 32, ARBOK
		db WRAP
		db POISON_STING
		db BITE
		db GLARE

	db 32, VILEPLUME
		db ABSORB
		db SWEET_SCENT
		db SLEEP_POWDER
		db ACID

	db 32, MURKROW
		db PECK
		db PURSUIT
		db HAZE
		db NIGHT_SHADE

	db $ff ; end

; ================

	; EXECUTIVEF (2)
	db "EXECUTIVE@"
	db 1 ; moves

	; party

	db 23, ARBOK
		db WRAP
		db LEER
		db POISON_STING
		db BITE

	db 23, GLOOM
		db ABSORB
		db SWEET_SCENT
		db SLEEP_POWDER
		db ACID

	db 25, MURKROW
		db PECK
		db PURSUIT
		db HAZE
		db 0

	db $ff ; end

; ================
; ================================


SageGroup:
; ================================
; ================

	; SAGE (1)
	db "CHOW@"
	db 0 ; normal

	; party
	db 3, BELLSPROUT
	db 3, BELLSPROUT
	db 3, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (2)
	db "NICO@"
	db 0 ; normal

	; party
	db 3, BELLSPROUT
	db 3, BELLSPROUT
	db 3, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (3)
	db "JIN@"
	db 0 ; normal

	; party
	db 6, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (4)
	db "TROY@"
	db 0 ; normal

	; party
	db 7, BELLSPROUT
	db 7, NOIBAT

	db $ff ; end

; ================

	; SAGE (5)
	db "JEFFREY@"
	db 0 ; normal

	; party
	db 22, HAUNTER

	db $ff ; end

; ================

	; SAGE (6)
	db "PING@"
	db 0 ; normal

	; party
	db 16, GASTLY
	db 16, GASTLY
	db 16, GASTLY
	db 16, GASTLY
	db 16, GASTLY

	db $ff ; end

; ================

	; SAGE (7)
	db "EDMOND@"
	db 0 ; normal

	; party
	db 3, BELLSPROUT
	db 3, BELLSPROUT
	db 3, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (8)
	db "NEAL@"
	db 0 ; normal

	; party
	db 6, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (9)
	db "LI@"
	db 0 ; normal

	; party
	db 7, BELLSPROUT
	db 7, BELLSPROUT
	db 10, NOIBAT

	db $ff ; end

; ================

	; SAGE (10)
	db "GAKU@"
	db 0 ; normal

	; party
	db 32, NOIVERN
	db 32, FLAREON

	db $ff ; end

; ================

	; SAGE (11)
	db "MASA@"
	db 0 ; normal

	; party
	db 32, NOIVERN
	db 32, JOLTEON

	db $ff ; end

; ================

	; SAGE (12)
	db "KOJI@"
	db 0 ; normal

	; party
	db 32, NOIVERN
	db 32, VAPOREON

	db $ff ; end

; ================
; ================================


MediumGroup:
; ================================
; ================

	; MEDIUM (1)
	db "MARTHA@"
	db 0 ; normal

	; party
	db 18, GASTLY
	db 20, HAUNTER
	db 20, GASTLY

	db $ff ; end

; ================

	; MEDIUM (2)
	db "GRACE@"
	db 0 ; normal

	; party
	db 20, HAUNTER
	db 20, HAUNTER

	db $ff ; end

; ================

	; MEDIUM (3)
	db "BETHANY@"
	db 0 ; normal

	; party
	db 25, HAUNTER

	db $ff ; end

; ================

	; MEDIUM (4)
	db "MARGRET@"
	db 0 ; normal

	; party
	db 25, HAUNTER

	db $ff ; end

; ================

	; MEDIUM (5)
	db "ETHEL@"
	db 0 ; normal

	; party
	db 25, HAUNTER

	db $ff ; end

; ================

	; MEDIUM (6)
	db "REBECCA@"
	db 0 ; normal

	; party
	db 35, MEDITITE
	db 35, MEDICHAM

	db $ff ; end

; ================

	; MEDIUM (7)
	db "DORIS@"
	db 0 ; normal

	; party
	db 34, SLOWPOKE
	db 36, SLOWBRO

	db $ff ; end

; ================
; ================================


BoarderGroup:
; ================================
; ================

	; BOARDER (1)
	db "RONALD@"
	db 0 ; normal

	; party
	db 24, SHROOMISH
	db 25, BRELOOM
	db 24, SHROOMISH

	db $ff ; end

; ================

	; BOARDER (2)
	db "BRAD@"
	db 0 ; normal

	; party
	db 26, SWINUB
	db 26, SWINUB

	db $ff ; end

; ================

	; BOARDER (3)
	db "DOUGLAS@"
	db 0 ; normal

	; party
	db 24, SHELLDER
	db 25, CLOYSTER
	db 24, SHELLDER

	db $ff ; end

; ================
; ================================


PokefanMGroup:
; ================================
; ================

	; POKEFANM (1)
	db "RON@"
	db 0 ; normal

	; party
	db 18, PHANPY
	db 19, PSYDUCK

	db $ff ; end

; ================

	; POKEFANM (2)
	db "SID@"
	db 0 ; normal

	; party
	db 26, MISDREAVUS
	db 26, EKANS
	db 27, MISDREAVUS

	db $ff ; end

; ================

	; POKEFANM (3)
	db "RICK@"
	db 0 ; normal

	; party
	db 27, MISDREAVUS
	db 26, RHYHORN
	db 26, RHYHORN

	db $ff ; end

; ================
; ================================


KimonoGirlGroup:
; ================================
; ================

	; KIMONO_GIRL (1)
	db "NAOKO@"
	db 0 ; normal

	; party
	db 20, LAIRON
	db 20, BUIZEL
	db 18, LAIRON

	db $ff ; end

; ================

	; KIMONO_GIRL (2)
	db "NAOKO@"
	db 0 ; normal

	; party
	db 17, FLAREON

	db $ff ; end

; ================

	; KIMONO_GIRL (3)
	db "SAYO@"
	db 0 ; normal

	; party
	db 17, ESPEON

	db $ff ; end

; ================

	; KIMONO_GIRL (4)
	db "ZUKI@"
	db 0 ; normal

	; party
	db 17, UMBREON

	db $ff ; end

; ================

	; KIMONO_GIRL (5)
	db "KUNI@"
	db 0 ; normal

	; party
	db 17, VAPOREON

	db $ff ; end

; ================

	; KIMONO_GIRL (6)
	db "MIKI@"
	db 0 ; normal

	; party
	db 17, JOLTEON

	db $ff ; end

; ================
; ================================


TwinsGroup:
; ================================
; ================

	; TWINS (1_1)
	db "JEN & JAN@"
	db 3 ; moves + item

	; party
	db 7, TOGEPI, NO_ITEM
		db METRONOME
		db 0
		db 0
		db 0
		
	db 8, TOGEPI, BERRY
		db METRONOME
		db 0
		db 0
		db 0
		
	db $ff ; end

; ================

; TWINS (1_2)
	db "JEN & JAN@"
	db 3 ; moves + item

	; party
	db 8, TOGEPI, BERRY
		db METRONOME
		db 0
		db 0
		db 0
		
	db 7, TOGEPI, NO_ITEM
		db METRONOME
		db 0
		db 0
		db 0

	db $ff ; end

; ================
; ================================


PokefanFGroup:
; ================================
; ================

	; POKEFANF (1)
	db "SUSAN@"
	db 1 ; moves

	; party
	db 16, STANTLER
		db STOMP
		db LEER
		db HYPNOSIS
		db 0

	db $ff ; end

; ================

	; POKEFANF (2)
	db "JILL@"
	db 0 ; normal

	; party
	db 24, RHYDON

	db $ff ; end

; ================
; ================================


RedGroup:
; ================================
; ================

	; RED (1)
	db "RED@"
	db 1 ; moves

	; party

	db 81, PIKACHU
		db CHARM
		db QUICK_ATTACK
		db THUNDERBOLT
		db THUNDER

	db 73, ESPEON
		db MUD_SLAP
		db REFLECT
		db SWIFT
		db PSYCHIC_M

	db 75, SNORLAX
		db AMNESIA
		db SNORE
		db REST
		db BODY_SLAM

	db 77, VENUSAUR
		db SUNNY_DAY
		db GIGA_DRAIN
		db SYNTHESIS
		db SOLARBEAM

	db 77, CHARIZARD
		db FLAMETHROWER
		db WING_ATTACK
		db SLASH
		db FIRE_SPIN

	db 77, BLASTOISE
		db RAIN_DANCE
		db SURF
		db BLIZZARD
		db WHIRLPOOL

	db $ff ; end

; ================
; ================================


BlueGroup:
; ================================
; ================

	; BLUE (1)
	db "BLUE@"
	db 1 ; moves

	; party

	db 56, PIDGEOT
		db QUICK_ATTACK
		db WHIRLWIND
		db WING_ATTACK
		db MIRROR_MOVE

	db 54, ALAKAZAM
		db DISABLE
		db RECOVER
		db PSYCHIC_M
		db REFLECT

	db 56, RHYDON
		db TACKLE
		db SANDSTORM
		db ROCK_SLIDE
		db EARTHQUAKE

	db 58, GYARADOS
		db TWISTER
		db HYDRO_PUMP
		db RAIN_DANCE
		db HYPER_BEAM

	db 58, EXEGGUTOR
		db SUNNY_DAY
		db LEECH_SEED
		db EGG_BOMB
		db SOLARBEAM

	db 58, ARCANINE
		db ROAR
		db SWIFT
		db FLAMETHROWER
		db EXTREMESPEED

	db $ff ; end

; ================
; ================================


OfficerGroup:
; ================================
; ================

	; OFFICER (1)
	db "KEITH@"
	db 0 ; normal

	; party
	db 17, GROWLITHE

	db $ff ; end

; ================

	; OFFICER (2)
	db "DIRK@"
	db 0 ; normal

	; party
	db 14, GROWLITHE
	db 14, GROWLITHE

	db $ff ; end

; ================
; ================================


GruntFGroup:
; ================================
; ================

	; GRUNTF (1)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 12, HOUNDOUR
	db 13, COTTONEE
	db 12, PIKACHU
	
	db $ff ; end

; ================

; GRUNTF (2)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 26, HOUNDOUR
	db 27, MEOWTH
	
	db $ff ; end

; ================

	; GRUNTF (3)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 26, RATICATE
	
	db $ff ; end

; ================

; GRUNTF (4)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 26, ZUBAT
	db 24, GOLBAT
	
	db $ff ; end

; ================
; ================================


MysticalmanGroup:
; ================================
; ================

	; MYSTICALMAN (1)
	db "EUSINE@"
	db 1 ; moves

	; party

	db 23, MEDITITE
		db DREAM_EATER
		db HYPNOSIS
		db DISABLE
		db CONFUSION

	db 23, HAUNTER
		db LICK
		db HYPNOSIS
		db MEAN_LOOK
		db CURSE

	db 25, ELECTRODE
		db SCREECH
		db SONICBOOM
		db THUNDER
		db ROLLOUT

	db $ff ; end

; ================
; ================================


TeacherFastGroup:
; ================================
; ================

	; TEACHER (1)
	db "KATE@"
	db 2 ; item

	; party
	db 6, MEOWTH, QUICK_CLAW

	db $ff ; end

; ================
; ================================


TrioBroRGroup:
; ================================
; ================

	; TRIOBROR (1)
	db "RED@"
	db 1 ; moves

	; party

	db 14, SMEARGLE
		db FIRE_BLAST
		db 0
		db 0
		db 0

	db $ff ; end

; ================
; ================================


TrioBroBGroup:
; ================================
; ================

	; TRIOBROB (1)
	db "BLUE@"
	db 1 ; moves

	; party

	db 14, SMEARGLE
		db BLIZZARD
		db 0
		db 0
		db 0

	db $ff ; end

; ================
; ================================


TrioBroYGroup:
; ================================
; ================

	; TRIOBROB (1)
	db "YELLOW@"
	db 1 ; moves

	; party

	db 14, SMEARGLE
		db THUNDER
		db 0
		db 0
		db 0

	db $ff ; end

; ================
; ================================


DisguiseManGroup
; ================================
; ================

	; TRIOBROB (1)
	db "MASTER@"
	db 0 ; moves

	; party

	db 12, VOLTORB
	db 12, MARILL
	db 13, JIGGLYPUFF

	db $ff ; end

; ================
; ================================


LadyGroup
; ================================
; ================

	; LADY (1)
	db "RUTH@"
	db 0 ; moves

	; party

	db 19, MEOWTH
	db 18, BUNEARY

	db $ff ; end

; ================
; ================================

BikiniPGroup
; ================================
; ================

	; BIKINIP (1)
	db "LILAC@"
	db 0 ; moves

	; party

	db 20, GLIGAR

	db $ff ; end

; ================
; ================================

BikiniRGroup
; ================================
; ================

	; BIKINIR (1)
	db "ASTER@"
	db 0 ; moves

	; party

	db 22, PHANPY

	db $ff ; end

; ================
; ================================

BikiniYGroup
; ================================
; ================

	; BIKINIY (1)
	db "HAZEL@"
	db 0 ; moves

	; party

	db 23, SANDSHREW

	db $ff ; end

; ================
; ================================

CoupleGroup
; ================================
; ================

	; COUPLE (1)
	db "JD & MEG@"
	db 0 ; moves

	; party

	db 1, BULBASAUR

	db $ff ; end

; ================
; ================================

DelinquentMGroup
; ================================
; ================

	; COUPLE (1)
	db "JD & MEG@"
	db 0 ; moves

	; party

	db 1, BULBASAUR

	db $ff ; end

; ================
; ================================

DelinquentFGroup
; ================================
; ================

	; COUPLE (1)
	db "JD & MEG@"
	db 0 ; moves

	; party

	db 1, BULBASAUR

	db $ff ; end

; ================
; ================================

SafariGroup
; ================================
; ================

	; SAFARI (1)
	db "JULIAN@"
	db 0 ; moves

	; party

	db 23, ODDISH
	db 24, ODDISH
	db 22, GLOOM

	db $ff ; end

; ================

; SAFARI (2)
	db "YANCY@"
	db 0 ; moves

	; party

	db 23, BRELOOM

	db $ff ; end

; ================

; SAFARI (3)
	db "PAUL@"
	db 0 ; moves

	; party

	db 24, SHROOMISH
	db 24, ODDISH
	db 25, SHROOMISH

	db $ff ; end

; ================

; SAFARI (4)
	db "PHILLIP@"
	db 0 ; moves

	; party

	db 21, WHIMSICOTT

	db $ff ; end

; ================
; ================================