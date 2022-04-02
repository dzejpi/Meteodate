extends Node2D


var earth_width = 13000
var current_earth_meteorite_distance = 1000
var converted_earth_meteorite_distance = 20
var previous_earth_meteorite_distance = 20
var initial_distance = 0

# One pixel is roughly 42 kilometres
var pixel_to_km = 42

var label_distance = 30000

var label_total_funds = 230
var label_funding_gains = 20

var meteorite_speed = 1.75
var label_speed = meteorite_speed * pixel_to_km
var new_meteorite_position = 0
var previous_meteorite_position = 0
var count_countdown = 0

onready var earth_node = $GameNode/Earth
onready var meteorite_node = $GameNode/Meteorite


func _ready():
	initial_distance = (earth_node.position.x - meteorite_node.position.x)
	new_meteorite_position = meteorite_node.position.x
	previous_meteorite_position = meteorite_node.position.x
	previous_earth_meteorite_distance = 0


func _process(delta):
	meteorite_node.meteorite_speed = meteorite_speed
	
	current_earth_meteorite_distance = (earth_node.position.x - meteorite_node.position.x)
	converted_earth_meteorite_distance = int(current_earth_meteorite_distance * pixel_to_km)
	
	if count_countdown < 1:
		count_countdown += (1 * delta)
	else:
		count_countdown = 0
		
		label_speed = int((initial_distance - current_earth_meteorite_distance) * 42)
		initial_distance = current_earth_meteorite_distance
