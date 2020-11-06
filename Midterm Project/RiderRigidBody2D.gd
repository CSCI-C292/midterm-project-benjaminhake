extends RigidBody2D
export var _reset:bool = false
export var startingposition:Vector2 = Vector2(107.9,94.97)
var boostleft = 2

func _init():
	sleeping = true
	set_friction(0.1)
	boostleft = 2

func _ready():
	sleeping = true
	
func _input(_event):
	if Input.is_action_just_released("start"):
		sleeping = false
	if Input.is_action_just_pressed("boost"):
		if boostleft>0:
			boostleft -= 1
			linear_velocity = Vector2(linear_velocity.x + 200, linear_velocity.y)
