extends Label

func _process(delta):
	text = str("%04d" % Global.fruits)
