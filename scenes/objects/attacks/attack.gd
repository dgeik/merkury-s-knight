extends Area2D
class_name Attack

var rad
var positions : Array

@onready var direction : Vector2
@onready var speed : int = 1300

func _ready():
	await get_tree().create_timer(2.0).timeout
	queue_free() 

func _physics_process(delta):
	position += direction * speed * delta
	scale += Vector2(0.003,0)
	if EnemyStats.health <= 0:
		queue_free()

func set_attack(x : int):
	position.x = positions[x][0]
	transform.y = Vector2(positions[x][2],1)
	position.y = 3152
	rad = deg_to_rad(positions[x][1] + 90)
	direction = Vector2(cos(rad),sin(rad))
