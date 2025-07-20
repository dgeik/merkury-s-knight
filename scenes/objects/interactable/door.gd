extends Area2D

@export var to_scene : String
@export var to_position_y :int
@export var to_position_x :int


func _on_body_entered(body):
	var scene
	if FileAccess.file_exists("user://autosave/" + to_scene + ".tscn"):
		scene = load("user://autosave/" + to_scene + ".tscn").instantiate()
	else:
		scene = load("res://scenes/locations/" + to_scene + ".tscn").instantiate()
	get_tree().root.call_deferred("add_child",scene)
	scene.get_node("./Player").position.x = to_position_x 
	scene.get_node("./Player").position.y = to_position_y
	get_node("..").queue_free()
