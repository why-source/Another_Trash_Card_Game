#this is card
extends Node2D
@onready var game: Node2D = $".."
var Cursor = null
@onready var sprite_2d: Sprite2D = $Sprite2D
@export var initial_state: String
var CardType: String
var move_direction: Vector2
var speed: float
var Is_On: String = "Screw"

func _ready():
	Cursor = get_parent().get_node("Cursor")
	CardType = Globals.CardsLeftInHand[0]
	Globals.CardsLeftInHand.pop_front()
	sprite_2d.texture = load("res://images/CARDS/"+ CardType +".png")
 

func Get_This_Screw()-> Node2D:
	if Is_On == "Screw":
		for i in range(game.grid.size()):
			if game.grid[i][1] == self:
				return game.grid[i][0]
	elif Is_On == "Stack":
		return game.stack[0]
		
	return null
