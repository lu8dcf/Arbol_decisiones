extends BTCondition

func _tick(delta: float) -> Status:

	var npc = get_agent()

	if npc.trabajando:
		return SUCCESS

	var horno_node = npc.horno

	if horno_node.nivel_lenia <= 20:

		npc.trabajando = true

		#print("EMPEZAR A TRABAJAR")

		return SUCCESS

	return FAILURE
