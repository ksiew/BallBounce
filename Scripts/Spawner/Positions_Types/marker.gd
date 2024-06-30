class_name Marker;

extends Spawn_Position_Type;

@export var area:CollisionShape2D;

func get_spawn_position():
	return area.position;
