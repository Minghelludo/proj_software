extends Node2D

#ponteiros
@onready var pl_atual = $player1
@onready var p1 = $player1
@onready var p2 = $player2
@onready var display_p1 = $Label_p1
@onready var display_p2 = $Label_p2
@onready var display_dice = $Label_dice
@onready var c_inic = $casa_inicio

#variaveis usadas d1 é o display do p1
var d1
var d2
var rng

#atualiza na tela o dinheiro, precisa adicionar mais labels para os outros
func att_dinheiro():
	d1 = p1.get_dinheiro()
	display_p1.mostra_di(d1)
	d2 = p2.get_dinheiro()
	display_p2.mostra_di(d2)
#atualiza na tela os dados rolados
func att_dice(dice_aux):
	display_dice.mostra_dice(dice_aux)

func passa_turno(pl):
	if pl == p1:
		return p2
	if pl == p2:
		return p1
	return pl

# Called when the node enters the scene tree for the first time.
func _ready():
	att_dinheiro()
	#sinal do botao pressionado pra mover
	$dice_roll.pressed.connect(func():
		rng = $dice.roll()
		att_dice(rng)
		pl_atual.move_casa(rng)
		pl_atual = passa_turno(pl_atual)
		)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	att_dinheiro()
	pass
