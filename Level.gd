extends Node

const ENEMY = preload("res://enemy.tscn")
func _on_Timer_timeout():
	var enemy =ENEMY.instance()
	add_child(enemy)
