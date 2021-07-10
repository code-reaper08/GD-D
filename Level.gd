extends Node

const ENEMY = preload("res://enemy.tscn")


func _ready():
	Global.currentscore = 0

func _on_Timer_timeout():
	var enemy =ENEMY.instance()
	add_child(enemy)


func _on_Scorecalc_timeout():
	Global.currentscore += 1
	
func _process(delta):
	$Label.text = "errors survived : " + str(Global.currentscore)
