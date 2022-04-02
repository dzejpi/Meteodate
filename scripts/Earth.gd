extends Node2D


var earth_impacted = false
var impact_started = false


func _ready():
	pass


func _process(delta):
	if earth_impacted:
		if !impact_started:
			impact_started = true

	if impact_started:
		process_the_impact()
		

func process_the_impact():
	pass
