extends Node2D


var letter_change_speed = 16
var displayed_text_timeout = 0
var dialog_timeout = 0
var dialog_timeout_time = 1
var dialog_switch_timeout = 0
var dialog_switch_timeout_time = 4
var dialog_text_array = [""]
var dialog_character_avatars_array = [0, 0]

var displayed_dialog_array_number = 0
var currently_displayed_character = 0
var current_dialog = ""
var current_avatar = 0

var processing_dialog = false
var text_fully_displayed = false

onready var text_label = $TextBgSprite/TextLabel
onready var character_avatar = $CharSprite/CharAvatarSprite

var alien_texture = load("res://assets/visual/ui/dialogue/avatar_alien_circle.png")
var noise_texture = load("res://assets/visual/ui/dialogue/avatar_noise_circle.png")
var operator_texture = load("res://assets/visual/ui/dialogue/avatar_operator_circle.png")


func _ready():
	visible = true


func _process(delta):
	if processing_dialog:
		process_dialog(delta)
		show_proper_avatar()
	else:
		visible = false
		character_avatar.texture = null


func start_dialog(delta):
	visible = true
	processing_dialog = true
	displayed_dialog_array_number = 0
	currently_displayed_character = 0
	
	process_dialog(delta)


func process_dialog(delta):
	var text_length_of_array = dialog_text_array[displayed_dialog_array_number].length()
	var last_array_position = dialog_text_array.size() - 1;
		
	if Input.is_action_just_pressed("dialog_end"):
		if currently_displayed_character < text_length_of_array:
			currently_displayed_character = text_length_of_array
		else:
			displayed_dialog_array_number += 1
			if displayed_dialog_array_number > last_array_position:
				processing_dialog = false
			else:
				currently_displayed_character = 0
	else:
		if dialog_timeout < dialog_timeout_time:
			dialog_timeout += (letter_change_speed * delta)
		else:
			dialog_timeout = 0
			if currently_displayed_character < text_length_of_array:
				currently_displayed_character += 1
			
			if currently_displayed_character == text_length_of_array:
				if dialog_switch_timeout < dialog_switch_timeout_time:
					dialog_switch_timeout += (letter_change_speed * delta)
				else:
					dialog_switch_timeout = 0
					displayed_dialog_array_number += 1
					if displayed_dialog_array_number > last_array_position:
						processing_dialog = false
					else:
						currently_displayed_character = 0
	
	if displayed_dialog_array_number > last_array_position:
		processing_dialog = false
	else:
		text_label.text = dialog_text_array[displayed_dialog_array_number].left(currently_displayed_character)
		current_avatar = dialog_character_avatars_array[displayed_dialog_array_number]
		show_proper_avatar()


func show_proper_avatar():
	match(current_avatar):
		0:
			character_avatar.texture = null
		1:
			character_avatar.texture = alien_texture
		2:
			character_avatar.texture = noise_texture
		3:
			character_avatar.texture = operator_texture
