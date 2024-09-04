extends Label

@export var score = 0

func points():
	score += 1
	text = "Score: %s" % score
