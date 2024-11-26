extends Node2D

func _ready():
	# Load the DummySprite scene
	var player_scene = load("res://Scenes/DummySprite.tscn")
	var player_instance = player_scene.instantiate()

	# Add the player to the scene
	add_child(player_instance)

	# Determine the spawn position based on the entry door
	if GameState.player_entry_door == "left_door":
		# Spawn on the right side of the new scene
		player_instance.position = Vector2(1820, 540)  # Adjust this based on your resolution
	elif GameState.player_entry_door == "right_door":
		# Spawn on the left side of the new scene
		player_instance.position = Vector2(100, 540)  # Adjust this based on your resolution
	else:
		# Default spawn position
		player_instance.position = GameState.player_position
