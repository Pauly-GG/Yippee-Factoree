extends Node2D

func _ready():
	# Load the DummySprite scene
	var player_scene = load("res://Scenes/DummySprite.tscn")
	var player_instance = player_scene.instantiate()

	# Add the player to the scene
	add_child(player_instance)

	# Determine the spawn position based on the entry door
	if GameState.player_entry_door == "shoppee_left_door":
		# Player came from the shop's left door, spawn on the right in the road
		player_instance.position = Vector2(1300, 840)  # Adjust as needed
	elif GameState.player_entry_door == "left_road_door":
		# Player came from the left road door, spawn on the right in the new area
		player_instance.position = Vector2(1720, 540)  # Adjust as needed
	elif GameState.player_entry_door == "road_right_door":
		# Player came from another scene, spawn on the left in the road
		player_instance.position = Vector2(100, 540)  # Adjust as needed
	else:
		# Default spawn position (center or saved position)
		player_instance.position = Vector2(960, 540)  # Adjust for your layout

	print("Player spawned at position:", player_instance.position)  # Debugging
