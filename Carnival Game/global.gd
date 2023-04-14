extends Node

var player_pos = Vector2.ZERO

var balloon_level = false
var fish_level = false
var level = 0

func _on_fish_enter_body_entered(body):
	print("Test")
	fish_level = true
	Global.level = 1
	pass # Replace with function body.
	
func _on_fish_enter_body_exited(body):
	fish_level = false
	pass # Replace with function body.
	
func _on_balloon_booth_body_entered(body):
	Global.balloon_level = true
	Global.level = 2
	pass # Replace with function body.
	
func _on_balloon_booth_body_exited(body):
	balloon_level = false
	pass # Replace with function body.


	

