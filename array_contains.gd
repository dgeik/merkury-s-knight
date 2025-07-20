extends Node
class_name array_contains

static func contains_status(status_type: String) -> statuses:
	for obj in PlayerStats.current_statuses:
		if obj.name_of_class == status_type:
			return obj
	return null

static func contains_items(items_type: String) -> Items:
	for obj in PlayerStats.inventory:
		if obj.name_item == items_type:
			return obj
	return null
