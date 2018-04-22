UnusedPhoneScript: ; 0xbcea5
	farwritetext UnusedPhoneText
	end

; Mom

MomPhoneScript: ; 0xbceaa
	checkevent EVENT_CAN_GET_PASS_FROM_MOM
	iftrue .momhaspass
	farwritetext MomPhoneTextNormal
	end
.momhaspass
	checkevent EVENT_TALKED_TO_MOM_ABOUT_PASS
	iftrue .momhaspass2
	farwritetext MomPhoneTextHasPass1
	setevent EVENT_TALKED_TO_MOM_ABOUT_PASS
	end
.momhaspass2
	farwritetext MomPhoneTextHasPass2
	end
;	setflag ENGINE_DST
;	specialphonecall SPECIALCALL_NONE
	
;	yesorno
;	iftrue MomPhoneSaveMoneyScript
;	jump MomPhoneWontSaveMoneyScript
	end

; Bill

BillPhoneScript1: ; 0xbcfc5
	checkday
	iftrue .daygreet
	checknite
	iftrue .nitegreet
	farwritetext BillPhoneMornGreetingText
	buttonsound
	jump .main

.daygreet ; 0xbcfd7
	farwritetext BillPhoneDayGreetingText
	buttonsound
	jump .main

.nitegreet ; 0xbcfdf
	farwritetext BillPhoneNiteGreetingText
	buttonsound
	jump .main

.main ; 0xbcfe7
	farwritetext BillPhoneGeneriText
	buttonsound
	checkcode VAR_BOXSPACE
	RAM2MEM $0
	if_equal $0, .full
	if_less_than $6, .nearlyfull
	farwritetext BillPhoneNotFullText
	end

.nearlyfull ; 0xbcffd
	farwritetext BillPhoneNearlyFullText
	end

.full ; 0xbd002
	farwritetext BillPhoneFullText
	end

BillPhoneScript2: ; 0xbd007
	farwritetext BillPhoneNewlyFullText
	waitbutton
	end

; Elm

ElmPhoneScript1: ; 0xbd00d
	checkcode VAR_SPECIALPHONECALL
	if_equal $1, .pokerus
	checkevent EVENT_SHOWED_TOGEPI_TO_ELM
	iftrue .discovery
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iffalse .next
	checkevent EVENT_TOGEPI_HATCHED
	iftrue .egghatched
.next
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iftrue .eggunhatched
	checkevent EVENT_ELMS_AIDE_IN_LAB
	iftrue .assistant
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .checkingegg
	checkevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	iftrue .stolen
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue .sawmrpokemon
	farwritetext ElmPhoneStartText
	end

.sawmrpokemon ; 0xbd048
	farwritetext ElmPhoneSawMrPokemonText
	end

.stolen ; 0xbd04d
	farwritetext ElmPhonePokemonStolenText
	end

.checkingegg ; 0xbd052
	farwritetext ElmPhoneCheckingEggText
	end

.assistant ; 0xbd057
	farwritetext ElmPhoneAssistantText
	end

.eggunhatched ; 0xbd05c
	farwritetext ElmPhoneEggUnhatchedText
	end

.egghatched ; 0xbd061
	farwritetext ElmPhoneEggHatchedText
	setevent EVENT_TOLD_ELM_ABOUT_TOGEPI_OVER_THE_PHONE
	end

.discovery ; 0xbd069
	random $2
	if_equal $0, .nextdiscovery
	farwritetext ElmPhoneDiscovery1Text
	end

.nextdiscovery ; 0xbd074
	farwritetext ElmPhoneDiscovery2Text
	end

.pokerus ; 0xbd079
	farwritetext ElmPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end

ElmPhoneScript2: ; 0xbd081
	checkcode VAR_SPECIALPHONECALL
	if_equal $2, .disaster
	if_equal $3, .assistant
	if_equal $4, .rocket
	if_equal $5, .gift
	if_equal $8, .gift
	farwritetext ElmPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end

.disaster ; 0xbd09f
	farwritetext ElmPhoneDisasterText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	end

.assistant ; 0xbd0aa
	farwritetext ElmPhoneEggAssistantText
	specialphonecall SPECIALCALL_NONE
	clearevent EVENT_ELMS_AIDE_IN_VIOLET_POKEMON_CENTER
	setevent EVENT_ELMS_AIDE_IN_LAB
	end

