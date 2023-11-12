extends Area2D

signal hit
signal hit_obstacle

# Called when the node enters the scene tree for the first time.
func _ready():
	var _pos_y = [200, 550, 900]
	randomize()
	var random_pos_y = _pos_y[randi() % _pos_y.size()]
	self.global_position = Vector2(1650,random_pos_y)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if(body.name == "cat"):
		hit.emit()
	else:
		hit_obstacle.emit()
	
	# Must be deferred as we can't change physics properties on a physics callback.
	$CollisionShape2D.set_deferred("disabled", true)
