extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.linear_damp = 1.0
	self.mass = 2

	var random = RandomNumberGenerator.new()
	random.randomize()

	if random.randi_range(0, 10) > 2:
		self.mass = 50
	if random.randi_range(0, 10) > 3:
		self.hide()
		$CollisionShape2D.set_deferred("disabled", true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
