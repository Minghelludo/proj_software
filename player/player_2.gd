extends Node2D
#comentarios no player 1
var pos_inicio: Vector2 = Vector2(70,620)
var dinheiro: int = 10000
var nome = "P2"
@onready var casa_i = get_parent().get_node("casa_inicio")
@onready var pos_casa = casa_i
@onready var status_prisao = 0

func move_casa(dice):
	while dice != 0:
		pos_casa = pos_casa.get_prox()
		dice = dice-1
		position = pos_casa.get_position_casa()
		if pos_casa == casa_i and dice !=0:
			pos_casa.exec_action(self)
	pos_casa.exec_action(self)

func get_dinheiro():
	return dinheiro
	
func add_dinheiro(di):
	dinheiro = dinheiro + di
	return dinheiro

func get_nome():
	return nome

# Called when the node enters the scene tree for the first time.
func _ready():
	position = pos_inicio
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
