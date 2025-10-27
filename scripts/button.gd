extends AnimatableBody2D

var start_position: Vector2
var end_position: Vector2
var _active: bool = false 
var bodies_on_area: int = 0

@export var speed: float = 5.0
@export var target_object: AnimatableBody2D

func _ready():
	start_position = position
	end_position = position + Vector2(0, 3)

func _physics_process(delta: float) -> void:
	if _active:
		position = position.move_toward(end_position, speed * delta)
		target_object.move_t(delta)
		
	else:
		position = position.move_toward(start_position, speed * delta)
		target_object.move_b(delta)

func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	bodies_on_area += 1
	_active = true
	
func _on_area_2d_body_shape_exited(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	bodies_on_area -= 1
	if bodies_on_area <= 0:
		_active = false
