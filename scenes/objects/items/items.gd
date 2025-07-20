extends Area2D
class_name Items

var name_item : String
var description_item : String
@export var icon : Texture
var is_player_entered: bool # 0 - false, 1 - true

func _init():
	name_item = "name_item"
	description_item = "description_item"

func pick_up():
	pass

func _ready():
	pass 

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept") && (is_player_entered == true):
		pick_up()
		queue_free()

func _on_body_entered(body):
	is_player_entered = true

func _on_body_exited(body):
	is_player_entered = false
