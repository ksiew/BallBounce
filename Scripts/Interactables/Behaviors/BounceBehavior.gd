#meta-description: default template for interactable behaviors
#meta-default: true

class_name BounceBehavior;

extends InteractableBehavior;

func trigger_behavior(interactable, ball, stats):
	ball.bounce(interactable);

