extends "state.gd"


func update(delta):
	Player.anim.play("IDLE")
	Player.gravity(delta)
	if Player.movement_input.x != 0:
		return STATES.MOVE
	if Player.jump_input_actuation == true:
		return STATES.JUMP
	if Player.crouch_input == true:
		return STATES.CROUCH
	if Player.attack_input == true:
		return STATES.ATTACK
	return null

