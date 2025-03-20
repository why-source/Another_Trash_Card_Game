#this is card_position
extends Node2D
@onready var game: Node2D = $".."
#this variable points to Card^^^
func _ready():
	pass
	
	
func _process(delta):
	pass
func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass

func _physics_process(delta: float) -> void:
	pass

func Get_This_Card()-> Node2D:
	for i in range(game.grid.size()):
		if game.grid[i][0] == self:
			return game.grid[i][1]
	return null
