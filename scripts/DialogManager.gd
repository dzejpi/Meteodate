extends Node


var dialog_number = 0


func _ready():
	pass


func _process(delta):
	pass


func get_dialog(dialog_number):
	var dialog_text = [""]
	
	match(dialog_number):
		1:
			dialog_text = ["Hey. This is Nick from the operational.", "We have detected the meteorite aiming for the Earth.", "Not the fastest one. Can your department take care of it?", "You have enough funding for that. Thanks!"]
			GameState.play_sound("new_message")
		2:
			dialog_text = ["RIRrTws4W2E4p22JeBS6ISvil8mH7ExtXPCgBPMARopBLHLy80xnDzJMGj6NRDmctX89QRHuXNoTQ6KmsB82EHoioaXd9FUdEXsNgN88YxYi53LTX0plXMbR57", "8mH7ExtXPCgBPMARopBLHLy80xnDzJMGj6NRDmctX89QRHuXNoTQ6KmsB82EHoioaXd9FUd"]
			GameState.play_sound("new_message")
		3:
			dialog_text = ["H 3lXo, c  4Rlhl  1NSs.  p0 A0u  _E 4.?", "H _1l o0,  eArt hL 1n __-s, do   yo u  re ad?", "The si gnal s hould be correct now."]
			GameState.play_sound("new_message")
		4:
			dialog_text = ["Your planet is in our way to our new great project.", "Sorry about that.", "We have decided to delete your planet.", "As mentioned, we are sorry for that."]
			GameState.play_sound("new_message")
		5:
			dialog_text = [""]
		6:
			dialog_text = [""]
		7:
			dialog_text = [""]
		8:
			dialog_text = [""]
		9:
			dialog_text = [""]
		10:
			dialog_text = [""]
		11:
			dialog_text = [""]
		12:
			dialog_text = [""]
		13:
			dialog_text = [""]
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
			dialog_text = [""]
		
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
			dialog_avatars = [1]
		6:
			dialog_avatars = [1]
		7:
			dialog_avatars = [1]
		8:
			dialog_avatars = [1]
		9:
			dialog_avatars = [1]
		10:
			dialog_avatars = [1]
		11:
			dialog_avatars = [1]
		12:
			dialog_avatars = [1]
		13:
			dialog_avatars = [1]
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
