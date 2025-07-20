extends Control

func _ready():
	$MarginContainer/VBoxContainer/Start.grab_focus()

func start_battle():
	get_tree().root.get_node("battle").start()
	get_tree().root.get_node("battle").get_node("ChooseAction").queue_free()

func leave():
	var scene
	if FileAccess.file_exists("user://autosave/" + PlayerStats.previous_scene + ".tscn"):
		scene = load("user://autosave/" + PlayerStats.previous_scene + ".tscn").instantiate()
	else:
		scene = load("res://scenes/locations/" + PlayerStats.previous_scene + ".tscn").instantiate()
	get_tree().root.call_deferred("add_child",scene)
	scene.get_node("./Player").position.x = PlayerStats.previous_position.x 
	scene.get_node("./Player").position.y = PlayerStats.previous_position.y
	get_tree().root.get_node("battle").queue_free()

func _on_start_pressed():
	start_battle()

func _on_leave_pressed():
	if randi_range(1,4) == 1:
		leave()
	else:
		start_battle()

func _on_item_pressed():
	get_tree().root.get_node("battle").call_deferred("add_child",load("res://scenes/objects/inventory/choose_item.tscn").instantiate())
	get_tree().root.get_node("battle").get_node("ChooseAction").queue_free()


func _on_stone_pressed():
	get_tree().root.get_node("battle").call_deferred("add_child",load("res://scenes/objects/inventory/choose_stone.tscn").instantiate())
	get_tree().root.get_node("battle").get_node("ChooseAction").queue_free()
