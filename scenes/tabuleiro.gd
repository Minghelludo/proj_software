extends Node2D
var teste
@onready var p1 = $Player1
@onready var display = $Label
@onready var c_inic = $casa_inicio
# Called when the node enters the scene tree for the first time.
func _ready():
	teste = p1.get_dinheiro()
	display.mostra_di(teste)
	c_inic.move()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if teste < 10000:
		teste = p1.add_dinheiro(1)
		display.mostra_di(teste)
	pass
