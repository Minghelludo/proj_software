extends Node2D
var teste
@onready var p1 = $player1
@onready var display = $Label
@onready var c_inic = $casa_inicio
# Called when the node enters the scene tree for the first time.
func _ready():
	teste = p1.get_dinheiro()
	display.mostra_di(teste)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	p1.move_casa(1)
	teste=p1.get_dinheiro()
	display.mostra_di(teste)
	pass
