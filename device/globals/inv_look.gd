extends Node


# warning-ignore:unused_argument
# warning-ignore:unused_argument
func can_drop_data(point, data):
	return true

# warning-ignore:unused_argument
func drop_data(point, data):
	printt("drop data on inventory look")
	var obj = get_node("/root/vm").get_object(data)
	if obj == null:
		return

	get_tree().call_group("game", "interact", [obj, "look"])
	get_node("/root/vm").drag_end()
