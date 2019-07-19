	object_const_def ; object_event constants
	const ETERNITY_GRUNT1 ;; Battleable
	const ETERNITY_GRUNT2 ;; Battleable
	const ETERNITY_GRUNT3 ;; Battleable
	const ETERNITY_GRUNT4 ;; Battleable
	const ETERNITY_GRUNT5 ;; Battleable
	const ETERNITY_GRUNT6 ;; Battleable
	const ETERNITY_GRUNT7 ;; Battleable
	const ETERNITY_GRUNT8 ;; Battleable
	const ETERNITY_GRUNT9 ;; Moves
	const ETERNITY_GRUNT10
	const ETERNITY_GRUNT11
	const ETERNITY_GRUNT12
	const DITTO_MODDED
	const ETERNITY_MINERVA
	const PLAYER_DUPE
	const ETERNITY_ZENTHOR
	const POKEBALL

NewBarkTown_MapScripts:
	db 1 ; scene scripts
	scene_script .GivePlayerEssentials ; SCENE_DEFAULT

	db 0 ; callbacks
	
; Player Scripts	
.GivePlayerEssentials:
	checkflag ENGINE_POKEGEAR
	iffalse .GivePokeGEAR
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	iffalse .GiveStarter
	checkevent EVENT_TEMPORA_WARP_ACTIVATED
	iffalse CheckSwitch1
	checkevent DISABLED
	iffalse .HideMyBalls
	checkflag ENGINE_TEMPORA_ISDITTO
	iftrue .PaletteFix
	end
.HideMyBalls:
	disappear POKEBALL
	disappear PLAYER_DUPE
	setevent DISABLED
	end
.GivePokeGEAR:
	setflag ENGINE_POKEGEAR
	end
.GiveStarter:
	opentext 
	writetext IPF_Carepackage
	checkflag ENGINE_TEMPORA_ISDITTO
	iffalse .GiveStarter2
	sjump .GiveStarter3
	end
.GiveStarter2:
	sjump .GiveStarter3
	end
.GiveStarter3:
	givepoke BULBASAUR, 50
	givepoke TYPHLOSION, 47
	givepoke LAPRAS, 45
	givepoke UMBREON, 45
	givepoke SKARMORY, 47
	givepoke ALAKAZAM, 46
	giveitem HYPER_POTION, 50
	giveitem REVIVE, 50
	giveitem ELIXER, 15
	giveitem FULL_HEAL, 25
	closetext
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	end	
.PaletteFix:
	setval (PAL_NPC_BROWN << 4)
	special SetPlayerPalette
	end
IPF_Carepackage:
	text "Opened an IPF care"
	line "package!"
	done
;; Switch Warp Panel
CheckSwitch1:
	checkevent EVENT_TEMPORA_SWITCH1_ACTIVATED
	iftrue CheckSwitch2
	end
CheckSwitch2:
	checkevent EVENT_TEMPORA_SWITCH2_ACTIVATED
	iftrue CheckSwitch3
	end
CheckSwitch3:
	checkevent EVENT_TEMPORA_SWITCH3_ACTIVATED
	iftrue .EnablePanel
	end
.EnablePanel:
	setevent EVENT_TEMPORA_WARP_ACTIVATED
	opentext
	writetext WarpActivated
	waitbutton
	closetext
	end
	
WarpActivated:
	text "You hear a switch"
	line "flick."
	done
	
; Trainers	
;; GRUNT (1)
Trainer_Grunt:
	trainer ETERNITY_GRUNT, GRUNT1, EVENT_TEMPORA_GRUNT1_DEFEATED, GRUNT1_SEENTEXT, GRUNT1_DEFEATTEXT, 0, GRUNT1_AFTERTEXT
	
GRUNT1_SEENTEXT:
	text "Wahahahaha!"
	
	para "You dare stand"
	line "in our way?"
	
	para "You won't make"
	line "it past me,"
	cont "buddy!"
	done	
	
GRUNT1_DEFEATTEXT:
	text "Gah...?"
	
	para "How did this"
	line "happen?"
	done

;; GRUNT (2)	
Trainer_Grunt2:
	trainer ETERNITY_GRUNT, GRUNT1, EVENT_TEMPORA_GRUNT2_DEFEATED, GRUNT2_SEENTEXT, GRUNT2_DEFEATTEXT, 0, GRUNT2_AFTERTEXT
	
