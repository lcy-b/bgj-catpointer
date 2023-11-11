extends RigidBody2D


var target_position = Vector2()
var speed = 3000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _integrate_forces(state):
	target_position = get_parent().get_node("pointer").global_position
	if Input.is_mouse_button_pressed(1):
		var ab_vector = target_position - self.global_position
		var direction_vector = ab_vector.normalized()
		var force_towards_pointer = direction_vector * speed
		var near_force = - force_towards_pointer * max(0, 1 - pow(ab_vector.length() * 0.1, 2))
		var final_force = force_towards_pointer + near_force
		apply_force(final_force)
		$AnimatedSprite2D.play()
	else:
		apply_force(Vector2(0,0))
		$AnimatedSprite2D.stop()
		
	#look_follow(state, self.transform, target_position)
	look_at(global_position + get_linear_velocity())
