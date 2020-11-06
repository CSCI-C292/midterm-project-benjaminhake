extends Node2D


func _ready():
	pass



func _on_FlagArea2D_area_entered(area):
	match area.get_groups():
		["rider"]:
			area.get_parent().sleeping=true
			#get_parent().get_child(3).visible = true
			#get_parent().get_child(3).get_child(0).disabled = false
			get_parent().get_parent().nextlevel()
