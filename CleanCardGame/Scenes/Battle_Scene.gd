extends Node
signal change_turn

var player_scn = preload("res://Scenes/Objects/Player.tscn")
var player_node
onready var enemy_node = get_node("Enemy")
enum TURN{player,enemy}
var curr_turn


func _ready(): 
	curr_turn = TURN.player
	player_node = get_node("Player")
	set_process(true)
	pass
	

func _process(delta):
	
	pass

func save_game():
	var savegame = File.new()
	savegame.open("res://savegame.save", File.WRITE)
	var saveplayer = {"players":[{
		id = 1,
		hp = player_node.get_hp(),
		armor = player_node.get_armor(),
		name = "Will"
	},{
		id = 2,
		hp = enemy_node.get_hp(),
		armor = enemy_node.get_armor(),
		name = "Bixo"
	}]}
	savegame.store_string(saveplayer.to_json())
	savegame.close()


func _on_Button_button_up():
	if curr_turn == TURN.player:
		player_node.atk(1, enemy_node)
		curr_turn = TURN.enemy
		emit_signal("change_turn")
	pass # replace with function body


func _on_TextureButton_pressed():
	save_game()
	pass # replace with function body
