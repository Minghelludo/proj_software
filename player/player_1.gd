extends Node2D
#variaveis
var pos_inicio: Vector2 = Vector2(30,770)
var dinheiro: int = 5000
#pos_casa vai ser por onde controlar aonde no tabuleiro o jogador esta
@onready var pos_casa = get_parent().get_node("casa_inicio")

#recebe o valor do dado e move as casas com o loop, no final executa a açao da casa
func move_casa(dice):
	while dice != 0:
		pos_casa = pos_casa.get_prox()
		dice = dice-1
		position = pos_casa.get_position_casa()
	pos_casa.exec_action(1)

func get_dinheiro():
	return dinheiro
	
func add_dinheiro(di):
	dinheiro = dinheiro + di
	return dinheiro

# Called when the node enters the scene tree for the first time.
func _ready():
	position = pos_inicio
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
