extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	hide();
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = get_viewport().get_mouse_position();
	
func start():
	show();

func handle_game_over():
	hide();
