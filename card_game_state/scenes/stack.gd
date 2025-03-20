extends Node2D
@onready var game: Node2D = $".."
const CARD = preload("res://scenes/Card.tscn")
func _ready():
	game.stack.append(self)
func _process(_delta):
	if game.stack.size() == 1:
		draw_from_deck()

func draw_from_deck()->void:
	var card = CARD.instantiate()
	card.initial_state = "Idle_Card"
	card.Is_On = "Stack"
	game.add_child(card)
	card.position = position-Vector2(10,5)
	game.stack.push_back(card)
