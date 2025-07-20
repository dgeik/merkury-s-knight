extends statuses
class_name StatusWeak

func _init():
	type = false
	name_of_class = "weak"

func use():
	PlayerStats.weapon.dmg -= StatusesStats.statusData["Weak"]["stat"]
	
func alt_use():
	PlayerStats.weapon.dmg += StatusesStats.statusData["Weak"]["stat"]
