extends Attack

func _init():
	positions = [[2264,7,-0.1],[2640,2.6,0.0],
	[3008,-2.6,0.0],[3376,-7,0.1]]

func _on_body_entered(body):
	body.take_damage()
