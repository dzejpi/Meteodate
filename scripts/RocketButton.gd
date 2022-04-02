extends TextureButton


var price = 20

onready var root_node = $"../../../"
onready var price_label = $RocketPriceLabel


func _ready():
	price_label.text = String(price) + " G"


func _process(delta):
	if root_node.label_total_funds < price:
		disabled = true
	else:
		disabled = false
	
