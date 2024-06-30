class_name PointBehavior;

extends InteractableBehavior;

func trigger_behavior(interactable, ball, stats):
	ball.on_point_collect(stats.Points);

