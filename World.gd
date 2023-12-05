extends Node2D

@export var ball_scene: PackedScene
signal player_scored

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_ball_left_field(ballPosition: Vector2):
	var who_scored = calculate_who_scored(ballPosition)
	emit_signal("player_scored", who_scored)
	spawn_ball()

func calculate_who_scored(ballPosition: Vector2):
	if (ballPosition.x <= 0):
		return "p2"
	else:
		return "p1"

func spawn_ball():
	print("Spawning new ball")
	var ball = ball_scene.instantiate()
	ball.connect("left_field", _on_ball_left_field)
	add_child(ball)
