extends BTCondition

func _tick(_delta: float) -> Status:

	var npc = get_agent()

	#if npc.trabajando:
	#	return SUCCESS

	var horno_node = npc.horno
	var herreria_node = npc.herreria

	if horno_node.nivel_lingote > 3 and herreria_node.nivel_lingote < 10 :

		npc.trabajando = true

		

		return SUCCESS

	return FAILURE
