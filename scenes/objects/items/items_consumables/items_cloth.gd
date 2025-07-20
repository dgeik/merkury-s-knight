extends Items_consumable
class_name Items_cloth

func _init():
	name_item = "consumable_Cloth"

func use():
	if array_contains.contains_status(StatusBleed.new().name_of_class):
		PlayerStats.current_statuses.erase(array_contains.contains_status(StatusBleed.new().name_of_class))
	PlayerStats.hp += StatusesStats.statusData["Bleed"]["hp"]
	
	delete()

func pick_up():
	if array_contains.contains_items(name_item) == null:
		PlayerStats.inventory.append(Items_cloth.new())
		PlayerStats.inventory.back().count_item = 1
	else:
		(array_contains.contains_items(name_item) as Items_consumable).count_item += 1
