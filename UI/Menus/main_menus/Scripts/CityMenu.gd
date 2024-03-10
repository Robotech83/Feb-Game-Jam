extends Control




func _on_bar_button_pressed():
	#BUG: Not working
	get_tree().change_scene_to_file("res://World/CityScenes/bar.tscn")

func _on_gym_button_pressed():
	#TODO: need to work on Gym scene
	get_tree().change_scene_to_file("res://World/gym.tscn")


func _on_casino_button_pressed():
	#TODO: need to work on Casino Scene
	get_tree().change_scene_to_file("res://World/CityScenes/Casino.tscn")
	


func _on_home_button_pressed():
	#TEMP: not sure if we are keeping  
	get_tree().change_scene_to_file("res://World/home.tscn")


func _on_labyrinth_button_pressed():
	#WORKING: complete
	get_tree().change_scene_to_file("res://World/Labyrinth.tscn")
