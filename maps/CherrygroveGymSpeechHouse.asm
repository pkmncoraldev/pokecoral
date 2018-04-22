const_value set 2

CherrygroveGymSpeechHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

CherrygroveGymSpeechHouse_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 23, 2, 3, CHERRYGROVE_CITY
	warp_def 23, 3, 12, CHERRYGROVE_CITY
	warp_def 24, 29, 1, ROUTE_27
	warp_def 25, 29, 2, ROUTE_27

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 6
	person_event SPRITE_YOUNGSTER, 12, 3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 2, TrainerSunbeamGym_1, -1
	person_event SPRITE_YOUNGSTER, 17, 16, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 2, TrainerSunbeamGym_2, -1
	person_event SPRITE_YOUNGSTER, 13, 19, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 2, TrainerSunbeamGym_3, -1
	person_event SPRITE_YOUNGSTER, 6, 18, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 2, TrainerSunbeamGym_4, -1
	person_event SPRITE_YOUNGSTER, 12, 24, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 2, TrainerSunbeamGym_5, -1
	person_event SPRITE_YOUNGSTER, 19, 27, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 2, TrainerSunbeamGym_6, -1

TrainerSunbeamGym_1:
	end
	
TrainerSunbeamGym_2:
	end
	
TrainerSunbeamGym_3:
	end
	
TrainerSunbeamGym_4:
	end
	
TrainerSunbeamGym_5:
	end
	
TrainerSunbeamGym_6:
	end