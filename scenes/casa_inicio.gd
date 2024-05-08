extends Node2D

@onready var prox_casa = get_parent().get_node("casa_1")
const pos = Vector2(50,750)

func get_position_casa():
	return pos

func exec_action(pl):
	if pl == 1:
		var p1 = get_parent().get_node("player1")
		p1.add_dinheiro(1000)
	pass

func get_prox():
	return prox_casa

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
