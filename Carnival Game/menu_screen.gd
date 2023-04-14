extends Control

func _ready():
	print(Global.level)
	
func _on_button_pressed():
	if Global.level == 1:
		get_tree().change_scene_to_file("res://fishing_level.tscn")
	
	if Global.level == 2:
		get_tree().change_scene_to_file("res://balloon_level.tscn")
	pass # Replace with function body.
