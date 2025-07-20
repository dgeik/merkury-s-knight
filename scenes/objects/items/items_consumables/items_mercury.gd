extends Items_consumable
class_name Items_mercury

func use():
	if !array_contains.contains_status(StatusMercury.new().name_of_class):
		PlayerStats.current_statuses.append(StatusMercury.new())
	MagicController.find_magic()

func _init():
	name_item = "stone_Mercury"
