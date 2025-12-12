extends Node2D

@onready var blue_door: Area2D = $blue_door
@onready var red_door: Area2D = $red_door

@export var spawners: Array[MultiplayerSpawner]

func _process(_delta: float) -> void:
	if blue_door.is_fully_open and red_door.is_fully_open:
		get_tree().reload_current_scene()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Preconfigure game.
	if not multiplayer.is_server():
		Lobby.player_loaded.rpc_id(1) # Tell the server that this peer has loaded.
	else:
		start_game()

func start_game():
	# All peers are ready to receive RPCs in this scene.
	#Lobby.debug_log("game started: " + str(multiplayer.get_unique_id()))
	var i = 0
	for id in Lobby.players:
		spawners[i%2].spawn_player(id)
		i+=1
	
	
