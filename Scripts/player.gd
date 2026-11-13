extends CharacterBody2D


const SPEED = 500.0
#const JUMP_VELOCITY = -400.0 also not needed but remnant of built in script 


func _physics_process(delta: float) -> void:
	# Add the gravity. //Commented out b/c not needed in our game
	#if not is_on_floor():
	#	velocity += get_gravity() * delta

	# Handle jump.
#	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
#		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
#	var directionX := Input.get_axis("move_left", "move_right")
#	if directionX:
#		velocity.x = directionX * SPEED
#	else:
#		velocity.x = move_toward(velocity.x, 0, SPEED)
#		
#	var directionY := Input.get_axis("move_up", "move_down")
#	if directionY:
#		velocity.y = directionY * SPEED
#	else:
#		velocity.y = move_toward(velocity.y, 0, SPEED)
	var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * SPEED
	
	move_and_slide()
