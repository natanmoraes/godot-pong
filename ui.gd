extends CanvasLayer

@onready var player_1_score = $Control/MarginContainer/VBoxContainer/HBoxContainer2/Player1Score
@onready var player_2_score = $Control/MarginContainer/VBoxContainer/HBoxContainer2/Player2Score

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func update_scores(p1_score, p2_score):
	player_1_score.text = str(p1_score)
	player_2_score.text = str(p2_score)
