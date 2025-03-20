extends Label
@onready var card_position: Node2D = $".."
@onready var screw: Node2D = $".."

func _process(delta):
	text = ""
	if screw.Get_This_Card():
		text += "name" + str(screw.Get_This_Card().name)
	else:
		text += "empty"
