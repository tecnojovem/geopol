extends Node

const qa_file = "user://questions.json"
onready var http = preload("res://scenes/http.tscn").instance()
const url="https://raw.githubusercontent.com/rgrcnh/geopol/master/QA/questions.json"

var qa={} 
	
func _ready():
	if qa.size() == 0:
		print("tentado ler QA de arquvio")
		if (!load_game()):
			http.get(url,443,true)
	else:
		save_game()
	pass


func _on_loading(loaded,total):
    var percent = loaded*100/total

func _on_loaded(result):
    var result_string = result.get_string_from_ascii()
    print(result_string)

func load_game():
	var file = File.new()
	if !file.file_exists(qa_file):
		print("QA nao existe")
		return 0
	file.open(qa_file, File.READ)
	if file.is_open():
		var tot_file=""
		while (!file.eof_reached()):
			tot_file += file.get_line()
		qa.parse_json(tot_file)
		if qa.size() > 0:
			print("linha" + str(qa))
		else: 
			print("nao tinha nada em QA")
			return 0
		file.close()
		return 1
	return 0
	
func save_game():
	var file = File.new()
	if !file.file_exists(qa_file):
		print ("Sera novo arquivo")
		file.open(qa_file, File.WRITE)
		file.store_line(qa.to_json())
		print("QA Saved!")
