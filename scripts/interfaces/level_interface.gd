extends Control
@onready var pause_menu: Control = $pause_menu

var paused_by_peer_id: int = -1

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		request_pause_toggle()

# Cliente → servidor
func request_pause_toggle():
	if multiplayer.is_server():
		_handle_pause_request(multiplayer.get_unique_id())
	else:
		rpc_id(1, "_handle_pause_request", multiplayer.get_unique_id())

# SOLO el servidor decide
@rpc("any_peer")
func _handle_pause_request(peer_id: int):
	if not multiplayer.is_server():
		return

	# No está pausado → cualquiera puede pausar
	if not get_tree().paused:
		paused_by_peer_id = peer_id
		rpc("set_pause", true, paused_by_peer_id)

	# Está pausado → solo el dueño puede despausar
	elif paused_by_peer_id == peer_id:
		paused_by_peer_id = -1
		rpc("set_pause", false, -1)

	# Si no es el dueño → ignorar

# Servidor → todos
@rpc("authority", "call_local")
func set_pause(paused: bool, owner_peer_id: int):
	get_tree().paused = paused
	paused_by_peer_id = owner_peer_id
	pause_menu.visible = paused

func _on_pause_pressed() -> void:
	request_pause_toggle()
