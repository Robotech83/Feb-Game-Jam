# Global.gd
extends Node

# Inventory items
var inventory = []

# Custom signals
signal  inventory_updated

# Scene and Nodes references
var player_node : Node = null

func _ready():
	# Initializes the inventory with 20 slots
	inventory.resize(20)

#Adds items to the inventory, returns true if successful
func add_item(item):
	for i in range(inventory.size()):
		# Check if the item exists in the inventory and matches both type and effect
		if inventory[i] != null and inventory[i]["type"] == item["type"] and inventory[i]["effect"] == item["effect"]:
			inventory[i]["quantity"] += item["quantity"]
			inventory_updated.emit()
			print("Item added", inventory)
			return true
		elif inventory[i] == null:
			inventory[i] = item
			inventory_updated.emit()
			print("Item added", inventory)
			return true
	return false

#Removes items from the inventory base on type and effect
func remove_item():
	inventory_updated.emit()

#Increase inventory size dynamically
func increase_inventory_size():
	inventory_updated.emit()


func set_player_reference(player):
	player_node = player
