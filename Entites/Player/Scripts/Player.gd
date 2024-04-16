extends CharacterBody2D

# player_movement
const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var last_direction = Vector2.ZERO


# nodes
@onready var interact_ui = $InteractUI
@onready var STATES = $STATES
@onready var anim = $Connor


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity_value = ProjectSettings.get_setting("physics/2d/default_gravity")

# states
var current_state = null
var prev_state = null

# Player Input
var movement_input = Vector2.ZERO
var jump_input = false
var jump_input_actuation = false
var crouch_input = false
var slide_input = false
var attack_input = false
@export var verbose : bool = true


func _ready():
	for state in STATES.get_children():
		state.STATES = STATES
		state.Player = self
	prev_state = STATES.IDLE
	current_state = STATES.IDLE

func _physics_process(delta):
	player_input()
	change_state(current_state.update(delta))
	$DebubStates.text = str(current_state.get_name())
	move_and_slide()
	

func gravity(delta):
		# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity_value * delta

func change_state(input_state):
	if input_state != null:
		prev_state = current_state
		current_state = input_state
		
		prev_state.exit_state()
		current_state.enter_state()

func player_input():
	movement_input = Vector2.ZERO
	# Moving Up and Left is negative and Down and Right is Positive
	if Input.is_action_pressed("move_right"):
		movement_input.x += 1
		anim.flip_h = false
	if Input.is_action_pressed("move_left"):
		movement_input.x -= 1
		anim.flip_h = true
	if Input.is_action_pressed("move_up"):
		movement_input.y -= 1
	if Input.is_action_pressed("move_down"):
		movement_input.y += 1
	
	# jumps
	if Input.is_action_pressed("jump"):
		jump_input = true
	else:
		jump_input = false
	if Input.is_action_just_pressed("jump"):
		jump_input_actuation = true
	else :
		jump_input_actuation = false
	
	# Crouch
	if Input.is_action_pressed("crouch"):
		crouch_input = true
	else:
		crouch_input = false
		

	# Slide
	if Input.is_action_pressed("attack"):
		attack_input = true
	else:
		attack_input = false