.rocket ; 0xbd0b8
	farwritetext ElmPhoneRocketText
	specialphonecall SPECIALCALL_NONE
	end

.gift ; 0xbd0c0
	farwritetext ElmPhoneGiftText
	specialphonecall SPECIALCALL_NONE
	end

.unused ; 0xbd0c8
	farwritetext ElmPhoneUnusedText
	specialphonecall SPECIALCALL_NONE
	end
; bd0d0

; Jack



; Beverly

BeverlyPhoneScript1:
	end

BeverlyPhoneScript2:
	end

; Huey

HueyPhoneScript1:
	end
	
HueyPhoneScript2:
	end

; Gaven

GavenPhoneScript1:
	end
	
GavenPhoneScript2:
	end

; Beth

BethPhoneScript1:
	end

BethPhoneScript2:
	end

; Jose

JosePhoneScript1:
	trainertotext BIRD_KEEPER, JOSE2, $0
	checkflag ENGINE_JOSE
	iftrue UnknownScript_0xbd2bd
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_JOSE_SATURDAY_NIGHT
	iftrue UnknownScript_0xbd2b9
	checkflag ENGINE_JOSE_HAS_STAR_PIECE
	iftrue UnknownScript_0xbd2c4
	checkcode VAR_WEEKDAY
	if_not_equal SATURDAY, UnknownScript_0xbd2b9
	checknite
	iftrue UnknownScript_0xbd301

UnknownScript_0xbd2b9:
	farjump UnknownScript_0xa0920

UnknownScript_0xbd2bd:
	landmarktotext ROUTE_27, $2
	farjump UnknownScript_0xa0a41

UnknownScript_0xbd2c4:
	landmarktotext ROUTE_27, $2
	farjump UnknownScript_0xa0a41

JosePhoneScript2:
	trainertotext BIRD_KEEPER, JOSE2, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_JOSE
	iftrue UnknownScript_0xbd2f5
	checkflag ENGINE_JOSE_SATURDAY_NIGHT
	iftrue UnknownScript_0xbd2f5
	checkflag ENGINE_JOSE_HAS_STAR_PIECE
	iftrue UnknownScript_0xbd2f5
	farscall PhoneScript_Random3
	if_equal $0, UnknownScript_0xbd304
	farscall PhoneScript_Random3
	if_equal $0, UnknownScript_0xbd312

UnknownScript_0xbd2f5:
	farscall PhoneScript_Random3
	if_equal $0, UnknownScript_0xbd30e
	farjump UnknownScript_0xa0000

UnknownScript_0xbd301:
	setflag ENGINE_JOSE_SATURDAY_NIGHT

UnknownScript_0xbd304:
	landmarktotext ROUTE_27, $2
	setflag ENGINE_JOSE
	farjump UnknownScript_0xa0376

UnknownScript_0xbd30e:
	farjump UnknownScript_0xa0584

UnknownScript_0xbd312:
	setflag ENGINE_JOSE_HAS_STAR_PIECE
	landmarktotext ROUTE_27, $2
	farjump UnknownScript_0xa05e6

; Reena

ReenaPhoneScript1:
	end

ReenaPhoneScript2:
	end

; Joey


; Wade

WadePhoneScript1:
	ret

WadePhoneScript2:
	ret

; Ralph


; Liz


; Anthony

AnthonyPhoneScript1:
	ret

AnthonyPhoneScript2:
	ret

; Todd

; Gina

; Irwin

IrwinPhoneScript1:
	trainertotext JUGGLER, IRWIN1, $0
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue UnknownScript_0xbd7f9
	farjump UnknownScript_0xa09c8

UnknownScript_0xbd7f9:
	farjump UnknownScript_0xa05be

IrwinPhoneScript2:
	trainertotext JUGGLER, IRWIN1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue UnknownScript_0xbd80f
	farjump UnknownScript_0xa0848

UnknownScript_0xbd80f:
	farjump UnknownScript_0xa05be

; Arnie

ArniePhoneScript1:
	ret

ArniePhoneScript2:
	ret

; Alan


; Dana


; Chad


