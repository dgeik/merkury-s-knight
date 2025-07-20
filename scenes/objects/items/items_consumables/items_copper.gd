extends Items_consumable
class_name Items_copper

func use():
	if !array_contains.contains_status(StatusCopper.new().name_of_class):
		PlayerStats.current_statuses.append(StatusCopper.new())
	MagicController.find_magic()

func _init():
	name_item = "stone_Copper"
