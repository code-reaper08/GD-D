extends KinematicBody2D
const GRAVITY = 10
const JUMP_SPEED = -400
var velocity = Vector2.ZERO

func _process(delta):
	velocity.y += GRAVITY
	
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = JUMP_SPEED
		$Sprite.play("jump")
	move_and_slide(velocity)
