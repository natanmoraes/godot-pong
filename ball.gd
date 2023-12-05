extends CharacterBody2D

var SPEED = 300.0
var direction = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	direction.x = [1,-1].pick_random()
	direction.y = [1,-1].pick_random()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var collision = move_and_collide(direction)
	if (collision):
		var object = collision.get_collider()
		

func _on_visible_on_screen_notifier_2d_screen_exited():
	pass # Replace with function body.
