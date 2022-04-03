extends Node


var dialog_text_array = [""]
var initial_dialog_number = 0
var dialog_number = 0

var initial_event_number = 0
var event_number = 1

onready var dialog_manager = $DialogManager
onready var typewriter_dialog_manager = $"../TypewriterDialogManager/TypewriterDialog"

onready var event_manager = $EventManager


func _ready():
	pass


func _process(delta):
	# Automatically display dialog if the dialog number changes
	if initial_dialog_number != dialog_number:
		initial_dialog_number = dialog_number
		display_dialog(dialog_number)
	
	if initial_event_number != event_number:
		initial_event_number = event_number
		trigger_event(event_number)


func display_dialog(dialog_number):
	dialog_text_array = dialog_manager.get_dialog(dialog_number)
	typewriter_dialog_manager.dialog_text_array = dialog_text_array
	typewriter_dialog_manager.processing_dialog = true


func trigger_event(event_number):
	event_manager.trigger_event(event_number)
