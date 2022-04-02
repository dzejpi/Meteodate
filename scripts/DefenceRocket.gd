extends Node2D


var launch_delay = 5
var launch_time = 0
var launch = false
var launched = false


func _ready():
	pass


func _process(delta):
	if launch_time < launch_delay:
		launch_time += (1 * delta)
	else:
		launch = true

	if launch:
		if !launched:
			launched = true
			
	if launched:
		transform.x = Vector2.UP
