extends Node2D


var selected_defence_system = 0
var placing_defence_system = false
var price_to_be_paid = 0

var rocket_texture = load("res://assets/visual/game/defence_systems/defence_rocket.png") 
var chute_texture = load("res://assets/visual/game/defence_systems/defence_chute.png") 
var laser_texture = load("res://assets/visual/game/defence_systems/defence_laser.png") 
var sonic_waves_texture = load("res://assets/visual/game/defence_systems/defence_sonic_waves.png") 

onready var defensive_sprite = $DefensiveSprite


func _ready():
	pass


func _process(delta):
	var current_mouse_pos = get_global_mouse_position()
	
	self.position.x = current_mouse_pos.x
	self.position.y = current_mouse_pos.y
	
	if Input.is_action_just_pressed("cancel_selection"):
		placing_defence_system = false
		selected_defence_system = 0
		
	
	if placing_defence_system:
		match selected_defence_system:
			1:
				defensive_sprite.texture = rocket_texture
			2:
				defensive_sprite.texture = laser_texture
			3:
				defensive_sprite.texture = sonic_waves_texture
			4:
				defensive_sprite.texture = chute_texture
	else:
		defensive_sprite.texture = null
