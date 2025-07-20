extends Attack

func _init():
	positions = [[2448,5.0,-0.1],
	[2816,0.0,0],[3192,-5.0,0.1]]

func _on_body_entered(body):
	body.take_damage()
