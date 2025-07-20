extends CharacterBody2D
class_name player

@onready var anim_tree = $AnimationTree
@onready var direction
var speed := 1000


func _ready():
	pass

func _physics_process(delta):
	direction = Vector2(Input.get_axis("ui_left","ui_right"),
	Input.get_axis("ui_up","ui_down")).normalized()
	velocity = direction * speed
	
	if direction == Vector2.ZERO:
		anim_tree.get("parameters/playback").travel("Idle")
	else:
		anim_tree.get("parameters/playback").travel("Walk")
		anim_tree.set("parameters/Walk/BlendSpace2D/blend_position", direction)
		
	move_and_slide()
