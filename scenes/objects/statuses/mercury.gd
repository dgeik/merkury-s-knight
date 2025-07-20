extends statuses
class_name StatusMercury

func _init():
	type = true
	name_of_class = "Mercury"

func use():
	PlayerStats.weapon.dmg += StatusesStats.statusData["Mercury"]["stat"]
	
func alt_use():
	PlayerStats.weapon.dmg -= StatusesStats.statusData["Mercury"]["stat"]
