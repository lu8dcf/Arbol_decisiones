extends BTAction

func _tick(delta):

	var npc = agent

	var horno = npc.get_tree().get_first_node_in_group("horno")

	horno.nivel_lenia += 20

	horno.nivel_lenia = clamp(
		horno.nivel_lenia,
		0,
		100
	)

	return SUCCESS
