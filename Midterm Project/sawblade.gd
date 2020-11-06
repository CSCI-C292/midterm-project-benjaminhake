extends Node2D


func _ready():
	pass

func _process(delta):
	pass
	#get_child(0).rotation_degrees += 1


func _on_SawBladeArea2D_area_entered(area):
	get_parent().get_child(2).sleeping = true
	get_parent().get_child(4).visible = true
	
