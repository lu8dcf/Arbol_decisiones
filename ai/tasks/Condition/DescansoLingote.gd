extends BTCondition

func _tick(delta: float) -> Status:

	var npc = get_agent()
	var herreria_node = npc.herreria
	var horno_node = npc.horno

	if herreria_node.nivel_lingote >= 10 or horno_node.nivel_lingote < 3:
		return SUCCESS

	return FAILURE
