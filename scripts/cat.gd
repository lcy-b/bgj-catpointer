extends RigidBody2D


var target_position = Vector2()
var speed = 3000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func look_follow(state, current_transform, target_position):
	var cur_dir = current_transform.basis * Vector3(0, 0, 1)
	var target_dir = (target_position - current_transform.origin).normalized()
	var rotation_angle = acos(cur_dir.x) - acos(target_dir.x)

	state.angular_velocity = rotation_angle / state.step


func _integrate_forces(state):
	target_position = get_parent().get_node("pointer").global_position
	if Input.is_mouse_button_pressed(1):
		var direction_vector = (target_position - self.global_position).normalized()
		apply_force(direction_vector * speed)
		apply_torque((self.rotation - direction_vector.angle()) * speed * 10)
		print(self.rotation)
		$AnimatedSprite2D.play()
	else:
		apply_force(Vector2(0,0))
		$AnimatedSprite2D.stop()
		
	#look_follow(state, self.transform, target_position)
	look_at(global_position + get_linear_velocity())
