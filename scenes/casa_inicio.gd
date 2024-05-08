extends Node2D
var casa: Array

@onready var prox_casa = get_parent().get_node("casa_1")
func move():
	var t = prox_casa.get_teste()
	print(t)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
