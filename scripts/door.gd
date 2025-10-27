extends Area2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
var is_fully_open = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	animated_sprite_2d.play("open")
	await animated_sprite_2d.animation_finished
	is_fully_open = true
	
	
func _on_body_exited(body: Node2D) -> void:
	animated_sprite_2d.play_backwards("open")
	is_fully_open = false
