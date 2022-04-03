extends TextureButton


var price = 100

onready var root_node = $"../../../"
onready var price_label = $SonicWavesPriceLabel
onready var cursor_node = $"../../../GameNode/CursorNode"


func _ready():
	price_label.text = String(price) + " G"


func _process(delta):
	if root_node.label_total_funds < price:
		disabled = true
	else:
		disabled = false
	


func _on_SonicWaves_pressed():
	GameState.play_sound("select")
	
	if !disabled:
		cursor_node.selected_defence_system = 3
		cursor_node.placing_defence_system = true
		cursor_node.price_to_be_paid = price
	release_focus()
