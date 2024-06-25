class_name InteractableComponent;
extends Area2D

@export var actor: Node2D;
@export var stats: InteractableComponentStats;
@export var behaviors: Array[Resource];

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func ball_contact(ball):
	for behavior in behaviors:
		behavior.trigger_behavior(actor, ball);
		