DerekPhoneScript1:
	end

DerekPhoneScript2:
	end


BrentPhoneScript1:
	trainertotext POKEMANIAC, BRENT1, $0
	checkflag ENGINE_BRENT
	iftrue UnknownScript_0xbdb59
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_BRENT_MONDAY_MORNING
	iftrue UnknownScript_0xbdb55
	checkcode VAR_WEEKDAY
	if_not_equal MONDAY, UnknownScript_0xbdb55
	checkmorn
	iftrue UnknownScript_0xbdb88

UnknownScript_0xbdb55:
	farjump UnknownScript_0xa0998

UnknownScript_0xbdb59:
	landmarktotext ROUTE_43, $2
	farjump UnknownScript_0xa0a87

BrentPhoneScript2:
	trainertotext POKEMANIAC, BRENT1, $0
	farscall PhoneScript_GreetPhone_Male
	farscall PhoneScript_Random2
	if_equal $0, UnknownScript_0xbdb95
	checkflag ENGINE_BRENT
	iftrue UnknownScript_0xbdb84
	checkflag ENGINE_BRENT_MONDAY_MORNING
	iftrue UnknownScript_0xbdb84
	farscall PhoneScript_Random2
	if_equal $0, UnknownScript_0xbdb8b

UnknownScript_0xbdb84:
	farjump UnknownScript_0xa0000

UnknownScript_0xbdb88:
	setflag ENGINE_BRENT_MONDAY_MORNING

UnknownScript_0xbdb8b:
	landmarktotext ROUTE_43, $2
	setflag ENGINE_BRENT
	farjump UnknownScript_0xa0376

UnknownScript_0xbdb95:
	farjump UnknownScript_0xa07ce


; Vance

VancePhoneScript1:
	trainertotext BIRD_KEEPER, VANCE1, $0
	checkflag ENGINE_VANCE
	iftrue UnknownScript_0xbdc96
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_VANCE_WEDNESDAY_NIGHT
	iftrue UnknownScript_0xbdc92
	checkcode VAR_WEEKDAY
	if_not_equal WEDNESDAY, UnknownScript_0xbdc92
	checknite
	iftrue UnknownScript_0xbdcc1

UnknownScript_0xbdc92:
	farjump UnknownScript_0xa09a8

UnknownScript_0xbdc96:
	landmarktotext ROUTE_44, $2
	farjump UnknownScript_0xa0a91

VancePhoneScript2:
	trainertotext BIRD_KEEPER, VANCE1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_VANCE
	iftrue UnknownScript_0xbdcbd
	checkflag ENGINE_VANCE_WEDNESDAY_NIGHT
	iftrue UnknownScript_0xbdcbd
	farscall PhoneScript_Random3
	if_equal $0, UnknownScript_0xbdcc4
	if_equal $1, UnknownScript_0xbdcc4

UnknownScript_0xbdcbd:
	farjump UnknownScript_0xa0000

UnknownScript_0xbdcc1:
	setflag ENGINE_VANCE_WEDNESDAY_NIGHT

UnknownScript_0xbdcc4:
	landmarktotext ROUTE_44, $2
	setflag ENGINE_VANCE
	farjump UnknownScript_0xa0376


; Kenji

KenjiPhoneScript1:
	trainertotext BLACKBELT_T, KENJI3, $0
	farscall PhoneScript_AnswerPhone_Male
	farjump UnknownScript_0xa09ee

KenjiPhoneScript2:
	trainertotext BLACKBELT_T, KENJI3, $0
	farscall PhoneScript_GreetPhone_Male
	farjump UnknownScript_0xa064c

; Parry

ParryPhoneScript1:
	ret

ParryPhoneScript2:
	ret
; Erin


PhoneScript_Random2:
	random 2
	end

PhoneScript_Random3:
	random 3
	end

PhoneScript_Random4:
	random 4
	end

PhoneScript_Random5:
	random 5
	end

PhoneScript_Random11:
	random 11
	end

PhoneScript_AnswerPhone_Male:
	end



.Huey:
	farwritetext UnknownText_0x1b5073
	buttonsound
	end

.Gaven:
	farwritetext UnknownText_0x1b5270
	buttonsound
	end

.Jose:
	farwritetext UnknownText_0x1b55ae
	buttonsound
	end

