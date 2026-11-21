extends BTCondition

func _tick(delta):
	var npc = agent

	var horno = npc.get_tree().get_first_node_in_group("horno")
	if horno.nivel_lenia > 80:
		return SUCCESS

	return FAILURE
