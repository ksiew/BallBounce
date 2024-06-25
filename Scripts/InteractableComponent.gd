class_name InteractableComponent;
extends Node2D

@export var Actor: Node2D;
@export var Stats: InteractableComponentStats;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func ball_contact(ball):
	propagate_call("hande_ball_contact", ball);


