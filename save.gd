extends Node
class_name SaveClass

static var save = SaveClass.new();

#SaveClass.save.autosave(get_node(".."))

func autosave(scene_to_save : Node):
	if not DirAccess.dir_exists_absolute("user://autosave"):
		DirAccess.make_dir_absolute("user://autosave")
	
	var node_to_save = scene_to_save
	var scene = PackedScene.new()
	scene.pack(node_to_save)
	ResourceSaver.save(scene, "user://autosave/" + scene_to_save.name + ".tscn")
	
func handlesave():
	if not DirAccess.dir_exists_absolute("user://handlesave"):
		DirAccess.make_dir_absolute("user://handlesave")
	DirAccess.copy_absolute("user://autosave","user://handlesave")
