extends Node2D


onready var total_funds_label = $TotalFundsLabel
onready var funds_speed_label = $FundsSpeedLabel
onready var root_node = $"../../"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	total_funds_label.text = "Total funds: " + String(root_node.label_total_funds) + " G"
	funds_speed_label.text = "Gains: " + String(root_node.label_funding_gains) + " G/S"
