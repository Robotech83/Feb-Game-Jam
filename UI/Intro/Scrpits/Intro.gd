extends Node2D

@onready var animated_sprite_2d = $AnimatedSprite2D



func _ready():
	animated_sprite_2d.play("default")
	


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://UI/Intro/Intro.tscn")
