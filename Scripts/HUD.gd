extends Control

var score;

signal start_game;

# Called when the node enters the scene tree for the first time.
func _ready():
	score = 0;
	pass # Replace with function body.

func start_button():
	for i in get_children():
		i.hide();
	emit_signal("start_game");
	$Scorer.show(); 
	
	
	
	
	
func update_score(old_score, new_score):
	score = new_score;
	$Scorer.text = str(score);
	
func handle_restart():
	for i in get_children():
		i.show();
	$Scorer.text = str(0);
	$Scorer.hide();
