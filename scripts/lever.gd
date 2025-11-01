extends PinJoint2D

@onready var left: StaticBody2D = $left
@onready var right: StaticBody2D = $right
@onready var arm: RigidBody2D = $arm

@export var target_object: AnimatableBody2D
@export var color: Color = Color.WHITE

@onready var sprite_base: Sprite2D = $base/Sprite2D
@onready var sprite_arm: Sprite2D = $arm/Sprite2D

var is_active = false

func _ready() -> void:
	arm.contact_monitor = true
	arm.max_contacts_reported = 4
	
	sprite_base.modulate = color
	sprite_arm.modulate = color
	if target_object:
		target_object.set_color(color)

# Detecta las colisiones del arm con los angular limits left y right
func _physics_process(delta: float) -> void:
	var colliding_bodies = arm.get_colliding_bodies()
	
	if left in colliding_bodies and not is_active:
		is_active = true
		print("isactive")
		
		target_object.set_button_active(true)

	elif right in colliding_bodies and is_active:
		is_active = false
		print("isnot")
		
		target_object.set_button_active(false)
