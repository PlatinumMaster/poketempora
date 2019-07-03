	const_def ; object_event constants
	const ETERNITY_GRUNT1
	const ETERNITY_GRUNT2
	const ETERNITY_GRUNT3
	const ETERNITY_GRUNT4
	const ETERNITY_GRUNT5
	const ETERNITY_GRUNT6
	const ETERNITY_GRUNT7
	const ETERNITY_GRUNT8
	const ETERNITY_GRUNT9
	const ETERNITY_GRUNT10
	const ETERNITY_GRUNT11
	const ETERNITY_GRUNT12

NewBarkTown_MapScripts:
	db 1 ; scene scripts
	scene_script .GivePlayerEssentials ; SCENE_DEFAULT

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.GivePlayerEssentials:
	checkflag ENGINE_POKEGEAR
	iffalse .GivePokeGEAR
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	iffalse .GiveStarter
	end
	
.GivePokeGEAR:
	setflag ENGINE_POKEGEAR
	end
	
.GiveStarter
	givepoke TYPHLOSION, 64, BERRY
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	closetext
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	return
	
; Trainers	
;; GRUNT (1)
Trainer_Grunt:
	trainer ETERNITY_GRUNT, GRUNT1, EVENT_TEMPORA_GRUNT1_DEFEATED, GRUNT1_SEENTEXT, GRUNT1_DEFEATTEXT, 0, DummyScript
	
GRUNT1_SEENTEXT:
	text "Hey! You're not"
	line "authorized to be"
	cont "in here."
	
	para "No big deal,"
	line "you'll go back"
	cont "in tears!"
	done	
	
GRUNT1_DEFEATTEXT:
	text "I'm not crying!"
	done

;; GRUNT (2)	
Trainer_Grunt2:
	trainer ETERNITY_GRUNT, GRUNT1, EVENT_TEMPORA_GRUNT2_DEFEATED, GRUNT2_SEENTEXT, GRUNT2_DEFEATTEXT, 0, DummyScript
	
GRUNT2_SEENTEXT:
	text "Hey! You're not"
	line "authorized to be"
	cont "in here."
	
	para "No big deal,"
	line "you'll go back"
	cont "in tears!"
	done	
	
GRUNT2_DEFEATTEXT:
	text "I'm not crying!"
	done

;; GRUNT (3)
Trainer_Grunt3:
	trainer ETERNITY_GRUNT, GRUNT3, EVENT_TEMPORA_GRUNT3_DEFEATED, GRUNT3_SEENTEXT, GRUNT3_DEFEATTEXT, 0, DummyScript
	
GRUNT3_SEENTEXT:
	text "Hey! You're not"
	line "authorized to be"
	cont "in here."
	
	para "No big deal,"
	line "you'll go back"
	cont "in tears!"
	done	
	
GRUNT3_DEFEATTEXT:
	text "I'm not crying!"
	done

;; GRUNT (4)
Trainer_Grunt4:
	trainer ETERNITY_GRUNT, GRUNT4, EVENT_TEMPORA_GRUNT4_DEFEATED, GRUNT4_SEENTEXT, GRUNT4_DEFEATTEXT, 0, DummyScript
	
GRUNT4_SEENTEXT:
	text "Hey! You're not"
	line "authorized to be"
	cont "in here."
	
	para "No big deal,"
	line "you'll go back"
	cont "in tears!"
	done	
	
GRUNT4_DEFEATTEXT:
	text "I'm not crying!"
	done

;; GRUNT (4)
Trainer_Grunt5:
	trainer ETERNITY_GRUNT, GRUNT5, EVENT_TEMPORA_GRUNT5_DEFEATED, GRUNT5_SEENTEXT, GRUNT5_DEFEATTEXT, 0, DummyScript
	
GRUNT5_SEENTEXT:
	text "Hey! You're not"
	line "authorized to be"
	cont "in here."
	
	para "No big deal,"
	line "you'll go back"
	cont "in tears!"
	done	
	
