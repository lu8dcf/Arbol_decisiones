extends BTCondition

func _tick(_delta: float) -> Status:

	var npc = get_agent()

	if npc.trabajando:
		return SUCCESS

	var herreria_node = npc.herreria

	if herreria_node.nivel_carbon <= 20:

		npc.trabajando = true

		return SUCCESS

	return FAILURE
