extends BTCondition

func _tick(_delta: float) -> Status:

	var npc = get_agent()

	if npc.trabajando:
		return SUCCESS

	var horno_node = npc.horno

	if horno_node.nivel_hierro <= 20:

		npc.trabajando = true

		print("buscar hierro")

		return SUCCESS

	return FAILURE
