extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_resume_pressed() -> void:
	get_tree().change_scene_to_file("")


func _on_retry_pressed() -> void:
	get_tree().change_scene_to_file("")


func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/interfaces/main_menu.tscn")



func _on_settings_pressed() -> void:
		get_tree().change_scene_to_file("res://scenes/interfaces/settings_menu.tscn")
