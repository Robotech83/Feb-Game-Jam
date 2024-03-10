extends Control

@export var game_manager : GameManager


func _ready():
	hide()
	game_manager.connect("toggle_game_paused", _on_game_manager_toggle_game_paused)
	#game_manager.connect("toggle_game_paused", _on_game_manager_toggle_game_paused)


func _on_game_manager_toggle_game_paused(is_paused : bool):
	if(is_paused):
		show()
	else :
		hide()


func _on_exit_button_pressed():
	get_tree().change_scene_to_file("res://UI/Menus/main_menu.tscn")


