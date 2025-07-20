extends Node
class_name MagicController

static func bloc_of_remove_status(status : String):
	PlayerStats.current_statuses.erase(array_contains.contains_status(status))

static func find_magic():
	if (array_contains.contains_status(StatusCopper.new().name_of_class) &&
	array_contains.contains_status(StatusTin.new().name_of_class)):
		
		bloc_of_remove_status(StatusCopper.new().name_of_class)
		print("StatusCopper erased")

		bloc_of_remove_status(StatusTin.new().name_of_class)
		print("StatusTin erased")
		
		PlayerStats.current_statuses.append(StatusDispel.new())
		
	elif (array_contains.contains_status(StatusMercury.new().name_of_class) &&
	array_contains.contains_status(StatusTin.new().name_of_class)):
		
		bloc_of_remove_status(StatusMercury.new().name_of_class)
		print("StatusMercury erased")

		bloc_of_remove_status(StatusTin.new().name_of_class)
		print("StatusTin erased")
		
		if !array_contains.contains_status(StatusVampirism.new().name_of_class):
			PlayerStats.current_statuses.append(StatusVampirism.new())
		
	elif (array_contains.contains_status(StatusCopper.new().name_of_class) &&
	array_contains.contains_status(StatusMercury.new().name_of_class)):
		
		bloc_of_remove_status(StatusMercury.new().name_of_class)
		print("StatusMercury erased")

		bloc_of_remove_status(StatusCopper.new().name_of_class)
		print("StatusCopper erased")
		
		if !array_contains.contains_status(StatusCounterattack.new().name_of_class):
			PlayerStats.current_statuses.append(StatusCounterattack.new())
