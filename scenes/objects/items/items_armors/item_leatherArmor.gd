extends Items_armor
class_name Items_leatherArmor

func _init():
	name_item = "Leather armor"

func pick_up():
	PlayerStats.inventory.append(Items_leatherArmor.new())
	PlayerStats.inventory.back().def = ItemsStats.itemData["Leather armor"]["def"]
