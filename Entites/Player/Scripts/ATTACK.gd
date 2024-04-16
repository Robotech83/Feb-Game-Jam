extends "state.gd"



func update(delta):
	Player.gravity(delta)
	player_movement()
	#Connor_finished()
	
func enter_state():

	Player.anim.play("ATTACK")
	if Player.attack_input == true:
		return STATES.ATTACK
	else: 
		Player.attack_input == false
		return STATES.IDLE
	return null

func Connor_finished():
	if Player.verbose:
		print("test")
	Player.attack_input = false
	return null