.Joey:
	farwritetext UnknownText_0x1b589a
	buttonsound
	end

.Wade:
	farwritetext UnknownText_0x1b5a3b
	buttonsound
	end

.Ralph:
	farwritetext UnknownText_0x1b5c10
	buttonsound
	end

.Anthony:
	farwritetext UnknownText_0x1b5f7a
	buttonsound
	end

.Todd:
	farwritetext UnknownText_0x1b60f5
	buttonsound
	end

.Irwin:
	farwritetext UnknownText_0x1b638c
	buttonsound
	end

.Arnie:
	farwritetext UnknownText_0x1b6454
	buttonsound
	end


.Derek:
	farwritetext UnknownText_0x1b69a8
	buttonsound
	end

.Tully:
	farwritetext UnknownText_0x1b6b39
	buttonsound
	end

.Brent:
	farwritetext UnknownText_0x1b6c96
	buttonsound
	end

.Vance:
	farwritetext UnknownText_0x1b7019
	buttonsound
	end

.Wilton:
	farwritetext UnknownText_0x1b71d5
	buttonsound
	end

.Kenji:
	farwritetext UnknownText_0x1b730b
	buttonsound
	end

.Parry:
	farwritetext UnknownText_0x1b73c7
	buttonsound
	end

PhoneScript_AnswerPhone_Male_Day:
	end



.Huey:
	farwritetext UnknownText_0x1b509b
	buttonsound
	end

.Gaven:
	farwritetext UnknownText_0x1b52a5
	buttonsound
	end

.Jose:
	farwritetext UnknownText_0x1b55da
	buttonsound
	end

.Joey:
	farwritetext UnknownText_0x1b58c2
	buttonsound
	end

.Wade:
	farwritetext UnknownText_0x1b5a74
	buttonsound
	end

.Ralph:
	farwritetext UnknownText_0x1b5c63
	buttonsound
	end

.Anthony:
	farwritetext UnknownText_0x1b5f9e
	buttonsound
	end

.Todd:
	farwritetext UnknownText_0x1b611b
	buttonsound
	end

.Irwin:
	farwritetext UnknownText_0x1b63a8
	buttonsound
	end

.Arnie:
	farwritetext UnknownText_0x1b647e
	buttonsound
	end


.Derek:
	farwritetext UnknownText_0x1b69d2
	buttonsound
	end

.Tully:
	farwritetext UnknownText_0x1b6b65
	buttonsound
	end

.Brent:
	farwritetext UnknownText_0x1b6cc6
	buttonsound
	end

.Vance:
	farwritetext UnknownText_0x1b7057
	buttonsound
	end

.Wilton:
	farwritetext UnknownText_0x1b71fc
	buttonsound
	end

.Kenji:
	farwritetext UnknownText_0x1b7331
	buttonsound
	end

.Parry:
	farwritetext UnknownText_0x1b73ef
	buttonsound
	end

PhoneScript_AnswerPhone_Male_Nite:
	end


.Huey:
	farwritetext UnknownText_0x1b50c2
	buttonsound
	end

.Gaven:
	farwritetext UnknownText_0x1b52cc
	buttonsound
	end

.Jose:
	farwritetext UnknownText_0x1b55fc
	buttonsound
	end

.Joey:
	farwritetext UnknownText_0x1b58ea
	buttonsound
	end

.Wade:
	farwritetext UnknownText_0x1b5a9f
	buttonsound
	end

.Ralph:
	farwritetext UnknownText_0x1b5cb6
	buttonsound
	end

.Anthony:
	farwritetext UnknownText_0x1b5fc9
	buttonsound
	end

.Todd:
	farwritetext UnknownText_0x1b6149
	buttonsound
	end

.Irwin:
	farwritetext UnknownText_0x1b63c4
	buttonsound
	end

.Arnie:
	farwritetext UnknownText_0x1b64a8
	buttonsound
	end

.Derek:
	farwritetext UnknownText_0x1b69f8
	buttonsound
	end

.Tully:
	farwritetext UnknownText_0x1b6b92
	buttonsound
	end

.Brent:
	farwritetext UnknownText_0x1b6cf6
	buttonsound
	end

