extends statuses
class_name StatusCounterattack

func _init():
	type = true
	name_of_class = "Counterattack"

func use():
	PlayerStats.counterattack = StatusesStats.statusData["Counterattack"]["stat"]
	
func alt_use():
	PlayerStats.counterattack = 0
