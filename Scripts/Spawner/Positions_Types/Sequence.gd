class_name Sequence;

extends Spawn_Position_Type

@export var markers:Array[Marker2D];

var i = 0;

func get_spawn_position():
	var pos = markers[i];
	i = i + 1;
	if i == markers.size():
		i = 0;
	return pos;
