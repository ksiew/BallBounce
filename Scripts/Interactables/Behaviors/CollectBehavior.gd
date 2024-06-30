class_name CollectBehavior

extends InteractableBehavior

func trigger_behavior(interactable, ball, stats):
	interactable.queue_free()
