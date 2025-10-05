extends CharacterBody2D

@export var movement_speed = 15

@onready var player = get_tree().get_first_node_in_group("player")

<<<<<<< Updated upstream
#func _physics_process(_delta) -> void:
#	var direction = global_position.direction_to(player.global_position)
#	velocity = direction  * movement_speed
#	move_and_slide()
=======
func _physics_process(delta: float) -> void:
	pass
func _process(delta: float) -> void:
	pass
	
func potato_movement():
	pass
>>>>>>> Stashed changes
