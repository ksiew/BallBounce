extends Control

signal restart_game;
# Called when the node enters the scene tree for the first time.
func _ready():
	hide();
	pass # Replace with function body.
	
func send_restart_game():
	hide();
	emit_signal("restart_game");
	
func handle_game_over():
	show();
