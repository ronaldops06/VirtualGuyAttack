extends enemyBase

func _physics_process(delta):
	apply_gravity(delta)
	_set_animation()
