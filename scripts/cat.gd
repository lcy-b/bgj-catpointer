extends RigidBody2D

var speed = 400
var angular_speed = PI


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# _physics_process (maybe better?)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation += angular_speed * delta

#	var velocity = Vector2.UP.rotated(rotation) * speed
	var velocity = Vector2.UP.rotated(rotation) * linear_velocity

	position += velocity * delta
	pass
	
	





#func look_follow(state, current_transform, target_position):
#	var up_dir = Vector3(0, 1, 0)
#	var cur_dir = current_transform.basis * Vector3(0, 0, 1)
#	var target_dir = (target_position - current_transform.origin).normalized()
#	var rotation_angle = acos(cur_dir.x) - acos(target_dir.x)

#	state.angular_velocity = up_dir * (rotation_angle / state.step)

#func _integrate_forces(state):
#	var target_position = $pointer
#	look_follow(state, global_transform, target_position)
