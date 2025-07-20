extends CharacterBody2D
class_name player_battle

@onready var is_action_enabled : bool = true
@onready var anim_tree2 = $anim2
@onready var direction
@onready var speed := 31000


func give_damage():
	EnemyStats.health -= PlayerStats.weapon.dmg
	print(EnemyStats.health)
	if EnemyStats.health <= 0:
		get_node("../")._on_all_battle_time_timeout()
	
func take_damage():
	PlayerStats.hp -= EnemyStats.damage - (EnemyStats.damage * PlayerStats.armor.def);
	print(PlayerStats.hp)
	$AnimationFlash.play("flash")

func _physics_process(delta):
	direction = Vector2(Input.get_axis("ui_left","ui_right"),0)
	
	if Input.is_action_just_pressed("ui_up") && (is_action_enabled == true):
		is_action_enabled = false
		give_damage()
		anim_tree2.get("parameters/playback").travel("attack")
		await get_tree().create_timer(0.5).timeout
		is_action_enabled = true
	
	if (Input.is_action_just_pressed("ui_left") ||
		Input.is_action_just_pressed("ui_right")) && (is_action_enabled == true):
		var tween = create_tween()
		if ((position.x == 1856 && Input.is_action_just_pressed("ui_left")) ||
		(position.x == 3904 && Input.is_action_just_pressed("ui_right"))):
			tween.pause()
		else:
			move(delta, tween)
	else:
		velocity.x = move_toward(velocity.x,0,speed)

	move_and_slide()

func move(delta, tween):
	tween.tween_property(self, "position", position + (direction * 512), delta)
