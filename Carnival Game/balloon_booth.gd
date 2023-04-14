extends CharacterBody2D



func _on_balloon_enter_body_entered(body):
	if body.get_name() == "player":
		if Input.is_action_pressed("interact_world"):
			get_tree().change_scene_to_file("res://balloon_level.tscn")
	pass # Replace with function body.


func _on_balloon_enter_body_exited(body):
	Global.balloon_level = false
	pass # Replace with function body.
