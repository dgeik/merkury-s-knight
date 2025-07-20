extends Items_consumable
class_name Items_tin

func use():
	if !array_contains.contains_status(StatusTin.new().name_of_class):
		PlayerStats.current_statuses.append(StatusTin.new())
	MagicController.find_magic()

func _init():
	name_item = "stone_Tin"
