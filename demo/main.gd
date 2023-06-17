extends Node2D

@onready var example_node = $GDExample

# Called when the node enters the scene tree for the first time.
func _ready():
	var amplitude = example_node.get_amplitude()
	print("HELLOWORLD! amplitude: ", amplitude)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
