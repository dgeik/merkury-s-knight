extends Enemy

func _ready():
	attack_patterns = LoadFromJson.load_json("res://from_json/razb.json")
