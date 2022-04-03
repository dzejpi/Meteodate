extends TextureButton


var music_on = false
onready var music_label = $"MusicLabel"


func _ready():
	if AudioServer.is_bus_mute(AudioServer.get_bus_index("Music")):
		music_on = false
		music_label.text = "Music: Off"
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), true)
		self.pressed = false
		release_focus()
	else:
		music_on = true
		music_label.text = "Music: On"
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), false)
		self.pressed = true
		release_focus()


func _process(delta):
	if music_on:
		pass
	else:
		pass


func _on_MusicButton_pressed():
	GameState.play_sound("select")
	
	if music_on:
		music_on = false
		music_label.text = "Music: Off"
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), true)
		self.pressed = false
		release_focus()
	else:
		music_on = true
		music_label.text = "Music: On"
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), false)
		self.pressed = true
		release_focus()
