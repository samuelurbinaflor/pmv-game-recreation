extends Control

@onready var next_level: Button = $VBoxContainer/next_level
@onready var levels: Button = $VBoxContainer/levels
@onready var main_menu: Button = $VBoxContainer/main_menu
@onready var options: Button = $VBoxContainer/options

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_next_level_pressed() -> void:
	pass # Replace with function body.
	
func _on_levels_pressed() -> void:
	pass # Replace with function body.

func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/interfaces/main_menu.tscn")

func _on_options_pressed() -> void:
	pass # Replace with function body.
