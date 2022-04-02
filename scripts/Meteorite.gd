extends Node2D


var meteorite_speed = 1
var rotation_speed = 0.1

onready var meteorite_shape = $MeteoriteShapeSprite


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	self.position.x += meteorite_speed * delta
	meteorite_shape.rotation += rotation_speed * delta
