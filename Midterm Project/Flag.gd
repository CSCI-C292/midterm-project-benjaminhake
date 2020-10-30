extends Node2D


func _ready():
	pass

func _on_Area2D_body_entered(body):
	match body.get_groups():
		["rider"]:
			var parent = get_parent()
			parent.get_child(1).sleeping = true
			
			
			
