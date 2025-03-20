extends Label
@onready var game: Node2D = $".."

func _process(delta):
	text = ""
	for i in range(game.grid.size()):
		if game.grid[i][1]:
			text += game.grid[i][1].name
		else:
			text += "null"
			
	text += "\n \n \n"
	text += str(game.discard)
