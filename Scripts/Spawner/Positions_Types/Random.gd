class_name RandomSpawn;

extends Spawn_Position_Type;

@export var area:CollisionShape2D;

func get_spawn_position():
	var width = area.get_shape().size.x/2;
	var height = area.get_shape().size.y/2;
	var origin = area.position;
	var x = randi_range(origin.x - width, origin.y + width);
	var y = randi_range(origin.y - height, origin.y + height)
	return Vector2(x,y)
