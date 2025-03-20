extends State
class_name On_Release_Card
@export var Card: Node2D


func Enter():
	pass
func Physics_update(delta: float) -> void:
	var overlapped: Array = []
	for area in Card.Cursor.get_overlapping_areas():
		overlapped.append(area.get_parent())
	
	for target in overlapped:
		if target.scene_file_path == "res://scenes/Screw.tscn":
			if Card.Is_On == "Screw":
				Card.game.swap_card(Card,target.Get_This_Card())
			elif Card.Is_On == "Stack":
				if target.Get_This_Card().scene_file_path == "res://scenes/empty_card.tscn":
					Card.game.draw(Card,target.Get_This_Card())
					
		if target.scene_file_path == "res://scenes/discard.tscn":
			Card.discard()
			Card.Is_On = "Discard"
			Transitioned.emit(self,"Discarded_Card")
	
	Transitioned.emit(self,"Going_Home_Card")