GRUNT2_SEENTEXT:
	text "Your presence"
	line "here is"
	cont "unauthorized!"
	
	para "What are you,"
	line "a dumb hacker?"
	done	
	
GRUNT2_DEFEATTEXT:
	text "I'm not crying!"
	done

;; GRUNT (3)
Trainer_Grunt3:
	trainer ETERNITY_GRUNT, GRUNT3, EVENT_TEMPORA_GRUNT3_DEFEATED, GRUNT3_SEENTEXT, GRUNT3_DEFEATTEXT, 0, GRUNT3_AFTERTEXT
	
GRUNT3_SEENTEXT:
	text "Oh wow, you've"
	line "found the first"
	cont "statue."

	para "Wanna pass?"

	para "Well, you gotta"
	line "go through me"
	cont "first!"
	done	
	
GRUNT3_DEFEATTEXT:
	text "You're pretty"
	line "strong, gotta"
	cont "hand it to ya."
	done

;; GRUNT (4)
Trainer_Grunt4:
	trainer ETERNITY_GRUNT, GRUNT4, EVENT_TEMPORA_GRUNT4_DEFEATED, GRUNT4_SEENTEXT, GRUNT4_DEFEATTEXT, 0, GRUNT4_AFTERTEXT
	
GRUNT4_SEENTEXT:
	text "Halt!"
	line "Intruder alert!"
	para "Prepare to be"
	line "destroyed!"	
	done
	
GRUNT4_DEFEATTEXT:
	text "Beep, boop,"
	line "system bypassed!"
	done

;; GRUNT (5)
Trainer_Grunt5:
	trainer ETERNITY_GRUNT, GRUNT5, EVENT_TEMPORA_GRUNT5_DEFEATED, GRUNT5_SEENTEXT, GRUNT5_DEFEATTEXT, 0, GRUNT5_AFTERTEXT
	
GRUNT5_SEENTEXT:
	text "S-Stop right"
	line "there!"

	para "You'll be"
	line "defeated by"
	cont "Team Eternity!"
	done	
	
GRUNT5_DEFEATTEXT:
	text "Eeeeek!"

	para "Just leave me"
	line "alone!"
	done

;; GRUNT (6)
Trainer_Grunt6:
	trainer ETERNITY_GRUNT, GRUNT6, EVENT_TEMPORA_GRUNT6_DEFEATED, GRUNT6_SEENTEXT, GRUNT6_DEFEATTEXT, 0, GRUNT6_AFTERTEXT
	
GRUNT6_SEENTEXT:
	text "Wohohoho!"

	para "Next to me lies"
	line "the second"
	cont "statue."

	para "Got what it"
	line "takes to defeat"
	cont "me?"
	done
	
GRUNT6_DEFEATTEXT:
	text "Darn, you're a"
	line "real pain!"
	done

;; GRUNT (7)
Trainer_Grunt7:
	trainer ETERNITY_GRUNT, GRUNT7, EVENT_TEMPORA_GRUNT7_DEFEATED, GRUNT7_SEENTEXT, GRUNT7_DEFEATTEXT, 0, GRUNT7_AFTERTEXT
	
GRUNT7_SEENTEXT:
	text "I swear there's"
	line "nothing behind"
	cont "me!" 

	para "Get lost!"
	done	
	
GRUNT7_DEFEATTEXT:
	text "Oh no, DITTO!"
	done

;; GRUNT (8)
Trainer_Grunt8:
	trainer ETERNITY_GRUNT, GRUNT8, EVENT_TEMPORA_GRUNT8_DEFEATED, GRUNT8_SEENTEXT, GRUNT8_DEFEATTEXT, 0, GRUNT8_AFTERTEXT
	
GRUNT8_SEENTEXT:
	text "Oho, so you'd"
	line "like to use the"
	cont "third statue?"

	para "Not a chance!"
	done
	
GRUNT8_DEFEATTEXT:
	text "Oh..." 
	line "Oof..."
	done

; Other Scripts
	
GRUNT1_AFTERTEXT:
	endifjustbattled
	checkflag ENGINE_TEMPORA_ISDITTO
	iftrue GRUNT1_FOOLED
	opentext
	writetext GRUNT1_TEXT
	waitbutton
	closetext
	end

GRUNT1_FOOLED:
	opentext
	writetext GRUNT1_FOOLED_TEXT
	waitbutton
	closetext
	end
	
