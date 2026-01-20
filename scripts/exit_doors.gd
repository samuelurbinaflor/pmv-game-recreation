extends Area2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
var is_fully_open = false
var should_be_open := false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_body_entered(_body: Node2D) -> void:
	animated_sprite_2d.play("open")
	should_be_open = true
	
func _on_body_exited(_body: Node2D) -> void:
	animated_sprite_2d.play_backwards("open")
	should_be_open = false
	set_fully_open(false)
	

func _on_animated_sprite_2d_animation_finished() -> void:
	if should_be_open:
		set_fully_open(true)

@rpc("authority", "call_local")
func set_fully_open(value: bool):
	is_fully_open = value
	print(is_fully_open)
