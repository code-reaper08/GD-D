extends Control

func _ready():
	if Global.currentscore > Global.highscore:
		Global.highscore = Global.currentscore
	$Highscore.text = "Highcscore : " + str(Global.highscore)
func _process(delta):
	if Input.is_action_just_pressed("jump"):
		get_tree().change_scene("res://Level.tscn")
