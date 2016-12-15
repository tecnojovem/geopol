extends Node

const pr_file = "user://questions.json"
onready var http = preload("res://scenes/http.tscn").instance()

const url="https://raw.githubusercontent.com/rgrcnh/geopol/master/QA/questions.json"
const domain = "raw.githubusercontent.com"

var pr={ "1" :{
"q":"Suas perguntas não foram carregadas", 
"r":"Suas respostas não foram carregadas"
}} 
	
func _ready():
	add_user_signal("nova_pr_disponivel",[pr])
	pass

func get_pr():
	return pr

func prepare():
	http.connect("loading",self,"_on_loading")
	http.connect("loaded",self,"_on_loaded")
	print("tentado ler pr de arquvio")
	if (!load_game()):
		print("Nao tinha arquivo ou nao tinha conteudo")
	http.get(domain,url,443,true)

func _on_loading(loaded,total):
	var percent = loaded*100/total
	print ("loading " + str(percent) + " %")

func _on_loaded(result):
	var result_string = result.get_string_from_utf8()
	print (result_string)
	var temp = {}
	temp.parse_json(result_string)
	print("Vieram %d perguntas pela Internet" % temp.size())
	if (temp.hash() != pr.hash()):
		pr = temp
		save_game()
		emit_signal("nova_pr_disponivel", pr)
		print("As perguntas são mais novas e foram salvas.")


func load_game():
	var file = File.new()
	if !file.file_exists(pr_file):
		print("pr nao existe")
		return 0
	file.open(pr_file, File.READ)
	if file.is_open():
		var tot_file=""
		while (!file.eof_reached()):
			tot_file += file.get_line()
		file.close()
		var temp = {}
		temp.parse_json(tot_file)
		if temp.size() == 0: return 0
		print("Lido do arquivo: " + str(temp))
		pr = temp
		return 1
	return 0
	
func save_game():
	var file = File.new()
	file.open(pr_file, File.WRITE)
	file.store_line(pr.to_json())
	print("pr Saved!")
		
