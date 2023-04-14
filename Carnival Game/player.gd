extends CharacterBody2D

var direction: = Vector2.ZERO

func get_input(): #used to call a button input
	if Input.is_action_pressed("move_left"):
		direction.x = -100
	elif Input.is_action_pressed("move_right"):
		direction.x = +100
	else:
		direction.x = 0
	
	if Input.is_action_pressed("move_up"):
		direction.y = -100
	elif Input.is_action_pressed("move_down"):
		direction.y = +100
	else:
		direction.y = 0
	
	if Input.is_action_pressed("pause"): #and not get_tree().current_scene.name == "res://open_world.tscn" #for testing, "ress://dev_level.tscn"
		get_tree().change_scene_to_file("res://menu.tscn")
	
	if Global.fish_level == true: #body enter function MUST be in global.gd
		if Input.is_action_pressed("interact_world"):
			get_tree().change_scene_to_file("res://fishing_level.tscn")
			Global.level = 1
	
	if Global.balloon_level == true:
		if Input.is_action_pressed("interact_world"):
			get_tree().change_scene_to_file("res://balloon_level.tscn")
			Global.level = 2
		
func _physics_process(delta):
	get_input()
	set_velocity(direction)
	move_and_slide()
	
