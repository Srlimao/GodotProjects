extends Area2D
		#LEVEL		

var xp_necessario= 10
var fator_evolucao = 2
var atributos = 0
var hp = 20 setget setstatus
var mp = 10 setget setstatus
var cresc_vida = 1.2
var cresc_mp = 1.1
var xp = 0 setget setstatus
var lvl = 1 setget setstatus

		#STATUSPLAYER		
var forca = 5
var critico = 5
var defesa = 5
var sorte = 5

signal addxp
signal addlvl
signal meuHP
signal meuMP
func _ready():
	pass

func setstatus(valor):
	if valor > 0:
		xp = valor
		emit_signal("addxp")
	if xp > xp_necessario:
		lvl = lvl + 1
		if lvl > 10:
			lvl = 10
		else:
			xp_necessario = xp_necessario * fator_evolucao
			atributos = atributos + 1
			hp = hp * cresc_vida 
			mp = mp * cresc_mp
			emit_signal("addlvl")
			emit_signal("meuHP")
			emit_signal("meuMP")
			print(atributos)
		pass
