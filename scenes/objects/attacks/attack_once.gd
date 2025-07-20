extends Attack

func _init():
	positions = [[2088,9.5,-0.2],[2448,5.0,-0.1],
	[2816,0.0,0],[3192,-5.0,0.1],[3528,-9.5,0.2]]

func _on_body_entered(body):
	body.take_damage()
