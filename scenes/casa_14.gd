extends Node2D
#casa propriedade
@onready var prox_casa = get_parent().get_node("casa_15")
@onready var parente = get_parent().get_node("casa_11")
@onready var parente_2 = get_parent().get_node("casa_13")
const pos = Vector2(270,50)
@onready var proprietario = null
const custo_compra = 1000
var custo_aluguel = 200
var quant_casas = 0
@onready var label = $Label_props_c14

func get_position_casa():
	return pos
	
func get_proprietario():
	return proprietario
	
func compra_casa(prop):
	if quant_casas < 5:
		quant_casas = quant_casas+1
		custo_aluguel = custo_aluguel + 50
		prop.add_dinheiro(-100)
		label.att_props(quant_casas)
	

func exec_action(pl):
	if proprietario == null:
		pl.add_dinheiro(custo_compra*-1)
		proprietario = pl
	else:
		if pl == proprietario and proprietario == parente.get_proprietario() and proprietario == parente_2.get_proprietario():
			compra_casa(pl)
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
