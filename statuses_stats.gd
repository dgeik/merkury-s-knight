extends Node

var statusData = {}

func _ready():
	statusData = LoadFromJson.load_json("res://from_json/statuses_stats.json")
