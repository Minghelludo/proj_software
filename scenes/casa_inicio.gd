extends Node2D
#objeto casa inicial

#variavel da proxima casa para poder mover
@onready var prox_casa = get_parent().get_node("casa_1")
#posição da casa para basear o display do jogador
const pos = Vector2(50,600)

func get_position_casa():
	return pos

#ação da casa, nesse caso adiciona fundos quando o jogador passa
#quando o jogador passa por essa casa, caso não pare, tbm executa a ação
#logica no player
func exec_action(pl):
	pl.add_dinheiro(1000)
	pass

func get_prox():
	return prox_casa

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
