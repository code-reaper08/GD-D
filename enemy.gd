extends Area2D

var enemylist = ["404","enemy2","enemymove"]

func _ready():
	randomize()
	var currentenemy = enemylist[randi() % enemylist.size()]
	$AnimatedSprite.play(currentenemy)
func _process(delta):
	position.x -= 500*delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_enemy_body_entered(body):
	get_tree().change_scene("res://titlescreen.tscn")
