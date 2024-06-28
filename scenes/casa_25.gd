extends Node2D
#casa onibus
#comentarios pertinentes na casa_5
@onready var prox_casa = get_parent().get_node("casa_26")
@onready var parente_1 = get_parent().get_node("casa_5")
@onready var parente_2 = get_parent().get_node("casa_15")
@onready var parente_3 = get_parent().get_node("casa_35")
const pos = Vector2(600,325)
@onready var proprietario = null
const custo_compra = 1000
var custo_aluguel_base = 200
var custo_aluguel = custo_aluguel_base
@onready var label_dono = $Label_dono_c25

func get_position_casa():
	return pos

func get_proprietario():
	return proprietario

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

func verifica_parentes(prop):
	var att_help = 0
	if prop == parente_1.get_proprietario():
		att_help = att_help+1
	if prop == parente_2.get_proprietario():
		att_help = att_help+1
	if prop == parente_3.get_proprietario():
		att_help = att_help+1
	atualiza_aluguel(att_help)
	if prop == parente_1.get_proprietario():
		parente_1.atualiza_aluguel(att_help)
	if prop == parente_2.get_proprietario():
		parente_2.atualiza_aluguel(att_help)
	if prop == parente_3.get_proprietario():
		parente_3.atualiza_aluguel(att_help)
	pass
	
func exec_action(pl):
	if proprietario == null:
		pl.add_dinheiro(custo_compra*-1)
		proprietario = pl
		label_dono.att_dono(pl.get_nome())
		verifica_parentes(pl)
	else:
		if pl == proprietario:
			pass
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
