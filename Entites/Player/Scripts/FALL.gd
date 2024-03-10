extends "state.gd"


func update(delta):
	Player.gravity(delta)
	Player.player_movement()
	if Player.is_on_floor():
		return STATES.IDLE
	return null
	
