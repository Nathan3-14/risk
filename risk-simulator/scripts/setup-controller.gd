extends HBoxContainer


var troop_list = ["infantry", "cavalry", "infantry"]
var troops = {
	"Infantry": preload("res://assets/infantry.png"),
	"Cavalry": preload("res://assets/cavalry.png"),
	"Cannons": preload("res://assets/cannon.png"),
	"Cannons Support": preload("res://assets/cannon.png")
}
var troop_dice_referance = {
	"Infantry": "D4-s",
	"Cavalry": "D4-b",
	"Cannons": "D4-s",
	"Cannons Support": "D6-b"
}
var counter = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_attack_troop_value_increased(troop_type: String) -> void:
	var temp_troopdice = load("res://scenes/troop_dice_item.tscn").instantiate()
	temp_troopdice.get_node("Troop/TroopTexture").texture = troops[troop_type]
	temp_troopdice.get_node("Dice").dice_type = troop_dice_referance[troop_type]
	temp_troopdice.name = troop_type + "_&_" + str(counter)
	
	counter += 1
	
	$AttackDisplay.add_child(temp_troopdice)

func _on_attack_troop_value_decreased(troop_type: String) -> void:
	for troopdice in $AttackDisplay.get_children():
		if troop_type == troopdice.name.split("_&_")[0]:
			troopdice.queue_free()
			break


func _on_defend_troop_value_increased(troop_type: String) -> void:
	var temp_troopdice = load("res://scenes/troop_dice_item.tscn").instantiate()
	temp_troopdice.get_node("Troop/TroopTexture").texture = troops[troop_type]
	temp_troopdice.get_node("Dice").dice_type = troop_dice_referance[troop_type]
	temp_troopdice.name = troop_type + "_&_" + str(counter)
	
	counter += 1
	
	$DefendDisplay.add_child(temp_troopdice)


func _on_defend_troop_value_decreased(troop_type: String) -> void:
	for troopdice in $DefendDisplay.get_children():
		if troop_type == troopdice.name.split("_&_")[0]:
			troopdice.queue_free()
			break
