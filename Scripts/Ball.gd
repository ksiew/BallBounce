extends Node2D

@export var GRAVITY:int;
@export var MULTIPLYER:int;

var speedY = 100;
var speedX = 100;
var initPos;

signal game_over;
signal points_collected(points);

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
	#if controller.is_in_group("Controller"):
		#var angle = controller.position.angle_to_point(position);
		#speedY = sin(angle)  * MULTIPLYER;
		#speedX = cos(angle) * MULTIPLYER;
	if controller.is_in_group("FailZone"):
		emit_signal("game_over");
		hide();
	if controller is InteractableComponent:
		controller.ball_contact(self);
			
func start():
	speedY = -400;
	speedX = randi_range(-300,300);
	position = initPos;
	show();
	
func on_point_collect(points):
	points_collected.emit(points);
	
func bounce(area):
	var angle = area.position.angle_to_point(position);
	speedY = sin(angle)  * MULTIPLYER;
	speedX = cos(angle) * MULTIPLYER;
	
func handle_game_over():
	hide();
			
