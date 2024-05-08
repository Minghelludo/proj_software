extends Node2D

#ponteiros
@onready var p1 = $player1
@onready var display_p1 = $Label_p1
@onready var c_inic = $casa_inicio

#variaveis usadas d1 é o display do p1
var d1
var rng

#atualiza na tela o dinheiro, precisa adicionar mais labels para os outros
func att_dinheiro():
	d1 = p1.get_dinheiro()
	display_p1.mostra_di(d1)

# Called when the node enters the scene tree for the first time.
func _ready():
	d1 = p1.get_dinheiro()
	display_p1.mostra_di(d1)
	#sinal do botao pressionado pra mover
	$dice_roll.pressed.connect(func():
		rng = $dice.roll()
		p1.move_casa(rng))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	att_dinheiro()
	pass
