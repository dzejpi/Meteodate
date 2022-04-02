extends Node2D


var game_over_triggered = false
var days_survived = 0

onready var days_survived_label = $DaysSurvivedLabel


func _ready():
	visible = false


func _process(delta):
	if game_over_triggered:
		days_survived_label.text = "Days survived: " + String(days_survived)
		visible = true