GRUNT1_FOOLED_TEXT:
	text "Oh, hey." 
	
	para "Get to your"
	line "position!"
	done
GRUNT1_TEXT:
	text "Just you wait"
	line "till you battle"
	cont "the other"
	cont "grunts!"

	para "Hyah!"
	done
	
	
GRUNT2_AFTERTEXT:
	endifjustbattled
	checkflag ENGINE_TEMPORA_ISDITTO
	iftrue GRUNT2_FOOLED
	opentext
	writetext GRUNT2_TEXT
	waitbutton
	closetext
	end
	
GRUNT2_FOOLED:
	opentext
	writetext GRUNT2_FOOLED_TEXT
	waitbutton
	closetext
	end
	
GRUNT2_FOOLED_TEXT:
	text "What're you doing"
	line "here?"

	para "Get to work!"
	done
	
GRUNT2_TEXT:
	text "Oops."
	done
	
GRUNT3_AFTERTEXT:
	endifjustbattled
	checkflag ENGINE_TEMPORA_ISDITTO
	iftrue GRUNT3_FOOLED
	opentext
	writetext GRUNT3_TEXT
	waitbutton
	closetext
	end	
	
GRUNT3_TEXT:
	text "Well, you need"
	line "to turn on two"
	cont "more switches"
	cont "to activate a"
	cont "warp panel."
	done
	
GRUNT3_FOOLED:
	opentext
	writetext GRUNT3_FOOLED_TEXT
	waitbutton
	closetext
	end
	
GRUNT3_FOOLED_TEXT:
	text "What're you doing"
	line "here?"

	para "Get to work!"
	done
	
GRUNT4_AFTERTEXT:
	endifjustbattled
	checkflag ENGINE_TEMPORA_ISDITTO
	iftrue GRUNT4_FOOLED
	opentext
	writetext GRUNT4_TEXT
	waitbutton
	closetext
	end	

GRUNT4_FOOLED:
	opentext
	writetext GRUNT4_FOOLED_TEXT
	waitbutton
	closetext
	end
	
GRUNT4_FOOLED_TEXT:
	text "BEEEEEEEEEEEEEEP!"
	para "He's moving like"
	line "a robot."
	done
	
GRUNT4_TEXT:
	text "I tried being a"
	line "robot, but I"
	cont "guess it's not"
	cont "working..."
	done

	
GRUNT5_AFTERTEXT:
	endifjustbattled
	checkflag ENGINE_TEMPORA_ISDITTO
	iftrue GRUNT5_FOOLED
	opentext
	writetext GRUNT5_TEXT
	waitbutton
	closetext
	end	
	
GRUNT5_FOOLED:
	opentext
	writetext GRUNT5_FOOLED_TEXT
	waitbutton
	closetext
	end
	
GRUNT5_FOOLED_TEXT:
	text "Uwah!" 

	para "Wh-What do you"
	line "want?"
	done
	
GRUNT5_TEXT:
	text "I'm actually a"
	line "girl, bet you"
	cont "couldn't tell"
	cont "because of the"
	cont "suit!"
	done
	
GRUNT6_AFTERTEXT:
	endifjustbattled
	checkflag ENGINE_TEMPORA_ISDITTO
	iftrue GRUNT6_FOOLED
	opentext
	writetext GRUNT6_TEXT
	waitbutton
	closetext
	end	
	
GRUNT6_FOOLED:
	opentext
	writetext GRUNT6_FOOLED_TEXT
	waitbutton
	closetext
	end
	
GRUNT6_FOOLED_TEXT:
	text "Get back to your"
	line "position, fool!"
	done
	
GRUNT6_TEXT:
	text "I wonder how"
	line "you're going to"
	cont "reach the warp"
	cont "panel... you"
	cont "can't!"
	done
	
GRUNT7_AFTERTEXT:
	endifjustbattled
	checkflag ENGINE_TEMPORA_ISDITTO
	iftrue GRUNT7_FOOLED
	opentext
	writetext GRUNT7_TEXT
	waitbutton
	closetext
	end	
	
GRUNT7_FOOLED:
	opentext
	writetext GRUNT7_FOOLED_TEXT
	waitbutton
	closetext
	end
	
GRUNT7_FOOLED_TEXT:
	text "Ugh, back off!" 
	done
	
GRUNT7_TEXT:
	text "You better not"
	line "use that DITTO!"
	cont "Hmph!"
	done
	
