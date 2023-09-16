extends Resource
class_name CardResource

@export var deckID: String = ""
@export var suit: String = ""
@export var image: Texture
@export var rearImage = preload("res://assets/deck/images/card-back1.png")
@export var faceUp: bool = false
@export var rank: int

