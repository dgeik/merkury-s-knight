extends statuses
class_name StatusVampirism

func _init():
	type = true
	name_of_class = "Vampirism"

func use():
	PlayerStats.vampirism = StatusesStats.statusData["Vampirism"]["stat"]
	
func alt_use():
	PlayerStats.vampirism = 0
