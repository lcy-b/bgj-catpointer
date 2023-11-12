extends ColorRect


# Reference to the _AnimationPlayer_ node
@onready var _anim_player = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	self.show()
	_anim_player.play_backwards("Fade")
	await _anim_player.animation_finished


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func transition_to(_next_scene):
	# Plays the Fade animation and wait until it finishes
	_anim_player.play("Fade")
	await _anim_player.animation_finished

	# Changes the scene
	get_tree().change_scene_to_file(_next_scene)
