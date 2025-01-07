extends Control
class_name ValueButton

signal value_increased(_value_name: String)
signal value_decreased(_value_name: String)

@export var value_name: String
@export var start_value: int
@export var minimum_value: int
@onready var value = start_value

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = value_name + ": " + str(value)


func _on_increase_pressed():
	value += 1
	value_increased.emit(value_name)

func _on_decrease_pressed():
	value -= 1
	if value < minimum_value:
		value = minimum_value
	value_decreased.emit(value_name)
