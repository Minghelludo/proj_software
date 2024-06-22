extends Node2D
#objeto de rolagem de dados
var rng = RandomNumberGenerator.new()

#executa a rolagem da rodada, retornando o resultado da soma de dois dados
#rolar entre 2 e 12 = rolar entre 1 e 6 duas vezes e somar
func roll():
	#rolagem de dados
	var aux = rng.randi_range(2,12)
	return aux

#executa a rolagem para sair da prisao
#função separada pq seria mais facil retornar booleano
#pode ser modificada caso queiram mostrar o resultado na tela
func roll_prisao():
	var aux_1 = rng.randi_range(1,6)
	var aux_2 = rng.randi_range(1,6)
	if aux_1 == aux_2:
		return 1
	else:
		return 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
