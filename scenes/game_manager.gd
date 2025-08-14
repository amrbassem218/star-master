extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

@onready var points_label: Label = $points_label
@onready var coin_counter: Label = $"../CanvasLayer/MarginContainer/HBoxContainer/coin_counter"


# Called every frame. 'delta' is the elapsed time since the previous frame.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var score = 0

func add_score ():
	score += 1
	points_label.text = "You just collected " + str(score) + " coins"
	coin_counter.text = str(score) + "/5"
	
