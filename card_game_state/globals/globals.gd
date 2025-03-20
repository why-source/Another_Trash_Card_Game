extends Node

var Card_Clicked: Node2D = null
var CardsInDeck: Array =   ["AS","AH","AC","AD",
							"2S","2H","2C","2D",
							"3S","3H","3C","3D",
							"4S","4H","4C","4D",
							"5S","5H","5C","5D",
							"6S","6H","6C","6D",
							"7S","7H","7C","7D",
							"8S","8H","8C","8D",
							"9S","9H","9C","9D",
							"10S","10H","10C","10D",
							"JS","JH","JC","JD",
							"QS","QH","QC","QD",
							"KS","KH","KC","KD"]
var CardsLeftInHand: Array = CardsInDeck.duplicate()
func _ready():
	CardsLeftInHand.shuffle()
