extends CharacterBody2D

const SPEED = 120.0
const JUMP_VELOCITY = -300.0
const MAX_JUMPS = 2  # normal jump + 1 double jump

var jump_count = 0

func _physics_process(delta: float) -> void:
	# Add gravity
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		jump_count = 0  # Reset jump count when on the ground

	# Handle jump
	if Input.is_action_just_pressed("ui_accept") and jump_count < MAX_JUMPS:
		velocity.y = JUMP_VELOCITY
		jump_count += 1

	# Handle movement
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
