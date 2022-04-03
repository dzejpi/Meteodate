extends Node2D


var earth_width = 13000
var current_earth_meteorite_distance = 1000
var converted_earth_meteorite_distance = 20
var previous_earth_meteorite_distance = 20
var initial_distance = 0
var days_survived = 0
var days_countdown = 0

var meteorite_hit = false
var stopping_speed = 0

# One pixel is roughly 42 kilometres
# Width of the Earth / 2 / 150 px
var pixel_to_km = 42

var label_distance = 30000

var label_total_funds = 500
var label_funding_gains = 2

var meteorite_speed = 0.75
var label_speed = meteorite_speed * pixel_to_km
var new_meteorite_position = 0
var previous_meteorite_position = 0
var count_countdown = 0

onready var earth_node = $GameNode/Earth
onready var meteorite_node = $GameNode/Meteorite
onready var game_loop_node = $GameLoopNode
onready var game_over_node = $GameOver/GameOverScene


func _ready():
	initial_distance = (earth_node.position.x - meteorite_node.position.x)
	new_meteorite_position = meteorite_node.position.x
	previous_meteorite_position = meteorite_node.position.x
	previous_earth_meteorite_distance = 0


func _process(delta):
	process_speeds_and_distances(delta)
	process_funds(delta)
	process_day_count(delta)
	
	if stopping_speed != GameState.stopping_speed:
		stopping_speed = GameState.stopping_speed
		meteorite_speed -= GameState.stopping_speed


func process_speeds_and_distances(delta):
	meteorite_node.meteorite_speed = meteorite_speed
	
	current_earth_meteorite_distance = (earth_node.position.x - meteorite_node.position.x)
	meteorite_node.distance_left = current_earth_meteorite_distance
	converted_earth_meteorite_distance = int(current_earth_meteorite_distance * pixel_to_km)
	
	if count_countdown < 1:
		count_countdown += (1 * delta)
	else:
		count_countdown = 0
		
		label_speed = int((initial_distance - current_earth_meteorite_distance) * 42)
		initial_distance = current_earth_meteorite_distance


func process_day_count(delta):
	if days_countdown < 10:
		days_countdown += (1 * delta)
	else:
		days_countdown = 0
		days_survived += 1
		GameState.days_survived = days_survived


func process_funds(delta):
	label_total_funds += label_funding_gains * delta


func trigger_dialog(new_dialog_number):
	game_loop_node.dialog_number = new_dialog_number


func trigger_game_event(new_event_number):
	game_loop_node.event_number = new_event_number


func end_the_game():
	game_over_node.game_over_triggered = true
	game_over_node.days_survived = days_survived
