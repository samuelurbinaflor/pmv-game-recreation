extends Player
var gem_counter = 0
func _ready() -> void:
	if len(multiplayer.get_peers()) > 0 :
		input_scheme = "w"
	else:
		input_scheme = "f"

# Diamonds
func _on_hitbox_area_entered(area: Area2D) -> void:
	if area.is_in_group("red_gem"):
		area.queue_free()
		gem_counter += 1
		report_gem_collected.rpc()


@rpc("any_peer")
func report_gem_collected():
	if not multiplayer.is_server():
		return

	var level := get_tree().get_first_node_in_group("level")
	level.on_red_gem_collected()
