extends Node
class_name Deck

var cardOrder : Array = [] # This will hold references to CardResource objects
var cards : Array = []
@export var shuffledDeck : Array = []


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(52): #get a random array of size 52
		cardOrder.append(i)
	randomize()  # Initialize the random number generator
	cardOrder.shuffle()  # Randomize the order of the deck
	loadCards("res://assets/deck/") #load it
	shuffleCards(cards, cardOrder) #shuffle it
	
func loadCards(path: String):
	var dir = DirAccess.open(path)
	if dir:
		dir.list_dir_begin() #Skip nav and hidden files
		var file_name = dir.get_next()
		while file_name != "":
			if file_name.ends_with(".tres"):
				var card = load("%s%s" % [path, file_name])
				cards.append(card)
			file_name = dir.get_next()
	return cards
	
func shuffleCards(cards: Array, cardOrder: Array) -> Array:
	for index in cardOrder:
		shuffledDeck.append(cards[index])
	print(shuffledDeck)
	return shuffledDeck

