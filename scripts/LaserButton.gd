extends TextureButton


var price = 50

onready var root_node = $"../../../"
onready var price_label = $LaserPriceLabel
onready var cursor_node = $"../../../GameNode/CursorNode"


func _ready():
	price_label.text = String(price) + " G"


func _process(delta):
	if root_node.label_total_funds < price:
		disabled = true
	else:
		disabled = false


func _on_LaserButton_pressed():
	GameState.play_sound("select")
	
	if !disabled:
		cursor_node.selected_defence_system = 2
		cursor_node.placing_defence_system = true
		cursor_node.price_to_be_paid = price
	release_focus()
