extends statuses
class_name StatusBleed

func _init():
	type = false
	name_of_class = "Bleed"

func use():
	PlayerStats.bleed = StatusesStats.statusData["Bleed"]["stat"]

func alt_use():
	PlayerStats.bleed = 0
