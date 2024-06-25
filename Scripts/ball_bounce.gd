extends Node2D

var score;

signal score_change(old_score, new_score);

# Called when the node enters the scene tree for the first time.
func _ready():
	score = 0;
	
func increment_score():
	broadcast_score_change(score + 1);
	
func broadcast_score_change(new_score):
	score_change.emit(score, new_score);
	score = new_score;

func start_game_over():
	propagate_call("handle_game_over");
