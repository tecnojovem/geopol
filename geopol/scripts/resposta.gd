extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	connect("pressed",get_node("/root/jogo"),"on_b_resposta_pressed",[get_name(), get_parent().get_name()])
	pass
