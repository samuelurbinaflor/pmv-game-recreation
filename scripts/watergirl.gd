extends CharacterBody2D

const SPEED = 120.0
const JUMP_VELOCITY = -350.0
const PUSH_FORCE = 50.0

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("w_jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("w_left", "w_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
	
	#RIGID BODY COLLISION
	for i in get_slide_collision_count():
			var c = get_slide_collision(i)
			if c.get_collider() is RigidBody2D:
				c.get_collider().apply_central_impulse(-c.get_normal() * PUSH_FORCE)
			
func _on_hitbox_body_entered(body: Node2D) -> void:
	die()
	
func die():
	sprite.hide()
	get_tree().reload_current_scene()


func _on_hitbox_area_entered(area: Area2D) -> void:
	if area.is_in_group("blue_gem"):
		area.queue_free()
