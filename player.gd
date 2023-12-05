extends CharacterBody2D

@export var step:int = 5

var newPosition = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_pressed("p1_up"):
		newPosition.y = -step
	elif Input.is_action_pressed("p1_down"):
		newPosition.y = step
	else:
		newPosition.y = 0	

	move_and_collide(newPosition)
