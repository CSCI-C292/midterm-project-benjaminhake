extends RigidBody2D
export var inmotion:bool = false
export var startingposition:Vector2 = Vector2(position.x,position.y)

func _ready():
	pass
	
func _input(event):
	if Input.is_action_just_released("start"):
		if not inmotion:
			
			inmotion = true
			sleeping = false
		else:
			
			inmotion = false
			position = Vector2(startingposition.x,startingposition.y)
			sleeping = true
