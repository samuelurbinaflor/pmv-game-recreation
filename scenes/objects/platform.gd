extends AnimatableBody2D

var start_pos: Vector2
@export var end_pos: Vector2
const SPEED = 50.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_pos = position
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func move_t(delta: float):
	position = position.move_toward(end_pos, SPEED * delta)

func move_b(delta: float):
	position = position.move_toward(start_pos, SPEED * delta)
