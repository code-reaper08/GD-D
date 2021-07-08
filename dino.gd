extends KinematicBody2D

const GRAVITY = 10
const JUMP_SPEED = -400
var velocity = Vector2.ZERO

func _process(delta):
	velocity.y += GRAVITY
	
	if Input.is_action_just_pressed("jump") or Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_SPEED
		$Sprite.play("jump")
	if Input.is_action_just_released("jump") and not is_on_floor():
		velocity.y = 0
	move_and_slide(velocity,Vector2.UP)
