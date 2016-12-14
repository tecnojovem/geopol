extends Node2D

const qa_file = "user://questions.json"
var qa={} 


func load_game():
	var file = File.new()
	if !file.file_exists(qa_file):
		return
	file.open(qa_file, File.READ)
	if file.is_open():
		var tot_file=""
		while (!file.eof_reached()):
			tot_file += file.get_line()
		qa.parse_json(tot_file)
		print("linha" + str(qa))
		file.close()
	pass

func _ready():
	load_game()
	pass
	


func save_game():
	var file = File.new()
	if !file.file_exists(qa_file):
		print ("Sera novo arquivo")
		file.open(qa_file, File.WRITE)
		file.store_line(qa.to_json())
		print("QA Saved!")

func on_b_pergunta_pressed(obj,pai):
	print("Pressed " + str(obj)+ str(pai))


func on_b_resposta_pressed(obj,pai):
	print("Pressed " + str(obj)+ str(pai))
	pass # replace with function body
