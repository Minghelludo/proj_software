extends Node2D
#precisa adicionar função do rng
var rng = RandomNumberGenerator.new()

func roll():
	#modificar os valores do range
	var aux = rng.randi_range(1,3)
	return aux

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
