extends Node


var dialog_text_array = [""]
var dialog_avatars_array = [0, 0]
var initial_dialog_number = 0
var dialog_number = 0

var deciding_dialog = false
var blocked_by_decision = false
var first_choice_selected = false

var first_choice = "First choice"
var second_choice = "Second choice"

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
		if !deciding_dialog:
			display_dialog(dialog_number, delta)
		else:
			display_dialog_with_choices(dialog_number, delta, first_choice, second_choice)
	
	if initial_event_number != event_number:
		initial_event_number = event_number
		trigger_event(event_number)


func process_game(delta):
	if !blocked_by_decision:
		if current_countdown_to_next_event < countdown_to_next_event:
			current_countdown_to_next_event += delta
		else:
			current_countdown_to_next_event = 0
			countdown_to_next_event = 0
			
			process_events(delta)
	
	if typewriter_dialog_manager.decision_dialog:
		if typewriter_dialog_manager.decision_made:
			blocked_by_decision = false
			first_choice_selected = typewriter_dialog_manager.first_decision_selected
		else:
			blocked_by_decision = true
	else:
		blocked_by_decision = false
		
func process_events(delta):
	if !blocked_by_decision:
		match(current_event_number):
			1:
				event_number = 1
				dialog_number = 1
				
				#deciding_dialog = true
				#first_choice = "2 New phone, who dis?"
				#second_choice = "3 Not now, I have work to do"

				current_event_number += 1
			2:
				current_event_number += 1
				countdown_to_next_event = 5
			3:
				if first_choice_selected:
					current_event_number = 4
				else:
					current_event_number = 5
			4:
				dialog_number = 2
				
				countdown_to_next_event = 3
			5:
				dialog_number = 3


func display_dialog(dialog_number, delta):
	dialog_text_array = dialog_manager.get_dialog(dialog_number)
	dialog_avatars_array = dialog_manager.get_dialog_avatar(dialog_number)
	typewriter_dialog_manager.decision_dialog = false
	typewriter_dialog_manager.dialog_text_array = dialog_text_array
	typewriter_dialog_manager.dialog_character_avatars_array = dialog_avatars_array
	typewriter_dialog_manager.processing_dialog = true
	typewriter_dialog_manager.start_dialog(delta)


func display_dialog_with_choices(dialog_number, delta, first_choice, second_choice):
	dialog_text_array = dialog_manager.get_dialog(dialog_number)
	dialog_avatars_array = dialog_manager.get_dialog_avatar(dialog_number)
	typewriter_dialog_manager.first_decision = first_choice
	typewriter_dialog_manager.second_decision = second_choice
	typewriter_dialog_manager.decision_dialog = true
	typewriter_dialog_manager.dialog_text_array = dialog_text_array
	typewriter_dialog_manager.dialog_character_avatars_array = dialog_avatars_array
	typewriter_dialog_manager.processing_dialog = true
	typewriter_dialog_manager.start_dialog(delta)
	

func trigger_event(event_number):
	event_manager.trigger_event(event_number)
