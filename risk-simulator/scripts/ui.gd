extends Control

@export_multiline var attack_label: String
@export_multiline var defend_label: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$AttackCount.text = attack_label
	$DefendCount.text = defend_label.replace("{i}", "infantry count").replace("{cy}", "cavalry count").replace("{cn}", "cannon count")
