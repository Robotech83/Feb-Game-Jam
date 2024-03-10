extends "state.gd"


func update(delta):
	Player.gravity(delta)
	player_movement()
	if Player.velocity.x == 0:
		return STATES.IDLE
	if Player.jump_input == true:
		return STATES.JUMP
	if Player.velocity.y > 0:
		return STATES.FALL
	if Player.crouch_input == true:
		return STATES.CROUCH
	if Player.attack_input == true:
		return STATES.ATTACK
	return null
