extends Node

var player_scn = preload("res://Scenes/Objects/Player.tscn")
var player_node

func _ready(): 
	player_node = get_node("Player")
	set_process(true)
	pass
	

func _process(delta):
	
	pass

func save_game():
	var savegame = File.new()
	savegame.open("res://savegame.save", File.WRITE)
	var saveplayer = {
		id = 1,
		hp = 10,
		name = "Will"
	}
	savegame.store_line(saveplayer.to_json())
	savegame.close()


func _on_Button_button_up():
	player_node.atk(1, get_node("Enemy"))
	get_node("Camera2D").shake(0.2)
	pass # replace with function body
