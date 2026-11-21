extends BTCondition

func _tick(delta: float) -> Status:

	var npc = agent

	var horno = npc.get_tree().get_first_node_in_group("horno")

	if horno.nivel_lenia <= 20:
		return SUCCESS

	return FAILURE
