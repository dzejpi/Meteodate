extends Node


var event_number = 0
onready var game_root = $"../../"


func _ready():
	pass


func _process(delta):
	pass


func trigger_event(event_number):
	match(event_number):
		1:
			decrease_meteorite_speed(1)
		2:
			pass
		3:
			pass


func increase_meteorite_speed(increasement):
	game_root.meteorite_speed += increasement


func decrease_meteorite_speed(increasement):
	game_root.meteorite_speed -= increasement
