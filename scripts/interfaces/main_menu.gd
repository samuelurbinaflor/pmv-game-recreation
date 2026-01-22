extends Control


func _on_button_local_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/interfaces/levels_tree.tscn")
	

func _on_button_create_pressed() -> void:
	Lobby.create_game()	
	Lobby.player_info.name = "Fireboy"
	enable_buttons(true)
	$VBoxContainer/Button_start.visible = true
	
func _on_button_join_pressed() -> void:
	Lobby.join_game()
	#Lobby.player_connected.connect(_on_joined_game)
	enable_buttons(true)
	Lobby.player_info.name = "Watergirl"
	

func enable_buttons(status=false):
	$VBoxContainer/Button_create.disabled = status
	$VBoxContainer/Button_join.disabled = status

func _on_joined_game(peer_id, player_info):
	Lobby.debug_log("joining game: "+str(player_info)+" ("+str(peer_id)+")")

func _on_button_start_pressed() -> void:
	Lobby.start_game()
