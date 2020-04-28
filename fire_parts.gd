extends Particles2D


var vol = 0.0

export var vol_max = 0.5

onready var player = get_node("/root/main/player")

var rsize = 20

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if(player.global_position.x > (global_position.x - rsize)
	and (player.global_position.x < (global_position.x + rsize))):
		2
		if(player.speed > 1):
			vol = -vol_max
			process_material.set("orbit_velocity",vol)
		elif(player.speed < -1 and player.speed != 0):
			vol = vol_max
			process_material.set("orbit_velocity",vol)
		
		
	vol = lerp(vol,0,0.03)
	process_material.set("orbit_velocity",vol)
	pass
