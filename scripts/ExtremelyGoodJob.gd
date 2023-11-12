extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_cat_bed_hit_obstacle():
	self.show()


func _on_cat_bed_3_hit_obstacle():
	pass # Replace with function body.


func _on_cat_bed_2_hit_obstacle():
	pass # Replace with function body.
