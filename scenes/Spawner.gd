extends Node2D

@export var obstacle: PackedScene
@onready var markers = [$Marker2D, $Marker2D2, $Marker2D3]


func _ready():
	repeat()


func spawn():
	for marker in markers:  # Loop through all markers
		var spawned = obstacle.instantiate()
		get_parent().add_child(spawned)
		spawned.global_position = marker.global_position  # Set spawn position


func repeat():
	spawn()
	await get_tree().create_timer(1).timeout
	repeat()
