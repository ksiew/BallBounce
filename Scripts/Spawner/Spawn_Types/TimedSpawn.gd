class_name TimedSpawn

extends Spawn_Type;

@export var delay:float;
var timer = Timer.new();

func _ready():
	add_child(timer);
	timer.timeout.connect(call_spawn_entity);
	timer.start(delay);

func call_spawn_entity():
	spawn_entity.emit();
	timer.start(delay);
