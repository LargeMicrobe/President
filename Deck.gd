extends Node
class_name Deck

@export var cardOrder : Array = [] # This will hold references to CardResource objects


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(52):
		cardOrder.append(i)
		
	randomize()  # Initialize the random number generator
	cardOrder.shuffle()  # Randomize the order of the deck
	print(cardOrder)


