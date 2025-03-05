extends RigidBody2D


func _ready():
	contact_monitor = true
	max_contacts_reported = 1
	connect("body_entered", Callable(self, "_on_body_entered"))


func _on_body_entered(body: Node):
	if body.is_in_group("player"):  # Ensure Player is in the "player" group
		get_tree().change_scene_to_file("res://scenes/LoseScreen.tscn")
