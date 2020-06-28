extends Sprite

func _ready():
	var vm = get_tree().get_root().get_node("vm")
	if vm.get_global("show_intro_letter"):
		show()
	else:
		hide()
