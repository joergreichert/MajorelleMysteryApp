extends "res://globals/scene_base.gd"

var vm;
var paintings = [
	"RDC-B0009119-2019-SL.jpg",
	"RDC-B0009116-2019-SL.jpg",
	"RDC-B0009130-2019-SL.jpg",
	"RDC-B0009103-2019-SL.jpg",
	"RDC-B0009104-2019-SL.jpg",
	"RDC-B0009128-2019-SL.jpg",
	"RDC-B0009109-2019-SL.jpg",
	"RDC-B0009127-2019-SL.jpg"
]
var currentIndex = 0

func _ready():
	get_node("/root/main").call_deferred("set_current_scene", self)
	vm = get_tree().get_root().get_node("vm")	
	pass

func _on_left_pressed():
	currentIndex = currentIndex - 1 
	if currentIndex < 0:
		currentIndex = len(paintings) - 1
	var image_tex = load("res://scenes/slide-show/sprites/" + paintings[currentIndex]) 
	get_node("decorative-painting").texture = image_tex


func _on_right_pressed():
	currentIndex = currentIndex + 1 
	if currentIndex >= len(paintings):
		currentIndex = 0
	var image_tex = load("res://scenes/slide-show/sprites/" + paintings[currentIndex]) 
	get_node("decorative-painting").texture = image_tex


func _on_exit_pressed():
	vm.load_file("res://scenes/slide-show/exit.esc")
