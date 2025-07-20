extends Node

@onready var health : int = 1
@onready var damage : int = 1
@onready var current_statuses : Array[statuses]
@onready var burn : bool #0 - false, 1 - true

@onready var enemy_name : String = "cat"
@onready var enemy_name_on_location : String
