extends TextureButton


func _ready():
	pass


func _process(delta):
	pass



func _on_ContinueGameButton_pressed():
	GameState.play_sound("select")
	
	get_parent().is_game_paused = false
	get_parent().update_pause_state()
