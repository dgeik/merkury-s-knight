extends Items_consumable
class_name Items_colorlessVial


func use():
	EnemyStats.burn = true
	
	delete()
	
func pick_up():
	if array_contains.contains_items(name_item) == null:
		PlayerStats.inventory.append(Items_colorlessVial.new())
		PlayerStats.inventory.back().count_item = 1
	else:
		(array_contains.contains_items(name_item) as Items_consumable).count_item += 1

func _init():
	name_item = "consumable_Colorless Vial"
