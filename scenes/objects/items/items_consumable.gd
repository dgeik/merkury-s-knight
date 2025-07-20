extends Items
class_name Items_consumable

var count_item : int

func _init():
	count_item = 1
	
func _ready():
	pass
	
func use():
	pass

func delete():
	(array_contains.contains_items(name_item) as Items_consumable).count_item -= 1
	
	if (array_contains.contains_items(name_item) as Items_consumable).count_item == 0:
		PlayerStats.inventory.erase(self)
