extends Node2D

@onready var blue_door: Area2D = $blue_door
@onready var red_door: Area2D = $red_door
@onready var level_completed: Control = $level_completed
@onready var level_interface: Control = $level_interface

@export var spawners: Array[MultiplayerSpawner]

func _process(_delta: float) -> void:
	if blue_door.is_fully_open and red_door.is_fully_open:
		print("end level")
		end_level()
		
	#if blue_door.is_fully_open and red_door.is_fully_open:
		#set_pause(true)
		#level_completed.visible = true

func end_level():
	set_pause.rpc(true)
	show_level_completed.rpc()


@rpc("authority", "call_local")
func set_pause(paused: bool):
	get_tree().paused = paused


@rpc("authority", "call_local")
func show_level_completed():
	print("level completed")
	level_completed.visible = true
	level_interface.visible = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	## condición multiplayer
	if len(multiplayer.get_peers()) > 0:
		# Preconfigure game.
		if not multiplayer.is_server():
			Lobby.player_loaded.rpc_id(1) # Tell the server that this peer has loaded.
		else:
			start_game()
	else:
		## instantiate local players
		var fb_scene = $Spawners/fb_multiplayer.network_player
		var wg_scene = $Spawners/wg_mutiplayer.network_player
		get_node("Spawners/wg_spawn").add_child(wg_scene.instantiate())
		get_node("Spawners/fb_spawn").add_child(fb_scene.instantiate())
		

func start_game():
	# All peers are ready to receive RPCs in this scene.
	#Lobby.debug_log("game started: " + str(multiplayer.get_unique_id()))
	var i = 0
	for id in Lobby.players:
		spawners[i%2].spawn_player(id)
		i+=1
	
	
