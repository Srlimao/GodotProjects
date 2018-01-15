extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process(true)
	pass

func _process(delta):
	
	pass

func _on_Button_pressed():
	get_node("Node2D").atk()
	pass # replace with function body
	
func player_atk():
	
	pass


func _on_Ranged_pressed():
	get_node("Node2D").ranged()
	pass # replace with function body
