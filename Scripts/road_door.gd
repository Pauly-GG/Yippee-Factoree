extends Area2D

@export var door_name: String
@export var target_scene: String

func _ready():
	self.connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body.name == "DummySprite":
		# Save the current door the player entered
		GameState.player_entry_door = door_name

		# Save the player's position
		GameState.player_position = body.position

		# Change to the target scene
		get_tree().change_scene_to_file(target_scene)
