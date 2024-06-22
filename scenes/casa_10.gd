extends Node2D
#casa prisao
#não precisa de implementação direta
#a casa_30 envia o jogador para essa e modifica seu status de prisao
#o tabuleiro controla a possibilidade de jogada baseado no status de prisao

@onready var prox_casa = get_parent().get_node("casa_11")
const pos = Vector2(50,75)

func get_position_casa():
	return pos

func exec_action(pl):
	pass

func get_prox():
	return prox_casa	


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
