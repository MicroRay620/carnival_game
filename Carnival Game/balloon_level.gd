extends Node2D

func get_input():
	if Input.is_action_pressed("pause"):
		get_tree().change_scene_to_file("res://menu.tscn")

func _physics_process(delta):
	get_input()
