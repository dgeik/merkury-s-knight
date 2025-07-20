extends Node

var enemyData = {}

func _ready():
	enemyData = LoadFromJson.load_json("res://from_json/enemies.json")
