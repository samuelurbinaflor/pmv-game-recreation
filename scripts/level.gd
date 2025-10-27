extends Node2D

@onready var blue_door: Area2D = $blue_door
@onready var red_door: Area2D = $red_door

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if blue_door.is_fully_open and red_door.is_fully_open:
		get_tree().reload_current_scene()


	
