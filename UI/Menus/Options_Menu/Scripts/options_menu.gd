extends Control
#TODO: Add background and sound settings



func _on_button_pressed():
	#WORKING: connected to main menu
	get_tree().change_scene_to_file("res://UI/Menus/main_menus/main_menu.tscn")
