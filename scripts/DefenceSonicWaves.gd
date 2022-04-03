extends KinematicBody2D


var launch_delay = 5
var launch_time = 0
var launch = false
var launched = false

var speed = 250
var velocity = Vector2(-speed, 0)
var sonic_waves_rotation = 0

var stopping_speed = 2

var hit = false
var hit_delay = 4
var hit_time = 0

onready var explosion_sprite = $ExplosionSprite
onready var sonic_waves_sprite = $SonicWaveSprite


func _ready():
	set_physics_process(true)


func _process(delta):
	if launch_time < launch_delay:
		launch_time += (1 * delta)
	else:
		launch = true

	if launch:
		if !launched:
			launched = true

	if hit:
		sonic_waves_sprite.texture = null
		if hit_time < hit_delay:
			hit_time += delta
			explosion_sprite.scale.x += 0.1 * delta
			explosion_sprite.scale.y += 0.1 * delta
			explosion_sprite.modulate.a -= 0.5 * delta
			if (explosion_sprite.modulate.a <= 0):
				queue_free()
		else:
			pass

func _physics_process(delta):
	if launched:
		velocity = velocity.rotated(rotation)
		
		position += velocity * delta
		if !hit:
			velocity = Vector2(speed, 0)
		else:
			velocity = Vector2(0, 0)
		
		move_and_slide(velocity * delta)


func set_rotation(sonic_waves_direction):
	rotation = sonic_waves_direction


func _on_SonicWavesArea_area_entered(area):
	if (area.get_name() == "MeteoriteArea"):
		hit = true
		decrease_meteorite_speed()


func decrease_meteorite_speed():
	GameState.stopping_speed = stopping_speed
