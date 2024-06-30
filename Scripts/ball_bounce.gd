extends Node2D

var score;

signal score_change(old_score, new_score);

# Called when the node enters the scene tree for the first time.
func _ready():
	print("start")
	score = 0;
	
func on_points_collected(points):
	score += points;
	score_change.emit(score, score - points);
	
func broadcast_score_change(new_score):
	score_change.emit(score, new_score);
	score = new_score;

func start_game_over():
	propagate_call("handle_game_over");
