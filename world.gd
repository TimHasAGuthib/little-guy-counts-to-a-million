extends Node2D
var score: int = 0
signal _increase_score
func _process(delta: float) -> void:
	$CanvasLayer/Label.text = str(score)



func _on__increase_score() -> void:
	score +=1
