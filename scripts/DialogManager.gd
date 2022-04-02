extends Node


var dialog_number = 0


func _ready():
	pass


func _process(delta):
	pass


func get_dialog(dialog_number):
	var dialog_text = []
	
	match(dialog_number):
		1:
			dialog_text = ["First dialog."]
		2:
			dialog_text = ["Second dialog"]
		3:
			dialog_text = ["Third dialog"]

	return dialog_text
