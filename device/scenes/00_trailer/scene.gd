extends "res://globals/scene_base.gd"

func _ready():
	var vm = get_tree().get_root().get_node("vm")
	if has_node("collect_label"):
		if vm.get_global("jacques_collected_letters"):
			get_node("collect_label").hide()		
			get_node("letter_l").hide()		
			get_node("letter_u").hide()	
		elif vm.get_global("jacques_first_call"):
			get_node("collect_label").show()		
			get_node("letter_l").show()		
			get_node("letter_u").show()	
