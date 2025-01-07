extends Control


@export var value_name: String
@export var start_value: int
@onready var value = start_value

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = value_name + ": " + str(value)


func _on_increase_pressed():
	value += 1

func _on_decrease_pressed():
	value -= 1
