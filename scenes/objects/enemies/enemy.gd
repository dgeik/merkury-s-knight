extends CharacterBody2D
class_name Enemy


var attack_once := preload("res://scenes/objects/attacks/attack_once.tscn")
var attack_splash := preload("res://scenes/objects/attacks/attack_splash.tscn")
var attack_widesplash := preload("res://scenes/objects/attacks/attack_widesplash.tscn")
var attacks := []
var attack_patterns
var enemy_name

func _ready():
	if EnemyStats.enemy_name_on_location == get_node(".").name && EnemyStats.health <= 0:
		get_node(".").queue_free()
		SaveClass.save.autosave(get_node("../"))
		EnemyStats.enemy_name = ""
		EnemyStats.enemy_name_on_location = ""
		EnemyStats.health = 0

func match_attack(x:String):
	match x:
		"attack_once": return attack_once
		"attack_splash": return attack_splash
		"attack_widesplash": return attack_widesplash

func attack(node:PackedScene, pos:float):
	attacks.append(node.instantiate())
	attacks.back().set_attack(pos)
	get_node("..").add_child(attacks.back())

func get_pattern():
	match randi_range(1,3):
		1: pattern("1")
		2: pattern("2")
		3: pattern("3")

func pattern(x:String):
	for i in attack_patterns[x].size():
		if attack_patterns[x][i][0][0] == "":
				continue
		else:
			for y in attack_patterns[x][i].size():
				attack(
					match_attack(attack_patterns[x][i][y][0]),
					attack_patterns[x][i][y][1])
			await get_tree().create_timer(0.30).timeout

func _on_harase_body_entered(body):
	pass # Replace with function body.


func _on_InBattle_body_entered(body):
	EnemyStats.enemy_name = enemy_name
	EnemyStats.enemy_name_on_location = get_node(".").name
	PlayerStats.previous_position.x = get_node("../").get_node("./Player").position.x
	PlayerStats.previous_position.y = get_node("../").get_node("./Player").position.y
	PlayerStats.previous_scene = get_node("../").name
	get_tree().change_scene_to_file("res://scenes/battle.tscn")
