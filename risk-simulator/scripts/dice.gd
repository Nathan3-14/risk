extends MarginContainer
class_name Dice

signal add_to_attack

var dice = {
	"D4-s": preload("res://assets/dice-sprites/D4-standard.png"),
	"D4-b": preload("res://assets/dice-sprites/D4-bonus.png"),
	"D6-s": preload("res://assets/dice-sprites/D6-standard.png"),
	"D6-b": preload("res://assets/dice-sprites/D6-bonus.png"),
	"D8-s": preload("res://assets/dice-sprites/D8-standard.png"),
	"D8-b": preload("res://assets/dice-sprites/D8-bonus.png")
}
var values = {
	"0": preload("res://assets/dice-sprites/Value-0.png"),
	"1": preload("res://assets/dice-sprites/Value-1.png"),
	"2": preload("res://assets/dice-sprites/Value-2.png"),
	"3": preload("res://assets/dice-sprites/Value-3.png"),
	"4": preload("res://assets/dice-sprites/Value-4.png"),
	"5": preload("res://assets/dice-sprites/Value-5.png"),
	"6": preload("res://assets/dice-sprites/Value-6.png"),
	"7": preload("res://assets/dice-sprites/Value-7.png"),
	"8": preload("res://assets/dice-sprites/Value-8.png"),
	"9": preload("res://assets/dice-sprites/Value-9.png"),
	"Q": preload("res://assets/dice-sprites/Value-Q.png"),
}

@export var dice_type: String
@onready var dice_max_value = dice_type[1]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$DiceTexture.texture = dice[dice_type]


func roll() -> void:
	var value = randi_range(1, int(dice_max_value))
	
	$NumberTexture.texture = values[value]


func _on_button_pressed():
	add_to_attack.emit()