GRUNT8_AFTERTEXT:
	endifjustbattled
	checkflag ENGINE_TEMPORA_ISDITTO
	iftrue GRUNT8_FOOLED
	opentext
	writetext GRUNT8_TEXT
	waitbutton
	closetext
	end
	
GRUNT8_FOOLED:
	opentext
	writetext GRUNT7_FOOLED_TEXT
	waitbutton
	closetext
	end
	
GRUNT8_FOOLED_TEXT:
	text "Urgh!"
	
	para "I'm holding this"
	line "position."
	done
	
GRUNT8_TEXT:
	text "Well, you can"
	line "do it now I"
	cont "guess."

	para "Boo-hoo..."
	done

DummyScript:
	checkflag ENGINE_TEMPORA_ISDITTO
	iftrue .Alternative
	opentext
	writetext DummyText
	waitbutton
	closetext
	end
.Alternative
	opentext
	writetext NiceOne
	waitbutton
	closetext
	end
NiceOne:
	text "Sorry, even if"
	line "you're a grunt,"
	cont "only Lady Minerva"
	cont "can pass through"
	cont "here!"
	done
	
DummyScript3:
	checkflag ENGINE_TEMPORA_ISDITTO
	iftrue .Alternative2
	opentext
	writetext DummyText
	waitbutton
	closetext
	end
.Alternative2
	opentext
	writetext NiceOne2
	waitbutton
	closetext
	end
NiceOne2:
	text "Oh, hey."
	para "Did Lady Minerva"
	line "call for you?"
	done
	
DummyText:
	text "You shall not"
	line "pass!"
	done
	
DummyScript2:
	opentext
	writetext DummyText2
	waitbutton
	closetext
	end
	
DummyText2:
	text "Hey!"

	para "You can't enter"
	line "here if you're not"
	cont "a grunt!"

	para "You're lucky I"
	line "don't have any"
	cont "POKéMON with me"
	cont "now..."
	done
	
; Switches
;; Text
SwitchAlreadyActivated:
	opentext
	writetext SwitchHasAlreadyBeenActivated
	closetext
	end
	
SwitchHasAlreadyBeenActivated:
	text "This switch has"
	line "already been"
	cont "activated."
	done
	
TurnTheSwitchOn:
	text "Turn the switch"
	line "on?"
	done
	
SwitchHasBeenActivated:
	text "KER-CHUNK!"
	
	para "The switch was"
	line "turned on."
	done
	
;; Scripts
Switch1:
	checkevent EVENT_TEMPORA_SWITCH1_ACTIVATED
	iftrue SwitchAlreadyActivated
	opentext
	writetext TurnTheSwitchOn	
	waitbutton
	yesorno
	iftrue .EnableSwitch1
	end
	
.EnableSwitch1:
	setevent EVENT_TEMPORA_SWITCH1_ACTIVATED
	opentext
	writetext SwitchHasBeenActivated	
	waitbutton
	closetext
	end
	
Switch2:
	checkevent EVENT_TEMPORA_SWITCH2_ACTIVATED
	iftrue SwitchAlreadyActivated
	opentext
	writetext TurnTheSwitchOn	
	waitbutton
	yesorno
	iftrue .EnableSwitch2
	end
	
.EnableSwitch2:
	setevent EVENT_TEMPORA_SWITCH2_ACTIVATED
	opentext
	writetext SwitchHasBeenActivated	
	waitbutton
	closetext
	end
	
Switch3:
	checkevent EVENT_TEMPORA_SWITCH3_ACTIVATED
	iftrue SwitchAlreadyActivated
	opentext
	writetext TurnTheSwitchOn	
	waitbutton
	yesorno
	iftrue .EnableSwitch3
	end
	
.EnableSwitch3:
	setevent EVENT_TEMPORA_SWITCH3_ACTIVATED
	opentext
	writetext SwitchHasBeenActivated	
	waitbutton
	closetext
	end

DoWarp:
	checkevent EVENT_TEMPORA_WARP_ACTIVATED
	iftrue .Warp
	end
.Warp:
	warp NEW_BARK_TOWN, 25, 13
	end
	
PassGrunt:
	faceplayer
	checkevent EVENT_TEMPORA_GRUNT9_MOVED
	iffalse .PassGrunt1
	end
