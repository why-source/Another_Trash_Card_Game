extends Label
@onready var card: Node2D = $".."

func _process(delta):
	text = ""
	text += "name" + str(card.name)
	text += "name \n" + str(card.Get_This_Screw())
