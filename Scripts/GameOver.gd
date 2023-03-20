extends CanvasLayer

func _on_BtnRetry_pressed():
	get_tree().change_scene("res://Levels/StartScreen.tscn")
	if Global.is_dead:
		Global.player_health = 3
		Global.player_life = 3
