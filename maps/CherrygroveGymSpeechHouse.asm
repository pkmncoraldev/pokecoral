const_value set 2
	const SUNBEAM_GYM_GYM_GUY
	const SUNBEAM_GYM_TRAINER_1
	const SUNBEAM_GYM_TRAINER_2
	const SUNBEAM_GYM_TRAINER_3
	const SUNBEAM_GYM_TRAINER_4
	const SUNBEAM_GYM_TRAINER_5
	const SUNBEAM_GYM_TRAINER_6

CherrygroveGymSpeechHouse_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0
	
.Trigger0:
	end
	
.Trigger1:
	end

CherrygroveGymSpeechHouse_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 23, 2, 3, CHERRYGROVE_CITY
	warp_def 23, 3, 12, CHERRYGROVE_CITY
	warp_def 24, 29, 1, ROUTE_27
	warp_def 25, 29, 2, ROUTE_27

.CoordEvents: db 1
	xy_trigger 0, 20, 2, 0, SunbeamGymNoEntry, 0, 0

.BGEvents: db 0

.ObjectEvents: db 7
	person_event SPRITE_GYM_GUY, 20, 3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamGymGuyScript, -1
	person_event SPRITE_GENTLEMAN, 12, 3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_TRAINER, 2, TrainerSunbeamGym_1, -1
	person_event SPRITE_GENTLEMAN, 17, 16, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_TRAINER, 2, TrainerSunbeamGym_2, -1
	person_event SPRITE_LASS, 11, 19, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 2, TrainerSunbeamGym_3, -1
	person_event SPRITE_GENTLEMAN, 6, 18, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_TRAINER, 2, TrainerSunbeamGym_4, -1
	person_event SPRITE_YOUNGSTER, 12, 24, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerSunbeamGym_5, -1
	person_event SPRITE_GENTLEMAN, 19, 27, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_TRAINER, 3, TrainerSunbeamGym_6, -1

SunbeamGymNoEntry:
	playsound SFX_PAY_DAY
	spriteface SUNBEAM_GYM_GYM_GUY, LEFT
	showemote EMOTE_SHOCK, SUNBEAM_GYM_GYM_GUY, 15
	pause 7
	spriteface PLAYER, RIGHT
	opentext
	writetext SunbeamGymGuyNoEntryText1
	waitbutton
	closetext
	follow PLAYER, SUNBEAM_GYM_GYM_GUY
	applymovement PLAYER, Movement_SunbeamGymNoEntry1
	stopfollow
	spriteface PLAYER, UP
	spriteface SUNBEAM_GYM_GYM_GUY, DOWN
	opentext
	writetext SunbeamGymGuyNoEntryText
	waitbutton
	closetext
	applymovement SUNBEAM_GYM_GYM_GUY, Movement_SunbeamGymNoEntry2
	spriteface SUNBEAM_GYM_GYM_GUY, DOWN
	end
	
SunbeamGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_SAW_FIRST_BIKINI_CONTEST
	iffalse .noentry
	checkevent EVENT_BEAT_LEILANI
	iftrue .SunbeamGymGuyWinScript
	writetext SunbeamGymGuyText
	waitbutton
	closetext
	end
	
.noentry:
	writetext SunbeamGymGuyNoEntryText
	waitbutton
	closetext
	end
	
.SunbeamGymGuyWinScript:
	writetext SunbeamGymGuyWinText
	waitbutton
	closetext
	end
	
TrainerSunbeamGym_1:
	trainer EVENT_BEAT_SUBEAM_GYM_TRAINER_1, SAFARI, 1, TrainerSunbeamGym_1SeenText, TrainerSunbeamGym_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerSunbeamGym_1NormalText
	waitbutton
	closetext
	end
	
TrainerSunbeamGym_2:
	trainer EVENT_BEAT_SUBEAM_GYM_TRAINER_2, SAFARI, 2, TrainerSunbeamGym_2SeenText, TrainerSunbeamGym_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerSunbeamGym_2NormalText
	waitbutton
	closetext
	end

	
TrainerSunbeamGym_3:
	trainer EVENT_BEAT_SUBEAM_GYM_TRAINER_3, PICNICKER, 6, TrainerSunbeamGym_3SeenText, TrainerSunbeamGym_3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerSunbeamGym_3NormalText
	waitbutton
	closetext
	end

	
TrainerSunbeamGym_4:
	trainer EVENT_BEAT_SUBEAM_GYM_TRAINER_4, SAFARI, 3, TrainerSunbeamGym_4SeenText, TrainerSunbeamGym_4BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerSunbeamGym_4NormalText
	waitbutton
	closetext
	end

	
