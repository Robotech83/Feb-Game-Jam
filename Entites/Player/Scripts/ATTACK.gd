extends "state.gd"



func update(delta):
	Player.anim.play("ATTACK")
	Player.gravity(delta)
	player_movement()
	if Player.attack_input == true:
		return STATES.ATTACK
	if Player.movement_input.x != 0:
		return STATES.MOVE
	if Player.jump_input_actuation == true:
		return STATES.JUMP
	if Player.velocity.x == 0:
		return STATES.IDLE
	return null

func exit_state():
	pass
