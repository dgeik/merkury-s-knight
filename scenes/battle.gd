extends Node2D
class_name battle_scene

var enemy : Enemy

func set_enemy(enemy_string : String):
	enemy = load("res://scenes/objects/enemies/enemy_" + enemy_string + ".tscn").instantiate()

func _ready():
	set_enemy(EnemyStats.enemy_name)
	add_child(enemy)
	enemy.position.x = $enemy_position.position.x
	enemy.position.y = $enemy_position.position.y
	start()


func _on_all_battle_time_timeout():
	$all_battle_time.stop()
	if EnemyStats.health <= 0:
		var scene
		if FileAccess.file_exists("user://autosave/" + PlayerStats.previous_scene + ".tscn"):
			scene = load("user://autosave/" + PlayerStats.previous_scene + ".tscn").instantiate()
		else:
			scene = load("res://scenes/locations/" + PlayerStats.previous_scene + ".tscn").instantiate()
		get_tree().root.call_deferred("add_child",scene)
		scene.get_node("./Player").position.x = PlayerStats.previous_position.x 
		scene.get_node("./Player").position.y = PlayerStats.previous_position.y
		get_tree().root.get_node("battle").queue_free()
	else :
		for status in PlayerStats.current_statuses:
			status.alt_use()
		call_deferred("add_child",load("res://scenes/objects/inventory/choose_action2.tscn").instantiate())
		get_tree().paused = true

func start():
	get_tree().paused = false
	$all_battle_time.start()
	enemy.get_pattern()
	
	for status in PlayerStats.current_statuses:
		status.use()
