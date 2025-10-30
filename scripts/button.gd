extends AnimatableBody2D

var start_position: Vector2
var end_position: Vector2
var _active: bool = false 
var bodies_on_area: int = 0
@export var color: Color = Color.WHITE
@onready var sprite_2d: Sprite2D = $Sprite2D

@export var speed: float = 5.0
@export var target_object: AnimatableBody2D

func _ready():
	start_position = position
	end_position = position + Vector2(0, 3)
	sprite_2d.modulate = color
	target_object.set_color(color)


func _physics_process(delta: float) -> void:
	if _active:
		position = position.move_toward(end_position, speed * delta)
		
	else:
		position = position.move_toward(start_position, speed * delta)

func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	bodies_on_area += 1
	_active = true
	target_object.set_button_active(true)
	
	
func _on_area_2d_body_shape_exited(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	bodies_on_area -= 1
	target_object.set_button_active(false)
	
	if bodies_on_area <= 0:
		_active = false
	
	
