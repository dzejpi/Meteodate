extends Node2D


var selected_defence_system = 0
var placing_defence_system = false
var price_to_be_paid = 0
var possible_to_place = false

var rocket_texture = load("res://assets/visual/game/defence_systems/defence_rocket.png") 
var chute_texture = load("res://assets/visual/game/defence_systems/defence_chute.png") 
var laser_texture = load("res://assets/visual/game/defence_systems/defence_laser.png") 
var sonic_waves_texture = load("res://assets/visual/game/defence_systems/defence_sonic_waves.png") 

onready var defensive_sprite = $DefensiveSprite
onready var warning_label = $WarningLabel
onready var root_node = $"../../"
onready var meteorite_node = $"../Meteorite"


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
		if possible_to_place:
			warning_label.visible = false
		else:
			warning_label.visible = true
		
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
		warning_label.visible = false
		
	if Input.is_action_just_pressed("confirm_selection"):
		if possible_to_place:
			match selected_defence_system:
				1:
					var new_rocket = load("res://scenes/defence_scenes/DefenceRocket.tscn")
					var spawned_rocket = new_rocket.instance()
					get_parent().add_child(spawned_rocket)
					spawned_rocket.global_position = global_position
					spawned_rocket.set_rotation(get_angle_to(meteorite_node.position))
					root_node.label_total_funds -= 20
					placing_defence_system = false
					selected_defence_system = 0
				2:
					var new_laser = load("res://scenes/defence_scenes/DefenceLaser.tscn")
					var spawned_laser = new_laser.instance()
					get_parent().add_child(spawned_laser)
					spawned_laser.global_position = global_position
					spawned_laser.set_rotation(get_angle_to(meteorite_node.position))
					root_node.label_total_funds -= 50
					placing_defence_system = false
					selected_defence_system = 0
				3:
					var new_sonic_wave = load("res://scenes/defence_scenes/DefenceSonicWaves.tscn")
					var spawned_sonic_wave = new_sonic_wave.instance()
					get_parent().add_child(spawned_sonic_wave)
					spawned_sonic_wave.global_position = global_position
					spawned_sonic_wave.set_rotation(get_angle_to(meteorite_node.position))
					root_node.label_total_funds -= 100
					placing_defence_system = false
					selected_defence_system = 0
				4:
					var new_chute = load("res://scenes/defence_scenes/DefenceChute.tscn")
					var spawned_chute = new_chute.instance()
					get_parent().add_child(spawned_chute)
					spawned_chute.global_position = global_position
					spawned_chute.set_rotation(get_angle_to(meteorite_node.position))
					root_node.label_total_funds -= 200
					placing_defence_system = false
					selected_defence_system = 0


func _on_EarthArea_mouse_entered():
	possible_to_place = true


func _on_EarthArea_mouse_exited():
	possible_to_place = false
