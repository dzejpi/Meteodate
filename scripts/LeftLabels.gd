extends Node2D


onready var game_scene_controller = $"../../"
onready var distance_label = $DistanceLabel
onready var speed_label = $SpeedLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	distance_label.text = "Distance: " + String(game_scene_controller.converted_earth_meteorite_distance) + " km"
	speed_label.text = "Speed: " + String(game_scene_controller.label_speed) + " km/s"
