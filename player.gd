extends Sprite

var speed = 0
var max_speed = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		speed = max_speed
	elif Input.is_action_pressed("ui_left"):
		speed = -max_speed
	else:
		speed = 0
		
	position.x += speed
	pass
