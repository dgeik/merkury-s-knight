extends statuses
class_name StatusDispel

func _init():
	type = true
	name_of_class = "Dispel"

func take_enemy():
	for item in range(EnemyStats.current_statuses.size()-1, -1,-1):
		if EnemyStats.current_statuses[item].type == true:
			EnemyStats.current_statuses.remove_at(item)

func use():
	for item in range(PlayerStats.current_statuses.size()-1, -1,-1):
		if PlayerStats.current_statuses[item].type == false:
			PlayerStats.current_statuses.remove_at(item)
	
	PlayerStats.current_statuses.erase(self)
	
func alt_use():
	pass