GRUNT5_DEFEATTEXT:
	text "I'm not crying!"
	done

;; GRUNT (6)
Trainer_Grunt6:
	trainer ETERNITY_GRUNT, GRUNT6, EVENT_TEMPORA_GRUNT6_DEFEATED, GRUNT6_SEENTEXT, GRUNT6_DEFEATTEXT, 0, DummyScript
	
GRUNT6_SEENTEXT:
	text "Hey! You're not"
	line "authorized to be"
	cont "in here."
	
	para "No big deal,"
	line "you'll go back"
	cont "in tears!"
	done	
	
GRUNT6_DEFEATTEXT:
	text "I'm not crying!"
	done

;; GRUNT (7)
Trainer_Grunt7:
	trainer ETERNITY_GRUNT, GRUNT7, EVENT_TEMPORA_GRUNT7_DEFEATED, GRUNT7_SEENTEXT, GRUNT7_DEFEATTEXT, 0, DummyScript
	
GRUNT7_SEENTEXT:
	text "Hey! You're not"
	line "authorized to be"
	cont "in here."
	
	para "No big deal,"
	line "you'll go back"
	cont "in tears!"
	done	
	
GRUNT7_DEFEATTEXT:
	text "I'm not crying!"
	done

;; GRUNT (8)
Trainer_Grunt8:
	trainer ETERNITY_GRUNT, GRUNT8, EVENT_TEMPORA_GRUNT8_DEFEATED, GRUNT8_SEENTEXT, GRUNT8_DEFEATTEXT, 0, DummyScript
	
GRUNT8_SEENTEXT:
	text "Hey! You're not"
	line "authorized to be"
	cont "in here."
	
	para "No big deal,"
	line "you'll go back"
	cont "in tears!"
	done	
	
GRUNT8_DEFEATTEXT:
	text "I'm not crying!"
	done

;; GRUNT (9)
Trainer_Grunt9:
	trainer ETERNITY_GRUNT, GRUNT9, EVENT_TEMPORA_GRUNT9_DEFEATED, GRUNT9_SEENTEXT, GRUNT9_DEFEATTEXT, 0, DummyScript
	
GRUNT9_SEENTEXT:
	text "Hey! You're not"
	line "authorized to be"
	cont "in here."
	
	para "No big deal,"
	line "you'll go back"
	cont "in tears!"
	done	
	
GRUNT9_DEFEATTEXT:
	text "I'm not crying!"
	done

;; GRUNT (10)
Trainer_Grunt10:
	trainer ETERNITY_GRUNT, GRUNT10, EVENT_TEMPORA_GRUNT10_DEFEATED, GRUNT10_SEENTEXT, GRUNT10_DEFEATTEXT, 0, DummyScript
	
GRUNT10_SEENTEXT:
	text "Hey! You're not"
	line "authorized to be"
	cont "in here."
	
	para "No big deal,"
	line "you'll go back"
	cont "in tears!"
	done	
	
GRUNT10_DEFEATTEXT:
	text "I'm not crying!"
	done

; Other Scripts
	
DummyScript:
	opentext
	writetext DummyText
	waitbutton
	closetext
	end

DummyText:
	text "Dumbass hacker!"
	done
	
NewBarkTown_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events
	
	db 0 ; coord events

	db 0 ; bg events

	db 7 ; object events
	object_event  2,  8, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt, -1
	object_event  2,  20, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt2, -1
	object_event  4,  27, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt3, -1	
	object_event  8,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt4, -1	
	object_event  8,  12, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt5, -1	
	object_event  13,  22, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, DummyScript, -1	
	object_event  13,  23, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, DummyScript, -1	
	object_event  17,  8, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt6, -1
	object_event  17,  20, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt7, -1
	object_event  24,  22, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt8, -1	
	object_event  25,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt9, -1	
	object_event  26,  27, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, DummyScript, -1	
	