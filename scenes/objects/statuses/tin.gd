extends statuses
class_name StatusTin

func _init():
	type = true
	name_of_class = "Tin"

func use():
	PlayerStats.hp += StatusesStats.statusData["Tin"]["stat"]
	if PlayerStats.hp > PlayerStats.max_hp:
		PlayerStats.hp = PlayerStats.max_hp

func alt_use():
	pass
