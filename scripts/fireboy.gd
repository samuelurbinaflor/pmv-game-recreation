extends Player

func _ready() -> void:
	if len(multiplayer.get_peers()) > 0 :
		input_scheme = "w"
	else:
		input_scheme = "f"

# Diamonds
func _on_hitbox_area_entered(area: Area2D) -> void:
	if area.is_in_group("red_gem"):
		area.queue_free()
