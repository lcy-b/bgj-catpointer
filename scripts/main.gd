extends Node2D

@onready var _transition_rect = $transition/SceneTransitionRect


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_pressed():
	print("button pressed")
	_transition_rect.transition_to("res://scenes/main.tscn")