.Vance:
	farwritetext UnknownText_0x1b7092
	buttonsound
	end

.Wilton:
	farwritetext UnknownText_0x1b722a
	buttonsound
	end

.Kenji:
	farwritetext UnknownText_0x1b7357
	buttonsound
	end

.Parry:
	farwritetext UnknownText_0x1b7417
	buttonsound
	end

PhoneScript_AnswerPhone_Female:

.Beverly:
	farwritetext UnknownText_0x1b4f21
	buttonsound
	end

.Beth:
	farwritetext UnknownText_0x1b53f7
	buttonsound
	end

.Reena:
	farwritetext UnknownText_0x1b5702
	buttonsound
	end

.Liz:
	farwritetext UnknownText_0x1b5d9f
	buttonsound
	end

.Gina:
	farwritetext UnknownText_0x1b626a
	buttonsound
	end

.Dana:
	farwritetext UnknownText_0x1b66c8
	buttonsound
	end

.Tiffany:
	farwritetext UnknownText_0x1b6e7c
	buttonsound
	end

.Erin:
	farwritetext UnknownText_0x1b751a
	buttonsound
	end

PhoneScript_AnswerPhone_Female_Day:
	end
.Beverly:
	farwritetext UnknownText_0x1b4f4d
	buttonsound
	end

.Beth:
	farwritetext UnknownText_0x1b5424
	buttonsound
	end

.Reena:
	farwritetext UnknownText_0x1b572e
	buttonsound
	end

.Liz:
	farwritetext UnknownText_0x1b5dcc
	buttonsound
	end

.Gina:
	farwritetext UnknownText_0x1b6296
	buttonsound
	end

.Dana:
	farwritetext UnknownText_0x1b66ec
	buttonsound
	end

.Tiffany:
	farwritetext UnknownText_0x1b6ea6
	buttonsound
	end

.Erin:
	farwritetext UnknownText_0x1b7548
	buttonsound
	end

PhoneScript_AnswerPhone_Female_Nite:
	end

.Beverly:
	farwritetext UnknownText_0x1b4f75
	buttonsound
	end

.Beth:
	farwritetext UnknownText_0x1b5446
	buttonsound
	end

.Reena:
	farwritetext UnknownText_0x1b575a
	buttonsound
	end

.Liz:
	farwritetext UnknownText_0x1b5df8
	buttonsound
	end

.Gina:
	farwritetext UnknownText_0x1b62c5
	buttonsound
	end

.Dana:
	farwritetext UnknownText_0x1b6713
	buttonsound
	end

.Tiffany:
	farwritetext UnknownText_0x1b6ec9
	buttonsound
	end

.Erin:
	farwritetext UnknownText_0x1b756f
	buttonsound
	end

PhoneScript_GreetPhone_Male:
	end



.Huey:
	farwritetext UnknownText_0x1b50e9
	buttonsound
	end

.Gaven:
	farwritetext UnknownText_0x1b5301
	buttonsound
	end

.Jose:
	farwritetext UnknownText_0x1b5628
	buttonsound
	end

.Joey:
	farwritetext UnknownText_0x1b5912
	buttonsound
	end

.Wade:
	farwritetext UnknownText_0x1b5ad8
	buttonsound
	end

.Ralph:
	farwritetext UnknownText_0x1b5d09
	buttonsound
	end

.Anthony:
	farwritetext UnknownText_0x1b5ff6
	buttonsound
	end

.Todd:
	farwritetext UnknownText_0x1b616e
	buttonsound
	end

.Irwin:
	farwritetext UnknownText_0x1b63e3
	buttonsound
	end

.Arnie:
	farwritetext UnknownText_0x1b64d2
	buttonsound
	end


.Derek:
	farwritetext UnknownText_0x1b6a22
	buttonsound
	end

.Tully:
	farwritetext UnknownText_0x1b6bb9
	buttonsound
	end

.Brent:
	farwritetext UnknownText_0x1b6d26
	buttonsound
	end

.Vance:
	farwritetext UnknownText_0x1b70e7
	buttonsound
	end

.Wilton:
	farwritetext UnknownText_0x1b725c
	buttonsound
	end

.Kenji:
	farwritetext UnknownText_0x1b737f
	buttonsound
	end

