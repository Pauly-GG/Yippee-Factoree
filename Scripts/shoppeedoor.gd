extends Area2D

# Door identifier, e.g., "left_door" or "right_door"
@export var door_name: String

func _ready():
	self.connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body.name == "DummySprite":
		# Save the door the player entered
		GameState.player_entry_door = door_name

		# Save the player's position
		GameState.player_position = body.position

		# Change to the new scene
		get_tree().change_scene_to_file("res://Scenes/roadscene.tscn")
