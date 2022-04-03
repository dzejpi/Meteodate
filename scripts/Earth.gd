extends Node2D


var earth_impacted = false
var impact_started = false
var game_over_countdown_current = 0
var game_over_countdown = 1
var game_end_triggered = false

onready var root_node = $"../../"


func _ready():
	pass


func _process(delta):
	if earth_impacted:
		if !impact_started:
			impact_started = true

	if impact_started:
		process_the_impact(delta)
		

func process_the_impact(delta):
	if game_over_countdown_current < game_over_countdown:
		game_over_countdown_current += (1 * delta)
	else:
		if !game_end_triggered:
			root_node.end_the_game()
			game_end_triggered = true