.Parry:
	farwritetext UnknownText_0x1b743f
	buttonsound
	end

PhoneScript_GreetPhone_Male_Day:
	end



.Huey:
	farwritetext UnknownText_0x1b511a
	buttonsound
	end

.Gaven:
	farwritetext UnknownText_0x1b5335
	buttonsound
	end

.Jose:
	farwritetext UnknownText_0x1b564c
	buttonsound
	end

.Joey:
	farwritetext UnknownText_0x1b5948
	buttonsound
	end

.Wade:
	farwritetext UnknownText_0x1b5b0b
	buttonsound
	end

.Ralph:
	farwritetext UnknownText_0x1b5d21
	buttonsound
	end

.Anthony:
	farwritetext UnknownText_0x1b6017
	buttonsound
	end

.Todd:
	farwritetext UnknownText_0x1b618f
	buttonsound
	end

.Irwin:
	farwritetext UnknownText_0x1b6407
	buttonsound
	end

.Arnie:
	farwritetext UnknownText_0x1b6506
	buttonsound
	end


.Derek:
	farwritetext UnknownText_0x1b6a56
	buttonsound
	end

.Tully:
	farwritetext UnknownText_0x1b6bef
	buttonsound
	end

.Brent:
	farwritetext UnknownText_0x1b6d57
	buttonsound
	end

.Vance:
	farwritetext UnknownText_0x1b7112
	buttonsound
	end

.Wilton:
	farwritetext UnknownText_0x1b7283
	buttonsound
	end

.Kenji:
	farwritetext UnknownText_0x1b7397
	buttonsound
	end

.Parry:
	farwritetext UnknownText_0x1b746f
	buttonsound
	end

PhoneScript_GreetPhone_Male_Nite:
	end



.Huey:
	farwritetext UnknownText_0x1b5154
	buttonsound
	end

.Gaven:
	farwritetext UnknownText_0x1b535f
	buttonsound
	end

.Jose:
	farwritetext UnknownText_0x1b5670
	buttonsound
	end

.Joey:
	farwritetext UnknownText_0x1b597c
	buttonsound
	end

.Wade:
	farwritetext UnknownText_0x1b5b37
	buttonsound
	end

.Ralph:
	farwritetext UnknownText_0x1b5d39
	buttonsound
	end

.Anthony:
	farwritetext UnknownText_0x1b6041
	buttonsound
	end

.Todd:
	farwritetext UnknownText_0x1b61bd
	buttonsound
	end

.Irwin:
	farwritetext UnknownText_0x1b642c
	buttonsound
	end

.Arnie:
	farwritetext UnknownText_0x1b6539
	buttonsound
	end


.Derek:
	farwritetext UnknownText_0x1b6a8b
	buttonsound
	end

.Tully:
	farwritetext UnknownText_0x1b6c23
	buttonsound
	end

.Brent:
	farwritetext UnknownText_0x1b6d88
	buttonsound
	end

.Vance:
	farwritetext UnknownText_0x1b7132
	buttonsound
	end

.Wilton:
	farwritetext UnknownText_0x1b72a5
	buttonsound
	end

.Kenji:
	farwritetext UnknownText_0x1b73af
	buttonsound
	end

.Parry:
	farwritetext UnknownText_0x1b749b
	buttonsound
	end

PhoneScript_GreetPhone_Female:


.Beverly:
	farwritetext UnknownText_0x1b4fa1
	buttonsound
	end

.Beth:
	farwritetext UnknownText_0x1b5472
	buttonsound
	end

.Reena:
	farwritetext UnknownText_0x1b5786
	buttonsound
	end

.Liz:
	farwritetext UnknownText_0x1b5e25
	buttonsound
	end

.Gina:
	farwritetext UnknownText_0x1b62f1
	buttonsound
	end

.Dana:
	farwritetext UnknownText_0x1b6738
	buttonsound
	end

.Tiffany:
	farwritetext UnknownText_0x1b6ef3
	buttonsound
	end

.Erin:
	farwritetext UnknownText_0x1b758f
	buttonsound
	end

PhoneScript_GreetPhone_Female_Day:

.Beverly:
	farwritetext UnknownText_0x1b4fda
	buttonsound
	end

