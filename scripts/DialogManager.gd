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
			dialog_text = ["RIRrTws4W2E4p22JeBS6ISvil8mH7ExtXPCgBPMARopBLHLy80xnDzJMGj6NRDmctX89QRHuXNoTQ6KmsB82EHoioaXd9FUdEXsNgN88YxYi53LTX0plXMbR57", "8mH7ExtXPCgBPMARopBLHLy80xnDzJMGj6NRDmctX89QRHuXNoTQ6KmsB82EHoioaXd9FUd"]
		2:
			dialog_text = ["Second dialog", "Second part."]
		3:
			dialog_text = ["Third dialog.", "First part."]

	return dialog_text
