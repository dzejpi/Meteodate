extends KinematicBody2D


var launch_delay = 5
var launch_time = 0
var launch = false
var launched = false

var speed = 250
var velocity = Vector2(-speed, 0)
var laser_rotation = 0

onready var laser_sprite = $LaserSprite
var fired_laser_sprite = load("res://assets/visual/game/defence_systems/defence_laser_fired.png") 


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
			laser_sprite.texture = fired_laser_sprite


func _physics_process(delta):
	if launched:
		velocity = velocity.rotated(rotation)
		
		position += velocity * delta
		velocity = Vector2(speed, 0)
		
		move_and_slide(velocity * delta)


func set_rotation(laser_direction):
	rotation = laser_direction
