extends Node2D
#casa comp agua, similar a comp eletrica
#comentarios pertinenes na casa_12
@onready var prox_casa = get_parent().get_node("casa_28")
const pos = Vector2(600,425)
@onready var proprietario = null
const custo_compra = 1000
var custo_aluguel = 200
@onready var label_dono = $Label_dono_c27

func get_position_casa():
	return pos

func get_proprietario():
	return proprietario
	
func exec_action(pl):
	if proprietario == null:
		pl.add_dinheiro(custo_compra*-1)
		proprietario = pl
		label_dono.att_dono(pl.get_nome())
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
