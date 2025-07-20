extends Control

#func add_slot():
	#var item_texture = load("res://floor2.png")
	#var item_name = "asd"
	#add_item(item_name,item_texture)
 
@export var texture_item : Texture2D;
var inventory_of_consumable : Array[Items_consumable] 

func _ready():
	for i in PlayerStats.inventory.size():
		if PlayerStats.inventory[i].name_item.begins_with("consumable_"):
			inventory_of_consumable.append(PlayerStats.inventory[i])
			$MarginContainer/ItemList.add_item(tr(PlayerStats.inventory[i].name_item),PlayerStats.inventory[i].icon)
 
#func _input(event):
#	if event.is_action_pressed("ui_left"):
#		visible = !visible
#		if visible == true and item_count > 0:
##			grab_focus()
#			select(0)

func _on_item_activated(index):
	inventory_of_consumable[index].use()
	inventory_of_consumable.clear()
	get_tree().root.get_node("battle").start()
	get_tree().root.get_node("battle").get_node("ChooseItem").queue_free()


func _on_button_pressed():
	get_tree().root.get_node("battle").call_deferred("add_child",load("res://scenes/objects/inventory/choose_action.tscn").instantiate())
	get_tree().root.get_node("battle").get_node("ChooseItem").queue_free()
