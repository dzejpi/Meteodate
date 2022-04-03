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

	return dialog_avatars
