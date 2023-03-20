extends Area2D

func _on_fallzone_body_entered(body: Node) -> void:
	if body.name == "Player":
		if get_tree().change_scene("res://Scenes/Prefabs/GameOver.tscn") != OK:
			print("Algo deu errado.")

func _on_fallzone2_body_entered(body):
	if body.name == "Player":
		Global.player_life -= 1
		Global.player_health = 3
		
	if body.name == "Player" and Global.player_life < 1:
		if get_tree().change_scene("res://Scenes/Prefabs/GameOver.tscn") != OK:
			print("Algo deu errado.")
	else:
		get_tree().reload_current_scene()
