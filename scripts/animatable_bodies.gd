extends AnimatableBody2D

var start_pos: Vector2
@export var end_pos: Vector2
@onready var sprite_2d: Sprite2D = $Sprite2D
const SPEED = 50.0
var active_buttons = 0

func _ready() -> void:
	start_pos = position
	
func _process(delta: float) -> void:
	if active_buttons:
		position = position.move_toward(end_pos, SPEED * delta)
	
	else:
		position = position.move_toward(start_pos, SPEED * delta)

func set_button_active(active: bool):
	if active:
		active_buttons +=1
	else:
		active_buttons -=1
		

func set_color(color: Color):
	if sprite_2d and color:
		sprite_2d.modulate = color
	

	
