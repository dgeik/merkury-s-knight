extends Node

var itemData = {}

func _ready():
	itemData = LoadFromJson.load_json("res://from_json/items_stats.json")
