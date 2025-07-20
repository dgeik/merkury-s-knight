extends Items_weapon
class_name Items_lourdfardeau

func _init():
	name_item = "Lourdfardeau"
	
func pick_up():
	PlayerStats.inventory.append(Items_lourdfardeau.new())
	PlayerStats.inventory.back().dmg = ItemsStats.itemData["Lourdfardeau"]["dmg"]
