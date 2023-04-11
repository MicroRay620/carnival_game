extends CharacterBody2D

var player = preload("res://player.tscn")

func _on_level_enter_body_entered(body):
	if body.get_name() == "player":
		if Input.is_action_pressed("interact_world"):
			get_tree().change_scene_to_file("res://fishing_level.tscn")
		print("Test")
		Global.test_booth = true
	pass # Replace with function body.


