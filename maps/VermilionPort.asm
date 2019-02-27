const_value set 2

VermilionPort_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

VermilionPort_MapEventHeader:: db 0, 0

.Warps: db 0

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 3
	person_event SPRITE_DELINQUENT_F, 18, 9, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 2, TrainerTrainGraveyard_1, -1
	person_event SPRITE_DELINQUENT_F, 20, 5, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 4, TrainerTrainGraveyard_2, -1
	person_event SPRITE_DELINQUENT_F, 23, 9, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerTrainGraveyard_3, -1

TrainerTrainGraveyard_1:
	trainer EVENT_BEAT_TRAINGRAVEYARD_TRAINER_1, DELINQUENT_F, 2, TrainerTrainGraveyard_1SeenText, TrainerTrainGraveyard_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerTrainGraveyard_1NormalText
	waitbutton
	closetext
	end

TrainerTrainGraveyard_2:
	trainer EVENT_BEAT_TRAINGRAVEYARD_TRAINER_2, DELINQUENT_F, 3, TrainerTrainGraveyard_2SeenText, TrainerTrainGraveyard_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerTrainGraveyard_2NormalText
	waitbutton
	closetext
	end
	
TrainerTrainGraveyard_3:
	trainer EVENT_BEAT_TRAINGRAVEYARD_TRAINER_3, DELINQUENT_F, 4, TrainerTrainGraveyard_3SeenText, TrainerTrainGraveyard_3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerTrainGraveyard_3NormalText
	waitbutton
	closetext
	end
	
TrainerTrainGraveyard_1SeenText:
	text "SEEN TEXT"
	done
	
TrainerTrainGraveyard_1BeatenText:
	text "BEATEN TEXT"
	done
	
TrainerTrainGraveyard_1NormalText:
	text "NORMAL TEXT"
	done
	
TrainerTrainGraveyard_2SeenText:
	text "SEEN TEXT"
	done
	
TrainerTrainGraveyard_2BeatenText:
	text "BEATEN TEXT"
	done
	
TrainerTrainGraveyard_2NormalText:
	text "NORMAL TEXT"
	done
	
TrainerTrainGraveyard_3SeenText:
	text "SEEN TEXT"
	done
	
TrainerTrainGraveyard_3BeatenText:
	text "BEATEN TEXT"
	done
	
TrainerTrainGraveyard_3NormalText:
	text "NORMAL TEXT"
	done