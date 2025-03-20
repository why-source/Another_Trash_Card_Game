extends State
class_name Going_Home_Card
@export var Card: Node2D

func Enter():
	pass

func Update(delta:float):
	if Card && Card.Is_On == "Screw":
		Card.move_direction = (Card.Get_This_Screw().position - Card.position).normalized()
		Card.speed = Card.position.distance_to(Card.Get_This_Screw().position)*10+50
		Card.position += Card.move_direction *delta * Card.speed
		
	elif Card && Card.Is_On == "Stack":
		Card.move_direction = (Card.Get_This_Screw().position - Card.position).normalized()
		Card.speed = Card.position.distance_to(Card.Get_This_Screw().position)*10+50
		Card.position += Card.move_direction *delta * Card.speed
		
	if Card.position.distance_to(Card.Get_This_Screw().position) < 15:
		Globals.Card_Clicked = null
		Transitioned.emit(self,"Idle_Card")
func Physics_update(delta: float) -> void:
	pass
