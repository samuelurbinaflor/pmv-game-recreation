extends Player

func _ready() -> void:
	input_scheme = "w"

func _on_hitbox_area_entered(area: Area2D) -> void:
	if area.is_in_group("blue_gem"):
		area.queue_free()
