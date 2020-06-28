extends AnimatedSprite

func _ready():
	pass

func set_modulate(a_value):
	set_self_modulate(Color(1, 1, 1, a_value))
