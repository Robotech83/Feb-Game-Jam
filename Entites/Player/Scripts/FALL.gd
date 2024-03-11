extends "state.gd"


func update(delta):
	Player.anim.play("FALL")
	Player.gravity(delta)
	player_movement()
	if Player.is_on_floor():
		return STATES.IDLE
	if Player.attack_input == true:
		return STATES.ATTACK
	return null
	
