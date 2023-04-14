extends CharacterBody2D

func _ready():
	Global.fish_level
	
func _on_fish_enter_body_entered(body):
	if body.get_name() == "player":
		if Input.is_action_pressed("interact_world"):
			get_tree().change_scene_to_file("res://fishing_level.tscn")
		print("Test")
	Global.fish_level = true
	#pass # Replace with function body.
	


func _on_fish_enter_body_exited(body):
	Global.fish_level = false
	pass # Replace with function body.
