extends Control




func _on_bar_button_pressed():
	get_tree().change_scene_to_file("res://World/bar.tscn")

func _on_gym_button_pressed():
	get_tree().change_scene_to_file("res://World/gym.tscn")

func _on_casino_button_pressed():
	get_tree().change_scene_to_file("res://World/Casino.tscn")


func _on_home_button_pressed():
	get_tree().change_scene_to_file("res://World/home.tscn")


func _on_labyrinth_button_pressed():
	get_tree().change_scene_to_file("res://World/Labyrinth.tscn")