.Beth:
	farwritetext UnknownText_0x1b54a6
	buttonsound
	end

.Reena:
	farwritetext UnknownText_0x1b57b7
	buttonsound
	end

.Liz:
	farwritetext UnknownText_0x1b5e59
	buttonsound
	end

.Gina:
	farwritetext UnknownText_0x1b630e
	buttonsound
	end

.Dana:
	farwritetext UnknownText_0x1b6757
	buttonsound
	end

.Tiffany:
	farwritetext UnknownText_0x1b6f1c
	buttonsound
	end

.Erin:
	farwritetext UnknownText_0x1b75ac
	buttonsound
	end

PhoneScript_GreetPhone_Female_Nite:

.Beverly:
	farwritetext UnknownText_0x1b5004
	buttonsound
	end

.Beth:
	farwritetext UnknownText_0x1b54d4
	buttonsound
	end

.Reena:
	farwritetext UnknownText_0x1b57e8
	buttonsound
	end

.Liz:
	farwritetext UnknownText_0x1b5e8e
	buttonsound
	end

.Gina:
	farwritetext UnknownText_0x1b6331
	buttonsound
	end

.Dana:
	farwritetext UnknownText_0x1b6776
	buttonsound
	end

.Tiffany:
	farwritetext UnknownText_0x1b6f37
	buttonsound
	end

.Erin:
	farwritetext UnknownText_0x1b75c9
	buttonsound
	end

PhoneScript_Generic_Male:
	end



.Unknown:
	farwritetext UnknownText_0x1b518b
	buttonsound
	end

.Gaven:
	farwritetext UnknownText_0x1b5393
	buttonsound
	end

.Jose:
	farwritetext UnknownText_0x1b5694
	buttonsound
	end

.Joey:
	farwritetext UnknownText_0x1b59b2
	buttonsound
	end

.Wade:
	farwritetext UnknownText_0x1b5b68
	buttonsound
	end

.Ralph:
	farwritetext UnknownText_0x1b5d51
	buttonsound
	end

.Anthony:
	farwritetext UnknownText_0x1b606f
	buttonsound
	end

.Todd:
	farwritetext UnknownText_0x1b61f2
	buttonsound
	end

.Arnie:
	farwritetext UnknownText_0x1b656c
	buttonsound
	end


.Derek:
	farwritetext UnknownText_0x1b6ac2
	buttonsound
	end

.Tully:
	farwritetext UnknownText_0x1b6c56
	buttonsound
	end

.Brent:
	farwritetext UnknownText_0x1b6db9
	buttonsound
	end

.Vance:
	farwritetext UnknownText_0x1b7161
	buttonsound
	end

.Wilton:
	farwritetext UnknownText_0x1b72d0
	buttonsound
	end

.Parry:
	farwritetext UnknownText_0x1b74c8
	buttonsound
	end

PhoneScript_Generic_Female:

.Beverly:
	farwritetext UnknownText_0x1b502b
	buttonsound
	end

.Beth:
	farwritetext UnknownText_0x1b5510
	buttonsound
	end

.Reena:
	farwritetext UnknownText_0x1b5819
	buttonsound
	end

.Liz:
	farwritetext UnknownText_0x1b5ebe
	buttonsound
	end

.Gina:
	farwritetext UnknownText_0x1b6352
	buttonsound
	end

.Dana:
	farwritetext UnknownText_0x1b6795
	buttonsound
	end

.Tiffany:
	farwritetext UnknownText_0x1b6f60
	buttonsound
	end

.Erin:
	farwritetext UnknownText_0x1b75e5
	buttonsound
	end

PhoneScript_MonFlavorText:
	special RandomPhoneMon
	farscall PhoneScript_Random2
	if_equal $0, .TooEnergetic
	farwritetext UnknownText_0x1b518b
	buttonsound
	farjump PhoneScript_HangupText_Male

.TooEnergetic:
	farjump .unnecessary

.unnecessary
	farwritetext UnknownText_0x1b522b
	buttonsound
	farjump PhoneScript_HangupText_Male
; be643


String_be643: db "Grandma@"
String_be64b: db "Grandpa@"
String_be653: db "Mom@"
String_be657: db "Dad@"
String_be65b: db "Sister@"
String_be662: db "Brother@"

