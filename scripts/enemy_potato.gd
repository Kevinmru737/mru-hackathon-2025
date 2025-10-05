extends CharacterBody2D

@export var movement_speed = 15
@export var hp = 10

@onready var player = get_tree().get_first_node_in_group("player")
@onready var sprite = $Sprite2D

func _physics_process(_delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * movement_speed
	move_and_slide()
	
	if direction.x < 0.1:
		sprite.flip_h = true
	elif direction.x > -0.1:
		sprite.flip_h = false
	
func _on_hurt_box_hurt(damage: Variant) -> void:
	hp -= damage
	if hp <= 0:
		queue_free()




func _on_hurt_box_area_entered(area: Area2D) -> void:
	pass # Replace with function body.
