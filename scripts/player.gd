extends CharacterBody2D

var speed = 40
@onready var sprite = $Sprite2D
@onready var anim = $AnimationPlayer

func _ready():
	anim.play("idle")

func _physics_process(delta: float) -> void:
	player_movement()
	
	
func player_movement():
	var x_mov =  Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var y_mov = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	var mov = Vector2(x_mov, y_mov)
	
	if mov.x < 0:
		sprite.flip_h = true
	elif mov.x > 0:
		sprite.flip_h = false
	
	velocity = mov.normalized() * speed
	move_and_slide()
	update_animation(mov)

func update_animation(mov: Vector2):
	if mov.length() > 0:
		if anim.current_animation != "run":
			anim.play("run")
	else:                   
		if anim.current_animation != "idle":
			anim.play("idle")
