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

#atualiza na tela o dinheiro, precisa adicionar mais labels para os outros
func att_dinheiro():
	d1 = p1.get_dinheiro()
	display_p1.mostra_di(d1)
	d2 = p2.get_dinheiro()
	display_p2.mostra_di(d2)

#atualiza na tela os dados rolados
func att_dice(dice_aux):
	display_dice.mostra_dice(dice_aux)

#passa os turnos, precisa ser atualizado para mais jogadores
func passa_turno(pl):
	if pl == p1:
		return p2
	if pl == p2:
		return p1
	return pl

#realiza a jogada do turno, foi criada uma função pra facilitar a implementação da prisao
#rola dado + atualiza a tela + move jogador
func jogar_rodada(pl):
	var rng = $dice.roll()
	att_dice(rng)
	pl.move_casa(rng)
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	att_dinheiro()
	#sinal do botao pressionado jogar os dados
	$dice_roll.pressed.connect(func():
		#se o jogador estiver na prisão executa os passos especificos
		if pl_atual.status_prisao != 0:
			#reduz o status da prisao, determinado na casa 30, quando chegar a 0 ele pode voltar a jogar
			pl_atual.status_prisao = pl_atual.status_prisao - 1
			#faz a jogada para ver se ele sai antes, a função retorna 1 caso ambos os dados sejam iguais
			var aux_prisao = $dice.roll_prisao()
			if aux_prisao == 1:
				#remove o jogador da prisao
				pl_atual.status_prisao = 0
				#faz a jogada dessa rodada, por ele ter saido antes
				jogar_rodada(pl_atual)
		#se o jogador não estiver preso realiza jogada
		else:
			jogar_rodada(pl_atual)
		#passa o turno
		pl_atual = passa_turno(pl_atual)
		)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#atualiza o dinheiro frame a frame
	att_dinheiro()
	pass
