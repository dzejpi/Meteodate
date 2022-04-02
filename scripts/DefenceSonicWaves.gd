extends KinematicBody2D


var launch_delay = 5
var launch_time = 0
var launch = false
var launched = false

var speed = 250
var velocity = Vector2(-speed, 0)
var sonic_waves_rotation = 0


func _ready():
	set_physics_process(true)


func _process(delta):
	if launch_time < launch_delay:
		launch_time += (1 * delta)
	else:
		launch = true

	if launch:
		if !launched:
			launched = true


func _physics_process(delta):
	if launched:
		velocity = velocity.rotated(rotation)
		
		position += velocity * delta
		velocity = Vector2(speed, 0)
		
		move_and_slide(velocity * delta)


func set_rotation(sonic_waves_direction):
	rotation = sonic_waves_direction