.PassGrunt1:
	checkflag ENGINE_TEMPORA_ISDITTO
	iffalse .PassGrunt2
	opentext
	writetext OhISee
	closetext
	special FadeBlackQuickly
	special FadeInQuickly
	disappear ETERNITY_GRUNT9
	setevent EVENT_TEMPORA_GRUNT9_MOVED
	end
.PassGrunt2:
	showemote EMOTE_SHOCK, ETERNITY_GRUNT9, 15
	opentext 
	writetext DummyText2
	closetext
	applymovement PLAYER, .MovePlayerBack
	end
.MovePlayerBack:
	step DOWN
	step_end

OhISee:
	text "Oh, you want to"
	line "pass to the"
	cont "admin?" 

	para "No problem."
	done
	
DittoScript:
	cry DITTO
	checkevent EVENT_TEMPORA_WARP_ACTIVATED
	iffalse .LeaveMeAlone
	checkevent EVENT_TEMPORA_DITTO_USED
	iftrue .DittoAlreadyUsed
	opentext
	writetext ThereIsADittoHere
	yesorno
	closetext
	closepokepic
	iftrue Transformation
	end
.LeaveMeAlone:
	opentext
	writetext DittoWontListen
	closetext
	end
.DittoAlreadyUsed:
	opentext 
	writetext DittoHappy
	closetext
	end
Transformation:
	special FadeOutPalettes
	setflag ENGINE_TEMPORA_ISDITTO
	disappear DITTO_MODDED
	moveobject PLAYER_DUPE, 11, 12
	appear PLAYER_DUPE
	setval (PAL_NPC_BROWN << 4)
	special SetPlayerPalette
	special FadeInPalettes
	opentext
	writetext WhatItTransformed
	closetext
	setevent EVENT_TEMPORA_GRUNT1_DEFEATED
	setevent EVENT_TEMPORA_GRUNT2_DEFEATED
	setevent EVENT_TEMPORA_GRUNT3_DEFEATED
	setevent EVENT_TEMPORA_GRUNT4_DEFEATED
	setevent EVENT_TEMPORA_GRUNT5_DEFEATED
	setevent EVENT_TEMPORA_GRUNT6_DEFEATED
	setevent EVENT_TEMPORA_GRUNT7_DEFEATED
	setevent EVENT_TEMPORA_GRUNT8_DEFEATED
	end
DittoRevertScript:
	checkevent EVENT_TEMPORA_GRUNT9_MOVED
	iftrue .Revert
	opentext
	writetext DittoHasntFinishedYet
	closetext
	end
.Revert:
	special FadeOutPalettes
	clearflag ENGINE_TEMPORA_ISDITTO
	appear DITTO_MODDED
	disappear PLAYER_DUPE
	setevent EVENT_TEMPORA_DITTO_USED
	setval (PAL_NPC_PINK << 4)
	special SetPlayerPalette
	special FadeInPalettes
	opentext
	writetext DittoWantsToRevert
	closetext
	end
DittoWantsToRevert:
	text "DITTO reverted to"
	line "its original"
	cont "state."
	done
DittoHappy:
	text "DITTO looks happy."
	done
DittoHasntFinishedYet:
	text "DITTO refuses to"
	line "switch back."
	done
DittoWontListen:
	text "DITTO refuses to"
	line "communicate."
	done
ThereIsADittoHere:
	text "There is a DITTO"
	line "here."

	para "It wants to help."

	para "Will you allow it?"
	done
	
WhatItTransformed:
	text "Woah!"

	para "DITTO transformed"
	line "into an ETERNITY"
	cont "GRUNT!"
	done
	
CheckIfCostume:
	checkflag ENGINE_TEMPORA_ISDITTO
	iffalse .Battle
	end
.Battle:
	checkevent EVENT_TEMPORA_GRUNT10_DEFEATED
	iffalse .Battle2
	end
.Battle2:
	loadtrainer ETERNITY_GRUNT, GRUNT10
	encountermusic
	showemote EMOTE_SHOCK, ETERNITY_GRUNT10, 15
	opentext
	writetext GRUNT10_TEXT
	waitbutton
	closetext
	winlosstext GRUNT10_LOSSTEXT, 0
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORA_GRUNT10_DEFEATED
	end
	
GRUNT10_TEXT:
	text "What the..?!"

	para "How did you enter?"

	para "You can't go to"
	line "Lady Minerva!"
	done

GRUNT10_LOSSTEXT:
	text "Go ahead..."
	done
	
