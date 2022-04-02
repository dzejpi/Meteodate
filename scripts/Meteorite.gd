extends Node2D


var meteorite_speed = 1
var rotation_speed = 0.1
# Placeholder value, overridden immediately
var distance_left = 1000
var crashing_into_earth = true

onready var meteorite_shape = $MeteoriteShapeSprite
onready var meteorite_burning_shape = $MeteoriteBurnShapeSprite
onready var meteorite_tail_sprite = $MeteoriteTailSprite
onready var meteorite_glowing_sprite = $MeteoriteShapeGlowingSprite
onready var earth_node = $"../Earth"


# Called when the node enters the scene tree for the first time.
func _ready():
	meteorite_burning_shape.modulate.a = 0
	meteorite_tail_sprite.modulate.a = 0
	meteorite_glowing_sprite.modulate.a = 0


func _process(delta):
	self.position.x += meteorite_speed * delta
	meteorite_shape.rotation += rotation_speed * delta
	meteorite_glowing_sprite.rotation += rotation_speed * delta
	
	if distance_left < 400:
		if meteorite_burning_shape.modulate.a < 1:
			meteorite_burning_shape.modulate.a += 0.05 * delta

	if distance_left < 250:
		if meteorite_tail_sprite.modulate.a < 1:
			meteorite_tail_sprite.modulate.a += 0.05 * delta
			
	if distance_left < 125:
		if meteorite_glowing_sprite.modulate.a < 1:
			meteorite_glowing_sprite.modulate.a += 0.05 * delta
			
	if distance_left < 0:
		if !crashing_into_earth:
			crashing_into_earth = true
	
	if crashing_into_earth:
		crash_into_earth(delta)
	
func crash_into_earth(delta):
	if scale.x > 0:
		scale.x -= 0.1 * delta
		scale.y -= 0.1 * delta
		
	if scale.x < 0.1:
		earth_node.earth_impacted = true
