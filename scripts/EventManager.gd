extends Node


var event_number = 0
onready var game_root = $"../../"

var is_waiting_for_next_event = false
var waiting_countdown = 6
var current_waiting_countdown = 0
var next_event_waiting = 0


func _ready():
	pass


func _process(delta):
	if is_waiting_for_next_event:
		if current_waiting_countdown < waiting_countdown:
			current_waiting_countdown += (delta * 1)
		else:
			current_waiting_countdown = 0
			trigger_event(next_event_waiting)
			is_waiting_for_next_event = false


func trigger_event(event_number):
	match(event_number):
		1:
			wait_for_another_event(3, event_number + 1)
		2:
			increase_meteorite_speed(2)
			wait_for_another_event(5, event_number + 1)
		3:
			trigger_dialog(2)
			increase_meteorite_speed(2)


func increase_meteorite_speed(increasement):
	game_root.meteorite_speed += increasement


func decrease_meteorite_speed(increasement):
	game_root.meteorite_speed -= increasement
	
	
func trigger_dialog(dialog_number):
	game_root.trigger_dialog(dialog_number)
	
	
func wait_for_another_event(seconds, event_number):
	is_waiting_for_next_event = true
	next_event_waiting = event_number
	waiting_countdown = seconds
	current_waiting_countdown = 0
