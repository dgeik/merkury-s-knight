extends Control


func _on_button_pressed():
	get_tree().root.get_node("battle").call_deferred("add_child",load("res://scenes/objects/inventory/choose_action.tscn").instantiate())
	get_tree().root.get_node("battle").get_node("ChooseStone").queue_free()

func _on_stone_tin_pressed():
	Items_tin.new().use()
	to_battle()

func _on_stone_copper_pressed():
	Items_copper.new().use()
	to_battle()

func _on_stone_mercury_pressed():
	Items_mercury.new().use()
	to_battle()

func to_battle():
	get_tree().root.get_node("battle").start()
	get_tree().root.get_node("battle").get_node("ChooseStone").queue_free()
