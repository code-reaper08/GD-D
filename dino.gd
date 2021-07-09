extends KinematicBody2D

const GRAVITY = 30
const JUMP_SPEED = -700
var velocity = Vector2(0,0)

func _process(delta):
	if not is_on_floor():
		$Sprite.play("jump")
	if is_on_floor():
		$Sprite.play("move")

	velocity.y += GRAVITY
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_SPEED
		$Sprite.play("jump")
	velocity = move_and_slide(velocity,Vector2.UP)

##const SPEED = 250
#const GRAVITY = 35
#const JUMPFORCE = -1100
#var velocity = Vector2(0,0)
#func _physics_process(_delta):
#	if is_on_floor():
#		$Sprite.play("move")
#	if not is_on_floor():
#		$Sprite.play("jump")
#
#	velocity.y = velocity.y + GRAVITY
#	if Input.is_action_just_pressed("jump") and is_on_floor() :
#		velocity.y = JUMPFORCE
#		$Sprite.play("jump")
#
#
#	velocity = move_and_slide(velocity,Vector2.UP)
