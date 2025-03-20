extends State
class_name Dragging_Card
@export var Card: Node2D

func Enter():
	Card.z_index = 3
func Update(delta:float):
	if Card:
		Globals.Card_Clicked = Card
		Card.move_direction = (Card.get_global_mouse_position() - Card.position).normalized()
		Card.speed = (pow(Card.position.distance_to(Card.get_global_mouse_position()),2)/5) +1
		
		Card.position += Card.move_direction *delta * Card.speed
		
		if Input.is_action_just_released("left_click"):
			Card.z_index = 2
			Transitioned.emit(self,"On_Release_Card")
