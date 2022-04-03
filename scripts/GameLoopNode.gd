extends Node


var dialog_text_array = [""]
var initial_dialog_number = 0
var dialog_number = 0

var initial_event_number = 0
var event_number = 0

var countdown_to_next_event = 6
var current_countdown_to_next_event = 0
var current_event_number = 1

onready var dialog_manager = $DialogManager
onready var typewriter_dialog_manager = $"../TypewriterDialogManager/TypewriterDialog"

onready var event_manager = $EventManager


func _ready():
	pass


func _process(delta):
	process_game(delta)
	
	# Automatically display dialog if the dialog number changes
	if initial_dialog_number != dialog_number:
		initial_dialog_number = dialog_number
		display_dialog(dialog_number, delta)
	
	if initial_event_number != event_number:
		initial_event_number = event_number
		trigger_event(event_number)


func process_game(delta):
	if current_countdown_to_next_event < countdown_to_next_event:
		current_countdown_to_next_event += delta
	else:
		current_countdown_to_next_event = 0
		countdown_to_next_event = 0
		
		process_events(delta)
		
		
func process_events(delta):
	match(current_event_number):
		1:
			event_number = 1
			dialog_number = 1
			current_event_number += 1
			
			countdown_to_next_event = 3
		2:
			event_number = 2
			dialog_number = 2
			current_event_number += 1
			
			countdown_to_next_event = 3
		3:
			event_number = 3
			dialog_number = 3
			current_event_number += 1
			
			countdown_to_next_event = 3


func display_dialog(dialog_number, delta):
	dialog_text_array = dialog_manager.get_dialog(dialog_number)
	typewriter_dialog_manager.dialog_text_array = dialog_text_array
	typewriter_dialog_manager.processing_dialog = true
	typewriter_dialog_manager.start_dialog(delta)


func trigger_event(event_number):
	event_manager.trigger_event(event_number)