MinervaScript:
	checkevent EVENT_TEMPORA_MINERVA_DEFEATED
	iftrue Minerva_ZenthorText
	checkflag ENGINE_TEMPORA_ISDITTO
	iftrue Minerva_Fooled
	loadtrainer ETERNITY_ADMIN, MINERVA
	encountermusic
	showemote EMOTE_SHOCK, ETERNITY_MINERVA, 15
	faceplayer
	opentext
	writetext MINERVA_TEXT
	waitbutton
	closetext
	winlosstext MINERVA_LOSSTEXT, 0
	startbattle
	reloadmapafterbattle
	opentext
	writetext Minerva_GoToZenthor
	closetext
	setevent EVENT_TEMPORA_MINERVA_DEFEATED
	disappear ETERNITY_GRUNT11
	disappear ETERNITY_GRUNT12
	end
	
Minerva_Fooled:
	opentext
	writetext Minerva_Fooled_Text
	closetext
	end
	
Minerva_ZenthorText:
	opentext
	writetext Minerva_GoToZenthor
	closetext
	end
	
Minerva_GoToZenthor:
	text "You and your"
	line "POKéMON have made"
	cont "it very far..."

	para "What if Zenthor"
	line "is truly mad?"

	para "Have I been"
	line "blinded by his"
	cont "darkness?"

	para "The path is open."

	para "You have my"
	line "permission to use"
	cont "the warp panel."
	 
	para "I would love to"
	line "see what happens"
	cont "in the end." 

	para "Be careful,"
	line "Zenthor is no easy"
	cont "feat..."
	done
	
Minerva_Fooled_Text:
	text "..."  
	line "..."  
	cont "..."

	para "Best to not"
	line "interrupt her"
	cont "singing."
	done

MINERVA_TEXT:
	text "... ... ..."

	para "Trainer."
	line "What do you seek?"

	para "To end this chaos"
	line "that the world is"
	cont "entangled in?"

	para "Why? Why resist"
	line "and try to prevent"
	cont "the inevitable?"

	para "Zenthor's rule"
	line "will already"
	cont "change the world"
	cont "as we know it." 

	para "Time... is"
	line "important for all"
	cont "things. "

	para "Its power is"
	line "supreme."
	 
	para "That is why we"
	line "need to extract"
	cont "its essence from"
	cont "CELEBI." 

	para "My melodies are"
	line "capable of"
	cont "weakening it,"
	cont "which is extremely"
	cont "important."

	para "I appreciate your"
	line "resolve and"
	cont "determination,"
	cont "however, as much"
	cont "as I do not wish"
	cont "to battle you,"
	cont "this is where I"
	cont "will inhibit your"
	cont "actions!"
	done
	
MINERVA_LOSSTEXT:
	text "Ah..."
	line "So that is why you"
	cont "continue."

	para "I see it now..."
	done
	
Zenthor:
	loadtrainer ETERNITY_LEADER, ZENTHOR
	encountermusic
	showemote EMOTE_SHOCK, ETERNITY_ZENTHOR, 15
	faceplayer
	opentext
	writetext ZenthorText
	waitbutton
	closetext
	winlosstext Zenthor_LossText, 0
	startbattle
	reloadmapafterbattle
	special CelebiShrineEvent
	opentext
	writetext Zenthor_Refusal
	closetext
	special FadeBlackQuickly
	setevent EVENT_TEMPORA_LEADER_DEFEATED
	appear POKEBALL
	disappear ETERNITY_ZENTHOR
	special FadeInQuickly
	end

Zenthor_LossText:
	text "Keh!!"
	line "IMPOSSIBLE!"
	done
	
Zenthor_Refusal:
	text "...Huh?"
	line "Celebi! No!!!"
	
	para "You dastard!"

	para "Even without"
	line "CELEBI, it's"
	cont "already too late."

	para "The time capsules"
	line "are ready."

	para "You will never be"
	line "able to prevent"
	cont "what has already"
	cont "been set in stone."

	para "You fool!"

	para "You won't exist"
	line "after I'm done!"
	done
	
