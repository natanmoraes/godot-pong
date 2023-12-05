extends CharacterBody2D

var SPEED = 300.0
signal left_field

# Called when the node enters the scene tree for the first time.
func _ready():
	velocity.x = [1,-1].pick_random()
	velocity.y = [1,-1].pick_random()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var collision = move_and_collide(velocity * delta * SPEED)
	if (collision):
		velocity = velocity.bounce(collision.get_normal())

func _on_visible_on_screen_notifier_2d_screen_exited():
	print("Ball left field: " + str(position))
	emit_signal("left_field", position)
	queue_free()
