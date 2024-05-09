extends Node2D

@onready var prox_casa = get_parent().get_node("casa_2")
const pos = Vector2(40,645)

func get_position_casa():
	return pos
	
func exec_action(pl):
	#var aux = pl.get_dinheiro()
	#if aux > 5000:
		#pl.add_dinheiro(-1000)
	pass

func get_prox():
	return prox_casa

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
