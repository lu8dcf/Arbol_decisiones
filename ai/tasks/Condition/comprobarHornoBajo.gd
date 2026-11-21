extends BTCondition

func _tick(_delta: float) -> Status:

	var horno_node = agent.get_tree().get_first_node_in_group("horno")

	print("Nivel:", horno_node.nivel_lenia)

	if horno_node.nivel_lenia <= 20:
		print("HORNO BAJO")
		return SUCCESS

	return FAILURE
