extends Node2D
#casa imposto
@onready var prox_casa = get_parent().get_node("casa_inicio")
const pos = Vector2(40,375)

func get_position_casa():
	return pos

func exec_action(pl):
	var aux = -500
	pl.add_dinheiro(aux)
	pass

func get_prox():
	return prox_casa

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
