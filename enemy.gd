extends Area2D

func _process(delta):
	position.x -= 300*delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_enemy_body_entered(body):
	get_tree().quit()
