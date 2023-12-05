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

func _on_world_player_scored(who_scored):
	if (who_scored == "p1"):
		p1_score += 1
	else:
		p2_score += 1
		
	print("Updating scores " + str(p1_score) + "|" + str(p2_score))
	ui.update_scores(p1_score, p2_score)
