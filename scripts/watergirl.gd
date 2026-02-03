extends Player

var gem_counter = 0

func _ready() -> void:
	input_scheme = "w"

# Diamonds
func _on_hitbox_area_entered(area: Area2D) -> void:
	if area.is_in_group("blue_gem"):
		area.queue_free()
		gem_counter += 1
		report_gem_collected.rpc()

@rpc("any_peer")
func report_gem_collected():
	if not multiplayer.is_server():
		return

	var level := get_tree().get_first_node_in_group("level")
	level.on_blue_gem_collected()
	print("si")
