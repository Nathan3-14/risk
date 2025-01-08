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
	var temp_troop = load("res://scenes/troop.tscn").instantiate()
	temp_troop.get_node("TroopTexture").texture = troops[troop_type]
	temp_troop.name = troop_type + "_&_" + str(counter)
	
	var temp_dice = load("res://scenes/dice.tscn").instantiate()
	temp_dice.dice_type = troop_dice_referance[troop_type]
	temp_dice.name = troop_type + "_&_" + str(counter)
	
	counter += 1
	$AttackDisplay/TroopDiceSeperator/TroopList.add_child(temp_troop)
	$AttackDisplay/TroopDiceSeperator/DiceList.add_child(temp_dice)
	
	if len($AttackDisplay/TroopDiceSeperator/TroopList.get_children()) > $AttackDisplay/TroopDiceSeperator/Compressor.custom_minimum_size.x / 16 + 2:
		$AttackDisplay/TroopDiceSeperator/Compressor.custom_minimum_size.x += 16

func _on_attack_troop_value_decreased(troop_type: String) -> void:
	for troop in $AttackDisplay/TroopDiceSeperator/TroopList.get_children():
		if troop_type == troop.name.split("_&_")[0]:
			troop.queue_free()
			break
	for dice in $AttackDisplay/TroopDiceSeperator/DiceList.get_children():
		if troop_type == dice.name.split("_&_")[0]:
			dice.queue_free()
			break
	$AttackDisplay/TroopDiceSeperator/Compressor.custom_minimum_size.x -= 16
	if $AttackDisplay/TroopDiceSeperator/Compressor.custom_minimum_size.x < 64:
		$AttackDisplay/TroopDiceSeperator/Compressor.custom_minimum_size.x = 64


func _on_defend_troop_value_increased(troop_type: String) -> void:
	var temp_troop = load("res://scenes/troop.tscn").instantiate()
	temp_troop.get_node("TroopTexture").texture = troops[troop_type]
	temp_troop.name = troop_type + "_&_" + str(counter)
	
	var temp_dice = load("res://scenes/dice.tscn").instantiate()
	temp_dice.dice_type = troop_dice_referance[troop_type]
	temp_dice.name = troop_type + "_&_" + str(counter)
	
	counter += 1
	$DefendDisplay/TroopDiceSeperator/TroopList.add_child(temp_troop)
	$DefendDisplay/TroopDiceSeperator/DiceList.add_child(temp_dice)
	
	if len($DefendDisplay/TroopDiceSeperator/TroopList.get_children()) > $DefendDisplay/TroopDiceSeperator/Compressor.custom_minimum_size.x / 16 + 2:
		$DefendDisplay/TroopDiceSeperator/Compressor.custom_minimum_size.x += 16


func _on_defend_troop_value_decreased(troop_type: String) -> void:
	for troop in $DefendDisplay/TroopDiceSeperator/TroopList.get_children():
		if troop_type == troop.name.split("_&_")[0]:
			troop.queue_free()
			break
	for dice in $DefendDisplay/TroopDiceSeperator/DiceList.get_children():
		if troop_type == dice.name.split("_&_")[0]:
			dice.queue_free()
			break
	$DefendDisplay/TroopDiceSeperator/Compressor.custom_minimum_size.x -= 16
	if $DefendDisplay/TroopDiceSeperator/Compressor.custom_minimum_size.x < 64:
		$DefendDisplay/TroopDiceSeperator/Compressor.custom_minimum_size.x = 64
