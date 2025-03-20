extends Node2D

@onready var grid := [
	#Card_pos, card
	[get_node("Card_Position1"),get_node("Card1") ],[get_node("Card_Position2"),get_node("Card2") ],[get_node("Card_Position3"),get_node("Card3") ],[get_node("Card_Position4"),get_node("Card4") ],[get_node("Card_Position5"),get_node("Card5")],
	[get_node("Card_Position6"),get_node("Card6") ],[get_node("Card_Position7"),get_node("Card7")],[get_node("Card_Position8"),get_node("Card8")],[get_node("Card_Position9"),get_node("Card9")],[get_node("Card_Position10"),get_node("Card10")],
]
@onready var discard: Array = [get_node("Discard")]
@onready var stack: Array = [get_node("Stack")]

func swap_card(Card1: Node2D,Card2: Node2D) -> void:
	var temp
	var pos1
	var pos2
	pos1 = get_index_of_card(Card1)
	pos2 = get_index_of_card(Card2)

	temp = grid[pos1][1]
	grid[pos1][1] = grid[pos2][1]
	grid[pos2][1] = temp
	
## card in index = [i][1]
func get_index_of_card(Card: Node2D) -> int:
	for i in range(grid.size()):
		if grid[i][1] == Card:
			return i
	return -1

func draw(Drawn_Card: Node2D,Empty:Node2D):
	Drawn_Card.Is_On = "Screw"
	grid[get_index_of_card(Empty)][1] = Drawn_Card
	
