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
onready var game_scene_root = $"../"


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
	if typewriter_dialog_manager.processing_dialog:
		blocked_by_decision = true
	else:
		blocked_by_decision = false
		
	if !blocked_by_decision:
		if current_countdown_to_next_event < countdown_to_next_event:
			current_countdown_to_next_event += delta
		else:
			current_countdown_to_next_event = 0
			countdown_to_next_event = 0
			
			process_events(delta)

func process_events(delta):
	if !blocked_by_decision:
		match(current_event_number):
			0:
				pass
			1:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			2:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			3:
				dialog_number = current_event_number
				
				current_event_number += 1
				countdown_to_next_event = 1
			4:
				dialog_number = current_event_number
				
				current_event_number += 1
				countdown_to_next_event = 1
			5:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			6:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			7:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				increase_funding(2)
				
				current_event_number += 1
			8:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				trigger_event(2)
				
				current_event_number += 1
			9:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			10:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			11:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			12:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			13:
				dialog_number = current_event_number
				
				increase_funding(5)
				
				current_event_number += 1
				countdown_to_next_event = 1
			14:
				dialog_number = current_event_number
				
				current_event_number += 1
				countdown_to_next_event = 1
			15:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			16:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			17:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			18:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				trigger_event(1)
				
				current_event_number += 1
			19:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			20:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				increase_funding(5)
				
				current_event_number += 1
			21:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			22:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			23:
				dialog_number = current_event_number
				
				trigger_event(5)
				
				current_event_number += 1
				countdown_to_next_event = 1
			24:
				dialog_number = current_event_number
				
				current_event_number += 1
				countdown_to_next_event = 1
			25:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				trigger_event(2)
				trigger_event(2)
				trigger_event(2)
				
				current_event_number += 1
			26:
				dialog_number = current_event_number
				countdown_to_next_event = 2
				
				trigger_event(3)
				trigger_event(3)
				trigger_event(2)
				trigger_event(3)
				
				current_event_number += 1
			27:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				trigger_event(8)
				trigger_event(8)
				trigger_event(8)
				
				current_event_number += 1
			28:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			29:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			30:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				increase_funding(15)
				
				current_event_number += 1
			31:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			32:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				trigger_event(3)
				
				current_event_number += 1
			33:
				dialog_number = current_event_number
				
				current_event_number += 1
				countdown_to_next_event = 1
			34:
				dialog_number = current_event_number
				
				trigger_event(1)
				
				current_event_number += 1
				countdown_to_next_event = 1
			35:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				increase_funding(20)
				
				current_event_number += 1
			36:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			37:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			38:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			39:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			40:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			41:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				current_event_number += 1
			42:
				dialog_number = current_event_number
				countdown_to_next_event = 5
				
				trigger_event(3)
				trigger_event(3)
				trigger_event(3)
				trigger_event(3)
				trigger_event(3)
				trigger_event(3)
				trigger_event(3)
				trigger_event(3)
				
				current_event_number = 0


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


func increase_funding(amount):
	game_scene_root.label_funding_gains += amount
