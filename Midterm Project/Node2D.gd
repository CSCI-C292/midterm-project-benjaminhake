extends Node2D

export var _drawnline: PackedScene


func _ready():
	pass


	
		
func _physics_process(delta):
	if Input.is_action_pressed("draw"):
		var line = _drawnline.instance() as Node2D
		line.position = get_viewport().get_mouse_position()
		add_child(line)
