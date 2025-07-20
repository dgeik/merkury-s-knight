extends Items_weapon
class_name Items_sword

func _init():
	name_item = "Sword"
	
func pick_up():
	PlayerStats.inventory.append(Items_sword.new())
	PlayerStats.inventory.back().dmg = ItemsStats.itemData["Sword"]["dmg"]
