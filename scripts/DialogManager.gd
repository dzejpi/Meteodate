extends Node


var dialog_number = 0

# avatar 0: nothing
# avatar 1: alien
# avatar 2: noise
# avatar 3: operator


func _ready():
	pass


func _process(delta):
	pass


func get_dialog(dialog_number):
	var dialog_text = [""]
	
	match(dialog_number):
		1:
			dialog_text = ["Hey. This is Nick from the operational.", "We have detected the meteorite aiming for the Earth.", "Not the fastest one. Can your department take care of it?", "You have enough funding for that. So just buy what you need. Thanks!"]
			GameState.play_sound("new_message")
		2:
			dialog_text = ["RIRrTws4W2E4p22JeBS6ISvil8mH7ExtXPCgBPMARopBLHLy80xnDzJMGj6NRDmctX89QRHuXNoTQ6KmsB82EHoioaXd9FUdEXsNgN88YxYi53LTX0plXMbR57", "8mH7ExtXPCgBPMARopBLHLy80xnDzJMGj6NRDmctX89QRHuXNoTQ6KmsB82EHoioaXd9FUd"]
			GameState.play_sound("new_message")
		3:
			dialog_text = ["H 3lXo, c  4Rlhl  1NSs.  p0 A0u  _E 4.?", "H _1l o0,  eArt hL 1n __-s, do   yo u  re ad?", "The si gnal s hould be correct now."]
			GameState.play_sound("new_message")
		4:
			dialog_text = ["Your planet got in our way to our new great project.", "Our corporation is truly sorry about that.", "There is no need for action from your side, everything is planned into the smallest details.", "Thank you for understanding and for your cooperation."]
			GameState.play_sound("new_message")
		5:
			# Anything to offer?
			dialog_text = ["We are sorry for the inconvenience.", "Feel free to leave us any feedback.", "We are taking every feedback extremely seriously."]
		6:
			# 5 -> Solution
			dialog_text = ["Are you really certain that you have anything interesting to offer?", "Our corporation does not want to waste its valuable resources with uninteresting offers."]
			GameState.play_sound("new_message")
		7:
			# 6 -> Love
			dialog_text = ["Love? What do you mean love? We have conducted our research.", "It seems that love is just a chemical reaction in your brains.", "It does not bring any value for our corporation, we are afraid."]
			GameState.play_sound("new_message")
		8:
			# 6 -> Money
			dialog_text = ["Dear... Sir or Madam, we have run the numbers through and you can be assured that our project exceeds the whole Earth value.", "Since it appears to us that the valuable time is lost, we have prioritised the speed of the operation.", "Thank you for your understanding."]
			GameState.play_sound("new_message")
		9:
			dialog_text = ["However, since our responsibility is to ensure the success of the mission,", "we can assign you the agent that will help you with all of your complaints and suggestions."]
			GameState.play_sound("new_message")
		10:
			dialog_text = ["Hey, operations here.", "What the hell is goin g o no nnnn?"]
		11:
			# 10 -> What is your name?
			dialog_text = ["Sorry for the interruption. It had been taken care of.", "Is there more that you want to talk about?"]
		12:
			# 10 -> Angry
			dialog_text = ["We do not reason with the unreasonable.", "While we value the propositions of all, we cannot accept your demands.", "The speed of the operation was increased."]
		13:
			# 5 -> Angry
			dialog_text = ["Our corporation does not appreciate this tone of your voice.", "We have prioritised our operations to exceed our deadline."]
		14:
			dialog_text = [""]
		15:
			dialog_text = [""]
		16:
			dialog_text = [""]
		17:
			dialog_text = [""]
		18:
			dialog_text = [""]
		19:
			dialog_text = [""]
		20:
			dialog_text = [""]
		21:
			dialog_text = [""]
		22:
			dialog_text = [""]
		23:
			dialog_text = [""]
		24:
			dialog_text = [""]
		25:
			dialog_text = [""]
		26:
			dialog_text = [""]
		27:
			dialog_text = [""]
		28:
			dialog_text = [""]
		29:
			dialog_text = [""]
		30:
			dialog_text = [""]
		31:
			dialog_text = [""]
		32:
			dialog_text = [""]
		33:
			dialog_text = [""]
		34:
			dialog_text = [""]
		35:
			dialog_text = [""]
		36:
			dialog_text = [""]
		37:
			dialog_text = [""]
		38:
			dialog_text = [""]
		39:
			dialog_text = [""]
		40:
			dialog_text = [""]
		41:
			dialog_text = [""]
		42:
			dialog_text = [""]
		43:
			dialog_text = [""]
		44:
			dialog_text = [""]
		45:
			dialog_text = [""]
		46:
			dialog_text = [""]
		47:
			dialog_text = [""]
		48:
			dialog_text = [""]
		49:
			dialog_text = [""]
		50:
			dialog_text = ["Dear Sir or Madam", "We have noticed the unusual and unprofessional behavior of one of our employess.", "We want to assure you that the corrective measures were taken.", "Due to the unexpected delay in our operation, we are prioritizing our mission now.", "Have a wonderful day!"]
		
	return dialog_text


func get_dialog_avatar(dialog_number):
	var dialog_avatars = [1, 1]
	
	match(dialog_number):
		1:
			dialog_avatars = [3, 3, 3, 3]
		2:
			dialog_avatars = [2, 2]
		3:
			dialog_avatars = [1, 1, 1]
		4:
			dialog_avatars = [1, 1, 1, 1]
		5:
			dialog_avatars = [1, 1, 1]
		6:
			dialog_avatars = [2, 2]
		7:
			dialog_avatars = [2, 2, 2]
		8:
			dialog_avatars = [2, 2, 2]
		9:
			dialog_avatars = [2, 2]
		10:
			dialog_avatars = [3, 3]
		11:
			dialog_avatars = [2, 2]
		12:
			dialog_avatars = [2, 2, 2]
		13:
			dialog_avatars = [2, 2]
		14:
			dialog_avatars = [1]
		15:
			dialog_avatars = [1]
		16:
			dialog_avatars = [1]
		17:
			dialog_avatars = [1]
		18:
			dialog_avatars = [1]
		19:
			dialog_avatars = [1]
		20:
			dialog_avatars = [1]
		21:
			dialog_avatars = [1]
		22:
			dialog_avatars = [1]
		23:
			dialog_avatars = [1]
		24:
			dialog_avatars = [1]
		25:
			dialog_avatars = [1]
		26:
			dialog_avatars = [1]
		27:
			dialog_avatars = [1]
		28:
			dialog_avatars = [1]
		29:
			dialog_avatars = [1]
		30:
			dialog_avatars = [1]
		31:
			dialog_avatars = [1]
		32:
			dialog_avatars = [1]
		33:
			dialog_avatars = [1]
		34:
			dialog_avatars = [1]
		35:
			dialog_avatars = [1]
		36:
			dialog_avatars = [1]
		37:
			dialog_avatars = [1]
		38:
			dialog_avatars = [1]
		39:
			dialog_avatars = [1]
		40:
			dialog_avatars = [1]
		41:
			dialog_avatars = [1]
		42:
			dialog_avatars = [1]
		43:
			dialog_avatars = [1]
		44:
			dialog_avatars = [1]
		45:
			dialog_avatars = [1]
		46:
			dialog_avatars = [1]
		47:
			dialog_avatars = [1]
		48:
			dialog_avatars = [1]
		49:
			dialog_avatars = [1]
		50:
			dialog_avatars = [1]
		

	return dialog_avatars
