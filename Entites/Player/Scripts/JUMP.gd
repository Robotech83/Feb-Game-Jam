extends "state.gd"

func update(delta):
	Player.anim.play("JUMP")
	Player.gravity(delta)
	player_movement()
	if Player.velocity.y > 0:
		return STATES.FALL
	if Player.attack_input == true:
		return STATES.ATTACK
	return null

func enter_state():
	Player.velocity.y = Player.JUMP_VELOCITY
