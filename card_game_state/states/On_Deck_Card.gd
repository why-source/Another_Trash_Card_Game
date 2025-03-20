extends State
class_name On_Deck_Card
@onready var Card: Node2D = $"../.."

func Enter():
	pass
func Update(delta:float):
	pass
func Physics_update(delta: float) -> void:
	pass
	
func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click") && !Globals.Card_Clicked:
		Globals.Card_Clicked = Card
		Transitioned.emit(self,"Dragging_Card")
