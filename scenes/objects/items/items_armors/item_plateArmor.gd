extends Items_armor
class_name Items_plateArmor

func _init():
	name_item = "Plate armor"

func pick_up():
	PlayerStats.inventory.append(Items_plateArmor.new())
	PlayerStats.inventory.back().def = ItemsStats.itemData["Plate armor"]["def"]
