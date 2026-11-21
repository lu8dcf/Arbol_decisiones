extends BTAction

func _tick(_delta):

	var npc = agent

	var horno_node = npc.get_tree().get_first_node_in_group("horno")

	horno_node.nivel_lenia += 20

	horno_node.nivel_lenia = clamp(
		horno_node.nivel_lenia,
		0,
		100
	)

	return SUCCESS
