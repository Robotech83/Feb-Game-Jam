extends Control
#TODO: Add background and Music

func _on_start_button_pressed():
	#TEMP: Location might change
	get_tree().change_scene_to_file("res://World/Labyrinth.tscn")


func _on_options_button_pressed():
	#TODO: need to Build UI
	pass # Replace with function body.




func _on_credits_button_pressed():
	#WORKING: Complete
	get_tree().change_scene_to_file("res://UI/Menus/credits.tscn")



func _on_exit_button_pressed():
	#Working: Complete
	get_tree().quit()



func _on_tutorial_button_pressed():
	get_tree().change_scene_to_file("res://World/tutorial.tscn")
