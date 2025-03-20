extends State
class_name Idle_Card
@export var Card: Node2D
var move_target: Vector2
func Enter():
	pass
func Update(delta:float):
	if Card && Card.Is_On == "Screw":
		Card.move_direction = (Card.Get_This_Screw().position - Card.position).normalized()
		Card.speed = Card.position.distance_to(Card.Get_This_Screw().position)*10+50
		Card.position += Card.move_direction *delta * Card.speed
		
	if Card && Card.Is_On == "Stack":
		Card.move_direction = ((Card.Get_This_Screw().position-Vector2(10,5)) - Card.position).normalized()
		Card.speed = Card.position.distance_to((Card.Get_This_Screw().position-Vector2(10,5)))*10+50
		Card.position += Card.move_direction *delta * Card.speed
	

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click") && !Globals.Card_Clicked:
		Globals.Card_Clicked = Card
		Transitioned.emit(self,"Dragging_Card")
		
