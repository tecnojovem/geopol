extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func on_b_pergunta_pressed(obj,pai):
	print("Pressed " + str(obj.right(5))+ \
	" Pai: " + str(pai))


func on_b_resposta_pressed(obj,pai):
	print("Pressed " + str(obj).right(5) + \
	" Pai:" + str(pai))
	pass # replace with function body
