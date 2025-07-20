extends Items_weapon
class_name Items_longSword

func _init():
	name_item = "Long sword"

func pick_up():
	PlayerStats.inventory.append(Items_longSword.new())
	PlayerStats.inventory.back().dmg = ItemsStats.itemData["Long sword"]["dmg"]
