extends Node2D
var _drawnline: PackedScene = preload("res://Line.tscn")
var linesleft = 1500

func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_pressed("draw"):
		if linesleft > 0:
			var line = _drawnline.instance() as Node2D
			line.position = get_viewport().get_mouse_position()
			add_child(line)
			linesleft -=1
			#get_child(5).text = "Lines Left: " + str(linesleft)


func _on_Button_pressed():
	get_parent().nextlevel()
