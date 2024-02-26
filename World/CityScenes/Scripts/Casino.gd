extends BaseDialogueTestScene


func _ready() -> void:
	var ballon = load("res://Test/balloon_casino.tscn").instantiate()
	get_tree().current_scene.add_child(ballon)
	ballon.start(resource, title)

