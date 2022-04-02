extends Node2D


var earth_width = 13000
var earth_meteorite_distance = 1000

var label_distance = 30000
var label_speed = 11
var label_total_funds = 230
var label_funding_gains = 20

onready var earth_node = $GameNode/Earth
onready var meteorite_node = $GameNode/Meteorite


func _ready():
	pass


func _process(delta):
	pass
