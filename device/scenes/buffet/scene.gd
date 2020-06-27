extends "res://globals/scene_base.gd"

var vm;
var currentIndex = 0

func _ready():
	get_node("/root/main").call_deferred("set_current_scene", self)
	vm = get_tree().get_root().get_node("vm")	
	pass

func changeImages(before):
	if currentIndex == 0:
		get_node("menu01").hide()
		get_node("menu02").hide()
		get_node("menu00").show()
		get_node("left").hide()
	elif currentIndex == 1:
		if before == 2:
			get_node("menu03").hide()
			get_node("menu04").hide()
			get_node("right").show()
		else:
			get_node("menu00").hide()
			get_node("left").show()
		get_node("menu01").show()
		get_node("menu02").show()
	else:
		get_node("menu01").hide()
		get_node("menu02").hide()
		get_node("menu03").show()
		get_node("menu04").show()
		get_node("right").hide()

func _on_left_pressed():
	var before = currentIndex
	currentIndex = currentIndex - 1 
	changeImages(before)

func _on_right_pressed():
	var before = currentIndex
	currentIndex = currentIndex + 1 
	changeImages(before)

func _on_exit_pressed():
	vm.load_file("res://scenes/menu/exit.esc")
