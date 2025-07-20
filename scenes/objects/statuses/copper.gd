extends statuses
class_name StatusCopper

func _init():
	type = true
	name_of_class = "Copper"

func use():
	PlayerStats.armor.def += StatusesStats.statusData["Copper"]["stat"]

func alt_use():
	PlayerStats.armor.def -= StatusesStats.statusData["Copper"]["stat"]
