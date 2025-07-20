extends Node2D

func _ready():
	var area = get_viewport().get_texture().get_size()
	var pos_x = randf_range(0,area.x)
	var pos_y = randf_range(192,257)
	
	var item = preload("res://scenes/objects/items/items_consumable.tscn").instantiate()
	item.position.x = pos_x
	item.position.y = pos_y
	add_child(item)
	print(pos_x, '\n', pos_y)

func _process(delta):
	pass
