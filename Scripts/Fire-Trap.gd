extends Area2D

func _on_Fire_body_entered(body):
	if body.has_method("playerDamage"):
		body.playerDamage()

func _on_startTimer_timeout():
	$anim.play("on")
	$collision.set_deferred("disabled", false)

func _on_stopTimer_timeout():
	$anim.play("off")
	$collision.set_deferred("disabled", true)
