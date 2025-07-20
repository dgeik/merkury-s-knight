extends Items_armor
class_name Items_chainArmor

func _init():
	name_item = "Chain armor"

func pick_up():
	PlayerStats.inventory.append(Items_chainArmor.new())
	PlayerStats.inventory.back().def = ItemsStats.itemData["Chain armor"]["def"]
