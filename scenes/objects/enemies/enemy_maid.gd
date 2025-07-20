extends Enemy

@onready var agent = $NavigationAgent2D
@onready var speed := 1000
@onready var target : Vector2
@onready var player_enter : bool

func _physics_process(delta):
	if (player_enter == true):
		EnemyStats.enemy_name_on_location = get_node(".").name
		PlayerStats.previous_position.x = get_node("../").get_node("./Player").position.x
		PlayerStats.previous_position.y = get_node("../").get_node("./Player").position.y
		PlayerStats.previous_scene = get_node("../").name
		get_tree().change_scene_to_file("res://scenes/battle.tscn")
	else:
		agent.target_position = get_global_mouse_position()
		var direction = (agent.get_next_path_position() - global_position).normalized()
		velocity = direction * speed
		move_and_slide()


func _on_area_2d_body_entered(body):
	EnemyStats.enemy_name = "cat"
	player_enter = true
