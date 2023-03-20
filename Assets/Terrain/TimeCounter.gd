extends Control

export var minutes = 0
export var seconds = 0

func _process(delta):
	if minutes > 0 and seconds <= 0:
		minutes -= 1
		seconds = 59
	
	$seconds.set_text(str(": %02d" % seconds))
	$minutes.set_text(str("%02d" % minutes))
	
	if seconds <= 0:
		$timer.stop()
		yield(get_tree().create_timer(1), "timeout")
		if get_tree().reload_current_scene() != OK:
			print("Algo deu errado.")

func _on_timer_timeout():
	seconds -= 1
