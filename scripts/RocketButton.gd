extends TextureButton


var price = 20

onready var root_node = $"../../../"
onready var price_label = $RocketPriceLabel
onready var cursor_node = $"../../../GameNode/CursorNode"


func _ready():
	price_label.text = String(price) + " G"


func _process(delta):
	if root_node.label_total_funds < price:
		disabled = true
	else:
		disabled = false


func _on_RocketButton_pressed():
	if !disabled:
		cursor_node.selected_defence_system = 1
		cursor_node.placing_defence_system = true
		cursor_node.price_to_be_paid = price
	release_focus()
