extends Node

var player_scn = preload("res://Scenes/Objects/Player.tscn")
var player_node

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	
#	if Input.is_action_pressed("ui_accept"):
#			Player.new(10)
#			player_node = player_scn.instance()
#			add_child(player_node)
#			player_node.set_global_pos(Vector2() + get_global_mouse_pos())
	pass

class Player:
	var hp
	var bp
	var name
	var weaponId


	
	func _init(var player_id):
		
		
		#player_node.set_global_pos(Vector2() + get_global_mouse_pos())
		pass
