extends Node2D

func _ready():
	# Load the DummySprite scene
	var player_scene = load("res://Scenes/DummySprite.tscn")
	var player_instance = player_scene.instantiate()

	# Add the player to the scene
	add_child(player_instance)

	# Set default starting position for play testing
	if GameState.player_entry_door == "":
		# No door transition; default to center or a specific position
		player_instance.position = Vector2(800, 700)  # Adjust for your screen resolution
	else:
		# Handle spawning from door transitions
		if GameState.player_entry_door == "road_right_door":
			player_instance.position = Vector2(320, 840)
		else:
			player_instance.position = GameState.player_position

	print("Player spawned at position:", player_instance.position)