ZenthorText:
	text "So you finally"
	line "made it here."

	para "I wouldn't be"
	line "surprised,"
	cont "especially since"
	cont "you are the IPF's"
	cont "greatest agent."

	para "I commend you for"
	line "your efforts so"
	cont "far."

	para "However, you"
	line "cannot stop my"
	cont "growing power."

	para "Using the time"
	line "capsules, I can"
	cont "travel through"
	cont "time and destroy"
	cont "the origins of"
	cont "the IPF!"

	para "It will all cease"
	line "to exist!"
	cont "Evil will be"
	cont "allowed to plague"
	cont "the streets once"
	cont "and for all!"
	cont "And it will all be"
	cont "under my command." 

	para "I will be the"
	line "ruler. I was"
	cont "destined for it."

	para "SHEPARD's forces"
	line "are useless"
	cont "against what Team"
	cont "Eternity has to"
	cont "offer."

	para "Who are you to"
	line "think that you can"
	cont "stop me now, when"
	cont "I have CELEBI"
	cont "under control,"
	cont "when I have"
	cont "everything!"

	para "WAHAHAHAHAHAHAHA!"

	para "Let's see your"
	line "futile attempt at"
	cont "stopping the"
	cont "scourge of the"
	cont "world as we know"
	cont "it!"
	done
	
TimeCapsuleScript:
	checkevent EVENT_TEMPORA_LEADER_DEFEATED
	iffalse .NahSon
	opentext
	writetext TimeCapsule_text
	yesorno
	iftrue .LetsGo
	closetext
	end
.LetsGo:
	opentext 
	writetext PlayerUsedTimeCapsule
	closetext
	special FadeBlackQuickly
	credits
	end
.NahSon
	opentext
	writetext NahSon
	closetext
	end
NahSon:
	text "There's a TIME"
	line "CAPSULE here."
	
	para "Best if I don't"
	line "touch it right"
	cont "now."
	done
	
TimeCapsule_text:
	text "There's a TIME"
	line "CAPSULE here."

	para "Use it?"
	done
	
PlayerUsedTimeCapsule:
	text "Used TIME CAPSULE."
	
	para "ZOOOOOOOOOOOOOOOOO"
	line "OOOOOOOOOOOOM!"
	done

Computer:
	opentext
	writetext Computer_text
	waitbutton
	closetext
	end
Computer_text:
	text "Huh?" 
	line "A Discord server"
	cont "seems to be open"
	cont "on this computer."
	
	para "'e to the power"
	line "x is the slope"
	cont "of Tetra's"
	cont "hairline', one"
	cont "user says."
	done
	
Stairs:
	opentext
	writetext stairs
	closetext
	applymovement PLAYER, .moveleft
	end
.moveleft:
	step LEFT
	step_end
stairs:
	text "It's probably a"
	line "good idea to not"
	cont "go back..."
	done
	
;;;;;;;;;;;;;;;;;;;;;;;;
NewBarkTown_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 11, 27, NEW_BARK_TOWN, 2
	warp_event 25, 13, NEW_BARK_TOWN, 1
	
	db 3 ; coord events
	coord_event  25,  27, SCENE_DEFAULT, PassGrunt
	coord_event 19, 22, SCENE_DEFAULT, CheckIfCostume
	coord_event  3,  2, SCENE_DEFAULT, Stairs
	
	db 7 ; bg events
	bg_event  6, 27, BGEVENT_READ, Switch1
	bg_event 26,  1, BGEVENT_READ, Switch2
	bg_event  6,  1, BGEVENT_READ, Switch3
	bg_event  7, 19, BGEVENT_READ, Computer
	bg_event  6, 19, BGEVENT_READ, Computer
	bg_event  9,  1, BGEVENT_READ, Computer
	bg_event  8,  1, BGEVENT_READ, Computer

	db 17 ; object events
	object_event  2,  8, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt, -1
	object_event  2,  20, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt2, -1
	object_event  4,  27, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt3, -1
	object_event 17, 20, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt4, -1
	object_event 17,  8, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt5, -1
	object_event  8,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt6, -1
	object_event  8, 12, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt7, -1
	object_event 25,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Trainer_Grunt8, -1
	object_event 26, 27, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, DummyScript2, -1 ;; Blocking admin room
	object_event 20, 22, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, DummyScript3, -1 ;; In Admin Room
	object_event  13,  22, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, DummyScript, -1 ;; Blocking the warp panel
	object_event  13,  23, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, DummyScript, -1 ;; Blocking the warp panel
	object_event 11, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, DittoScript, -1
	object_event 20, 18, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, MinervaScript, -1
	object_event 11, 12, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, DittoRevertScript, -1
	object_event 23,  7, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, Zenthor, -1
	object_event 23,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, TimeCapsuleScript, -1
	