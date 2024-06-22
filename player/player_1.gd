extends Node2D
#variaveis
var pos_inicio: Vector2 = Vector2(30,620)
var dinheiro: int = 5000
#casa_i é a casa inicial pra controlar o recebimento de dinheiro
#pos_casa vai ser por onde controlar aonde no tabuleiro o jogador esta
@onready var casa_i = get_parent().get_node("casa_inicio")
#posição inicial do jogador na casa inicial
@onready var pos_casa = casa_i
#regula se o jogador esta preso ou não
@onready var status_prisao = 0

#recebe o valor do dado e move as casas com o loop, no final executa a açao da casa
func move_casa(dice):
	while dice != 0:
		pos_casa = pos_casa.get_prox()
		dice = dice-1
		position = pos_casa.get_position_casa()
		#caso ele passe pela casa i e não pare nela, executa a ação
		if pos_casa == casa_i and dice !=0:
			pos_casa.exec_action(self)
	#executa a ação da casa, determinada nos objetos especificos
	pos_casa.exec_action(self)

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
