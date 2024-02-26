extends BaseDialogueTestScene
#WORKING: Dialogue is inside scene

func _ready() -> void:
	var ballon = load("res://Test/balloon_bar.tscn").instantiate()
	get_tree().current_scene.add_child(ballon)
	ballon.start(resource, title)
	#TODO:  change background art, add character
	
