extends Node2D
var pos_inicio: Vector2 = Vector2(30,770)
var dinheiro: int = 5000

func get_dinheiro():
	return dinheiro
	
func add_dinheiro(di):
	dinheiro = dinheiro + di
	return dinheiro

# Called when the node enters the scene tree for the first time.
func _ready():
	position = pos_inicio
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
