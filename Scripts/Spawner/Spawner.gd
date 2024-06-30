class_name spawner;

extends Area2D

@export var area:CollisionShape2D;
@export var entity_type: PackedScene;
@export var position_type: Resource;
@export var spawn_type: Node;

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_type.spawn_entity.connect(handle_spawn_entity);
	pass # Replace with function body.

func handle_spawn_entity():
	print("spawn entity");
	var newEntity = entity_type.instantiate();
	newEntity.position = position_type.get_spawn_position(area);
	add_child(newEntity);
	

