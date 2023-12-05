extends Node2D

@onready var ui = $UI
var p1_score: int = 0
var p2_score: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_ball_left_field(ballPosition: Vector2):
	if (ballPosition.x <= 0):
		p2_score += 1
	else:
		p1_score += 1
		
	update_scores()
	
func update_scores():
	ui.update_scores(p1_score, p2_score)
