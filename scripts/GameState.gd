extends Node2D


var stopping_speed = 0
var play_sfx = false
var days_survived = 0


onready var sfx_node = $SfxNode
onready var music_node = $MusicNode

var select = preload("res://assets/sfx/sfx_button_select.wav")
var buy = preload("res://assets/sfx/sfx_buy.wav")
var explosion = preload("res://assets/sfx/sfx_explosion.wav")
var laser_shoot = preload("res://assets/sfx/sfx_laser_shoot.wav")
var launch = preload("res://assets/sfx/sfx_launch.wav")
var new_message = preload("res://assets/sfx/sfx_new_message.wav")
var voice_exterminate = preload("res://assets/sfx/sfx_voice_exterminate.wav")
var hey_honey = preload("res://assets/sfx/sfx_voice_hey_honey.wav")
var new_message_voice = preload("res://assets/sfx/sfx_voice_new_message.wav")

#var game_music = preload("")


func _ready():
	pass


#func play_music():
#	music_node.play(game_music)


func play_sound(action):
	match(action):
		"select":
			sfx_node.stream = select
			sfx_node.play()
		"buy":
			sfx_node.stream = buy
			sfx_node.play()
		"explosion":
			sfx_node.stream = explosion
			sfx_node.play()
		"laser":
			sfx_node.stream = laser_shoot
			sfx_node.play()
		"launch":
			sfx_node.stream = launch
			sfx_node.play()
		"new_message":
			sfx_node.stream = new_message
			sfx_node.play()
		"exterminate":
			sfx_node.stream = voice_exterminate
			sfx_node.play()
		"hey_honey":
			sfx_node.stream = hey_honey
			sfx_node.play()
		"new_message_voice":
			sfx_node.stream = new_message_voice
			sfx_node.play()
