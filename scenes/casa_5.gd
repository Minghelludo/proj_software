extends Node2D
#casa onibus
#parentes são os outros pontos de onibus
@onready var prox_casa = get_parent().get_node("casa_6")
@onready var parente_1 = get_parent().get_node("casa_15")
@onready var parente_2 = get_parent().get_node("casa_25")
@onready var parente_3 = get_parent().get_node("casa_35")
const pos = Vector2(40,325)
@onready var proprietario = null
const custo_compra = 1000
#custo de aluguel e custo base diferentes para poder atualizar o valor
#baseado em quantos pontos de onibus o proprietario tem
var custo_aluguel_base = 200
var custo_aluguel = custo_aluguel_base

func get_position_casa():
	return pos

func get_proprietario():
	return proprietario

#atualiza o aluguel do ponto baseado na quantidade de parentes que o proprietario possui
func atualiza_aluguel(quant_help):
	if quant_help == 0:
		custo_aluguel = custo_aluguel_base
	if quant_help == 1:
		custo_aluguel = custo_aluguel_base * 2
	if quant_help == 2:
		custo_aluguel = custo_aluguel_base * 4
	if quant_help == 3:
		custo_aluguel = custo_aluguel_base * 8
	pass

#descobre a quantidade de parentes q o proprietario possui
#em seguida atualiza o aluguel de todos que ele seja dono
#isso acontece sempre que alguem compra aquele ponto
func verifica_parentes(prop):
	#primeiro descobre a quantidade 
	var att_help = 0
	if prop == parente_1.get_proprietario():
		att_help = att_help+1
	if prop == parente_2.get_proprietario():
		att_help = att_help+1
	if prop == parente_3.get_proprietario():
		att_help = att_help+1
	#depois atualiza todos aqueles que tambem sejam propriedade
	atualiza_aluguel(att_help)
	if prop == parente_1.get_proprietario():
		parente_1.atualiza_aluguel(att_help)
	if prop == parente_2.get_proprietario():
		parente_2.atualiza_aluguel(att_help)
	if prop == parente_3.get_proprietario():
		parente_3.atualiza_aluguel(att_help)
	pass

#ação da casa
func exec_action(pl):
	#caso não tenha dono o jogador compra
	if proprietario == null:
		pl.add_dinheiro(custo_compra*-1)
		proprietario = pl
		#e verifica os outros pontos para atualização de aluguel
		verifica_parentes(pl)
	#caso ja tenha dono
	else:
		#se for o proprio jogador nada acontece
		if pl == proprietario:
			pass
		#se for outro jogador ele paga o aluguel
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
