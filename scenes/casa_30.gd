extends Node2D
#vai pra prisao
@onready var prox_casa = get_parent().get_node("casa_31")
@onready var casa_prisao = get_parent().get_node("casa_10")
const pos = Vector2(600,600)

func get_position_casa():
	return pos

func exec_action(pl):
	#muda a posição do jogador para a prisao
	pl.pos_casa = casa_prisao
	#move o sprite para a casa prisão
	pl.position = casa_prisao.get_position_casa()
	#modifica o status para a quantidade de turno maxima do jogador na prisão
	pl.status_prisao = 3
	pass

func get_prox():
	return prox_casa	


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