TrainerSunbeamGym_5:
	trainer EVENT_BEAT_SUBEAM_GYM_TRAINER_5, CAMPER, 5, TrainerSunbeamGym_5SeenText, TrainerSunbeamGym_5BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerSunbeamGym_5NormalText
	waitbutton
	closetext
	end

	
TrainerSunbeamGym_6:
	trainer EVENT_BEAT_SUBEAM_GYM_TRAINER_6, SAFARI, 4, TrainerSunbeamGym_6SeenText, TrainerSunbeamGym_6BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerSunbeamGym_6NormalText
	waitbutton
	closetext
	end
	
SunbeamGymGuyText:
	text "Yo!"
	
	para "Champ in making!"
	
	para "This jungle is"
	line "where you'll get"
	
	para "your next GYM"
	line "BADGE."
	
	para "I guess you could"
	line "call it a"
	cont "JUNGLE-GYM!"
	
	para "The TRAINERS here"
	line "specialize in"
	cont "GRASS #MON."
	
	para "They can't take a"
	line "hit from FIRE or"
	
	para "FLYING moves, but"
	line "using WATER or"
	
	para "ROCK is probably a"
	line "bad idea."
	
	para "Good luck, kid!"
	done

SunbeamGymGuyWinText:
	text "Great job!"

	para "You braved the"
	line "dangers of the"
	
	para "jungle, and came"
	line "out victorious!"
	
	para "That's 3 BADGES"
	line "down!"
	done
	
SunbeamGymGuyNoEntryText1:
	text "Woah!"
	done
	
SunbeamGymGuyNoEntryText:
	text "Easy there champ"
	line "in making!"
	
	para "Don't get ahead of"
	line "yourself."
	
	para "The GYM LEADER's"
	line "not here right"
	cont "now."
	
	para "You should have a"
	line "look around town."
	done
	
TrainerSunbeamGym_1SeenText:
	text "A GYM in a jungle?"
	
	para "How unusual!"
	done
	
TrainerSunbeamGym_1BeatenText:
	text "My word!"
	done
	
TrainerSunbeamGym_1NormalText:
	text "A powerful"
	line "challenger?"
	
	para "How unusual!"
	done
	
TrainerSunbeamGym_2SeenText:
	text "That bridge is"
	line "thin and rickety,"
	
	para "yet you still"
	line "chose to cross it."
	
	para "That determination"
	line "is commendable!"
	done
	
TrainerSunbeamGym_2BeatenText:
	text "Excellent!"
	done
	
TrainerSunbeamGym_2NormalText:
	text "Good show, young"
	line "TRAINER!"
	done
	
TrainerSunbeamGym_3SeenText:
	text "When I took this"
	line "job, I thought I"
	
	para "would be inside"
	line "all day."
	
	para "I'm burning up out"
	line "here!"
	done
	
TrainerSunbeamGym_3BeatenText:
	text "Pant…"
	line "Pant…"
	done
	
TrainerSunbeamGym_3NormalText:
	text "I'm not sure how"
	line "much longer I can"
	cont "take this…"
	
	para "I need A/C!"
	done
	
TrainerSunbeamGym_4SeenText:
	text "I LOVE THE RUSHING"
	line "OF THE WATERFALL!"
	
	para "…"
	
	para "WHAT?"
	
	para "I CAN'T HEAR YOU!"
	done
	
TrainerSunbeamGym_4BeatenText:
	text "GOOD BATTLE!"
	done
	
TrainerSunbeamGym_4NormalText:
	text "WHAT?"
	
	para "THE WATERFALL IS"
	line "TOO LOUD!"
	done
	
TrainerSunbeamGym_5SeenText:
	text "Man!"
	
	para "This GYM is so"
	line "intense!"
	
	para "Training in a"
	line "jungle toughens"
	
	para "your #MON up"
	line "quick!"
	done
	
TrainerSunbeamGym_5BeatenText:
	text "Not tough"
	line "enough!"
	done
	
TrainerSunbeamGym_5NormalText:
	text "You should be"
	line "tough enough to"
	
	para "take on the GYM"
	line "LEADER."
	
	para "I still need to"
	line "train more."
	done
	
TrainerSunbeamGym_6SeenText:
	text "This lush jungle"
	line "is the perfect"
	
	para "place to study "
	line "#MON."
	done
	
TrainerSunbeamGym_6BeatenText:
	text "I see."
	done
	
TrainerSunbeamGym_6NormalText:
	text "I thought this"
	line "would be a good"
	
	para "place to study"
	line "#MON."
	
	para "However, I haven't"
	line "been able to"
	cont "locate any"
	cont "specimens."
	done
	
Movement_SunbeamGymNoEntry1:
	step DOWN
	step_end

Movement_SunbeamGymNoEntry2:
	step RIGHT
	step_end