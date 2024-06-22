extends Node2D
#casa propriedade de um parente

#variaveis 
#variavel da proxima casa para poder mover
@onready var prox_casa = get_parent().get_node("casa_2")
#parente da propriedade importa para a construção de imóveis na propriedade
@onready var parente = get_parent().get_node("casa_3")
const pos = Vector2(40,520)
@onready var proprietario = null
const custo_compra = 1000
var custo_aluguel = 200
#quantidade dos imóveis compraveis que a casa possui
var quant_casas = 0
#utilizado para controlar o label da quantidade de propriedade
#deveria ser modificado para a entrega
@onready var label = $Label_props_c1

func get_position_casa():
	return pos
	
func get_proprietario():
	return proprietario

#função para comprar casa/imóvel, limite de 5 por propriedade
func compra_casa(prop):
	if quant_casas < 5:
		quant_casas = quant_casas+1
		#aumenta o custo do aluguel da propriedade
		custo_aluguel = custo_aluguel + 50
		prop.add_dinheiro(-100)
		#atualiza o label da quantidade de casas
		label.att_props(quant_casas)

#execução da ação da propriedade, similar a todas as outras propriedades
func exec_action(pl):
	#caso nao tenha dono, jogador compra
	if proprietario == null:
		pl.add_dinheiro(custo_compra*-1)
		proprietario = pl
	#caso tenha
	else:
		#se for ele msm checa para ver c ele tbm é proprietario dos parentes
		if pl == proprietario and proprietario == parente.get_proprietario():
			#caso positivo compra uma casa/imóvel
			compra_casa(pl)
			pass
		#se nao, paga o aluguel
		else:
			pl.add_dinheiro(custo_aluguel*-1)
			proprietario.add_dinheiro(custo_aluguel)
	pass

func get_prox():
	return prox_casa

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
