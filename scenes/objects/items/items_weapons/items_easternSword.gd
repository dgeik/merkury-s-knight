extends Items_weapon
class_name Items_easternSword

func _init():
	name_item = "Eastern sword"

func pick_up():
	PlayerStats.inventory.append(Items_easternSword.new())
	PlayerStats.inventory.back().dmg = ItemsStats.itemData["Eastern sword"]["dmg"]
