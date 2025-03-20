extends State
class_name Discarded_Card
@onready var Card: Node2D = $"../.."
const EMPTY_CARD = preload("res://scenes/empty_card.tscn")

func Enter():
	Card.z_index = 3
	Globals.Card_Clicked = null
	var blank = EMPTY_CARD.instantiate()
	Card.game.add_child(blank)
	Card.game.grid[Card.game.get_index_of_card(Card)][1]= blank
	Card.game.discard.push_back(Card)
func Physics_update(delta: float) -> void:
	if Card.game.discard.back() == Card:
		Card.z_index = 2
	else:
		Card.z_index = 1

func Update(delta:float):
	Card.move_direction = (Card.game.discard[0].position - Card.position).normalized()
	Card.speed = (pow(Card.position.distance_to(Card.game.discard[0].position),2)/5) +1
	Card.position += Card.move_direction *delta * Card.speed
