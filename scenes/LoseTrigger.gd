extends Area2D

@export var sceneName: String


func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		(
			get_tree()
			. change_scene_to_file
			. bind(str("res://scenes/" + sceneName + ".tscn"))
			. call_deferred()
		)
