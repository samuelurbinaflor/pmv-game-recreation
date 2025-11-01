extends Control

@export var num_levels: int = 10
@onready var grid_container: GridContainer = $VBoxContainer/GridContainer

func _ready() -> void:
	create_level_buttons()

func create_level_buttons() -> void:
	for i in range(num_levels):
		var button := Button.new()
		button.text = "Level %d" % (i + 1)
		button.name = "Button_Level_%d" % (i + 1)
		button.custom_minimum_size = Vector2(120, 50)  # tamaño opcional

		# Conectar señal al método que cambiará de escena
		button.pressed.connect(_on_level_button_pressed.bind(i + 1))

		grid_container.add_child(button)


func _on_level_button_pressed(level_number: int) -> void:
	var path = "res://scenes/levels/level_%02d.tscn" % level_number
	print("Loading level:", path)
	get_tree().change_scene_to_file(path)



func _on_button_mainmenu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/interfaces/main_menu.tscn")
	
