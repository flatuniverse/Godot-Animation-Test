extends CharacterBody2D

var screen_size 

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	#var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		#print("right")
		#print(position.x)
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
		#print("left")
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	#	print("up")
		#print(position.x)
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	#	print("down")
	if not(Input.is_action_pressed("move_right")) and \
	not(Input.is_action_pressed("move_left")) and \
	not(Input.is_action_pressed("move_up")) and \
	not(Input.is_action_pressed("move_down")):
		#print("stop")
		velocity = Vector2.ZERO
		#velocity.x = 0
		#velocity.y = 0
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * SPEED
		$AnimationPlayer.play("Laugh")
	else:
		$AnimationPlayer.play("Idle")
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	#move_and_slide()
	var collision = move_and_collide(velocity * delta)
	if collision:
		$ExplosionParticles.emitting = true 
