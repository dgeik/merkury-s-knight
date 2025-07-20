extends Node

func _ready():
	TranslationServer.set_locale("en")
	PlayerStats.inventory.append(Items_tin.new())
	PlayerStats.inventory.append(Items_copper.new())
	PlayerStats.inventory.append(Items_mercury.new())
	
	weapon.dmg = 1

@onready var inventory : Array[Items] = []
@onready var hp : int = 5
@onready var max_hp : int = 10
@onready var weapon : Items_weapon = Items_sword.new()
@onready var armor : Items_armor = Items_leatherArmor.new()
@onready var current_statuses : Array[statuses]
@onready var vampirism : int = 0
@onready var counterattack : int = 0
@onready var bleed : int = 0

@onready var previous_scene : String = "f0_lab"
@onready var previous_position : Vector2 = Vector2(0,0)
