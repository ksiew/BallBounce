extends Node2D

@export var GRAVITY:int;
@export var MULTIPLYER:int;

var speedY = 100;
var speedX = 100;
var initPos;

signal hit_controller;
signal game_over;

# Called when the node enters the scene tree for the first time.
func _ready():
	initPos = position;
	hide();
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	speedY += GRAVITY;
	position.y += speedY * delta;
	position.x += speedX * delta;
	
func _hit_controller(controller):
	if controller.is_in_group("Wall"):
		speedX = speedX * -1;
	if controller.is_in_group("Controller"):
		var angle = controller.position.angle_to_point(position);
		speedY = sin(angle)  * MULTIPLYER;
		speedX = cos(angle) * MULTIPLYER;
		emit_signal("hit_controller");
	if controller.is_in_group("FailZone"):
		emit_signal("game_over");
		hide();
			
func start():
	speedY = -400;
	speedX = randi_range(-300,300);
	position = initPos;
	show();
	
func handle_game_over():
	hide();
			
