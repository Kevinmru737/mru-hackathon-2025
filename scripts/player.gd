extends CharacterBody2D

var speed = 40

func _physics_process(delta: float) -> void:
	player_movement()
	
func player_movement():
	var x_mov =  Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var y_mov = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	var mov = Vector2(x_mov, y_mov)
	velocity = mov.normalized() * speed
	move_and_slide()
